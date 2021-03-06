.class public Landroid/net/TrafficStats;
.super Ljava/lang/Object;
.source "TrafficStats.java"


# static fields
.field public static final GB_IN_BYTES:J = 0x40000000L

.field public static final KB_IN_BYTES:J = 0x400L

.field public static final MB_IN_BYTES:J = 0x100000L

.field public static final TAG_SYSTEM_BACKUP:I = -0xfd

.field public static final TAG_SYSTEM_DOWNLOAD:I = -0xff

.field public static final TAG_SYSTEM_MEDIA:I = -0xfe

.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5

.field public static final UNSUPPORTED:I = -0x1

.field private static sActiveProfilingStart:Landroid/net/NetworkStats;

.field private static sProfilingLock:Ljava/lang/Object;

.field private static sStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearThreadStatsTag()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    return-void
.end method

.method public static clearThreadStatsUid()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    return-void
.end method

.method public static closeQuietly(Landroid/net/INetworkStatsSession;)V
    .registers 3
    .parameter "session"

    .prologue
    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    .local v0, rethrown:Ljava/lang/RuntimeException;
    throw v0

    .end local v0           #rethrown:Ljava/lang/RuntimeException;
    :catch_8
    move-exception v1

    goto :goto_5
.end method

.method private static getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;
    .registers 4
    .parameter "context"

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .local v1, uid:I
    :try_start_4
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/net/INetworkStatsService;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v2

    return-object v2

    :catch_d
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getMobileIfaces()[Ljava/lang/String;
    .registers 2

    .prologue
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->getMobileIfaces()[Ljava/lang/String;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMobileRxBytes()J
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .local v4, total:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .local v2, iface:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v2           #iface:Ljava/lang/String;
    :cond_14
    return-wide v4
.end method

.method public static getMobileRxPackets()J
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .local v4, total:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .local v2, iface:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v2           #iface:Ljava/lang/String;
    :cond_14
    return-wide v4
.end method

.method public static getMobileTxBytes()J
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .local v4, total:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .local v2, iface:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v2           #iface:Ljava/lang/String;
    :cond_14
    return-wide v4
.end method

.method public static getMobileTxPackets()J
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .local v4, total:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v3, :cond_14

    aget-object v2, v0, v1

    .local v2, iface:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v2           #iface:Ljava/lang/String;
    :cond_14
    return-wide v4
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .registers 3
    .parameter "iface"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRxPackets(Ljava/lang/String;)J
    .registers 3
    .parameter "iface"

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized getStatsService()Landroid/net/INetworkStatsService;
    .registers 2

    .prologue
    const-class v1, Landroid/net/TrafficStats;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    if-nez v0, :cond_14

    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;

    :cond_14
    sget-object v0, Landroid/net/TrafficStats;->sStatsService:Landroid/net/INetworkStatsService;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getThreadStatsTag()I
    .registers 1

    .prologue
    invoke-static {}, Lcom/android/server/NetworkManagementSocketTagger;->getThreadSocketStatsTag()I

    move-result v0

    return v0
.end method

.method public static getTotalRxBytes()J
    .registers 2

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalRxPackets()J
    .registers 2

    .prologue
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalTxBytes()J
    .registers 2

    .prologue
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalTxPackets()J
    .registers 2

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/TrafficStats;->nativeGetTotalStat(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .registers 3
    .parameter "iface"

    .prologue
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxPackets(Ljava/lang/String;)J
    .registers 3
    .parameter "iface"

    .prologue
    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/net/TrafficStats;->nativeGetIfaceStat(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native getUidRxBytes(I)J
.end method

.method public static native getUidRxPackets(I)J
.end method

.method public static native getUidTcpRxBytes(I)J
.end method

.method public static native getUidTcpRxSegments(I)J
.end method

.method public static native getUidTcpTxBytes(I)J
.end method

.method public static native getUidTcpTxSegments(I)J
.end method

.method public static native getUidTxBytes(I)J
.end method

.method public static native getUidTxPackets(I)J
.end method

.method public static native getUidUdpRxBytes(I)J
.end method

.method public static native getUidUdpRxPackets(I)J
.end method

.method public static native getUidUdpTxBytes(I)J
.end method

.method public static native getUidUdpTxPackets(I)J
.end method

.method public static incrementOperationCount(I)V
    .registers 2
    .parameter "operationCount"

    .prologue
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v0

    .local v0, tag:I
    invoke-static {v0, p0}, Landroid/net/TrafficStats;->incrementOperationCount(II)V

    return-void
.end method

.method public static incrementOperationCount(II)V
    .registers 5
    .parameter "tag"
    .parameter "operationCount"

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .local v1, uid:I
    :try_start_4
    invoke-static {}, Landroid/net/TrafficStats;->getStatsService()Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2, v1, p0, p1}, Landroid/net/INetworkStatsService;->incrementOperationCount(III)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;I)J
.end method

.method private static native nativeGetTotalStat(I)J
.end method

.method public static setThreadStatsTag(I)V
    .registers 1
    .parameter "tag"

    .prologue
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsTag(I)V

    return-void
.end method

.method public static setThreadStatsUid(I)V
    .registers 1
    .parameter "uid"

    .prologue
    invoke-static {p0}, Lcom/android/server/NetworkManagementSocketTagger;->setThreadSocketStatsUid(I)V

    return-void
.end method

.method public static startDataProfiling(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    sget-object v1, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already profiling data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0

    :cond_12
    :try_start_12
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v0

    sput-object v0, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    return-void
.end method

.method public static stopDataProfiling(Landroid/content/Context;)Landroid/net/NetworkStats;
    .registers 7
    .parameter "context"

    .prologue
    sget-object v3, Landroid/net/TrafficStats;->sProfilingLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "not profiling data"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_10
    move-exception v2

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v2

    :cond_13
    :try_start_13
    invoke-static {p0}, Landroid/net/TrafficStats;->getDataLayerSnapshotForUid(Landroid/content/Context;)Landroid/net/NetworkStats;

    move-result-object v1

    .local v1, profilingStop:Landroid/net/NetworkStats;
    sget-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    .local v0, profilingDelta:Landroid/net/NetworkStats;
    const/4 v2, 0x0

    sput-object v2, Landroid/net/TrafficStats;->sActiveProfilingStart:Landroid/net/NetworkStats;

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_10

    return-object v0
.end method

.method public static tagSocket(Ljava/net/Socket;)V
    .registers 2
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    return-void
.end method

.method public static untagSocket(Ljava/net/Socket;)V
    .registers 2
    .parameter "socket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    return-void
.end method

.class public Landroid/util/SparseIntArray;
.super Ljava/lang/Object;
.source "SparseIntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "initialCapacity"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return-void
.end method

.method private static binarySearch([IIII)I
    .registers 9
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    add-int v1, p1, p2

    .local v1, high:I
    add-int/lit8 v2, p1, -0x1

    .local v2, low:I
    :goto_4
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_15

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .local v0, guess:I
    aget v3, p0, v0

    if-ge v3, p3, :cond_13

    move v2, v0

    goto :goto_4

    :cond_13
    move v1, v0

    goto :goto_4

    .end local v0           #guess:I
    :cond_15
    add-int v3, p1, p2

    if-ne v1, v3, :cond_1e

    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .end local v1           #high:I
    :cond_1d
    :goto_1d
    return v1

    .restart local v1       #high:I
    :cond_1e
    aget v3, p0, v1

    if-eq v3, p3, :cond_1d

    xor-int/lit8 v1, v1, -0x1

    goto :goto_1d
.end method


# virtual methods
.method public append(II)V
    .registers 10
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    if-eqz v4, :cond_13

    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-gt p1, v4, :cond_13

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_12
    return-void

    :cond_13
    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    .local v3, pos:I
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_38

    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .local v0, n:I
    new-array v1, v0, [I

    .local v1, nkeys:[I
    new-array v2, v0, [I

    .local v2, nvalues:[I
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iput-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    .end local v0           #n:I
    .end local v1           #nkeys:[I
    .end local v2           #nvalues:[I
    :cond_38
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aput p1, v4, v3

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v4, v3

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/SparseIntArray;->mSize:I

    goto :goto_12
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/SparseIntArray;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .local v1, clone:Landroid/util/SparseIntArray;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/util/SparseIntArray;

    move-object v1, v0

    iget-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseIntArray;->mKeys:[I

    iget-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Landroid/util/SparseIntArray;->mValues:[I
    :try_end_1d
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1d} :catch_1e

    :goto_1d
    return-object v1

    :catch_1e
    move-exception v2

    goto :goto_1d
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public delete(I)V
    .registers 6
    .parameter "key"

    .prologue
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_e
    return-void
.end method

.method public get(I)I
    .registers 3
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public get(II)I
    .registers 7
    .parameter "key"
    .parameter "valueIfKeyNotFound"

    .prologue
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    .local v0, i:I
    if-gez v0, :cond_c

    .end local p2
    :goto_b
    return p2

    .restart local p2
    :cond_c
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget p2, v1, v0

    goto :goto_b
.end method

.method public indexOfKey(I)I
    .registers 5
    .parameter "key"

    .prologue
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public indexOfValue(I)I
    .registers 4
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    .end local v0           #i:I
    :goto_b
    return v0

    .restart local v0       #i:I
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public keyAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(II)V
    .registers 11
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_10

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v4, v0

    :goto_f
    return-void

    :cond_10
    xor-int/lit8 v0, v0, -0x1

    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_39

    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .local v1, n:I
    new-array v2, v1, [I

    .local v2, nkeys:[I
    new-array v3, v1, [I

    .local v3, nvalues:[I
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iput-object v3, p0, Landroid/util/SparseIntArray;->mValues:[I

    .end local v1           #n:I
    .end local v2           #nkeys:[I
    .end local v3           #nvalues:[I
    :cond_39
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_56

    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mValues:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_56
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aput p1, v4, v0

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v4, v0

    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/SparseIntArray;->mSize:I

    goto :goto_f
.end method

.method public removeAt(I)V
    .registers 7
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return v0
.end method

.method public valueAt(I)I
    .registers 3
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method

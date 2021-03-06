.class Landroid/webkit/AccessibilityInjectorFallback;
.super Ljava/lang/Object;
.source "AccessibilityInjectorFallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    }
.end annotation


# static fields
.field private static final ACTION_PERFORM_AXIS_TRANSITION:I = 0x3

.field private static final ACTION_SET_CURRENT_AXIS:I = 0x0

.field private static final ACTION_TRAVERSE_CURRENT_AXIS:I = 0x1

.field private static final ACTION_TRAVERSE_DEFAULT_WEB_VIEW_BEHAVIOR_AXIS:I = 0x4

.field private static final ACTION_TRAVERSE_GIVEN_AXIS:I = 0x2

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInjector"

.field private static final NAVIGATION_AXIS_CHARACTER:I = 0x0

.field private static final NAVIGATION_AXIS_DEFAULT_WEB_VIEW_BEHAVIOR:I = 0x7

.field private static final NAVIGATION_AXIS_DOCUMENT:I = 0x6

.field private static final NAVIGATION_AXIS_HEADING:I = 0x3

.field private static final NAVIGATION_AXIS_PARENT_FIRST_CHILD:I = 0x5

.field private static final NAVIGATION_AXIS_SENTENCE:I = 0x2

.field private static final NAVIGATION_AXIS_SIBLING:I = 0x5

.field private static final NAVIGATION_AXIS_WORD:I = 0x1

.field private static final NAVIGATION_DIRECTION_BACKWARD:I = 0x0

.field private static final NAVIGATION_DIRECTION_FORWARD:I = 0x1

.field private static sBindings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentAxis:I

.field private mIsLastSelectionStringNull:Z

.field private mLastDirection:I

.field private mLastDownEventHandled:Z

.field private final mScheduledEventStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWebView:Landroid/webkit/WebViewClassic;

.field private final mWebViewInternal:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .registers 3
    .parameter "webView"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEventStack:Ljava/util/Stack;

    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    iput-object p1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    iget-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebViewInternal:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/AccessibilityInjectorFallback;->ensureWebContentKeyBindings()V

    return-void
.end method

.method private ensureWebContentKeyBindings()V
    .registers 15

    .prologue
    sget-object v11, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v11, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v11}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_web_content_key_bindings"

    invoke-static {v11, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, webContentKeyBindingsString:Ljava/lang/String;
    new-instance v9, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v11, 0x3b

    invoke-direct {v9, v11}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .local v9, semiColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v9, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :goto_23
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .local v2, bindingString:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4c

    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_4c
    const-string v11, "="

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, keyValueArray:[Ljava/lang/String;
    array-length v11, v7

    const/4 v12, 0x2

    if-eq v11, v12, :cond_6f

    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed Web content key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_6f
    const/4 v11, 0x0

    :try_start_70
    aget-object v11, v7, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .local v5, keyCodeAndModifiers:J
    const/4 v11, 0x1

    aget-object v11, v7, v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, actionStrings:[Ljava/lang/String;
    array-length v11, v0

    new-array v1, v11, [I

    .local v1, actions:[I
    const/4 v4, 0x0

    .local v4, i:I
    array-length v3, v1

    .local v3, count:I
    :goto_8c
    if-ge v4, v3, :cond_a1

    aget-object v11, v0, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    :cond_a1
    sget-object v11, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    new-instance v12, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;

    invoke-direct {v12, v5, v6, v1}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;-><init>(J[I)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ab
    .catch Ljava/lang/NumberFormatException; {:try_start_70 .. :try_end_ab} :catch_ad

    goto/16 :goto_23

    .end local v0           #actionStrings:[Ljava/lang/String;
    .end local v1           #actions:[I
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #keyCodeAndModifiers:J
    :catch_ad
    move-exception v8

    .local v8, nfe:Ljava/lang/NumberFormatException;
    const-string v11, "AccessibilityInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disregarding malformed key binding: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23
.end method

.method private static getAxisForGranularity(I)I
    .registers 2
    .parameter "granularity"

    .prologue
    const/4 v0, 0x2

    sparse-switch p0, :sswitch_data_c

    const/4 v0, -0x1

    :goto_5
    :sswitch_5
    return v0

    :sswitch_6
    const/4 v0, 0x0

    goto :goto_5

    :sswitch_8
    const/4 v0, 0x1

    goto :goto_5

    :sswitch_a
    const/4 v0, 0x6

    goto :goto_5

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_8
        0x4 -> :sswitch_5
        0x8 -> :sswitch_5
        0x10 -> :sswitch_a
    .end sparse-switch
.end method

.method private static getDirectionForAction(I)I
    .registers 2
    .parameter "action"

    .prologue
    sparse-switch p0, :sswitch_data_a

    const/4 v0, -0x1

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_7
    const/4 v0, 0x0

    goto :goto_4

    nop

    :sswitch_data_a
    .sparse-switch
        0x100 -> :sswitch_5
        0x200 -> :sswitch_7
        0x400 -> :sswitch_5
        0x800 -> :sswitch_7
    .end sparse-switch
.end method

.method private getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4
    .parameter "eventType"

    .prologue
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebViewInternal:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object v0
.end method

.method private isEnterActionKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    const/16 v0, 0x17

    if-eq p1, v0, :cond_c

    const/16 v0, 0x42

    if-eq p1, v0, :cond_c

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private performAxisTransition(IIZLjava/lang/String;)V
    .registers 6
    .parameter "fromAxis"
    .parameter "toAxis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    iget v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    if-ne v0, p1, :cond_7

    invoke-direct {p0, p2, p3, p4}, Landroid/webkit/AccessibilityInjectorFallback;->setCurrentAxis(IZLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .parameter "event"

    .prologue
    const-string v1, "AccessibilityInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dispatching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2b
    return-void
.end method

.method private setCurrentAxis(IZLjava/lang/String;)V
    .registers 7
    .parameter "axis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    iput p1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    if-eqz p2, :cond_1b

    const/16 v1, 0x4000

    invoke-direct {p0, v1}, Landroid/webkit/AccessibilityInjectorFallback;->getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjectorFallback;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_1b
    return-void
.end method

.method private traverseCurrentAxis(IZLjava/lang/String;)Z
    .registers 5
    .parameter "direction"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    iget v0, p0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private traverseGivenAxis(IIZLjava/lang/String;)Z
    .registers 9
    .parameter "direction"
    .parameter "axis"
    .parameter "sendEvent"
    .parameter "contentDescription"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkit/AccessibilityInjectorFallback;->mWebView:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v1

    .local v1, webViewCore:Landroid/webkit/WebViewCore;
    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v2

    :cond_a
    const/4 v0, 0x0

    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz p3, :cond_16

    const/high16 v3, 0x2

    invoke-direct {p0, v3}, Landroid/webkit/AccessibilityInjectorFallback;->getPartialyPopulatedAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_16
    iget-object v3, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x7

    if-eq p2, v3, :cond_9

    const/16 v2, 0xbe

    invoke-virtual {v1, v2, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    const/4 v2, 0x1

    goto :goto_9
.end method


# virtual methods
.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 18
    .parameter "event"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/webkit/AccessibilityInjectorFallback;->isEnterActionKey(I)Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v13, 0x0

    :goto_d
    return v13

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_d

    :cond_1a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    const/4 v3, 0x0

    .local v3, binding:Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    sget-object v13, Landroid/webkit/AccessibilityInjectorFallback;->sBindings:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_26
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_49

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;

    .local v4, candidate:Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v13

    invoke-virtual {v4}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getKeyCode()I

    move-result v14

    if-ne v13, v14, :cond_26

    invoke-virtual {v4}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getModifiers()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v13

    if-eqz v13, :cond_26

    move-object v3, v4

    .end local v4           #candidate:Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;
    :cond_49
    if-nez v3, :cond_4d

    const/4 v13, 0x0

    goto :goto_d

    :cond_4d
    const/4 v9, 0x0

    .local v9, i:I
    invoke-virtual {v3}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getActionCount()I

    move-result v6

    .local v6, count:I
    :goto_52
    if-ge v9, v6, :cond_14c

    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getActionCode(I)I

    move-result v1

    .local v1, actionCode:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getAction(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, contentDescription:Ljava/lang/String;
    packed-switch v1, :pswitch_data_152

    const-string v13, "AccessibilityInjector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown action code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7b
    add-int/lit8 v9, v9, 0x1

    goto :goto_52

    :pswitch_7e
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v2

    .local v2, axis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_95

    const/4 v11, 0x1

    .local v11, sendEvent:Z
    :goto_8a
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v5}, Landroid/webkit/AccessibilityInjectorFallback;->setCurrentAxis(IZLjava/lang/String;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_7b

    .end local v11           #sendEvent:Z
    :cond_95
    const/4 v11, 0x0

    goto :goto_8a

    .end local v2           #axis:I
    :pswitch_97
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v7

    .local v7, direction:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    if-ne v7, v13, :cond_af

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    if-eqz v13, :cond_af

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    const/4 v13, 0x0

    goto/16 :goto_d

    :cond_af
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c6

    const/4 v11, 0x1

    .restart local v11       #sendEvent:Z
    :goto_bb
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11, v5}, Landroid/webkit/AccessibilityInjectorFallback;->traverseCurrentAxis(IZLjava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_7b

    .end local v11           #sendEvent:Z
    :cond_c6
    const/4 v11, 0x0

    goto :goto_bb

    .end local v7           #direction:I
    :pswitch_c8
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v7

    .restart local v7       #direction:I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    if-ne v7, v13, :cond_e0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    if-eqz v13, :cond_e0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    const/4 v13, 0x0

    goto/16 :goto_d

    :cond_e0
    move-object/from16 v0, p0

    iput v7, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v2

    .restart local v2       #axis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_fb

    const/4 v11, 0x1

    .restart local v11       #sendEvent:Z
    :goto_f0
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v11, v5}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;)Z

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto :goto_7b

    .end local v11           #sendEvent:Z
    :cond_fb
    const/4 v11, 0x0

    goto :goto_f0

    .end local v2           #axis:I
    .end local v7           #direction:I
    :pswitch_fd
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v8

    .local v8, fromAxis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v12

    .local v12, toAxis:I
    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getThirdArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_119

    const/4 v11, 0x1

    .restart local v11       #sendEvent:Z
    :goto_10d
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12, v11, v5}, Landroid/webkit/AccessibilityInjectorFallback;->performAxisTransition(IIZLjava/lang/String;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_7b

    .end local v11           #sendEvent:Z
    :cond_119
    const/4 v11, 0x0

    goto :goto_10d

    .end local v8           #fromAxis:I
    .end local v12           #toAxis:I
    :pswitch_11b
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mCurrentAxis:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_145

    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getFirstArgument(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    invoke-virtual {v3, v9}, Landroid/webkit/AccessibilityInjectorFallback$AccessibilityWebContentKeyBinding;->getSecondArgument(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_143

    const/4 v11, 0x1

    .restart local v11       #sendEvent:Z
    :goto_132
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDirection:I

    const/4 v14, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v11, v5}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;)Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_7b

    .end local v11           #sendEvent:Z
    :cond_143
    const/4 v11, 0x0

    goto :goto_132

    :cond_145
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_7b

    .end local v1           #actionCode:I
    .end local v5           #contentDescription:Ljava/lang/String;
    :cond_14c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkit/AccessibilityInjectorFallback;->mLastDownEventHandled:Z

    goto/16 :goto_d

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_97
        :pswitch_c8
        :pswitch_fd
        :pswitch_11b
    .end packed-switch
.end method

.method public onSelectionStringChange(Ljava/lang/String;)V
    .registers 7
    .parameter "selectionString"

    .prologue
    const/4 v2, 0x0

    const-string v1, "AccessibilityInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selection string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_27

    const/4 v1, 0x1

    :goto_1c
    iput-boolean v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mIsLastSelectionStringNull:Z

    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_26
    :goto_26
    return-void

    :cond_27
    move v1, v2

    goto :goto_1c

    :cond_29
    iget-object v1, p0, Landroid/webkit/AccessibilityInjectorFallback;->mScheduledEventStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_26

    if-eqz p1, :cond_26

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjectorFallback;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_26
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 8
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_26

    const/4 v2, 0x0

    :goto_6
    return v2

    :sswitch_7
    invoke-static {p1}, Landroid/webkit/AccessibilityInjectorFallback;->getDirectionForAction(I)I

    move-result v1

    .local v1, direction:I
    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/webkit/AccessibilityInjectorFallback;->getAxisForGranularity(I)I

    move-result v0

    .local v0, axis:I
    invoke-direct {p0, v1, v0, v3, v4}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;)Z

    move-result v2

    goto :goto_6

    .end local v0           #axis:I
    .end local v1           #direction:I
    :sswitch_1a
    invoke-static {p1}, Landroid/webkit/AccessibilityInjectorFallback;->getDirectionForAction(I)I

    move-result v1

    .restart local v1       #direction:I
    const/4 v0, 0x2

    .restart local v0       #axis:I
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/webkit/AccessibilityInjectorFallback;->traverseGivenAxis(IIZLjava/lang/String;)Z

    move-result v2

    goto :goto_6

    nop

    :sswitch_data_26
    .sparse-switch
        0x100 -> :sswitch_7
        0x200 -> :sswitch_7
        0x400 -> :sswitch_1a
        0x800 -> :sswitch_1a
    .end sparse-switch
.end method

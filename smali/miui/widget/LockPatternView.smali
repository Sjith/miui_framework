.class public Lmiui/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/LockPatternView$1;,
        Lmiui/widget/LockPatternView$SavedState;,
        Lmiui/widget/LockPatternView$OnPatternListener;,
        Lmiui/widget/LockPatternView$DisplayMode;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "LockPatternView"


# instance fields
.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefaultWithBackground:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mStrokeAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x3

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lmiui/widget/LockPatternView;->mDrawingProfilingStarted:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iput v4, p0, Lmiui/widget/LockPatternView;->mInProgressX:F

    iput v4, p0, Lmiui/widget/LockPatternView;->mInProgressY:F

    sget-object v0, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    iput-boolean v2, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    iput-boolean v3, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    iput-boolean v2, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    iput-boolean v3, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    const v0, 0x3dcccccd

    iput v0, p0, Lmiui/widget/LockPatternView;->mDiameterFactor:F

    const/16 v0, 0x40

    iput v0, p0, Lmiui/widget/LockPatternView;->mStrokeAlpha:I

    const v0, 0x3f19999a

    iput v0, p0, Lmiui/widget/LockPatternView;->mHitFactor:F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, p2}, Lmiui/widget/LockPatternView;->loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v2}, Lmiui/widget/LockPatternView;->setClickable(Z)V

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiui/widget/LockPatternView;->mStrokeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 5
    .parameter "newCell"

    .prologue
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/widget/LockPatternView;->notifyCellAdded()V

    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lmiui/widget/LockPatternView;->getRowHit(F)I

    move-result v1

    .local v1, rowHit:I
    if-gez v1, :cond_8

    :cond_7
    :goto_7
    return-object v2

    :cond_8
    invoke-direct {p0, p1}, Lmiui/widget/LockPatternView;->getColumnHit(F)I

    move-result v0

    .local v0, columnHit:I
    if-ltz v0, :cond_7

    iget-object v3, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_7

    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    goto :goto_7
.end method

.method private clearPatternDrawLookup()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v4, :cond_14

    const/4 v1, 0x0

    .local v1, j:I
    :goto_5
    if-ge v1, v4, :cond_11

    iget-object v2, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #j:I
    :cond_14
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 16
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    invoke-direct {p0, p1, p2}, Lmiui/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_8b

    const/4 v4, 0x0

    .local v4, fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v7, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .local v7, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_68

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v6, lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    sub-int v2, v8, v11

    .local v2, dRow:I
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    sub-int v1, v8, v11

    .local v1, dColumn:I
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    .local v5, fillInRow:I
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    .local v3, fillInColumn:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_4f

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_4f

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    if-lez v2, :cond_89

    move v8, v9

    :goto_4d
    add-int v5, v11, v8

    :cond_4f
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_64

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_64

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    if-lez v1, :cond_62

    move v10, v9

    :cond_62
    add-int v3, v8, v10

    :cond_64
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_68
    if-eqz v4, :cond_7d

    iget-object v8, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v10

    aget-object v8, v8, v10

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    aget-boolean v8, v8, v10

    if-nez v8, :cond_7d

    invoke-direct {p0, v4}, Lmiui/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    :cond_7d
    invoke-direct {p0, v0}, Lmiui/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    iget-boolean v8, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_88

    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Lmiui/widget/LockPatternView;->performHapticFeedback(II)Z

    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v4           #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_88
    :goto_88
    return-object v0

    .restart local v0       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v1       #dColumn:I
    .restart local v2       #dRow:I
    .restart local v3       #fillInColumn:I
    .restart local v4       #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v5       #fillInRow:I
    .restart local v6       #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v7       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_89
    move v8, v10

    goto :goto_4d

    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v4           #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_8b
    const/4 v0, 0x0

    goto :goto_88
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 30
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "start"
    .parameter "end"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    move-object/from16 v20, v0

    sget-object v21, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1bb

    const/4 v9, 0x1

    .local v9, green:Z
    :goto_f
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    .local v8, endRow:I
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v13

    .local v13, startRow:I
    invoke-virtual/range {p5 .. p5}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    .local v7, endColumn:I
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v12

    .local v12, startColumn:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v10, v20, 0x2

    .local v10, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    div-int/lit8 v11, v20, 0x2

    .local v11, offsetY:I
    if-eqz v9, :cond_1be

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .local v4, arrow:Landroid/graphics/Bitmap;
    :goto_4f
    move-object/from16 v0, p0

    iget v6, v0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    .local v6, cellWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    .local v5, cellHeight:I
    sub-int v20, v8, v13

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-int v22, v7, v12

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v16, v0

    .local v16, theta:F
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42b4

    add-float v3, v20, v21

    .local v3, angle:F
    sub-int v20, v8, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    .local v18, y:F
    sub-int v20, v7, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    .local v17, x:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    mul-float v22, v17, v17

    mul-float v23, v18, v18

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v19, v20, v21

    .local v19, yTranslate:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f80

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .local v14, sx:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x3f80

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .local v15, sy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    add-float v21, v21, p2

    int-to-float v0, v11

    move/from16 v22, v0

    add-float v22, v22, p3

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->preScale(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    int-to-float v0, v6

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    int-to-float v0, v5

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    sub-int v21, v6, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void

    .end local v3           #angle:F
    .end local v4           #arrow:Landroid/graphics/Bitmap;
    .end local v5           #cellHeight:I
    .end local v6           #cellWidth:I
    .end local v7           #endColumn:I
    .end local v8           #endRow:I
    .end local v9           #green:Z
    .end local v10           #offsetX:I
    .end local v11           #offsetY:I
    .end local v12           #startColumn:I
    .end local v13           #startRow:I
    .end local v14           #sx:F
    .end local v15           #sy:F
    .end local v16           #theta:F
    .end local v17           #x:F
    .end local v18           #y:F
    .end local v19           #yTranslate:F
    :cond_1bb
    const/4 v9, 0x0

    goto/16 :goto_f

    .restart local v7       #endColumn:I
    .restart local v8       #endRow:I
    .restart local v9       #green:Z
    .restart local v10       #offsetX:I
    .restart local v11       #offsetY:I
    .restart local v12       #startColumn:I
    .restart local v13       #startRow:I
    :cond_1be
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    goto/16 :goto_4f
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .registers 18
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "partOfPattern"

    .prologue
    if-eqz p4, :cond_c

    iget-boolean v10, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v10, :cond_7d

    iget-object v10, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v11, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_7d

    :cond_c
    iget-object v4, p0, Lmiui/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .local v4, outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefaultWithBackground:Landroid/graphics/Bitmap;

    .local v1, innerCircle:Landroid/graphics/Bitmap;
    :goto_10
    iget v9, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    .local v9, width:I
    iget v0, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    .local v0, height:I
    iget v6, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    .local v6, squareWidth:F
    iget v5, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    .local v5, squareHeight:F
    int-to-float v10, v9

    sub-float v10, v6, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    float-to-int v2, v10

    .local v2, offsetX:I
    int-to-float v10, v0

    sub-float v10, v5, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    float-to-int v3, v10

    .local v3, offsetY:I
    iget v10, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    iget v11, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .local v7, sx:F
    iget v10, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    iget v11, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .local v8, sy:F
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v11, p2, v2

    int-to-float v11, v11

    add-int v12, p3, v3

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v11, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget v12, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    neg-int v12, v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v10, p0, Lmiui/widget/LockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void

    .end local v0           #height:I
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v2           #offsetX:I
    .end local v3           #offsetY:I
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    .end local v5           #squareHeight:F
    .end local v6           #squareWidth:F
    .end local v7           #sx:F
    .end local v8           #sy:F
    .end local v9           #width:I
    :cond_7d
    iget-boolean v10, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v10, :cond_86

    iget-object v4, p0, Lmiui/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_10

    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_86
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v11, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_91

    iget-object v4, p0, Lmiui/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_10

    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_91
    iget-object v10, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v11, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    if-eq v10, v11, :cond_9d

    iget-object v10, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v11, Lmiui/widget/LockPatternView$DisplayMode;->Animate:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne v10, v11, :cond_a3

    :cond_9d
    iget-object v4, p0, Lmiui/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto/16 :goto_10

    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_a3
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unknown display mode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "resId"

    .prologue
    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .registers 5
    .parameter "column"

    .prologue
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .registers 5
    .parameter "row"

    .prologue
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .registers 10
    .parameter "x"

    .prologue
    iget v4, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    .local v4, squareWidth:F
    iget v5, p0, Lmiui/widget/LockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .local v1, hitSize:F
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    const/4 v5, 0x3

    if-ge v2, v5, :cond_26

    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .local v0, hitLeft:F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_23

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_23

    .end local v0           #hitLeft:F
    .end local v2           #i:I
    :goto_22
    return v2

    .restart local v0       #hitLeft:F
    .restart local v2       #i:I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .end local v0           #hitLeft:F
    :cond_26
    const/4 v2, -0x1

    goto :goto_22
.end method

.method private getRowHit(F)I
    .registers 10
    .parameter "y"

    .prologue
    iget v4, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    .local v4, squareHeight:F
    iget v5, p0, Lmiui/widget/LockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .local v0, hitSize:F
    iget v5, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    const/4 v5, 0x3

    if-ge v2, v5, :cond_26

    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .local v1, hitTop:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_23

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_23

    .end local v1           #hitTop:F
    .end local v2           #i:I
    :goto_22
    return v2

    .restart local v1       #hitTop:F
    .restart local v2       #i:I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .end local v1           #hitTop:F
    :cond_26
    const/4 v2, -0x1

    goto :goto_22
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .registers 13
    .parameter "event"

    .prologue
    const/high16 v8, 0x4000

    invoke-direct {p0}, Lmiui/widget/LockPatternView;->resetPattern()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .local v6, y:F
    invoke-direct {p0, v5, v6}, Lmiui/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .local v1, hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v1, :cond_4b

    const/4 v7, 0x1

    iput-boolean v7, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    sget-object v7, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    iput-object v7, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-direct {p0}, Lmiui/widget/LockPatternView;->notifyPatternStarted()V

    :goto_1d
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .local v2, startX:F
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .local v3, startY:F
    iget v7, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .local v4, widthOffset:F
    iget v7, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .local v0, heightOffset:F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lmiui/widget/LockPatternView;->invalidate(IIII)V

    .end local v0           #heightOffset:F
    .end local v2           #startX:F
    .end local v3           #startY:F
    .end local v4           #widthOffset:F
    :cond_46
    iput v5, p0, Lmiui/widget/LockPatternView;->mInProgressX:F

    iput v6, p0, Lmiui/widget/LockPatternView;->mInProgressY:F

    return-void

    :cond_4b
    const/4 v7, 0x0

    iput-boolean v7, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    invoke-direct {p0}, Lmiui/widget/LockPatternView;->notifyPatternCleared()V

    goto :goto_1d
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .registers 33
    .parameter "event"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .local v8, historySize:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    add-int/lit8 v27, v8, 0x1

    move/from16 v0, v27

    if-ge v10, v0, :cond_218

    if-ge v10, v8, :cond_1df

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v25

    .local v25, x:F
    :goto_13
    if-ge v10, v8, :cond_1e5

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v26

    .local v26, y:F
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v18

    .local v18, patternSizePreHitDetect:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lmiui/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v9

    .local v9, hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, patternSize:I
    if-eqz v9, :cond_4e

    const/16 v27, 0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_4e

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    invoke-direct/range {p0 .. p0}, Lmiui/widget/LockPatternView;->notifyPatternStarted()V

    :cond_4e
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mInProgressX:F

    move/from16 v27, v0

    sub-float v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .local v5, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mInProgressY:F

    move/from16 v27, v0

    sub-float v27, v26, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .local v6, dy:F
    add-float v27, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v28, v0

    const v29, 0x3c23d70a

    mul-float v28, v28, v29

    cmpl-float v27, v27, v28

    if-lez v27, :cond_1db

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/LockPatternView;->mInProgressX:F

    .local v14, oldX:F
    move-object/from16 v0, p0

    iget v15, v0, Lmiui/widget/LockPatternView;->mInProgressY:F

    .local v15, oldY:F
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/LockPatternView;->mInProgressX:F

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/widget/LockPatternView;->mInProgressY:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_214

    if-lez v17, :cond_214

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .local v16, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mDiameterFactor:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    const/high16 v28, 0x3f00

    mul-float v19, v27, v28

    .local v19, radius:F
    add-int/lit8 v27, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v12, lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v21

    .local v21, startX:F
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v22

    .local v22, startY:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .local v11, invalidateRect:Landroid/graphics/Rect;
    cmpg-float v27, v21, v25

    if-gez v27, :cond_1eb

    move/from16 v13, v21

    .local v13, left:F
    move/from16 v20, v25

    .local v20, right:F
    :goto_dd
    cmpg-float v27, v22, v26

    if-gez v27, :cond_1f1

    move/from16 v23, v22

    .local v23, top:F
    move/from16 v4, v26

    .local v4, bottom:F
    :goto_e5
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    cmpg-float v27, v21, v14

    if-gez v27, :cond_1f7

    move/from16 v13, v21

    move/from16 v20, v14

    :goto_114
    cmpg-float v27, v22, v15

    if-gez v27, :cond_1fc

    move/from16 v23, v22

    move v4, v15

    :goto_11b
    sub-float v27, v13, v19

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v19

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v19

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v19

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    if-eqz v9, :cond_1d6

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v21

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v22

    const/16 v27, 0x2

    move/from16 v0, v17

    move/from16 v1, v27

    if-lt v0, v1, :cond_20b

    add-int/lit8 v27, v17, -0x1

    sub-int v28, v17, v18

    sub-int v27, v27, v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .restart local v9       #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    cmpg-float v27, v21, v14

    if-gez v27, :cond_202

    move/from16 v13, v21

    move/from16 v20, v14

    :goto_194
    cmpg-float v27, v22, v15

    if-gez v27, :cond_206

    move/from16 v23, v22

    move v4, v15

    :goto_19b
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v24, v27, v28

    .local v24, widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v27, v0

    const/high16 v28, 0x4000

    div-float v7, v27, v28

    .local v7, heightOffset:F
    sub-float v27, v13, v24

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v28, v23, v7

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v20, v24

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-float v30, v4, v7

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .end local v7           #heightOffset:F
    .end local v24           #widthOffset:F
    :cond_1d6
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .end local v4           #bottom:F
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v12           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v13           #left:F
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    :cond_1db
    :goto_1db
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_1df
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    goto/16 :goto_13

    .restart local v25       #x:F
    :cond_1e5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    goto/16 :goto_1b

    .restart local v5       #dx:F
    .restart local v6       #dy:F
    .restart local v9       #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v11       #invalidateRect:Landroid/graphics/Rect;
    .restart local v12       #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v14       #oldX:F
    .restart local v15       #oldY:F
    .restart local v16       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v17       #patternSize:I
    .restart local v18       #patternSizePreHitDetect:I
    .restart local v19       #radius:F
    .restart local v21       #startX:F
    .restart local v22       #startY:F
    .restart local v26       #y:F
    :cond_1eb
    move/from16 v13, v25

    .restart local v13       #left:F
    move/from16 v20, v21

    .restart local v20       #right:F
    goto/16 :goto_dd

    :cond_1f1
    move/from16 v23, v26

    .restart local v23       #top:F
    move/from16 v4, v22

    .restart local v4       #bottom:F
    goto/16 :goto_e5

    :cond_1f7
    move v13, v14

    move/from16 v20, v21

    goto/16 :goto_114

    :cond_1fc
    move/from16 v23, v15

    move/from16 v4, v22

    goto/16 :goto_11b

    :cond_202
    move v13, v14

    move/from16 v20, v21

    goto :goto_194

    :cond_206
    move/from16 v23, v15

    move/from16 v4, v22

    goto :goto_19b

    :cond_20b
    move/from16 v20, v21

    move/from16 v13, v21

    move/from16 v4, v22

    move/from16 v23, v22

    goto :goto_19b

    .end local v4           #bottom:F
    .end local v11           #invalidateRect:Landroid/graphics/Rect;
    .end local v12           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v13           #left:F
    .end local v16           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v19           #radius:F
    .end local v20           #right:F
    .end local v21           #startX:F
    .end local v22           #startY:F
    .end local v23           #top:F
    :cond_214
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/LockPatternView;->invalidate()V

    goto :goto_1db

    .end local v5           #dx:F
    .end local v6           #dy:F
    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14           #oldX:F
    .end local v15           #oldY:F
    .end local v17           #patternSize:I
    .end local v18           #patternSizePreHitDetect:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_218
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    invoke-direct {p0}, Lmiui/widget/LockPatternView;->notifyPatternDetected()V

    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->invalidate()V

    :cond_11
    return-void
.end method

.method private loadAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    sget-object v7, Lmiui/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, aspect:Ljava/lang/String;
    const-string/jumbo v7, "square"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    const/4 v7, 0x0

    iput v7, p0, Lmiui/widget/LockPatternView;->mAspect:I

    :goto_17
    iget-object v7, p0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v7, 0x2

    const v8, 0x3dcccccd

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lmiui/widget/LockPatternView;->mDiameterFactor:F

    const/16 v7, 0xb

    const/16 v8, 0x80

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, p0, Lmiui/widget/LockPatternView;->mStrokeAlpha:I

    const/4 v7, 0x4

    const v8, 0x6020033

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefaultWithBackground:Landroid/graphics/Bitmap;

    const/4 v7, 0x3

    const v8, 0x6020055

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    const/4 v7, 0x5

    const v8, 0x6020056

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lmiui/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    const/4 v7, 0x6

    const v8, 0x6020057

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lmiui/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    const/4 v7, 0x7

    const v8, 0x6020058

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lmiui/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    const/16 v7, 0x8

    const v8, 0x6020038

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lmiui/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    const/16 v7, 0x9

    const v8, 0x6020039

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lmiui/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    const/16 v7, 0xa

    const v8, 0x6020032

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Lmiui/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lmiui/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    const/4 v7, 0x5

    new-array v4, v7, [Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    iget-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    const/4 v7, 0x4

    iget-object v8, p0, Lmiui/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    aput-object v8, v4, v7

    .local v4, bitmaps:[Landroid/graphics/Bitmap;
    move-object v1, v4

    .local v1, arr$:[Landroid/graphics/Bitmap;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_c8
    if-ge v5, v6, :cond_108

    aget-object v3, v1, v5

    .local v3, bitmap:Landroid/graphics/Bitmap;
    iget v7, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    iget v7, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lmiui/widget/LockPatternView;->mBitmapHeight:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_c8

    .end local v1           #arr$:[Landroid/graphics/Bitmap;
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #bitmaps:[Landroid/graphics/Bitmap;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_e7
    const-string/jumbo v7, "lock_width"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f5

    const/4 v7, 0x1

    iput v7, p0, Lmiui/widget/LockPatternView;->mAspect:I

    goto/16 :goto_17

    :cond_f5
    const-string/jumbo v7, "lock_height"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_103

    const/4 v7, 0x2

    iput v7, p0, Lmiui/widget/LockPatternView;->mAspect:I

    goto/16 :goto_17

    :cond_103
    const/4 v7, 0x0

    iput v7, p0, Lmiui/widget/LockPatternView;->mAspect:I

    goto/16 :goto_17

    .restart local v1       #arr$:[Landroid/graphics/Bitmap;
    .restart local v4       #bitmaps:[Landroid/graphics/Bitmap;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_108
    return-void
.end method

.method private notifyCellAdded()V
    .registers 3

    .prologue
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lmiui/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    :cond_b
    const v0, 0x60c01b3

    invoke-direct {p0, v0}, Lmiui/widget/LockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private notifyPatternCleared()V
    .registers 2

    .prologue
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lmiui/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_9
    const v0, 0x60c01b2

    invoke-direct {p0, v0}, Lmiui/widget/LockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private notifyPatternDetected()V
    .registers 3

    .prologue
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lmiui/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_b
    const v0, 0x60c01b4

    invoke-direct {p0, v0}, Lmiui/widget/LockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private notifyPatternStarted()V
    .registers 2

    .prologue
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lmiui/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    :cond_9
    const v0, 0x60c01b1

    invoke-direct {p0, v0}, Lmiui/widget/LockPatternView;->sendAccessEvent(I)V

    return-void
.end method

.method private resetPattern()V
    .registers 2

    .prologue
    iget-object v0, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lmiui/widget/LockPatternView;->clearPatternDrawLookup()V

    sget-object v0, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private resolveMeasured(II)I
    .registers 6
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    const/4 v0, 0x0

    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    move v0, v1

    :goto_d
    return v0

    :sswitch_e
    move v0, p2

    goto :goto_d

    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_d

    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .registers 3
    .parameter "resId"

    .prologue
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/widget/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/widget/LockPatternView;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/widget/LockPatternView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public clearPattern()V
    .registers 1

    .prologue
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->resetPattern()V

    return-void
.end method

.method public disableInput()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public enableInput()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 2

    .prologue
    iget v0, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 2

    .prologue
    iget v0, p0, Lmiui/widget/LockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .registers 2

    .prologue
    iget-boolean v0, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 2

    .prologue
    iget-boolean v0, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 38
    .parameter "canvas"

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    .local v28, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, count:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .local v15, drawLookup:[[Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v4, Lmiui/widget/LockPatternView$DisplayMode;->Animate:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_bb

    add-int/lit8 v3, v12, 0x1

    mul-int/lit16 v0, v3, 0x2bc

    move/from16 v25, v0

    .local v25, oneCycle:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lmiui/widget/LockPatternView;->mAnimatingPeriodStart:J

    move-wide/from16 v34, v0

    sub-long v3, v3, v34

    long-to-int v3, v3

    rem-int v31, v3, v25

    .local v31, spotInCycle:I
    move/from16 v0, v31

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v23, v0

    .local v23, numCircles:I
    invoke-direct/range {p0 .. p0}, Lmiui/widget/LockPatternView;->clearPatternDrawLookup()V

    const/16 v19, 0x0

    .local v19, i:I
    :goto_36
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_57

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v7, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    const/16 v34, 0x1

    aput-boolean v34, v3, v4

    add-int/lit8 v19, v19, 0x1

    goto :goto_36

    .end local v7           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_57
    if-lez v23, :cond_121

    move/from16 v0, v23

    if-ge v0, v12, :cond_121

    const/16 v21, 0x1

    .local v21, needToUpdateInProgressPoint:Z
    :goto_5f
    if-eqz v21, :cond_b8

    move/from16 v0, v31

    rem-int/lit16 v3, v0, 0x2bc

    int-to-float v3, v3

    const/high16 v4, 0x442f

    div-float v29, v3, v4

    .local v29, percentageOfNextCircle:F
    add-int/lit8 v3, v23, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v13, currentCell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .local v10, centerX:F
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    .local v11, centerY:F
    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v22, nextCell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v3

    sub-float/2addr v3, v10

    mul-float v17, v29, v3

    .local v17, dx:F
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    sub-float/2addr v3, v11

    mul-float v18, v29, v3

    .local v18, dy:F
    add-float v3, v10, v17

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/widget/LockPatternView;->mInProgressX:F

    add-float v3, v11, v18

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/widget/LockPatternView;->mInProgressY:F

    .end local v10           #centerX:F
    .end local v11           #centerY:F
    .end local v13           #currentCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v17           #dx:F
    .end local v18           #dy:F
    .end local v22           #nextCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v29           #percentageOfNextCircle:F
    :cond_b8
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/LockPatternView;->invalidate()V

    .end local v19           #i:I
    .end local v21           #needToUpdateInProgressPoint:Z
    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    :cond_bb
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v33, v0

    .local v33, squareWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v32, v0

    .local v32, squareHeight:F
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/widget/LockPatternView;->mDiameterFactor:F

    mul-float v3, v3, v33

    const/high16 v4, 0x3f00

    mul-float v30, v3, v4

    .local v30, radius:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .local v14, currentPath:Landroid/graphics/Path;
    invoke-virtual {v14}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v27, v0

    .local v27, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v26, v0

    .local v26, paddingLeft:I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_ef
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ge v0, v3, :cond_128

    move/from16 v0, v27

    int-to-float v3, v0

    move/from16 v0, v19

    int-to-float v4, v0

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .local v6, topY:F
    const/16 v20, 0x0

    .local v20, j:I
    :goto_100
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ge v0, v3, :cond_125

    move/from16 v0, v26

    int-to-float v3, v0

    move/from16 v0, v20

    int-to-float v4, v0

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .local v5, leftX:F
    float-to-int v3, v5

    float-to-int v4, v6

    aget-object v34, v15, v19

    aget-boolean v34, v34, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    invoke-direct {v0, v1, v3, v4, v2}, Lmiui/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_100

    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v14           #currentPath:Landroid/graphics/Path;
    .end local v20           #j:I
    .end local v26           #paddingLeft:I
    .end local v27           #paddingTop:I
    .end local v30           #radius:F
    .end local v32           #squareHeight:F
    .end local v33           #squareWidth:F
    .restart local v23       #numCircles:I
    .restart local v25       #oneCycle:I
    .restart local v31       #spotInCycle:I
    :cond_121
    const/16 v21, 0x0

    goto/16 :goto_5f

    .end local v23           #numCircles:I
    .end local v25           #oneCycle:I
    .end local v31           #spotInCycle:I
    .restart local v6       #topY:F
    .restart local v14       #currentPath:Landroid/graphics/Path;
    .restart local v20       #j:I
    .restart local v26       #paddingLeft:I
    .restart local v27       #paddingTop:I
    .restart local v30       #radius:F
    .restart local v32       #squareHeight:F
    .restart local v33       #squareWidth:F
    :cond_125
    add-int/lit8 v19, v19, 0x1

    goto :goto_ef

    .end local v6           #topY:F
    .end local v20           #j:I
    :cond_128
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v3, :cond_136

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v4, Lmiui/widget/LockPatternView$DisplayMode;->Wrong:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_1c9

    :cond_136
    const/16 v16, 0x1

    .local v16, drawPath:Z
    :goto_138
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1cd

    const/16 v24, 0x1

    .local v24, oldFlag:Z
    :goto_146
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz v16, :cond_17a

    const/16 v19, 0x0

    :goto_152
    add-int/lit8 v3, v12, -0x1

    move/from16 v0, v19

    if-ge v0, v3, :cond_17a

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .restart local v7       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v3, v19, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v8, next:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    aget-boolean v3, v3, v4

    if-nez v3, :cond_1d1

    .end local v7           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v8           #next:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_17a
    if-eqz v16, :cond_1bf

    const/4 v9, 0x0

    .local v9, anyCircles:Z
    const/16 v19, 0x0

    :goto_17f
    move/from16 v0, v19

    if-ge v0, v12, :cond_19b

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .restart local v7       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v3, v15, v3

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    aget-boolean v3, v3, v4

    if-nez v3, :cond_1f4

    .end local v7           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_19b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v3, :cond_1a9

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v4, Lmiui/widget/LockPatternView$DisplayMode;->Animate:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne v3, v4, :cond_1b6

    :cond_1a9
    if-eqz v9, :cond_1b6

    move-object/from16 v0, p0

    iget v3, v0, Lmiui/widget/LockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v14, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1b6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .end local v9           #anyCircles:Z
    :cond_1bf
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    .end local v16           #drawPath:Z
    .end local v24           #oldFlag:Z
    :cond_1c9
    const/16 v16, 0x0

    goto/16 :goto_138

    .restart local v16       #drawPath:Z
    :cond_1cd
    const/16 v24, 0x0

    goto/16 :goto_146

    .restart local v7       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v8       #next:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v24       #oldFlag:Z
    :cond_1d1
    move/from16 v0, v26

    int-to-float v3, v0

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v33

    add-float v5, v3, v4

    .restart local v5       #leftX:F
    move/from16 v0, v27

    int-to-float v3, v0

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v32

    add-float v6, v3, v4

    .restart local v6       #topY:F
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lmiui/widget/LockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_152

    .end local v5           #leftX:F
    .end local v6           #topY:F
    .end local v8           #next:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v9       #anyCircles:Z
    :cond_1f4
    const/4 v9, 0x1

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .restart local v10       #centerX:F
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    .restart local v11       #centerY:F
    if-nez v19, :cond_212

    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_20e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_17f

    :cond_212
    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_20e
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    packed-switch v0, :pswitch_data_2e

    :goto_13
    :pswitch_13
    invoke-virtual {p0, p1}, Lmiui/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .end local v0           #action:I
    :cond_19
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .restart local v0       #action:I
    :pswitch_1e
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    :pswitch_23
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    :pswitch_28
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_13

    nop

    :pswitch_data_2e
    .packed-switch 0x7
        :pswitch_23
        :pswitch_13
        :pswitch_1e
        :pswitch_28
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .local v1, minimumWidth:I
    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lmiui/widget/LockPatternView;->resolveMeasured(II)I

    move-result v3

    .local v3, viewWidth:I
    invoke-direct {p0, p2, v0}, Lmiui/widget/LockPatternView;->resolveMeasured(II)I

    move-result v2

    .local v2, viewHeight:I
    iget v4, p0, Lmiui/widget/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_2a

    :goto_15
    invoke-virtual {p0, v3, v2}, Lmiui/widget/LockPatternView;->setMeasuredDimension(II)V

    return-void

    :pswitch_19
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    goto :goto_15

    :pswitch_1f
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_15

    :pswitch_24
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_15

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1f
        :pswitch_24
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    move-object v0, p1

    check-cast v0, Lmiui/widget/LockPatternView$SavedState;

    .local v0, ss:Lmiui/widget/LockPatternView$SavedState;
    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    sget-object v1, Lmiui/widget/LockPatternView$DisplayMode;->Correct:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmiui/widget/LockPatternView;->setPattern(Lmiui/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    invoke-static {}, Lmiui/widget/LockPatternView$DisplayMode;->values()[Lmiui/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    invoke-virtual {v0}, Lmiui/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .prologue
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lmiui/widget/LockPatternView$SavedState;

    iget-object v2, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lmiui/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lmiui/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLmiui/widget/LockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v4, 0x4040

    iget v2, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v1, v2, v3

    .local v1, width:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lmiui/widget/LockPatternView;->mSquareWidth:F

    iget v2, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v0, v2, v3

    .local v0, height:I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lmiui/widget/LockPatternView;->mSquareHeight:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lmiui/widget/LockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2c

    move v0, v1

    goto :goto_d

    :pswitch_17
    invoke-direct {p0, p1}, Lmiui/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_d

    :pswitch_1b
    invoke-direct {p0, p1}, Lmiui/widget/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_d

    :pswitch_1f
    invoke-direct {p0, p1}, Lmiui/widget/LockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_d

    :pswitch_23
    invoke-direct {p0}, Lmiui/widget/LockPatternView;->resetPattern()V

    iput-boolean v1, p0, Lmiui/widget/LockPatternView;->mPatternInProgress:Z

    invoke-direct {p0}, Lmiui/widget/LockPatternView;->notifyPatternCleared()V

    goto :goto_d

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method

.method public setDisplayMode(Lmiui/widget/LockPatternView$DisplayMode;)V
    .registers 5
    .parameter "displayMode"

    .prologue
    iput-object p1, p0, Lmiui/widget/LockPatternView;->mPatternDisplayMode:Lmiui/widget/LockPatternView$DisplayMode;

    sget-object v1, Lmiui/widget/LockPatternView$DisplayMode;->Animate:Lmiui/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_3d

    iget-object v1, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_17

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/widget/LockPatternView;->mAnimatingPeriodStart:J

    iget-object v1, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, first:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lmiui/widget/LockPatternView;->mInProgressX:F

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lmiui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lmiui/widget/LockPatternView;->mInProgressY:F

    invoke-direct {p0}, Lmiui/widget/LockPatternView;->clearPatternDrawLookup()V

    .end local v0           #first:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_3d
    invoke-virtual {p0}, Lmiui/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method public setInStealthMode(Z)V
    .registers 2
    .parameter "inStealthMode"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/LockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setOnPatternListener(Lmiui/widget/LockPatternView$OnPatternListener;)V
    .registers 2
    .parameter "onPatternListener"

    .prologue
    iput-object p1, p0, Lmiui/widget/LockPatternView;->mOnPatternListener:Lmiui/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method public setPattern(Lmiui/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .registers 8
    .parameter "displayMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lmiui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lmiui/widget/LockPatternView;->clearPatternDrawLookup()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lmiui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_11

    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_2d
    invoke-virtual {p0, p1}, Lmiui/widget/LockPatternView;->setDisplayMode(Lmiui/widget/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 2
    .parameter "tactileFeedbackEnabled"

    .prologue
    iput-boolean p1, p0, Lmiui/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

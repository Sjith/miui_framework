.class public Lcom/android/internal/app/ActionBarImpl$TabImpl;
.super Landroid/app/ActionBar$Tab;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroid/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ActionBarImpl;)V
    .registers 3
    .parameter

    .prologue
    .line 968
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    .line 974
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroid/app/ActionBar$TabListener;
    .registers 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 1025
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .registers 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1068
    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .registers 3
    .parameter "resId"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .registers 4
    .parameter "contentDesc"

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1078
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    .line 1079
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1081
    :cond_11
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .registers 4
    .parameter "layoutResId"

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .registers 4
    .parameter "view"

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    .line 1006
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    .line 1007
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1009
    :cond_11
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .registers 3
    .parameter "resId"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .registers 4
    .parameter "icon"

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1040
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    .line 1041
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1043
    :cond_11
    return-object p0
.end method

.method public setPosition(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 1029
    iput p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    .line 1030
    return-void
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .registers 2
    .parameter "callback"

    .prologue
    .line 994
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mCallback:Landroid/app/ActionBar$TabListener;

    .line 995
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .registers 2
    .parameter "tag"

    .prologue
    .line 984
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    .line 985
    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .registers 3
    .parameter "resId"

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1200(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .registers 4
    .parameter "text"

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1054
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_11

    .line 1055
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #getter for: Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1057
    :cond_11
    return-object p0
.end method
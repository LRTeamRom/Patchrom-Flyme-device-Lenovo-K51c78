.class Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/lenovo/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/lenovo/internal/widget/ActionBarView;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/internal/widget/ActionBarView;Lcom/lenovo/internal/widget/ActionBarView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/internal/widget/ActionBarView;
    .param p2, "x1"    # Lcom/lenovo/internal/widget/ActionBarView$1;

    .prologue
    .line 1701
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/lenovo/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1793
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1797
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 1798
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1801
    :cond_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1802
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$800(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->access$700(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1803
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iput-object v3, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1808
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1500(Lcom/lenovo/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1500(Lcom/lenovo/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1810
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$900(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1813
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mDisplayOptions:I
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1500(Lcom/lenovo/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1814
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1000(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_7

    .line 1815
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # invokes: Lcom/lenovo/internal/widget/ActionBarView;->initTitle()V
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1600(Lcom/lenovo/internal/widget/ActionBarView;)V

    .line 1820
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1100(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1100(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1821
    :cond_4
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1200(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1200(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1822
    :cond_5
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1300(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1300(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1824
    :cond_6
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$700(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1825
    iput-object v3, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 1826
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mWasHomeEnabled:Z
    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->access$1700(Lcom/lenovo/internal/widget/ActionBarView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 1827
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarView;->requestLayout()V

    .line 1828
    invoke-virtual {p2, v2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1830
    const/4 v0, 0x1

    return v0

    .line 1817
    :cond_7
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1000(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 6
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1764
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/lenovo/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1765
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1766
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$600(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$700(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->access$600(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/lenovo/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1768
    :cond_0
    iput-object p2, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 1769
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_1

    .line 1770
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1772
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$700(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->access$800(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1773
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$800(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    invoke-static {v1}, Lcom/lenovo/internal/widget/ActionBarView;->access$700(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1775
    :cond_2
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mHomeLayout:Lcom/lenovo/internal/widget/ActionBarView$HomeView;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$900(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1776
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1000(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1000(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1777
    :cond_3
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1100(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mTabScrollView:Lcom/lenovo/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1100(Lcom/lenovo/internal/widget/ActionBarView;)Lcom/lenovo/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/lenovo/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1778
    :cond_4
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1200(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1200(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1779
    :cond_5
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1300(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # getter for: Lcom/lenovo/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;
    invoke-static {v0}, Lcom/lenovo/internal/widget/ActionBarView;->access$1300(Lcom/lenovo/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1780
    :cond_6
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    # invokes: Lcom/lenovo/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V
    invoke-static {v0, v4, v4}, Lcom/lenovo/internal/widget/ActionBarView;->access$1400(Lcom/lenovo/internal/widget/ActionBarView;ZZ)V

    .line 1781
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarView;->requestLayout()V

    .line 1782
    invoke-virtual {p2, v5}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1784
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_7

    .line 1785
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/lenovo/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/lenovo/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1788
    :cond_7
    return v5
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1758
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1835
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/lenovo/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1716
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    .line 1711
    :cond_0
    iput-object p2, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 1712
    return-void
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1754
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1845
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1840
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1749
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1745
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1722
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1723
    const/4 v1, 0x0

    .line 1725
    .local v1, "found":Z
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1726
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1727
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1728
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    check-cast v3, Lcom/lenovo/internal/view/SupportMenuItem;

    .line 1729
    .local v3, "item":Lcom/lenovo/internal/view/SupportMenuItem;
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1730
    const/4 v1, 0x1

    .line 1736
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/lenovo/internal/view/SupportMenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1738
    iget-object v4, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    .line 1741
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1727
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/lenovo/internal/view/SupportMenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

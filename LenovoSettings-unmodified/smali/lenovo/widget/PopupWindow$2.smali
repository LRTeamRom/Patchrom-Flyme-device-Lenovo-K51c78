.class Llenovo/widget/PopupWindow$2;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llenovo/widget/PopupWindow;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llenovo/widget/PopupWindow;


# direct methods
.method constructor <init>(Llenovo/widget/PopupWindow;)V
    .locals 0

    .prologue
    .line 1350
    iput-object p1, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x0

    .line 1363
    :try_start_0
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$700(Llenovo/widget/PopupWindow;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v1}, Llenovo/widget/PopupWindow;->access$100(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$100(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v1}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$100(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$100(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v1}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1368
    :cond_0
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # setter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0, v3}, Llenovo/widget/PopupWindow;->access$102(Llenovo/widget/PopupWindow;Landroid/view/View;)Landroid/view/View;

    .line 1370
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mOnDismissListener:Llenovo/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$900(Llenovo/widget/PopupWindow;)Llenovo/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mOnDismissListener:Llenovo/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$900(Llenovo/widget/PopupWindow;)Llenovo/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Llenovo/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1375
    :cond_1
    return-void

    .line 1365
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$100(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$100(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1366
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$100(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v2}, Llenovo/widget/PopupWindow;->access$800(Llenovo/widget/PopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1368
    :cond_2
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # setter for: Llenovo/widget/PopupWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0, v3}, Llenovo/widget/PopupWindow;->access$102(Llenovo/widget/PopupWindow;Landroid/view/View;)Landroid/view/View;

    .line 1370
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mOnDismissListener:Llenovo/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$900(Llenovo/widget/PopupWindow;)Llenovo/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1371
    iget-object v0, p0, Llenovo/widget/PopupWindow$2;->this$0:Llenovo/widget/PopupWindow;

    # getter for: Llenovo/widget/PopupWindow;->mOnDismissListener:Llenovo/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Llenovo/widget/PopupWindow;->access$900(Llenovo/widget/PopupWindow;)Llenovo/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Llenovo/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_3
    throw v1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1358
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1354
    return-void
.end method
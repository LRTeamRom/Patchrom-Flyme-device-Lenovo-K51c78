.class Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1$1;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 164
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;

    iget v4, v4, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$position:I

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;

    iget-object v5, v5, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v2, v4, v5

    .line 165
    .local v2, "index":I
    if-ltz v2, :cond_0

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 166
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 167
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 168
    .local v0, "centerX":I
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 169
    .local v1, "centerY":I
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1$1;->this$1:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;

    iget-object v4, v4, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment$1;->val$highlight:Landroid/graphics/drawable/Drawable;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 170
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 171
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPressed(Z)V

    .line 173
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.class Lcom/flyme/deviceoriginalsettings/MasterClear$4;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/MasterClear;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$4;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 292
    const-string v0, "MasterClear"

    const-string v1, "format"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$4;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # getter for: Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$000(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$4;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # getter for: Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$000(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$4;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # invokes: Lcom/flyme/deviceoriginalsettings/MasterClear;->refreshPrompt()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$200(Lcom/flyme/deviceoriginalsettings/MasterClear;)V

    .line 297
    return-void
.end method

.class Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "NotificationAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment;

.field final synthetic val$cn:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment$2;->this$1:Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment$2;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment$2;->this$1:Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment;->this$0:Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings;

    # getter for: Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings;->mEnabledListeners:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings;->access$000(Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment$2;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment$2;->this$1:Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings$ListenerWarningDialogFragment;->this$0:Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings;->saveEnabledListeners()V

    .line 115
    return-void
.end method

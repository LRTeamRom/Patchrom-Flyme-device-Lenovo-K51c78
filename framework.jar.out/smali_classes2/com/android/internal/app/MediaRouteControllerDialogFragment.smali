.class public Lcom/android/internal/app/MediaRouteControllerDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaRouteControllerDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->setCancelable(Z)V

    const/4 v0, 0x0

    const v1, #android:style@Theme.DeviceDefault.Light.Dialog#t

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->setStyle(II)V

    return-void
.end method


# virtual methods
.method public onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteControllerDialog;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/MediaRouteControllerDialogFragment;->onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteControllerDialog;

    move-result-object v0

    return-object v0
.end method

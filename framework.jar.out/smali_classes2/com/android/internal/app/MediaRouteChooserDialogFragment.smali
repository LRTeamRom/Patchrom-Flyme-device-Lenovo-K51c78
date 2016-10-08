.class public Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# instance fields
.field private final ARGUMENT_ROUTE_TYPES:Ljava/lang/String;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-string v0, "routeTypes"

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->ARGUMENT_ROUTE_TYPES:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setCancelable(Z)V

    const/4 v0, 0x0

    const v1, #android:style@Theme.DeviceDefault.Light.Dialog#t

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setStyle(II)V

    return-void
.end method


# virtual methods
.method public getRouteTypes()I
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "routeTypes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteChooserDialog;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getTheme()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->onCreateChooserDialog(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/internal/app/MediaRouteChooserDialog;

    move-result-object v0

    .line 98
    .local v0, "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getRouteTypes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    .line 99
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-object v0
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eq p1, v1, :cond_0

    .line 75
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/MediaRouteChooserDialog;

    .line 78
    .local v0, "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .end local v0    # "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    :cond_0
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3
    .param p1, "types"    # I

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getRouteTypes()I

    move-result v2

    if-eq p1, v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_0
    const-string v2, "routeTypes"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/MediaRouteChooserDialog;

    .line 67
    .local v1, "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v1, p1}, Lcom/android/internal/app/MediaRouteChooserDialog;->setRouteTypes(I)V

    .line 71
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialog":Lcom/android/internal/app/MediaRouteChooserDialog;
    :cond_1
    return-void
.end method

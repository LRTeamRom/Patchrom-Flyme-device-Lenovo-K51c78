.class Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/location/LocationSettings;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const v3, 0x7f0c0280

    const/4 v2, 0x0

    .line 150
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.mediatek.settings.launch_agps_setting_enter"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .local v12, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 161
    .end local v12    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0c0190

    const-class v0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-class v0, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move v5, v3

    move-object v9, v2

    invoke-static/range {v4 .. v11}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    const-class v1, Lcom/flyme/deviceoriginalsettings/location/AGPSSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/location/LocationSettings$1;->this$0:Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    const/4 v6, 0x0

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

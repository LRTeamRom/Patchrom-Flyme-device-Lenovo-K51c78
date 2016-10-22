.class public Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;
.super Landroid/app/ListFragment;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;,
        Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$ViewHolder;
    }
.end annotation


# static fields
.field static final DIALOG_WARNING:I = 0x1

.field static final TAG:Ljava/lang/String; = "DeviceAdminSettings"


# instance fields
.field private final mAdminsByProfile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceOwnerPkg:Ljava/lang/String;

.field private mProfileOwnerComponents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field final mSystemPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mProfileOwnerComponents:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mSystemPackages:Ljava/util/HashSet;

    .line 95
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mSystemPackages:Ljava/util/HashSet;

    const-string v1, "com.lenovo.onekeylock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mSystemPackages:Ljava/util/HashSet;

    const-string v1, "com.lenovo.widetouch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mSystemPackages:Ljava/util/HashSet;

    const-string v1, "com.lenovo.runtime"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mSystemPackages:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;
    .param p1, "x1"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;
    .param p1, "x1"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;
    .param p1, "x1"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->isDeviceOwner(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;
    .param p1, "x1"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->isProfileOwner(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method private addActiveAdminsForProfile(Ljava/util/List;I)V
    .locals 11
    .param p2, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 484
    .local p1, "activeAdmins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_3

    .line 485
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 486
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 487
    .local v5, "n":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 488
    .local v2, "deviceAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 489
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 490
    .local v0, "activeAdmin":Landroid/content/ComponentName;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    const v10, 0x8080

    invoke-virtual {v6, v9, v10, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 493
    .local v7, "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_1

    .line 494
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 495
    .local v8, "resolvedMax":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v8, :cond_1

    .line 496
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v9}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->createDeviceAdminInfo(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v1

    .line 497
    .local v1, "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 488
    .end local v1    # "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    .end local v4    # "j":I
    .end local v8    # "resolvedMax":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "activeAdmin":Landroid/content/ComponentName;
    .end local v7    # "resolved":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 504
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;

    invoke-virtual {v9, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    .end local v2    # "deviceAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo;>;"
    .end local v3    # "i":I
    .end local v5    # "n":I
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_3
    return-void
.end method

.method private addDeviceAdminBroadcastReceiversForProfile(Ljava/util/Collection;I)V
    .locals 10
    .param p2, "profileId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "alreadyAddedComponents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 435
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v9, 0x8080

    invoke-virtual {v5, v8, v9, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 439
    .local v2, "enabledForProfile":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 440
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 442
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 443
    .local v4, "n":I
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;

    invoke-virtual {v8, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 444
    .local v1, "deviceAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo;>;"
    if-nez v1, :cond_1

    .line 445
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "deviceAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo;>;"
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    .restart local v1    # "deviceAdmins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo;>;"
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 448
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 449
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .local v7, "riComponentName":Landroid/content/ComponentName;
    if-eqz p1, :cond_2

    invoke-interface {p1, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 454
    :cond_2
    invoke-direct {p0, v6}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->createDeviceAdminInfo(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;

    move-result-object v0

    .line 456
    .local v0, "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 457
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v0    # "deviceAdminInfo":Landroid/app/admin/DeviceAdminInfo;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 462
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "riComponentName":Landroid/content/ComponentName;
    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 464
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mSystemPackages:Ljava/util/HashSet;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 465
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 466
    add-int/lit8 v3, v3, -0x1

    .line 462
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 471
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 472
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;

    invoke-virtual {v8, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    :cond_7
    return-void
.end method

.method private createDeviceAdminInfo(Landroid/content/pm/ResolveInfo;)Landroid/app/admin/DeviceAdminInfo;
    .locals 4
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 518
    :try_start_0
    new-instance v1, Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 524
    :goto_0
    return-object v1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v1, "DeviceAdminSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 524
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 521
    :catch_1
    move-exception v0

    .line 522
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DeviceAdminSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getUserId(Landroid/app/admin/DeviceAdminInfo;)I
    .locals 1
    .param p1, "adminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 533
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private isActiveAdmin(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3
    .param p1, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActiveAsUser(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method private isDeviceOwner(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 2
    .param p1, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isProfileOwner(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3
    .param p1, "item"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mProfileOwnerComponents:Landroid/util/SparseArray;

    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 397
    .local v0, "profileOwner":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private updateAvailableAdminsForProfile(I)V
    .locals 2
    .param p1, "profileId"    # I

    .prologue
    .line 415
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getActiveAdminsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 416
    .local v0, "activeAdminsListForProfile":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-direct {p0, v0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->addActiveAdminsForProfile(Ljava/util/List;I)V

    .line 419
    invoke-direct {p0, v0, p1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->addDeviceAdminBroadcastReceiversForProfile(Ljava/util/Collection;I)V

    .line 420
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 112
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mUm:Landroid/os/UserManager;

    .line 113
    const v0, 0x7f040032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 10
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 182
    .local v4, "o":Ljava/lang/Object;
    instance-of v6, v4, Landroid/app/admin/DeviceAdminInfo;

    if-nez v6, :cond_0

    .line 201
    :goto_0
    return-void

    :cond_0
    move-object v2, v4

    .line 186
    check-cast v2, Landroid/app/admin/DeviceAdminInfo;

    .line 187
    .local v2, "dpi":Landroid/app/admin/DeviceAdminInfo;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 188
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getUserId(Landroid/app/admin/DeviceAdminInfo;)I

    move-result v5

    .line 189
    .local v5, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v5, v6, :cond_1

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->isProfileOwner(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 190
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v3, "intent":Landroid/content/Intent;
    const-class v6, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    const-string v6, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v6}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 195
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0c002d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 198
    const v6, 0x104000a

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 163
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 125
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 128
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v9, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v9}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwner(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDeviceOwnerPkg:Ljava/lang/String;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mProfileOwnerComponents:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 139
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v11

    .line 140
    .local v11, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 141
    .local v12, "profilesSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v12, :cond_1

    .line 142
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    .line 143
    .local v10, "profileId":I
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mProfileOwnerComponents:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 145
    .end local v10    # "profileId":I
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->updateList()V

    .line 147
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c05a3

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0c0196

    const-class v4, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addShowInfoAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method updateList()V
    .locals 6

    .prologue
    .line 167
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mAdminsByProfile:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 169
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 170
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 171
    .local v3, "profilesSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 172
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 173
    .local v1, "profileId":I
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->updateAvailableAdminsForProfile(I)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "profileId":I
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;

    invoke-direct {v5, p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings$PolicyListAdapter;-><init>(Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    return-void
.end method

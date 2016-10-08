.class public Lcom/mediatek/bluetooth/BluetoothBipr;
.super Ljava/lang/Object;
.source "BluetoothBipr.java"

# interfaces
.implements Lcom/mediatek/bluetooth/BluetoothProfileManager$BluetoothProfileBehavior;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BIP fw"

.field private static final VDBG:Z = true


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/mediatek/bluetooth/IBluetoothBipr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/mediatek/bluetooth/BluetoothBipr$1;

    invoke-direct {v0, p0}, Lcom/mediatek/bluetooth/BluetoothBipr$1;-><init>(Lcom/mediatek/bluetooth/BluetoothBipr;)V

    iput-object v0, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mConnection:Landroid/content/ServiceConnection;

    .line 83
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/bluetooth/IBluetoothBipr;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string v0, "BIP fw"

    const-string v1, "Could not bind to Bluetooth BIP Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/bluetooth/BluetoothBipr;Lcom/mediatek/bluetooth/IBluetoothBipr;)Lcom/mediatek/bluetooth/IBluetoothBipr;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/bluetooth/BluetoothBipr;
    .param p1, "x1"    # Lcom/mediatek/bluetooth/IBluetoothBipr;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mService:Lcom/mediatek/bluetooth/IBluetoothBipr;

    return-object p1
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mService:Lcom/mediatek/bluetooth/IBluetoothBipr;

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mService:Lcom/mediatek/bluetooth/IBluetoothBipr;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "BIP fw"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mService:Lcom/mediatek/bluetooth/IBluetoothBipr;

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mService:Lcom/mediatek/bluetooth/IBluetoothBipr;

    invoke-interface {v1, p1}, Lcom/mediatek/bluetooth/IBluetoothBipr;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 121
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BIP fw"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occurred in disconnect(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    :cond_0
    const-string v1, "BIP fw"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v1, "BIP fw"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getConnectedDevices()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mService:Lcom/mediatek/bluetooth/IBluetoothBipr;

    if-eqz v2, :cond_0

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 146
    .local v0, "devices":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mService:Lcom/mediatek/bluetooth/IBluetoothBipr;

    invoke-interface {v2}, Lcom/mediatek/bluetooth/IBluetoothBipr;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v0    # "devices":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    return-object v0

    .line 148
    .restart local v0    # "devices":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BIP fw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred in getConnectedDevices(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v0    # "devices":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :cond_0
    const-string v2, "BIP fw"

    const-string v3, "mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v2, "BIP fw"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mService:Lcom/mediatek/bluetooth/IBluetoothBipr;

    if-eqz v2, :cond_1

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mService:Lcom/mediatek/bluetooth/IBluetoothBipr;

    invoke-interface {v2}, Lcom/mediatek/bluetooth/IBluetoothBipr;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 129
    .local v0, "current":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/bluetooth/BluetoothBipr;->mService:Lcom/mediatek/bluetooth/IBluetoothBipr;

    invoke-interface {v2}, Lcom/mediatek/bluetooth/IBluetoothBipr;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 139
    .end local v0    # "current":Landroid/bluetooth/BluetoothDevice;
    :goto_0
    return v2

    .line 129
    .restart local v0    # "current":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 131
    .end local v0    # "current":Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BIP fw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred in getState(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x5

    goto :goto_0

    .line 136
    :cond_1
    const-string v2, "BIP fw"

    const-string v3, "mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v2, "BIP fw"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
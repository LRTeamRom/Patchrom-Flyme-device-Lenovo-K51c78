.class public Lcom/android/settings/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final MAX_DISCOVERABLE_TIMEOUT:I = 0xe10

.field private static final REQUEST_CODE_START_BT:I = 0x1

.field static final RESULT_BT_STARTING_OR_STARTED:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "RequestPermissionActivity"


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mNeededToEnableBluetooth:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:I

.field private mUserConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 82
    new-instance v0, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/RequestPermissionActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/RequestPermissionActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/RequestPermissionActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedWithFailedTurnOnBT()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/bluetooth/RequestPermissionActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method private createDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v1, :cond_1

    .line 183
    const v1, 0x7f0c04cc

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 199
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 200
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 204
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 206
    :cond_0
    return-void

    .line 188
    :cond_1
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_2

    .line 189
    const v1, 0x7f0c04c9

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 195
    :goto_1
    const v1, 0x7f0c044c

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    const v1, 0x7f0c044d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 192
    :cond_2
    const v1, 0x7f0c04c8

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private parseIntent()Z
    .locals 8

    .prologue
    const/16 v7, 0x78

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 309
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 310
    .local v1, "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_4

    .line 311
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 317
    .end local v1    # "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :goto_1
    return v2

    .line 291
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 293
    const-string v4, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 296
    const-string v4, "RequestPermissionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v5, 0xe10

    if-le v4, v5, :cond_0

    .line 299
    :cond_2
    iput v7, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_0

    .line 302
    :cond_3
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    goto :goto_1

    .line 315
    .restart local v1    # "manager":Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_4
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move v2, v3

    .line 317
    goto :goto_1
.end method

.method private proceedAndFinish()V
    .locals 10

    .prologue
    .line 250
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v3, :cond_2

    .line 252
    const/4 v2, -0x1

    .line 275
    .local v2, "returnCode":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 276
    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 279
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 281
    return-void

    .line 253
    .end local v2    # "returnCode":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    iget v5, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v6, v3

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    add-long v0, v4, v6

    .line 261
    .local v0, "endTime":J
    invoke-static {p0, v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 263
    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lez v3, :cond_3

    .line 264
    invoke-static {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 266
    :cond_3
    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 268
    .restart local v2    # "returnCode":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 269
    const/4 v2, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "endTime":J
    .end local v2    # "returnCode":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "returnCode":I
    goto :goto_0
.end method

.method private proceedWithFailedTurnOnBT()V
    .locals 4

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "returnCode":I
    const-string v1, "RequestPermissionActivity"

    const-string v2, "failed to trun on bluetooth"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c018a

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 355
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 357
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 210
    if-eq p1, v1, :cond_0

    .line 211
    const-string v0, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 232
    :goto_0
    return-void

    .line 216
    :cond_0
    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_1

    .line 217
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 224
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 226
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 227
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 330
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 335
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "RequestPermissionActivity"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 235
    packed-switch p2, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 237
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 241
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->setResult(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->requestWindowFeature(I)Z

    .line 125
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->finish()V

    .line 175
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    .line 132
    .local v0, "btState":I
    packed-switch v0, :pswitch_data_0

    .line 173
    const-string v2, "RequestPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown adapter state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v1, "intent":Landroid/content/Intent;
    const-class v2, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v2, :cond_1

    .line 154
    const-string v2, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :goto_1
    invoke-virtual {p0, v1, v5}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    iput-boolean v5, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    goto :goto_0

    .line 156
    :cond_1
    const-string v2, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 164
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v2, :cond_2

    .line 166
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 323
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 326
    :cond_0
    return-void
.end method

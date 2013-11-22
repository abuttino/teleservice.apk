.class Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothManager;)V
    .locals 0
    .parameter

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothManager;Lcom/android/phone/BluetoothManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/phone/BluetoothManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 382
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothManager;->access$202(Lcom/android/phone/BluetoothManager;I)I

    .line 390
    iget-object v1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/16 v3, 0xa

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I
    invoke-static {v1, v2}, Lcom/android/phone/BluetoothManager;->access$302(Lcom/android/phone/BluetoothManager;I)I

    .line 397
    iget-object v1, p0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    goto :goto_0
.end method

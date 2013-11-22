.class public Lcom/android/phone/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"

# interfaces
.implements Lcom/android/phone/CallModeler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothManager$2;,
        Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;,
        Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetAudioState:I

.field private mBluetoothHeadsetState:I

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mCallModeler:Lcom/android/phone/CallModeler;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShowBluetoothIndication:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothManager;->LOG_TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/BluetoothManager;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;)V
    .locals 2
    .parameter "context"
    .parameter "callManager"
    .parameter "callModeler"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    .line 58
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    .line 59
    iput-boolean v1, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    .line 64
    new-instance v0, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/BluetoothManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/phone/BluetoothManager;Lcom/android/phone/BluetoothManager$1;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    .line 266
    new-instance v0, Lcom/android/phone/BluetoothManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothManager$1;-><init>(Lcom/android/phone/BluetoothManager;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 69
    iput-object p1, p0, Lcom/android/phone/BluetoothManager;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/android/phone/BluetoothManager;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 71
    iput-object p3, p0, Lcom/android/phone/BluetoothManager;->mCallModeler:Lcom/android/phone/CallModeler;

    .line 72
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 74
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothManager;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/BluetoothManager;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/phone/BluetoothManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 243
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 251
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1, p0}, Lcom/android/phone/CallModeler;->addListener(Lcom/android/phone/CallModeler$Listener;)V

    .line 257
    return-void
.end method

.method private notifyListeners(Z)V
    .locals 2
    .parameter "showBluetoothOn"

    .prologue
    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;

    invoke-interface {v1, p1, p0}, Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;->onBluetoothIndicationChange(ZLcom/android/phone/BluetoothManager;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .parameter "bluetoothState"
    .parameter "bluetoothAudioState"
    .parameter "cm"

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 302
    sget-object v2, Lcom/android/phone/BluetoothManager$2;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 308
    :pswitch_0
    if-ne p0, v4, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 317
    :pswitch_1
    if-eq p0, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addBluetoothIndicatorListener(Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_0
    return-void
.end method

.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    .line 364
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionRequestTime:J

    .line 366
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 373
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothConnectionPending:Z

    .line 374
    return-void
.end method

.method isBluetoothAudioConnected()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 141
    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v2

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 147
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 151
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 153
    .local v2, isAudioOn:Z
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 4

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, isConnected:Z
    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 123
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 124
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x1

    .line 134
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v1           #deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    return v2
.end method

.method isBluetoothHeadsetAudioOn()Z
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    .line 405
    return-void
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    .line 412
    return-void
.end method

.method public onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V
    .locals 0
    .parameter "state"
    .parameter "callId"
    .parameter "chars"
    .parameter "c"

    .prologue
    .line 422
    return-void
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-virtual {p0}, Lcom/android/phone/BluetoothManager;->updateBluetoothIndication()V

    .line 417
    return-void
.end method

.method showBluetoothIndication()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    return v0
.end method

.method updateBluetoothIndication()V
    .locals 3

    .prologue
    .line 217
    iget v0, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/BluetoothManager;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/BluetoothManager;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/BluetoothManager;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    .line 221
    iget-boolean v0, p0, Lcom/android/phone/BluetoothManager;->mShowBluetoothIndication:Z

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothManager;->notifyListeners(Z)V

    .line 222
    return-void
.end method

.class Lcom/android/phone/AudioRouter;
.super Ljava/lang/Object;
.source "AudioRouter.java"

# interfaces
.implements Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;
.implements Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/AudioRouter$AudioModeListener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAudioMode:I

.field private final mBluetoothManager:Lcom/android/phone/BluetoothManager;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/AudioRouter$AudioModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousMode:I

.field private mSupportedModes:I

.field private final mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/phone/AudioRouter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/AudioRouter;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothManager;Lcom/android/phone/WiredHeadsetManager;Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .parameter "context"
    .parameter "bluetoothManager"
    .parameter "wiredHeadsetManager"
    .parameter "callManager"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    .line 52
    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    iput v0, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    .line 53
    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    iput v0, p0, Lcom/android/phone/AudioRouter;->mPreviousMode:I

    .line 54
    sget v0, Lcom/android/services/telephony/common/AudioMode;->ALL_MODES:I

    iput v0, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    .line 58
    iput-object p1, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    .line 60
    iput-object p3, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    .line 61
    iput-object p4, p0, Lcom/android/phone/AudioRouter;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 63
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->init()V

    .line 64
    return-void
.end method

.method private calculateModeFromCurrentState()I
    .locals 3

    .prologue
    .line 305
    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    .line 308
    .local v0, mode:I
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->showBluetoothIndication()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    .line 316
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateModeFromCurrentState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 318
    return v0

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 311
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    goto :goto_0

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v1}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    goto :goto_0
.end method

.method private calculateSupportedModes()I
    .locals 2

    .prologue
    .line 360
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 362
    .local v0, supportedModes:I
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v1}, Lcom/android/phone/WiredHeadsetManager;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    or-int/2addr v0, v1

    .line 368
    :goto_0
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    or-int/2addr v0, v1

    .line 372
    :cond_0
    return v0

    .line 365
    :cond_1
    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/BluetoothManager;->addBluetoothIndicatorListener(Lcom/android/phone/BluetoothManager$BluetoothIndicatorListener;)V

    .line 297
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mWiredHeadsetManager:Lcom/android/phone/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/phone/WiredHeadsetManager;->addWiredHeadsetListener(Lcom/android/phone/WiredHeadsetManager$WiredHeadsetListener;)V

    .line 298
    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 391
    sget-boolean v0, Lcom/android/phone/AudioRouter;->DBG:Z

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    return-void
.end method

.method private notifyListeners()V
    .locals 4

    .prologue
    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    invoke-static {v2}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Supported AudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-static {v2}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/AudioRouter$AudioModeListener;

    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    invoke-virtual {p0}, Lcom/android/phone/AudioRouter;->getMute()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/phone/AudioRouter$AudioModeListener;->onAudioModeChange(IZ)V

    .line 381
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/AudioRouter$AudioModeListener;

    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-interface {v1, v2}, Lcom/android/phone/AudioRouter$AudioModeListener;->onSupportedAudioModeChange(I)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_0
    return-void
.end method

.method private selectWiredOrEarpiece(I)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 252
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    if-ne p1, v0, :cond_0

    .line 253
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    iget v1, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    and-int p1, v0, v1

    .line 255
    if-nez p1, :cond_0

    .line 256
    sget-object v0, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "One of wired headset or earpiece should always be valid."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget p1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    .line 262
    :cond_0
    return p1
.end method

.method private turnOnOffBluetooth(Z)Z
    .locals 3
    .parameter "onOff"

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    .line 273
    .local v0, isAlreadyOn:Z
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->connectBluetoothAudio()V

    .line 283
    .end local v0           #isAlreadyOn:Z
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 275
    .restart local v0       #isAlreadyOn:Z
    :cond_1
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->disconnectBluetoothAudio()V

    goto :goto_0

    .line 278
    .end local v0           #isAlreadyOn:Z
    :cond_2
    if-eqz p1, :cond_0

    .line 279
    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Asking to turn on bluetooth, but there is no bluetooth availabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private turnOnOffSpeaker(Z)V
    .locals 2
    .parameter "onOff"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 293
    :cond_0
    return-void
.end method

.method private updateAudioModeTo(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 325
    iget v1, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    .line 327
    .local v1, oldSupportedModes:I
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateSupportedModes()I

    move-result v2

    iput v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    .line 333
    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 334
    sget-object v2, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting audio mode to an unsupported mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", supported ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-static {v4}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    iget v2, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    if-eq v1, v2, :cond_3

    const/4 v0, 0x1

    .line 342
    .local v0, doNotify:Z
    :goto_0
    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    if-eq v2, p1, :cond_1

    .line 343
    sget-object v2, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio mode changing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x1

    .line 347
    :cond_1
    iget v2, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    iput v2, p0, Lcom/android/phone/AudioRouter;->mPreviousMode:I

    .line 348
    iput p1, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    .line 350
    if-eqz v0, :cond_2

    .line 351
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->notifyListeners()V

    .line 353
    :cond_2
    return-void

    .line 339
    .end local v0           #doNotify:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAudioModeListener(Lcom/android/phone/AudioRouter$AudioModeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/phone/AudioRouter;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget v0, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    invoke-virtual {p0}, Lcom/android/phone/AudioRouter;->getMute()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/phone/AudioRouter$AudioModeListener;->onAudioModeChange(IZ)V

    .line 96
    iget v0, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    invoke-interface {p1, v0}, Lcom/android/phone/AudioRouter$AudioModeListener;->onSupportedAudioModeChange(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    return v0
.end method

.method public getSupportedAudioModes()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/phone/AudioRouter;->mSupportedModes:I

    return v0
.end method

.method public onBluetoothIndicationChange(ZLcom/android/phone/BluetoothManager;)V
    .locals 2
    .parameter "isConnected"
    .parameter "btManager"

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothIndicationChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateModeFromCurrentState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/AudioRouter;->updateAudioModeTo(I)V

    .line 195
    return-void
.end method

.method public onMuteChange(Z)V
    .locals 2
    .parameter "muted"

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMuteChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->notifyListeners()V

    .line 183
    return-void
.end method

.method public onWiredHeadsetConnection(Z)V
    .locals 5
    .parameter "pluggedIn"

    .prologue
    const/4 v2, 0x0

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWireHeadsetConnection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 210
    .local v0, isOffhook:Z
    :goto_0
    iget v1, p0, Lcom/android/phone/AudioRouter;->mAudioMode:I

    .line 213
    .local v1, newMode:I
    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v3}, Lcom/android/phone/BluetoothManager;->isBluetoothHeadsetAudioOn()Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    if-eqz v0, :cond_4

    .line 217
    if-nez p1, :cond_3

    .line 219
    iget-object v2, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 221
    iget-object v2, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 240
    :cond_0
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->updateAudioModeTo(I)V

    .line 241
    return-void

    .end local v0           #isOffhook:Z
    .end local v1           #newMode:I
    :cond_1
    move v0, v2

    .line 208
    goto :goto_0

    .line 224
    .restart local v0       #isOffhook:Z
    .restart local v1       #newMode:I
    :cond_2
    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    goto :goto_1

    .line 229
    :cond_3
    iget-object v3, p0, Lcom/android/phone/AudioRouter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 231
    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    goto :goto_1

    .line 236
    :cond_4
    if-eqz p1, :cond_5

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    :goto_2
    goto :goto_1

    :cond_5
    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    goto :goto_2
.end method

.method public setAudioMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    .line 117
    .local v0, error:Z
    invoke-direct {p0, p1}, Lcom/android/phone/AudioRouter;->selectWiredOrEarpiece(I)I

    move-result p1

    .line 120
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateSupportedModes()I

    move-result v1

    or-int/2addr v1, p1

    if-nez v1, :cond_0

    .line 121
    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asking to set to a mode that is unsupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    return-void

    .line 125
    :cond_0
    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, p1, :cond_3

    .line 126
    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffBluetooth(Z)Z

    .line 127
    invoke-direct {p0, v4}, Lcom/android/phone/AudioRouter;->turnOnOffSpeaker(Z)V

    .line 157
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateModeFromCurrentState()I

    move-result p1

    .line 159
    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was an error in setting new audio mode. Resetting mode to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/AudioRouter;->updateAudioModeTo(I)V

    goto :goto_0

    .line 129
    :cond_3
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v1, p1, :cond_5

    .line 130
    iget-object v1, p0, Lcom/android/phone/AudioRouter;->mBluetoothManager:Lcom/android/phone/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffSpeaker(Z)V

    .line 139
    invoke-direct {p0, v4}, Lcom/android/phone/AudioRouter;->turnOnOffBluetooth(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    const/4 v0, 0x1

    goto :goto_1

    .line 143
    :cond_4
    sget-object v1, Lcom/android/phone/AudioRouter;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asking to turn on bluetooth when no bluetooth available. supportedModes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/AudioRouter;->calculateSupportedModes()I

    move-result v3

    invoke-static {v3}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x1

    goto :goto_1

    .line 149
    :cond_5
    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    if-eq v1, p1, :cond_6

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-ne v1, p1, :cond_7

    .line 150
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffBluetooth(Z)Z

    .line 151
    invoke-direct {p0, v3}, Lcom/android/phone/AudioRouter;->turnOnOffSpeaker(Z)V

    goto :goto_1

    .line 154
    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setSpeaker(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeaker "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/AudioRouter;->logD(Ljava/lang/String;)V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {p0, v0}, Lcom/android/phone/AudioRouter;->setAudioMode(I)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {p0, v0}, Lcom/android/phone/AudioRouter;->setAudioMode(I)V

    goto :goto_0
.end method

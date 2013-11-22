.class public Lcom/android/phone/DTMFTonePlayer;
.super Ljava/lang/Object;
.source "DTMFTonePlayer.java"

# interfaces
.implements Lcom/android/phone/CallModeler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DTMFTonePlayer$2;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mToneMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mCallModeler:Lcom/android/phone/CallModeler;

.field private mDTMFBurstCnfPending:Z

.field private mDTMFQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocalToneEnabled:Z

.field mShortTone:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-class v0, Lcom/android/phone/DTMFTonePlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DTMFTonePlayer;->LOG_TAG:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DTMFTonePlayer;->mToneMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;)V
    .locals 1
    .parameter "callManager"
    .parameter "callModeler"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFBurstCnfPending:Z

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFQueue:Ljava/util/Queue;

    .line 88
    new-instance v0, Lcom/android/phone/DTMFTonePlayer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTonePlayer$1;-><init>(Lcom/android/phone/DTMFTonePlayer;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mHandler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/android/phone/DTMFTonePlayer;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 107
    iput-object p2, p0, Lcom/android/phone/DTMFTonePlayer;->mCallModeler:Lcom/android/phone/CallModeler;

    .line 108
    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallModeler;->addListener(Lcom/android/phone/CallModeler$Listener;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method private checkCallState()V
    .locals 1

    .prologue
    .line 392
    const-string v0, "checkCallState"

    invoke-static {v0}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->hasOutstandingActiveOrDialingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/phone/DTMFTonePlayer;->startDialerSession()V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DTMFTonePlayer;->stopDialerSession()V

    goto :goto_0
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 407
    return-void
.end method

.method private okToDialDtmfTones()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 344
    const/4 v1, 0x0

    .line 345
    .local v1, hasActiveCall:Z
    const/4 v2, 0x0

    .line 347
    .local v2, hasIncomingCall:Z
    iget-object v5, p0, Lcom/android/phone/DTMFTonePlayer;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v5}, Lcom/android/phone/CallModeler;->getFullList()Ljava/util/List;

    move-result-object v0

    .line 348
    .local v0, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 350
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 354
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v8, 0x5

    if-ne v5, v8, :cond_1

    :cond_0
    move v5, v7

    :goto_1
    or-int/2addr v1, v5

    .line 356
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_2

    move v5, v7

    :goto_2
    or-int/2addr v2, v5

    .line 350
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    .line 354
    goto :goto_1

    :cond_2
    move v5, v6

    .line 356
    goto :goto_2

    .line 359
    :cond_3
    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    :goto_3
    return v7

    :cond_4
    move v7, v6

    goto :goto_3
.end method

.method private sendShortDtmfToNetwork(C)V
    .locals 7
    .parameter "dtmfDigit"

    .prologue
    const/4 v3, 0x1

    .line 265
    iget-object v2, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v2

    .line 266
    :try_start_0
    iget-boolean v1, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFBurstCnfPending:Z

    if-ne v1, v3, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFQueue:Ljava/util/Queue;

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 275
    :goto_0
    monitor-exit v2

    .line 276
    return-void

    .line 270
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, dtmfStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mCallManager:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/DTMFTonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    .line 273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFBurstCnfPending:Z

    goto :goto_0

    .line 275
    .end local v0           #dtmfStr:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startLocalToneIfNeeded(C)V
    .locals 5
    .parameter "c"

    .prologue
    .line 307
    iget-boolean v1, p0, Lcom/android/phone/DTMFTonePlayer;->mLocalToneEnabled:Z

    if-eqz v1, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDtmfTone: mToneGenerator == null, tone: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 319
    :goto_0
    monitor-exit v2

    .line 321
    :cond_0
    return-void

    .line 312
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting local tone "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 313
    const/4 v0, -0x1

    .line 314
    .local v0, toneDuration:I
    iget-boolean v1, p0, Lcom/android/phone/DTMFTonePlayer;->mShortTone:Z

    if-eqz v1, :cond_2

    .line 315
    const/16 v0, 0x78

    .line 317
    :cond_2
    iget-object v3, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v1, Lcom/android/phone/DTMFTonePlayer;->mToneMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, v0}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_0

    .line 319
    .end local v0           #toneDuration:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static useShortDtmfTones(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)Z
    .locals 6
    .parameter "phone"
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 367
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 368
    .local v0, phoneType:I
    if-ne v0, v3, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v2

    .line 370
    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dtmf_tone_type"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 375
    .local v1, toneType:I
    if-nez v1, :cond_0

    move v2, v3

    .line 376
    goto :goto_0

    .line 380
    .end local v1           #toneType:I
    :cond_2
    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 383
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method handleBurstDtmfConfirmation()V
    .locals 6

    .prologue
    .line 282
    const/4 v1, 0x0

    .line 283
    .local v1, dtmfChar:Ljava/lang/Character;
    iget-object v3, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 284
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFBurstCnfPending:Z

    .line 285
    iget-object v2, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    .line 287
    sget-object v2, Lcom/android/phone/DTMFTonePlayer;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dtmf character removed from queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTonePlayer;->sendShortDtmfToNetwork(C)V

    .line 293
    :cond_1
    return-void

    .line 289
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .parameter "call"

    .prologue
    .line 113
    const-string v0, "Call disconnected"

    invoke-static {v0}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/android/phone/DTMFTonePlayer;->checkCallState()V

    .line 115
    return-void
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 119
    return-void
.end method

.method public onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V
    .locals 2
    .parameter "state"
    .parameter "callId"
    .parameter "remainingChars"
    .parameter "currentChar"

    .prologue
    .line 130
    sget-object v0, Lcom/android/phone/DTMFTonePlayer$2;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/DTMFTonePlayer;->stopLocalToneIfNeeded()V

    .line 133
    sget-object v0, Lcom/android/phone/DTMFTonePlayer;->mToneMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p4}, Lcom/android/phone/DTMFTonePlayer;->startLocalToneIfNeeded(C)V

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/DTMFTonePlayer;->stopLocalToneIfNeeded()V

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 1
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
    .line 123
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    const-string v0, "Call updated"

    invoke-static {v0}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/android/phone/DTMFTonePlayer;->checkCallState()V

    .line 125
    return-void
.end method

.method public playDtmfTone(CZ)V
    .locals 5
    .parameter "c"
    .parameter "timedShortTone"

    .prologue
    const/16 v3, 0x65

    .line 219
    sget-object v1, Lcom/android/phone/DTMFTonePlayer;->mToneMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/DTMFTonePlayer;->okToDialDtmfTones()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->pokeUserActivity()V

    .line 230
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 234
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    invoke-virtual {p0}, Lcom/android/phone/DTMFTonePlayer;->stopDtmfTone()V

    .line 239
    :cond_2
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/DTMFTonePlayer;->useShortDtmfTones(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/DTMFTonePlayer;->mShortTone:Z

    .line 240
    const-string v1, "startDtmfTone()..."

    invoke-static {v1}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 243
    iget-boolean v1, p0, Lcom/android/phone/DTMFTonePlayer;->mShortTone:Z

    if-eqz v1, :cond_4

    .line 244
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTonePlayer;->sendShortDtmfToNetwork(C)V

    .line 256
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTonePlayer;->startLocalToneIfNeeded(C)V

    goto :goto_0

    .line 247
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send long dtmf for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    .line 251
    if-eqz p2, :cond_3

    .line 252
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/DTMFTonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x78

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public startDialerSession()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDialerSession()... this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/DTMFTonePlayer;->mLocalToneEnabled:Z

    .line 172
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- startDialerSession: mLocalToneEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/DTMFTonePlayer;->mLocalToneEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 177
    iget-boolean v1, p0, Lcom/android/phone/DTMFTonePlayer;->mLocalToneEnabled:Z

    if-eqz v1, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 181
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x50

    invoke-direct {v1, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :cond_0
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 166
    goto :goto_0

    .line 170
    :cond_3
    iput-boolean v2, p0, Lcom/android/phone/DTMFTonePlayer;->mLocalToneEnabled:Z

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v1, Lcom/android/phone/DTMFTonePlayer;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Exception caught while creating local tone generator"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2

    .line 187
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public stopDialerSession()V
    .locals 2

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 205
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 209
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFBurstCnfPending:Z

    .line 210
    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 211
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    return-void

    .line 205
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 211
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public stopDtmfTone()V
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/phone/DTMFTonePlayer;->mShortTone:Z

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 298
    invoke-virtual {p0}, Lcom/android/phone/DTMFTonePlayer;->stopLocalToneIfNeeded()V

    .line 300
    :cond_0
    return-void
.end method

.method public stopLocalToneIfNeeded()V
    .locals 2

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/phone/DTMFTonePlayer;->mShortTone:Z

    if-nez v0, :cond_0

    .line 329
    const-string v0, "trying to stop local tone..."

    invoke-static {v0}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 330
    iget-boolean v0, p0, Lcom/android/phone/DTMFTonePlayer;->mLocalToneEnabled:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_1

    .line 333
    const-string v0, "stopLocalTone: mToneGenerator == null"

    invoke-static {v0}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 338
    :goto_0
    monitor-exit v1

    .line 341
    :cond_0
    return-void

    .line 335
    :cond_1
    const-string v0, "stopping local tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTonePlayer;->logD(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/phone/DTMFTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

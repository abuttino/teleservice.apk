.class public Lcom/android/phone/CallHandlerServiceProxy;
.super Landroid/os/Handler;
.source "CallHandlerServiceProxy.java"

# interfaces
.implements Lcom/android/phone/AudioRouter$AudioModeListener;
.implements Lcom/android/phone/CallModeler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallHandlerServiceProxy$1;,
        Lcom/android/phone/CallHandlerServiceProxy$QueueParams;,
        Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioRouter:Lcom/android/phone/AudioRouter;

.field private mBindRetryCount:I

.field private mCallCommandService:Lcom/android/phone/CallCommandService;

.field private mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

.field private mCallModeler:Lcom/android/phone/CallModeler;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFullUpdateOnConnect:Z

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallHandlerServiceProxy$QueueParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceAndQueueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/phone/CallHandlerServiceProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/CallModeler;Lcom/android/phone/CallCommandService;Lcom/android/phone/AudioRouter;)V
    .locals 2
    .parameter "context"
    .parameter "callModeler"
    .parameter "callCommandService"
    .parameter "audioRouter"

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 88
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v1, "init CallHandlerServiceProxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    .line 92
    iput-object p3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallCommandService:Lcom/android/phone/CallCommandService;

    .line 93
    iput-object p2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    .line 94
    iput-object p4, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    .line 96
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v0, p0}, Lcom/android/phone/AudioRouter;->addAudioModeListener(Lcom/android/phone/AudioRouter$AudioModeListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallModeler;->addListener(Lcom/android/phone/CallModeler$Listener;)V

    .line 98
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CallHandlerServiceProxy;Lcom/android/services/telephony/common/ICallHandlerService;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->onCallHandlerServiceConnected(Lcom/android/services/telephony/common/ICallHandlerService;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/phone/CallHandlerServiceProxy;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/CallHandlerServiceProxy;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CallHandlerServiceProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->unbind()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallHandlerServiceProxy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->reconnectOnRemainingCalls()V

    return-void
.end method

.method private enqueueDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .parameter "call"

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v2, 0x3

    new-instance v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {v3, p1}, Lcom/android/services/telephony/common/Call;-><init>(Lcom/android/services/telephony/common/Call;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    return-void
.end method

.method private enqueueIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .parameter "call"

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {v3, p1}, Lcom/android/services/telephony/common/Call;-><init>(Lcom/android/services/telephony/common/Call;)V

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method private enqueueUpdate(Ljava/util/List;)V
    .locals 7
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
    .line 489
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 490
    .local v1, copy:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 491
    .local v0, call:Lcom/android/services/telephony/common/Call;
    new-instance v3, Lcom/android/services/telephony/common/Call;

    invoke-direct {v3, v0}, Lcom/android/services/telephony/common/Call;-><init>(Lcom/android/services/telephony/common/Call;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    .end local v0           #call:Lcom/android/services/telephony/common/Call;
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->getQueue()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v1, v6}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    return-void
.end method

.method private static getInCallServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5
    .parameter

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 326
    return-object v0
.end method

.method private getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallHandlerServiceProxy$QueueParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    if-nez v0, :cond_0

    .line 475
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method private makeInitialServiceCalls()V
    .locals 3

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallCommandService:Lcom/android/phone/CallCommandService;

    invoke-interface {v1, v2}, Lcom/android/services/telephony/common/ICallHandlerService;->startCallService(Lcom/android/services/telephony/common/ICallCommandService;)V

    .line 466
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v1}, Lcom/android/phone/AudioRouter;->getSupportedAudioModes()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/CallHandlerServiceProxy;->onSupportedAudioModeChange(I)V

    .line 467
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v1}, Lcom/android/phone/AudioRouter;->getAudioMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v2}, Lcom/android/phone/AudioRouter;->getMute()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/CallHandlerServiceProxy;->onAudioModeChange(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception calling CallHandlerService::setCallCommandService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onCallHandlerServiceConnected(Lcom/android/services/telephony/common/ICallHandlerService;)V
    .locals 2
    .parameter "callHandlerService"

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 435
    :try_start_0
    iput-object p1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    .line 438
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->makeInitialServiceCalls()V

    .line 440
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->processQueue()V

    .line 442
    iget-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mFullUpdateOnConnect:Z

    if-eqz v0, :cond_0

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mFullUpdateOnConnect:Z

    .line 444
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->getFullList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/CallHandlerServiceProxy;->onUpdate(Ljava/util/List;)V

    .line 446
    :cond_0
    monitor-exit v1

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private processDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .parameter "call"

    .prologue
    .line 125
    :try_start_0
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    .line 132
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->unbind()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    :cond_2
    :goto_0
    return-void

    .line 132
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onDisconnect "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .parameter "call"

    .prologue
    .line 157
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncoming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-static {}, Lcom/android/phone/RejectWithTextMessageManager;->loadCannedResponses()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/services/telephony/common/ICallHandlerService;->onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    .line 168
    :cond_1
    monitor-exit v2

    .line 172
    :goto_0
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processQueue()V
    .locals 6

    .prologue
    .line 497
    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 498
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;

    .line 500
    .local v1, params:Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
    #getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$900(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 511
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$900(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not recognized."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #params:Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 502
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #params:Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
    :pswitch_0
    :try_start_1
    #getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1000(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v2}, Lcom/android/phone/CallHandlerServiceProxy;->processIncoming(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 505
    :pswitch_1
    #getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1000(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/phone/CallHandlerServiceProxy;->processUpdate(Ljava/util/List;)V

    goto :goto_0

    .line 508
    :pswitch_2
    #getter for: Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->access$1000(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v2}, Lcom/android/phone/CallHandlerServiceProxy;->processDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 515
    .end local v1           #params:Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 516
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mQueue:Ljava/util/List;

    .line 518
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    return-void

    .line 500
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processUpdate(Ljava/util/List;)V
    .locals 4
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
    .line 190
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 191
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onUpdate(Ljava/util/List;)V

    .line 198
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 205
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->unbind()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 210
    :cond_2
    :goto_0
    return-void

    .line 198
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private reconnectOnRemainingCalls()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Lcom/android/phone/CallModeler;->hasLiveCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mFullUpdateOnConnect:Z

    .line 455
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 457
    :cond_0
    return-void
.end method

.method private setupServiceConnection()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    .line 333
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v6, :cond_0

    .line 410
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/CallHandlerServiceProxy;->getInCallServiceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    .line 338
    .local v4, serviceIntent:Landroid/content/Intent;
    sget-boolean v6, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v6, :cond_1

    .line 339
    sget-object v6, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "binding to service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1
    iget-object v7, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v7

    .line 343
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    if-nez v6, :cond_9

    .line 344
    new-instance v6, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;

    const/4 v8, 0x0

    invoke-direct {v6, p0, v8}, Lcom/android/phone/CallHandlerServiceProxy$InCallServiceConnection;-><init>(Lcom/android/phone/CallHandlerServiceProxy;Lcom/android/phone/CallHandlerServiceProxy$1;)V

    iput-object v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 346
    iget-object v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 347
    .local v2, packageManger:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 350
    .local v5, services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 352
    .local v3, serviceInfo:Landroid/content/pm/ServiceInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 353
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 354
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_3

    .line 355
    const-string v6, "android.permission.BIND_CALL_SERVICE"

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 357
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 363
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez v3, :cond_5

    .line 368
    iget v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    .line 369
    iget v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    if-ge v6, v10, :cond_4

    .line 370
    sget-object v6, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InCallUI service not found. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". This happens if the service is being installed and should be"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " transient. Retrying"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x7d0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v6, 0x1

    invoke-static {p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x7d0

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/phone/CallHandlerServiceProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 379
    :goto_2
    monitor-exit v7

    goto/16 :goto_0

    .line 409
    .end local v0           #i:I
    .end local v2           #packageManger:Landroid/content/pm/PackageManager;
    .end local v3           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v5           #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 352
    .restart local v0       #i:I
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    .restart local v2       #packageManger:Landroid/content/pm/PackageManager;
    .restart local v3       #serviceInfo:Landroid/content/pm/ServiceInfo;
    .restart local v5       #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 376
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    :try_start_1
    sget-object v6, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v8, "Tried to bind to in-call UI 5 times. Giving up."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 385
    :cond_5
    new-instance v6, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 387
    sget-boolean v6, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v6, :cond_6

    .line 388
    sget-object v6, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "binding to service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_6
    iget-object v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    invoke-virtual {v6, v4, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 394
    iget v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    .line 395
    iget v6, p0, Lcom/android/phone/CallHandlerServiceProxy;->mBindRetryCount:I

    if-ge v6, v10, :cond_8

    .line 396
    sget-object v6, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindService failed on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".  Retrying in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x7d0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v6, 0x1

    invoke-static {p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x7d0

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/phone/CallHandlerServiceProxy;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 409
    .end local v0           #i:I
    .end local v2           #packageManger:Landroid/content/pm/PackageManager;
    .end local v3           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v5           #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    :goto_3
    monitor-exit v7

    goto/16 :goto_0

    .line 401
    .restart local v0       #i:I
    .restart local v2       #packageManger:Landroid/content/pm/PackageManager;
    .restart local v3       #serviceInfo:Landroid/content/pm/ServiceInfo;
    .restart local v5       #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_8
    sget-object v6, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v8, "Tried to bind to in-call UI 5 times. Giving up."

    invoke-static {v6, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 407
    .end local v0           #i:I
    .end local v2           #packageManger:Landroid/content/pm/PackageManager;
    .end local v3           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v5           #services:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_9
    sget-object v6, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v8, "Service connection to in call service already started."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private unbind()V
    .locals 4

    .prologue
    .line 413
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 416
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 418
    .local v0, statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 419
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 420
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_0

    .line 421
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Unbinding service."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    .line 423
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 425
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 426
    monitor-exit v2

    .line 427
    return-void

    .line 426
    .end local v0           #statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private wakeUpScreen()V
    .locals 3

    .prologue
    .line 118
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "wakeUpScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 120
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 121
    return-void
.end method


# virtual methods
.method public bringToForeground(Z)V
    .locals 5
    .parameter "showDialpad"

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1}, Lcom/android/phone/CallModeler;->hasLiveCall()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    :try_start_1
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bringToForeground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->bringToForeground(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 318
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "Exception handling bringToForeground"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 317
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 81
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioModeChange(IZ)V
    .locals 4
    .parameter "newMode"
    .parameter "muted"

    .prologue
    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 239
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 240
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onAudioModeChange()."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    monitor-exit v2

    .line 255
    :goto_0
    return-void

    .line 245
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :try_start_2
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating with new audio mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with mute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallHandlerService;->onAudioModeChange(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onAudioModeChange"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 245
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 3
    .parameter "call"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->wakeUpScreen()V

    .line 104
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    .line 106
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService not connected.  Enqueue disconnect"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueDisconnect(Lcom/android/services/telephony/common/Call;)V

    .line 110
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 111
    monitor-exit v1

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;)V
    .locals 3
    .parameter "call"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    .line 145
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService not connected.  Enqueue incoming."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueIncoming(Lcom/android/services/telephony/common/Call;)V

    .line 149
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 150
    monitor-exit v1

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processIncoming(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V
    .locals 4
    .parameter "state"
    .parameter "callId"
    .parameter "remainingChars"
    .parameter "currentChar"

    .prologue
    .line 216
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 218
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_2

    .line 220
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_1

    .line 221
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. Skipping onPostDialWait()."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 226
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    :try_start_4
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p2, p3}, Lcom/android/services/telephony/common/ICallHandlerService;->onPostDialWait(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public onSupportedAudioModeChange(I)V
    .locals 4
    .parameter "modeMask"

    .prologue
    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v1, :cond_1

    .line 262
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_0

    .line 263
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v3, "CallHandlerService not conneccted. SkippingonSupportedAudioModeChange()."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    monitor-exit v2

    .line 279
    :goto_0
    return-void

    .line 268
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    sget-boolean v1, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v1, :cond_2

    .line 271
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSupportAudioModeChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallHandlerService;->onSupportedAudioModeChange(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Remote exception handling onAudioModeChange"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 268
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 3
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
    .line 176
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    iget-object v1, p0, Lcom/android/phone/CallHandlerServiceProxy;->mServiceAndQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy;->mCallHandlerServiceGuarded:Lcom/android/services/telephony/common/ICallHandlerService;

    if-nez v0, :cond_1

    .line 178
    sget-boolean v0, Lcom/android/phone/CallHandlerServiceProxy;->DBG:Z

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/phone/CallHandlerServiceProxy;->TAG:Ljava/lang/String;

    const-string v2, "CallHandlerService not connected.  Enqueue update."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->enqueueUpdate(Ljava/util/List;)V

    .line 182
    invoke-direct {p0}, Lcom/android/phone/CallHandlerServiceProxy;->setupServiceConnection()V

    .line 183
    monitor-exit v1

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-direct {p0, p1}, Lcom/android/phone/CallHandlerServiceProxy;->processUpdate(Ljava/util/List;)V

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

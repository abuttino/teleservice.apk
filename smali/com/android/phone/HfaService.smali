.class public Lcom/android/phone/HfaService;
.super Landroid/app/Service;
.source "HfaService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHfaLogic:Lcom/android/phone/HfaLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/phone/HfaService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/HfaService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/phone/HfaService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/HfaService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/phone/HfaService;->onComplete()V

    return-void
.end method

.method private onComplete()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/phone/HfaService;->stopSelf()V

    .line 70
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/android/phone/HfaService;->TAG:Ljava/lang/String;

    const-string v1, "service started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 40
    const-string v1, "otasp_result_code_pending_intent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 43
    .local v0, otaResponseIntent:Landroid/app/PendingIntent;
    new-instance v1, Lcom/android/phone/HfaLogic;

    new-instance v2, Lcom/android/phone/HfaService$1;

    invoke-direct {v2, p0}, Lcom/android/phone/HfaService$1;-><init>(Lcom/android/phone/HfaService;)V

    invoke-direct {v1, p0, v2, v0}, Lcom/android/phone/HfaLogic;-><init>(Landroid/content/Context;Lcom/android/phone/HfaLogic$HfaLogicCallback;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/android/phone/HfaService;->mHfaLogic:Lcom/android/phone/HfaLogic;

    .line 58
    iget-object v1, p0, Lcom/android/phone/HfaService;->mHfaLogic:Lcom/android/phone/HfaLogic;

    invoke-virtual {v1}, Lcom/android/phone/HfaLogic;->start()V

    .line 60
    const/4 v1, 0x1

    return v1
.end method

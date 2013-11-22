.class Lcom/android/phone/CallHandlerServiceProxy$QueueParams;
.super Ljava/lang/Object;
.source "CallHandlerServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallHandlerServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueueParams"
.end annotation


# instance fields
.field private final mArg:Ljava/lang/Object;

.field private final mMethod:I


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .parameter "method"
    .parameter "arg"

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput p1, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I

    .line 534
    iput-object p2, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;

    .line 535
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Object;Lcom/android/phone/CallHandlerServiceProxy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 524
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;-><init>(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mArg:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/CallHandlerServiceProxy$QueueParams;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 524
    iget v0, p0, Lcom/android/phone/CallHandlerServiceProxy$QueueParams;->mMethod:I

    return v0
.end method

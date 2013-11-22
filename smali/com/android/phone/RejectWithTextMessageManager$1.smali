.class final Lcom/android/phone/RejectWithTextMessageManager$1;
.super Ljava/lang/Object;
.source "RejectWithTextMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectWithTextMessageManager;->showMessageSentToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/phone/RejectWithTextMessageManager$1;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 105
    new-instance v0, Lcom/android/phone/RejectWithTextMessageManager$1$1;

    invoke-direct {v0, p0}, Lcom/android/phone/RejectWithTextMessageManager$1$1;-><init>(Lcom/android/phone/RejectWithTextMessageManager$1;)V

    .line 122
    .local v0, innerHandler:Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 123
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 124
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 125
    return-void
.end method

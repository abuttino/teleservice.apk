.class Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiredHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/WiredHeadsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiredHeadsetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WiredHeadsetManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/WiredHeadsetManager;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/phone/WiredHeadsetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/WiredHeadsetManager;Lcom/android/phone/WiredHeadsetManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/phone/WiredHeadsetManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/phone/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/phone/WiredHeadsetManager;

    const-string v4, "state"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    #calls: Lcom/android/phone/WiredHeadsetManager;->onHeadsetConnection(Z)V
    invoke-static {v3, v1}, Lcom/android/phone/WiredHeadsetManager;->access$100(Lcom/android/phone/WiredHeadsetManager;Z)V

    .line 104
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 102
    goto :goto_0
.end method

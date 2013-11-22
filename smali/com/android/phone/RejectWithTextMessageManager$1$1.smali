.class Lcom/android/phone/RejectWithTextMessageManager$1$1;
.super Landroid/os/Handler;
.source "RejectWithTextMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/RejectWithTextMessageManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectWithTextMessageManager$1;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectWithTextMessageManager$1;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/phone/RejectWithTextMessageManager$1$1;->this$0:Lcom/android/phone/RejectWithTextMessageManager$1;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/phone/RejectWithTextMessageManager$1$1;->handleMessage(Landroid/os/Message;)V

    .line 119
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "message"

    .prologue
    const/4 v6, 0x1

    .line 108
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 109
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0b0202

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, formatString:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/RejectWithTextMessageManager$1$1;->this$0:Lcom/android/phone/RejectWithTextMessageManager$1;

    iget-object v5, v5, Lcom/android/phone/RejectWithTextMessageManager$1;->val$phoneNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, confirmationMsg:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 114
    return-void
.end method

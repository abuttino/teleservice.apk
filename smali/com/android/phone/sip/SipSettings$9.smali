.class Lcom/android/phone/sip/SipSettings$9;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/net/sip/SipRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->createRegistrationListener()Landroid/net/sip/SipRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistering(Ljava/lang/String;)V
    .locals 3
    .parameter "profileUri"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0b01bf

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1300(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public onRegistrationDone(Ljava/lang/String;J)V
    .locals 3
    .parameter "profileUri"
    .parameter "expiryTime"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0b01c5

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1300(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public onRegistrationFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "profileUri"
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 449
    packed-switch p2, :pswitch_data_0

    .line 476
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0b01c6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/sip/SipSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1300(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 451
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0b01c0

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1300(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0b01c7

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1300(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0b01c8

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1300(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0b01c3

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1300(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0b01c2

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1300(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$9;->this$0:Lcom/android/phone/sip/SipSettings;

    const v2, 0x7f0b01c4

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/sip/SipSettings;->showRegistrationMessage(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v1}, Lcom/android/phone/sip/SipSettings;->access$1300(Lcom/android/phone/sip/SipSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

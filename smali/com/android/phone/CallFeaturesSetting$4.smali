.class Lcom/android/phone/CallFeaturesSetting$4;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1163
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1166
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1167
    .local v1, result:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1185
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$500(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$400(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/AsyncResult;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1100(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 1188
    .local v0, done:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1190
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v3, 0x25b

    #calls: Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V
    invoke-static {v2, v3}, Lcom/android/phone/CallFeaturesSetting;->access$1200(Lcom/android/phone/CallFeaturesSetting;I)V

    .line 1191
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$1400(Lcom/android/phone/CallFeaturesSetting;)V

    .line 1193
    :cond_3
    return-void

    .line 1169
    .end local v0           #done:Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #setter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v2, v1}, Lcom/android/phone/CallFeaturesSetting;->access$402(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 1173
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$4;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->access$700(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1185
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1167
    nop

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

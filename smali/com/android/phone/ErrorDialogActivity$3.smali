.class Lcom/android/phone/ErrorDialogActivity$3;
.super Ljava/lang/Object;
.source "ErrorDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ErrorDialogActivity;->showMissingVoicemailErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ErrorDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ErrorDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/phone/ErrorDialogActivity$3;->this$0:Lcom/android/phone/ErrorDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/phone/ErrorDialogActivity$3;->this$0:Lcom/android/phone/ErrorDialogActivity;

    #calls: Lcom/android/phone/ErrorDialogActivity;->dontAddVoiceMailNumber()V
    invoke-static {v0}, Lcom/android/phone/ErrorDialogActivity;->access$000(Lcom/android/phone/ErrorDialogActivity;)V

    .line 98
    return-void
.end method

.class public Lcom/android/phone/TimeConsumingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "TimeConsumingPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/phone/TimeConsumingPreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/TimeConsumingPreferenceActivity$1;,
        Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;,
        Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final mBusyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDismiss:Landroid/content/DialogInterface$OnClickListener;

.field private final mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

.field protected mIsForeground:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->DBG:Z

    .line 42
    new-instance v0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    .line 43
    new-instance v0, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity$DismissAndFinishOnClickListener;-><init>(Lcom/android/phone/TimeConsumingPreferenceActivity;Lcom/android/phone/TimeConsumingPreferenceActivity$1;)V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    .line 56
    iput-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    return-void
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->finish()V

    .line 192
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0b005d

    .line 60
    const/16 v5, 0x64

    if-eq p1, v5, :cond_0

    const/16 v5, 0xc8

    if-ne p1, v5, :cond_1

    .line 61
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v5, 0x7f0b0054

    invoke-virtual {p0, v5}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 65
    sparse-switch p1, :sswitch_data_0

    move-object v1, v4

    .line 118
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    .line 67
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_0
    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 68
    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 69
    const v4, 0x7f0b0056

    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :sswitch_1
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 73
    const v4, 0x7f0b0057

    invoke-virtual {p0, v4}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_1
    const/16 v5, 0x190

    if-eq p1, v5, :cond_2

    const/16 v5, 0x1f4

    if-eq p1, v5, :cond_2

    const/16 v5, 0x12c

    if-eq p1, v5, :cond_2

    const/16 v5, 0x258

    if-ne p1, v5, :cond_3

    .line 81
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0055

    .line 86
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_1

    .line 102
    const v2, 0x7f0b005a

    .line 104
    .local v2, msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 114
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 88
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_2
    const v2, 0x7f0b0059

    .line 89
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 92
    .end local v2           #msgId:I
    :sswitch_3
    const v2, 0x7f0b005c

    .line 94
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 97
    .end local v2           #msgId:I
    :sswitch_4
    const v2, 0x7f0b005b

    .line 98
    .restart local v2       #msgId:I
    iget-object v4, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_3
    move-object v1, v4

    .line 118
    goto :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch

    .line 86
    :sswitch_data_1
    .sparse-switch
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x258 -> :sswitch_4
    .end sparse-switch
.end method

.method public onError(Landroid/preference/Preference;I)V
    .locals 1
    .parameter "preference"
    .parameter "error"

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 175
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 176
    return-void
.end method

.method public onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V
    .locals 2
    .parameter "preference"
    .parameter "exception"

    .prologue
    .line 180
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 181
    const/16 v0, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 184
    const/16 v0, 0x12c

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    goto :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    if-eqz p2, :cond_1

    .line 159
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    .line 164
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 165
    return-void

    .line 161
    :cond_1
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->dismissDialogSafely(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 125
    return-void
.end method

.method public onStarted(Landroid/preference/Preference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mBusyList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-boolean v0, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-eqz v0, :cond_0

    .line 141
    if-eqz p2, :cond_1

    .line 142
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    goto :goto_0
.end method

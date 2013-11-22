.class Lcom/android/phone/CallCommandService;
.super Lcom/android/services/telephony/common/ICallCommandService$Stub;
.source "CallCommandService.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioRouter:Lcom/android/phone/AudioRouter;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mCallModeler:Lcom/android/phone/CallModeler;

.field private final mContext:Landroid/content/Context;

.field private final mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/phone/CallCommandService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallCommandService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallModeler;Lcom/android/phone/DTMFTonePlayer;Lcom/android/phone/AudioRouter;)V
    .locals 0
    .parameter "context"
    .parameter "callManager"
    .parameter "callModeler"
    .parameter "dtmfTonePlayer"
    .parameter "audioRouter"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 51
    iput-object p3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    .line 52
    iput-object p4, p0, Lcom/android/phone/CallCommandService;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    .line 53
    iput-object p5, p0, Lcom/android/phone/CallCommandService;->mAudioRouter:Lcom/android/phone/AudioRouter;

    .line 54
    return-void
.end method


# virtual methods
.method public addCall()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)Z

    .line 166
    return-void
.end method

.method public answerCall(I)V
    .locals 4
    .parameter "callId"

    .prologue
    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v2, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    .line 63
    .local v1, result:Lcom/android/phone/CallModeler$CallResult;
    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1           #result:Lcom/android/phone/CallModeler$CallResult;
    :cond_0
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error during answerCall()."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disconnectCall(I)V
    .locals 6
    .parameter "callId"

    .prologue
    .line 103
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    .line 104
    .local v1, result:Lcom/android/phone/CallModeler$CallResult;
    sget-boolean v3, Lcom/android/phone/CallCommandService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 108
    .local v2, state:I
    const/4 v3, 0x2

    if-eq v3, v2, :cond_1

    const/4 v3, 0x7

    if-eq v3, v2, :cond_1

    const/4 v3, 0x5

    if-ne v3, v2, :cond_3

    .line 111
    :cond_1
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 119
    .end local v1           #result:Lcom/android/phone/CallModeler$CallResult;
    .end local v2           #state:I
    :cond_2
    :goto_0
    return-void

    .line 112
    .restart local v1       #result:Lcom/android/phone/CallModeler$CallResult;
    .restart local v2       #state:I
    :cond_3
    const/16 v3, 0xa

    if-ne v3, v2, :cond_2

    .line 113
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v1           #result:Lcom/android/phone/CallModeler$CallResult;
    .end local v2           #state:I
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "Error during disconnectCall()."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hold(IZ)V
    .locals 5
    .parameter "callId"
    .parameter "hold"

    .prologue
    .line 141
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    .line 142
    .local v1, result:Lcom/android/phone/CallModeler$CallResult;
    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 144
    .local v2, state:I
    if-eqz p2, :cond_1

    const/4 v3, 0x2

    if-ne v3, v2, :cond_1

    .line 145
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 153
    .end local v1           #result:Lcom/android/phone/CallModeler$CallResult;
    .end local v2           #state:I
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v1       #result:Lcom/android/phone/CallModeler$CallResult;
    .restart local v2       #state:I
    :cond_1
    if-nez p2, :cond_0

    const/4 v3, 0x7

    if-ne v3, v2, :cond_0

    .line 147
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v1           #result:Lcom/android/phone/CallModeler$CallResult;
    .end local v2           #state:I
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "Error trying to place call on hold."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public merge()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 160
    :cond_0
    return-void
.end method

.method public mute(Z)V
    .locals 3
    .parameter "onOff"

    .prologue
    .line 201
    :try_start_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error during mute()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playDtmfTone(CZ)V
    .locals 3
    .parameter "digit"
    .parameter "timedShortTone"

    .prologue
    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    invoke-virtual {v1, p1, p2}, Lcom/android/phone/DTMFTonePlayer;->playDtmfTone(CZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error playing DTMF tone."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postDialCancel(I)V
    .locals 2
    .parameter "callId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v0

    .line 246
    .local v0, result:Lcom/android/phone/CallModeler$CallResult;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    .line 249
    :cond_0
    return-void
.end method

.method public postDialWaitContinue(I)V
    .locals 2
    .parameter "callId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v1, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v0

    .line 254
    .local v0, result:Lcom/android/phone/CallModeler$CallResult;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    .line 257
    :cond_0
    return-void
.end method

.method public rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V
    .locals 6
    .parameter "call"
    .parameter "rejectWithMessage"
    .parameter "message"

    .prologue
    .line 77
    const/4 v0, -0x1

    .line 78
    .local v0, callId:I
    :try_start_0
    const-string v2, ""

    .line 79
    .local v2, phoneNumber:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    .line 81
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 83
    :cond_0
    iget-object v4, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v4, v0}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v3

    .line 85
    .local v3, result:Lcom/android/phone/CallModeler$CallResult;
    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 88
    sget-object v4, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v5, "Hanging up"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v3}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 92
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    invoke-static {v2, p3}, Lcom/android/phone/RejectWithTextMessageManager;->rejectCallWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #result:Lcom/android/phone/CallModeler$CallResult;
    :cond_2
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v5, "Error during rejectCall()."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public separateCall(I)V
    .locals 6
    .parameter "callId"

    .prologue
    .line 124
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallModeler:Lcom/android/phone/CallModeler;

    invoke-virtual {v3, p1}, Lcom/android/phone/CallModeler;->getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;

    move-result-object v1

    .line 125
    .local v1, result:Lcom/android/phone/CallModeler$CallResult;
    sget-boolean v3, Lcom/android/phone/CallCommandService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 129
    .local v2, state:I
    const/16 v3, 0xa

    if-ne v3, v2, :cond_1

    .line 130
    invoke-virtual {v1}, Lcom/android/phone/CallModeler$CallResult;->getConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1           #result:Lcom/android/phone/CallModeler$CallResult;
    .end local v2           #state:I
    :cond_1
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v4, "Error trying to separate call."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mAudioRouter:Lcom/android/phone/AudioRouter;

    invoke-virtual {v1, p1}, Lcom/android/phone/AudioRouter;->setAudioMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error setting the audio mode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSystemBarNavigationEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 262
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 264
    .local v1, statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;
    invoke-virtual {v1, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 265
    invoke-virtual {v1, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1           #statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v3, "Error enabling or disabling system bar navigation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public speaker(Z)V
    .locals 3
    .parameter "onOff"

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error during speaker()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopDtmfTone()V
    .locals 3

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCommandService;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTonePlayer;->stopDtmfTone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    const-string v2, "Error stopping DTMF tone."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public swap()V
    .locals 5

    .prologue
    .line 171
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 181
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    .line 186
    .local v2, mApp:Lcom/android/phone/PhoneGlobals;
    iget-object v3, p0, Lcom/android/phone/CallCommandService;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 187
    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    .line 188
    .local v0, btPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;
    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSwapSecondCallState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Lcom/android/phone/CallCommandService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

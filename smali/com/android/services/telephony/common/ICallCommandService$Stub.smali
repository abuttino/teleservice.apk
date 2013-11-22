.class public abstract Lcom/android/services/telephony/common/ICallCommandService$Stub;
.super Landroid/os/Binder;
.source "ICallCommandService.java"

# interfaces
.implements Lcom/android/services/telephony/common/ICallCommandService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ICallCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/ICallCommandService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p0, p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ICallCommandService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.android.services.telephony.common.ICallCommandService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/services/telephony/common/ICallCommandService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/android/services/telephony/common/ICallCommandService;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/android/services/telephony/common/ICallCommandService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 48
    :sswitch_0
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->answerCall(I)V

    goto :goto_0

    .line 61
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    sget-object v4, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 70
    .local v0, _arg0:Lcom/android/services/telephony/common/Call;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v3

    .line 72
    .local v1, _arg1:Z
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0           #_arg0:Lcom/android/services/telephony/common/Call;
    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/services/telephony/common/Call;
    goto :goto_1

    .line 78
    .end local v0           #_arg0:Lcom/android/services/telephony/common/Call;
    :sswitch_3
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 81
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->disconnectCall(I)V

    goto :goto_0

    .line 86
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->separateCall(I)V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 98
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    .line 99
    .restart local v1       #_arg1:Z
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->hold(IZ)V

    goto :goto_0

    .line 104
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    :sswitch_6
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->merge()V

    goto :goto_0

    .line 110
    :sswitch_7
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->swap()V

    goto :goto_0

    .line 116
    :sswitch_8
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->addCall()V

    goto :goto_0

    .line 122
    :sswitch_9
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 125
    .local v0, _arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->mute(Z)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_3
    move v0, v1

    .line 124
    goto :goto_2

    .line 130
    :sswitch_a
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    .line 133
    .restart local v0       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->speaker(Z)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_4
    move v0, v1

    .line 132
    goto :goto_3

    .line 138
    :sswitch_b
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v0, v4

    .line 142
    .local v0, _arg0:C
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v1, v3

    .line 143
    .restart local v1       #_arg1:Z
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->playDtmfTone(CZ)V

    goto/16 :goto_0

    .line 148
    .end local v0           #_arg0:C
    .end local v1           #_arg1:Z
    :sswitch_c
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->stopDtmfTone()V

    goto/16 :goto_0

    .line 154
    :sswitch_d
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setAudioMode(I)V

    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:I
    :sswitch_e
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->postDialCancel(I)V

    goto/16 :goto_0

    .line 170
    .end local v0           #_arg0:I
    :sswitch_f
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->postDialWaitContinue(I)V

    goto/16 :goto_0

    .line 178
    .end local v0           #_arg0:I
    :sswitch_10
    const-string v4, "com.android.services.telephony.common.ICallCommandService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    move v0, v3

    .line 181
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->setSystemBarNavigationEnabled(Z)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_6
    move v0, v1

    .line 180
    goto :goto_4

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

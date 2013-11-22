.class public abstract Lcom/android/services/telephony/common/ICallHandlerService$Stub;
.super Landroid/os/Binder;
.source "ICallHandlerService.java"

# interfaces
.implements Lcom/android/services/telephony/common/ICallHandlerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/ICallHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/common/ICallHandlerService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 24
    const-string v0, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ICallHandlerService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v1, "com.android.services.telephony.common.ICallHandlerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 36
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/services/telephony/common/ICallHandlerService;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/android/services/telephony/common/ICallHandlerService;

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/android/services/telephony/common/ICallHandlerService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 47
    sparse-switch p1, :sswitch_data_0

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 51
    :sswitch_0
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :sswitch_1
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/common/ICallCommandService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ICallCommandService;

    move-result-object v0

    .line 59
    .local v0, _arg0:Lcom/android/services/telephony/common/ICallCommandService;
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->startCallService(Lcom/android/services/telephony/common/ICallCommandService;)V

    goto :goto_0

    .line 64
    .end local v0           #_arg0:Lcom/android/services/telephony/common/ICallCommandService;
    :sswitch_2
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    sget-object v5, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 73
    .local v0, _arg0:Lcom/android/services/telephony/common/Call;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 74
    .local v3, _arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v3}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:Lcom/android/services/telephony/common/Call;
    .end local v3           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/services/telephony/common/Call;
    goto :goto_1

    .line 79
    .end local v0           #_arg0:Lcom/android/services/telephony/common/Call;
    :sswitch_3
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    sget-object v5, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 82
    .local v1, _arg0:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onUpdate(Ljava/util/List;)V

    goto :goto_0

    .line 87
    .end local v1           #_arg0:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    :sswitch_4
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    sget-object v5, Lcom/android/services/telephony/common/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 95
    .restart local v0       #_arg0:Lcom/android/services/telephony/common/Call;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 93
    .end local v0           #_arg0:Lcom/android/services/telephony/common/Call;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/android/services/telephony/common/Call;
    goto :goto_2

    .line 100
    .end local v0           #_arg0:Lcom/android/services/telephony/common/Call;
    :sswitch_5
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    .line 105
    .local v2, _arg1:Z
    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onAudioModeChange(IZ)V

    goto :goto_0

    .line 110
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Z
    :sswitch_6
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onSupportedAudioModeChange(I)V

    goto :goto_0

    .line 118
    .end local v0           #_arg0:I
    :sswitch_7
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v4

    .line 121
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->bringToForeground(Z)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_3
    move v0, v2

    .line 120
    goto :goto_3

    .line 126
    :sswitch_8
    const-string v5, "com.android.services.telephony.common.ICallHandlerService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 130
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;->onPostDialWait(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 47
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

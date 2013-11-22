.class public final Lcom/android/services/telephony/common/CallIdentification;
.super Ljava/lang/Object;
.source "CallIdentification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/CallIdentification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallId:I

.field private mCnapName:Ljava/lang/String;

.field private mCnapNamePresentation:I

.field private mNumber:Ljava/lang/String;

.field private mNumberPresentation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/android/services/telephony/common/CallIdentification$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/CallIdentification$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/CallIdentification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "callId"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 37
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 40
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 46
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 37
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 40
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/CallIdentification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/CallIdentification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/common/CallIdentification;)V
    .locals 1
    .parameter "identification"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 37
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 40
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 50
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    .line 51
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 52
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 53
    iget v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    iput v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 54
    iget-object v0, p1, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    return v0
.end method

.method public setCnapName(Ljava/lang/String;)V
    .locals 0
    .parameter "cnapName"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setCnapNamePresentation(I)V
    .locals 0
    .parameter "presentation"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    .line 83
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setNumberPresentation(I)V
    .locals 0
    .parameter "presentation"

    .prologue
    .line 74
    iput p1, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCallId"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumberPresentation"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCnapName"

    iget-object v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/services/telephony/common/MoreStrings;->toSafeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCnapNamePresentation"

    iget v2, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 99
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mNumberPresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapNamePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-object v0, p0, Lcom/android/services/telephony/common/CallIdentification;->mCnapName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return-void
.end method

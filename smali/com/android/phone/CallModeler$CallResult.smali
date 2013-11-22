.class public Lcom/android/phone/CallModeler$CallResult;
.super Ljava/lang/Object;
.source "CallModeler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallModeler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallResult"
.end annotation


# instance fields
.field public mActionableCall:Lcom/android/services/telephony/common/Call;

.field public mCall:Lcom/android/services/telephony/common/Call;

.field public mConnection:Lcom/android/internal/telephony/Connection;


# direct methods
.method private constructor <init>(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "call"
    .parameter "connection"

    .prologue
    .line 884
    invoke-direct {p0, p1, p1, p2}, Lcom/android/phone/CallModeler$CallResult;-><init>(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V

    .line 885
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallModeler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 878
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallModeler$CallResult;-><init>(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/services/telephony/common/Call;Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "call"
    .parameter "actionableCall"
    .parameter "connection"

    .prologue
    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 888
    iput-object p1, p0, Lcom/android/phone/CallModeler$CallResult;->mCall:Lcom/android/services/telephony/common/Call;

    .line 889
    iput-object p2, p0, Lcom/android/phone/CallModeler$CallResult;->mActionableCall:Lcom/android/services/telephony/common/Call;

    .line 890
    iput-object p3, p0, Lcom/android/phone/CallModeler$CallResult;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 891
    return-void
.end method


# virtual methods
.method public getCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/phone/CallModeler$CallResult;->mCall:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/phone/CallModeler$CallResult;->mConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.class public Lcom/android/phone/CallModeler;
.super Landroid/os/Handler;
.source "CallModeler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallModeler$1;,
        Lcom/android/phone/CallModeler$CallResult;,
        Lcom/android/phone/CallModeler$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/android/internal/telephony/Connection$DisconnectCause;",
            "Lcom/android/services/telephony/common/Call$DisconnectCause;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

.field private final mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mCallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

.field private mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

.field private mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

.field private final mConfCallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallModeler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/android/phone/CallModeler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/CallModeler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallStateMonitor;Lcom/android/internal/telephony/CallManager;Lcom/android/phone/CallGatewayManager;)V
    .locals 3
    .parameter "callStateMonitor"
    .parameter "callManager"
    .parameter "callGatewayManager"

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 90
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    .line 91
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    .line 755
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->BUSY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_DROP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_REORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->FDN_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->ICC_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_MISSED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOCAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOST_SIGNAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->MMI:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->MMI:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->POWER_OFF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->TIMED_OUT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->TIMED_OUT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;

    .line 99
    iput-object p1, p0, Lcom/android/phone/CallModeler;->mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

    .line 100
    iput-object p2, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 101
    iput-object p3, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    .line 103
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallStateMonitor:Lcom/android/phone/CallStateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallStateMonitor;->addListener(Landroid/os/Handler;)V

    .line 104
    return-void
.end method

.method private createNewCall()Lcom/android/services/telephony/common/Call;
    .locals 3

    .prologue
    .line 850
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 853
    const v0, 0x7fffffff

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    .line 859
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mNextCallId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    new-instance v0, Lcom/android/services/telephony/common/Call;

    invoke-direct {v0, v1}, Lcom/android/services/telephony/common/Call;-><init>(I)V

    return-object v0

    .line 853
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method private doUpdate(ZLjava/util/List;)V
    .locals 13
    .parameter "fullUpdate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p2, out:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 356
    .local v9, telephonyCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    iget-object v10, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getRingingCalls()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 357
    iget-object v10, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getForegroundCalls()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    iget-object v10, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getBackgroundCalls()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 362
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Call;

    .line 364
    .local v8, telephonyCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 365
    .local v2, connection:Lcom/android/internal/telephony/Connection;
    sget-boolean v10, Lcom/android/phone/CallModeler;->DBG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connection: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v10, v11, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v7, 0x1

    .line 377
    .local v7, shouldUpdate:Z
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_5

    const/4 v5, 0x1

    .line 382
    .local v5, isDisconnecting:Z
    :goto_2
    if-eqz v7, :cond_6

    if-nez v5, :cond_6

    const/4 v6, 0x1

    .line 387
    .local v6, shouldCreate:Z
    :goto_3
    iget-object v10, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v10, v2, v6}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 389
    .local v0, call:Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_3

    if-nez v7, :cond_7

    .line 390
    :cond_3
    sget-boolean v10, Lcom/android/phone/CallModeler;->DBG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v11, "update skipped"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    .end local v0           #call:Lcom/android/services/telephony/common/Call;
    .end local v5           #isDisconnecting:Z
    .end local v6           #shouldCreate:Z
    .end local v7           #shouldUpdate:Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 377
    .restart local v7       #shouldUpdate:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 382
    .restart local v5       #isDisconnecting:Z
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 394
    .restart local v0       #call:Lcom/android/services/telephony/common/Call;
    .restart local v6       #shouldCreate:Z
    :cond_7
    const/4 v10, 0x0

    invoke-direct {p0, v0, v2, v10}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v1

    .line 396
    .local v1, changed:Z
    if-nez p1, :cond_8

    if-eqz v1, :cond_1

    .line 397
    :cond_8
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 404
    .end local v0           #call:Lcom/android/services/telephony/common/Call;
    .end local v1           #changed:Z
    .end local v2           #connection:Lcom/android/internal/telephony/Connection;
    .end local v5           #isDisconnecting:Z
    .end local v6           #shouldCreate:Z
    .end local v7           #shouldUpdate:Z
    :cond_9
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 405
    .restart local v2       #connection:Lcom/android/internal/telephony/Connection;
    invoke-direct {p0, v2, p2}, Lcom/android/phone/CallModeler;->updateForConferenceCalls(Lcom/android/internal/telephony/Connection;Ljava/util/List;)Z

    goto :goto_4

    .line 409
    .end local v2           #connection:Lcom/android/internal/telephony/Connection;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #telephonyCall:Lcom/android/internal/telephony/Call;
    :cond_a
    return-void
.end method

.method private getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;
    .locals 2
    .parameter
    .parameter "conn"
    .parameter "createIfMissing"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;",
            "Lcom/android/internal/telephony/Connection;",
            "Z)",
            "Lcom/android/services/telephony/common/Call;"
        }
    .end annotation

    .prologue
    .line 829
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    const/4 v0, 0x0

    .line 832
    .local v0, call:Lcom/android/services/telephony/common/Call;
    if-eqz p2, :cond_0

    .line 833
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 834
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #call:Lcom/android/services/telephony/common/Call;
    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 840
    .restart local v0       #call:Lcom/android/services/telephony/common/Call;
    :cond_0
    :goto_0
    return-object v0

    .line 835
    :cond_1
    if-eqz p3, :cond_0

    .line 836
    invoke-direct {p0}, Lcom/android/phone/CallModeler;->createNewCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 837
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getCapabilitiesFor(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;Z)I
    .locals 17
    .parameter "connection"
    .parameter "call"
    .parameter "isForConference"

    .prologue
    .line 604
    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    const/4 v2, 0x1

    .line 605
    .local v2, callIsActive:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 607
    .local v12, phone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 608
    .local v3, canAddCall:Z
    const/4 v5, 0x0

    .line 609
    .local v5, canMergeCall:Z
    const/4 v8, 0x0

    .line 610
    .local v8, canSwapCall:Z
    const/4 v7, 0x0

    .line 611
    .local v7, canRespondViaText:Z
    const/4 v6, 0x0

    .line 613
    .local v6, canMute:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->okToSupportHold(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    .line 614
    .local v14, supportHold:Z
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->okToHoldCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v4

    .line 615
    .local v4, canHold:Z
    :goto_1
    if-eqz p3, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-interface {v15}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    const/4 v9, 0x1

    .line 619
    .local v9, genericConf:Z
    :goto_2
    if-eqz v2, :cond_0

    .line 620
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    .line 621
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->okToSwapCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v8

    .line 624
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    .line 630
    const/4 v11, 0x0

    .line 631
    .local v11, isEmergencyCall:Z
    if-eqz p1, :cond_1

    .line 632
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    .line 635
    :cond_1
    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    .line 636
    .local v10, isECM:Z
    if-nez v11, :cond_2

    if-eqz v10, :cond_f

    .line 637
    :cond_2
    const/4 v6, 0x0

    .line 642
    :goto_3
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/phone/RejectWithTextMessageManager;->allowRespondViaSmsForCall(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    .line 647
    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 648
    const/4 v3, 0x1

    .line 651
    :cond_3
    const/4 v13, 0x0

    .line 652
    .local v13, retval:I
    if-eqz v4, :cond_4

    .line 653
    or-int/lit8 v13, v13, 0x1

    .line 655
    :cond_4
    if-eqz v14, :cond_5

    .line 656
    or-int/lit8 v13, v13, 0x2

    .line 658
    :cond_5
    if-eqz v3, :cond_6

    .line 659
    or-int/lit8 v13, v13, 0x10

    .line 661
    :cond_6
    if-eqz v5, :cond_7

    .line 662
    or-int/lit8 v13, v13, 0x4

    .line 664
    :cond_7
    if-eqz v8, :cond_8

    .line 665
    or-int/lit8 v13, v13, 0x8

    .line 667
    :cond_8
    if-eqz v7, :cond_9

    .line 668
    or-int/lit8 v13, v13, 0x20

    .line 670
    :cond_9
    if-eqz v6, :cond_a

    .line 671
    or-int/lit8 v13, v13, 0x40

    .line 673
    :cond_a
    if-eqz v9, :cond_b

    .line 674
    or-int/lit16 v13, v13, 0x80

    .line 677
    :cond_b
    return v13

    .line 604
    .end local v2           #callIsActive:Z
    .end local v3           #canAddCall:Z
    .end local v4           #canHold:Z
    .end local v5           #canMergeCall:Z
    .end local v6           #canMute:Z
    .end local v7           #canRespondViaText:Z
    .end local v8           #canSwapCall:Z
    .end local v9           #genericConf:Z
    .end local v10           #isECM:Z
    .end local v11           #isEmergencyCall:Z
    .end local v12           #phone:Lcom/android/internal/telephony/Phone;
    .end local v13           #retval:I
    .end local v14           #supportHold:Z
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 614
    .restart local v2       #callIsActive:Z
    .restart local v3       #canAddCall:Z
    .restart local v5       #canMergeCall:Z
    .restart local v6       #canMute:Z
    .restart local v7       #canRespondViaText:Z
    .restart local v8       #canSwapCall:Z
    .restart local v12       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v14       #supportHold:Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_1

    .line 615
    .restart local v4       #canHold:Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_2

    .line 639
    .restart local v9       #genericConf:Z
    .restart local v10       #isECM:Z
    .restart local v11       #isEmergencyCall:Z
    :cond_f
    move v6, v2

    goto :goto_3
.end method

.method private getEarliestLiveConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 10
    .parameter "call"

    .prologue
    .line 463
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 464
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 465
    .local v6, size:I
    const/4 v2, 0x0

    .line 466
    .local v2, earliestConn:Lcom/android/internal/telephony/Connection;
    const-wide v3, 0x7fffffffffffffffL

    .line 467
    .local v3, earliestTime:J
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_2

    .line 468
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 469
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v9

    if-nez v9, :cond_1

    .line 467
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v7

    .line 471
    .local v7, time:J
    cmp-long v9, v7, v3

    if-gez v9, :cond_0

    .line 472
    move-wide v3, v7

    .line 473
    move-object v2, v0

    goto :goto_1

    .line 476
    .end local v0           #connection:Lcom/android/internal/telephony/Connection;
    .end local v7           #time:J
    :cond_2
    return-object v2
.end method

.method private hasLiveCallInternal(Ljava/util/HashMap;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 219
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 220
    .local v0, call:Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 221
    .local v2, state:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 229
    :cond_1
    const/4 v3, 0x1

    .line 232
    .end local v0           #call:Lcom/android/services/telephony/common/Call;
    .end local v2           #state:I
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static hasOutstandingActiveOrDialingCallInternal(Ljava/util/HashMap;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            "Lcom/android/services/telephony/common/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 243
    .local v0, call:Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 244
    .local v2, state:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-static {v2}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    :cond_1
    const/4 v3, 0x1

    .line 249
    .end local v0           #call:Lcom/android/services/telephony/common/Call;
    .end local v2           #state:I
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isPartOfLiveConferenceCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 4
    .parameter "connection"

    .prologue
    .line 686
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 692
    .local v1, currConn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-eq v1, v3, :cond_0

    .line 693
    add-int/lit8 v0, v0, 0x1

    .line 694
    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 695
    const/4 v3, 0x1

    .line 700
    .end local v0           #count:I
    .end local v1           #currConn:Lcom/android/internal/telephony/Connection;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .parameter "conn"

    .prologue
    const/4 v3, 0x0

    .line 307
    sget-object v4, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v5, "onDisconnect"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v4, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v4, p1, v3}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 310
    .local v0, call:Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_3

    .line 311
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 313
    .local v2, wasConferenced:Z
    :goto_0
    invoke-direct {p0, v0, p1, v3}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    .line 315
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v3, v0}, Lcom/android/phone/CallModeler$Listener;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #wasConferenced:Z
    :cond_0
    move v2, v3

    .line 311
    goto :goto_0

    .line 321
    .restart local v1       #i:I
    .restart local v2       #wasConferenced:Z
    :cond_1
    if-eqz v2, :cond_2

    .line 322
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/phone/CallModeler;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 325
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .end local v1           #i:I
    .end local v2           #wasConferenced:Z
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 329
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 330
    return-void
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 336
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "onPhoneStateChanged: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 338
    .local v1, updatedCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/phone/CallModeler;->doUpdate(ZLjava/util/List;)V

    .line 340
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 341
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v2, v1}, Lcom/android/phone/CallModeler$Listener;->onUpdate(Ljava/util/List;)V

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    .end local v0           #i:I
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 347
    return-void
.end method

.method private onPostDialChars(Landroid/os/AsyncResult;C)V
    .locals 8
    .parameter "r"
    .parameter "ch"

    .prologue
    const/4 v7, 0x0

    .line 262
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 264
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 265
    iget-object v4, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 267
    .local v4, state:Lcom/android/internal/telephony/Connection$PostDialState;
    sget-object v5, Lcom/android/phone/CallModeler$1;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 282
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallModeler$Listener;

    .line 283
    .local v3, mListener:Lcom/android/phone/CallModeler$Listener;
    const-string v5, ""

    invoke-interface {v3, v4, v7, v5, p2}, Lcom/android/phone/CallModeler$Listener;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V

    goto :goto_0

    .line 269
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mListener:Lcom/android/phone/CallModeler$Listener;
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v5, v0, v7}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 270
    .local v1, call:Lcom/android/services/telephony/common/Call;
    if-nez v1, :cond_1

    .line 271
    sget-object v5, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v6, "Call no longer exists. Skipping onPostDialWait()."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v1           #call:Lcom/android/services/telephony/common/Call;
    .end local v4           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_0
    return-void

    .line 273
    .restart local v1       #call:Lcom/android/services/telephony/common/Call;
    .restart local v4       #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/CallModeler$Listener;

    .line 274
    .restart local v3       #mListener:Lcom/android/phone/CallModeler$Listener;
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6, p2}, Lcom/android/phone/CallModeler$Listener;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;ILjava/lang/String;C)V

    goto :goto_1

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setNewState(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "call"
    .parameter "newState"
    .parameter "connection"

    .prologue
    .line 484
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    if-eq v1, p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 488
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    invoke-virtual {v1, p3}, Lcom/android/phone/CallGatewayManager;->getGatewayInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    move-result-object v0

    .line 490
    .local v0, info:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    invoke-static {p2}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    invoke-virtual {v0}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->getFormattedGatewayNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setGatewayNumber(Ljava/lang/String;)V

    .line 493
    iget-object v1, v0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->setGatewayPackage(Ljava/lang/String;)V

    .line 499
    :cond_0
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 500
    return-void

    .line 484
    .end local v0           #info:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 495
    .restart local v0       #info:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    :cond_2
    invoke-static {p2}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    invoke-virtual {v1, p3}, Lcom/android/phone/CallGatewayManager;->clearGatewayData(Lcom/android/internal/telephony/Connection;)V

    goto :goto_1
.end method

.method private translateDisconnectCauseFromTelephony(Lcom/android/internal/telephony/Connection$DisconnectCause;)Lcom/android/services/telephony/common/Call$DisconnectCause;
    .locals 1
    .parameter "causeSource"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/phone/CallModeler;->CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/phone/CallModeler;->CAUSE_MAP:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 819
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    goto :goto_0
.end method

.method private translateStateFromTelephony(Lcom/android/internal/telephony/Connection;Z)I
    .locals 4
    .parameter "connection"
    .parameter "isForConference"

    .prologue
    .line 705
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 708
    .local v0, connState:Lcom/android/internal/telephony/Call$State;
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-ne v2, p1, :cond_0

    .line 709
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 712
    :cond_0
    const/4 v1, 0x1

    .line 713
    .local v1, retval:I
    sget-object v2, Lcom/android/phone/CallModeler$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 744
    :goto_0
    if-nez p2, :cond_1

    .line 747
    invoke-direct {p0, p1}, Lcom/android/phone/CallModeler;->isPartOfLiveConferenceCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 748
    const/16 v1, 0xa

    .line 752
    .end local v1           #retval:I
    :cond_1
    return v1

    .line 715
    .restart local v1       #retval:I
    :pswitch_0
    const/4 v1, 0x2

    .line 716
    goto :goto_0

    .line 718
    :pswitch_1
    const/4 v1, 0x3

    .line 719
    goto :goto_0

    .line 722
    :pswitch_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 723
    const/4 v1, 0x6

    goto :goto_0

    .line 725
    :cond_2
    const/4 v1, 0x5

    .line 727
    goto :goto_0

    .line 729
    :pswitch_3
    const/4 v1, 0x4

    .line 730
    goto :goto_0

    .line 732
    :pswitch_4
    const/4 v1, 0x7

    .line 733
    goto :goto_0

    .line 735
    :pswitch_5
    const/16 v1, 0x8

    .line 736
    goto :goto_0

    .line 738
    :pswitch_6
    const/16 v1, 0x9

    goto :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z
    .locals 22
    .parameter "call"
    .parameter "connection"
    .parameter "isForConference"

    .prologue
    .line 512
    const/4 v4, 0x0

    .line 514
    .local v4, changed:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallModeler;->translateStateFromTelephony(Lcom/android/internal/telephony/Connection;Z)I

    move-result v14

    .line 516
    .local v14, newState:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v14, :cond_0

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v14, v2}, Lcom/android/phone/CallModeler;->setNewState(Lcom/android/services/telephony/common/Call;ILcom/android/internal/telephony/Connection;)V

    .line 518
    const/4 v4, 0x1

    .line 521
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/CallModeler;->translateDisconnectCauseFromTelephony(Lcom/android/internal/telephony/Connection$DisconnectCause;)Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v11

    .line 523
    .local v11, newDisconnectCause:Lcom/android/services/telephony/common/Call$DisconnectCause;
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v20

    move-object/from16 v0, v20

    if-eq v0, v11, :cond_1

    .line 524
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->setDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)V

    .line 525
    const/4 v4, 0x1

    .line 528
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v16

    .line 529
    .local v16, oldConnectTime:J
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v20

    cmp-long v20, v16, v20

    if-eqz v20, :cond_2

    .line 530
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/services/telephony/common/Call;->setConnectTime(J)V

    .line 531
    const/4 v4, 0x1

    .line 534
    :cond_2
    if-nez p3, :cond_b

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v18

    .line 537
    .local v18, oldNumber:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v12

    .line 538
    .local v12, newNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallModeler;->mCallGatewayManager:Lcom/android/phone/CallGatewayManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallGatewayManager;->getGatewayInfo(Lcom/android/internal/telephony/Connection;)Lcom/android/phone/CallGatewayManager$RawGatewayInfo;

    move-result-object v8

    .line 539
    .local v8, info:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    invoke-virtual {v8}, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3

    .line 540
    iget-object v12, v8, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->trueNumber:Ljava/lang/String;

    .line 542
    :cond_3
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 543
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/services/telephony/common/Call;->setNumber(Ljava/lang/String;)V

    .line 544
    const/4 v4, 0x1

    .line 548
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v13

    .line 549
    .local v13, newNumberPresentation:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getNumberPresentation()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v13, :cond_6

    .line 550
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/services/telephony/common/Call;->setNumberPresentation(I)V

    .line 551
    const/4 v4, 0x1

    .line 555
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCnapName()Ljava/lang/String;

    move-result-object v15

    .line 556
    .local v15, oldCnapName:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 557
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/Call;->setCnapName(Ljava/lang/String;)V

    .line 558
    const/4 v4, 0x1

    .line 562
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v10

    .line 563
    .local v10, newCnapNamePresentation:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCnapNamePresentation()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v10, :cond_9

    .line 564
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/services/telephony/common/Call;->setCnapNamePresentation(I)V

    .line 565
    const/4 v4, 0x1

    .line 591
    .end local v8           #info:Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
    .end local v10           #newCnapNamePresentation:I
    .end local v12           #newNumber:Ljava/lang/String;
    .end local v13           #newNumberPresentation:I
    .end local v15           #oldCnapName:Ljava/lang/String;
    .end local v18           #oldNumber:Ljava/lang/String;
    :cond_9
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/CallModeler;->getCapabilitiesFor(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;Z)I

    move-result v9

    .line 592
    .local v9, newCapabilities:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCapabilities()I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v9, :cond_a

    .line 593
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/services/telephony/common/Call;->setCapabilities(I)V

    .line 594
    const/4 v4, 0x1

    .line 597
    :cond_a
    return v4

    .line 574
    .end local v9           #newCapabilities:I
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v19

    .line 575
    .local v19, oldSet:Lcom/google/common/collect/ImmutableSortedSet;,"Lcom/google/common/collect/ImmutableSortedSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->removeAllChildren()V

    .line 577
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    if-eqz v20, :cond_d

    .line 578
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_c
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 579
    .local v6, childConn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v6, v2}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v5

    .line 580
    .local v5, childCall:Lcom/android/services/telephony/common/Call;
    if-eqz v5, :cond_c

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 581
    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/Call;->addChildId(I)V

    goto :goto_1

    .line 585
    .end local v5           #childCall:Lcom/android/services/telephony/common/Call;
    .end local v6           #childConn:Lcom/android/internal/telephony/Connection;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/common/collect/ImmutableSortedSet;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    const/16 v20, 0x1

    :goto_2
    or-int v4, v4, v20

    goto :goto_0

    :cond_e
    const/16 v20, 0x0

    goto :goto_2
.end method

.method private updateForConferenceCalls(Lcom/android/internal/telephony/Connection;Ljava/util/List;)Z
    .locals 8
    .parameter "connection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, updatedCalls:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 424
    invoke-direct {p0, p1}, Lcom/android/phone/CallModeler;->isPartOfLiveConferenceCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallModeler;->getEarliestLiveConnection(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v6

    if-ne v6, p1, :cond_2

    move v2, v4

    .line 427
    .local v2, isConferenceCallConnection:Z
    :goto_0
    const/4 v0, 0x0

    .line 431
    .local v0, changed:Z
    if-eqz v2, :cond_3

    .line 432
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v5, p1, v4}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 433
    .local v1, confCall:Lcom/android/services/telephony/common/Call;
    invoke-direct {p0, v1, p1, v4}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v0

    .line 435
    if-eqz v0, :cond_0

    .line 436
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_0
    sget-boolean v4, Lcom/android/phone/CallModeler;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating a conference call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v1           #confCall:Lcom/android/services/telephony/common/Call;
    :cond_1
    :goto_1
    return v0

    .end local v0           #changed:Z
    .end local v2           #isConferenceCallConnection:Z
    :cond_2
    move v2, v5

    .line 424
    goto :goto_0

    .line 444
    .restart local v0       #changed:Z
    .restart local v2       #isConferenceCallConnection:Z
    :cond_3
    iget-object v6, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v6, p1, v5}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v3

    .line 448
    .local v3, oldConfCall:Lcom/android/services/telephony/common/Call;
    if-eqz v3, :cond_1

    .line 449
    sget-boolean v5, Lcom/android/phone/CallModeler;->DBG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleaning up an old conference call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_4
    iget-object v5, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-virtual {v3, v4}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 452
    const/4 v0, 0x1

    .line 455
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/android/phone/CallModeler$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 131
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public getCallWithId(I)Lcom/android/phone/CallModeler$CallResult;
    .locals 6
    .parameter "callId"

    .prologue
    const/4 v5, 0x0

    .line 148
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 149
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 150
    new-instance v4, Lcom/android/phone/CallModeler$CallResult;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-direct {v4, v2, v3, v5}, Lcom/android/phone/CallModeler$CallResult;-><init>(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallModeler$1;)V

    move-object v2, v4

    .line 159
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    :goto_0
    return-object v2

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 156
    new-instance v4, Lcom/android/phone/CallModeler$CallResult;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/common/Call;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-direct {v4, v2, v3, v5}, Lcom/android/phone/CallModeler$CallResult;-><init>(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Lcom/android/phone/CallModeler$1;)V

    move-object v2, v4

    goto :goto_0

    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/common/Call;>;"
    :cond_3
    move-object v2, v5

    .line 159
    goto :goto_0
.end method

.method public getFullList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    .local v0, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 142
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 128
    :goto_0
    :sswitch_0
    return-void

    .line 115
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onDisconnect(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 120
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 123
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-char v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallModeler;->onPostDialChars(Landroid/os/AsyncResult;C)V

    goto :goto_0

    .line 108
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xd -> :sswitch_3
    .end sparse-switch
.end method

.method public hasLiveCall()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->hasLiveCallInternal(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->hasLiveCallInternal(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOutstandingActiveOrDialingCall()Z
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/phone/CallModeler;->hasOutstandingActiveOrDialingCallInternal(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallModeler;->mConfCallMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/android/phone/CallModeler;->hasOutstandingActiveOrDialingCallInternal(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCdmaCallWaiting(Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;)V
    .locals 6
    .parameter "callWaitingInfo"

    .prologue
    .line 171
    iget-object v4, p0, Lcom/android/phone/CallModeler;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 174
    .local v3, teleCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 175
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 177
    .local v1, connection:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, number:Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-object v4, p1, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/phone/CallModeler;->onNewRingingConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 181
    .local v0, call:Lcom/android/services/telephony/common/Call;
    iput-object v1, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    .line 188
    .end local v0           #call:Lcom/android/services/telephony/common/Call;
    .end local v1           #connection:Lcom/android/internal/telephony/Connection;
    .end local v2           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 187
    :cond_0
    sget-object v4, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v5, "CDMA Call waiting notification without a matching connection."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCdmaCallWaitingReject()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/CallModeler;->onDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallModeler;->mCdmaIncomingConnection:Lcom/android/internal/telephony/Connection;

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    sget-object v0, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v1, "CDMA Call waiting rejection without an incoming call."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onNewRingingConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/Call;
    .locals 4
    .parameter "conn"

    .prologue
    .line 291
    sget-object v2, Lcom/android/phone/CallModeler;->TAG:Ljava/lang/String;

    const-string v3, "onNewRingingConnection"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mCallMap:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {p0, v2, p1, v3}, Lcom/android/phone/CallModeler;->getCallFromMap(Ljava/util/HashMap;Lcom/android/internal/telephony/Connection;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 294
    .local v0, call:Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    .line 295
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/android/phone/CallModeler;->updateCallFromConnection(Lcom/android/services/telephony/common/Call;Lcom/android/internal/telephony/Connection;Z)Z

    .line 297
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/android/phone/CallModeler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallModeler$Listener;

    invoke-interface {v2, v0}, Lcom/android/phone/CallModeler$Listener;->onIncoming(Lcom/android/services/telephony/common/Call;)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1           #i:I
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 303
    return-object v0
.end method

.method public setCdmaOutgoing3WayCall(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 206
    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 208
    .local v0, wasSet:Z
    :goto_0
    iput-object p1, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    .line 213
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallModeler;->mCdmaOutgoingConnection:Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_0

    .line 214
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/CallModeler;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 216
    :cond_0
    return-void

    .line 206
    .end local v0           #wasSet:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

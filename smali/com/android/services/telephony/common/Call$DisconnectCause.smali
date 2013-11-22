.class public final enum Lcom/android/services/telephony/common/Call$DisconnectCause;
.super Ljava/lang/Enum;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisconnectCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/services/telephony/common/Call$DisconnectCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum BUSY:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CDMA_ACCESS_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CDMA_ACCESS_FAILURE:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CDMA_DROP:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CDMA_INTERCEPT:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CDMA_NOT_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CDMA_PREEMPTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CDMA_REORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CDMA_RETRY_ORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CDMA_SO_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CS_RESTRICTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CS_RESTRICTED_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum CS_RESTRICTED_NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum FDN_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum ICC_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum INCOMING_MISSED:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum INCOMING_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum INVALID_CREDENTIALS:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum INVALID_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum LIMIT_EXCEEDED:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum LOCAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum LOST_SIGNAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum MMI:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum NOT_DISCONNECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum NUMBER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum OUT_OF_NETWORK:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum OUT_OF_SERVICE:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum POWER_OFF:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum SERVER_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum SERVER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum TIMED_OUT:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

.field public static final enum UNOBTAINABLE_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "NOT_DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 106
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "INCOMING_MISSED"

    invoke-direct {v0, v1, v4}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_MISSED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 107
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 108
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v6}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOCAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 109
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v7}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->BUSY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 110
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CONGESTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 111
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "MMI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->MMI:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 112
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "INVALID_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 113
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "NUMBER_UNREACHABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 114
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "SERVER_UNREACHABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 115
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "INVALID_CREDENTIALS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 116
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "OUT_OF_NETWORK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 117
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 118
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "TIMED_OUT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->TIMED_OUT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 119
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "LOST_SIGNAL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOST_SIGNAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 120
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "LIMIT_EXCEEDED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 121
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "INCOMING_REJECTED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 122
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "POWER_OFF"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->POWER_OFF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 123
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "OUT_OF_SERVICE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 124
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "ICC_ERROR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->ICC_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 125
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CALL_BARRED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 126
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "FDN_BLOCKED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->FDN_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 127
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CS_RESTRICTED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 128
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CS_RESTRICTED_NORMAL"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 129
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CS_RESTRICTED_EMERGENCY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 130
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "UNOBTAINABLE_NUMBER"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 131
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 132
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CDMA_DROP"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_DROP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 133
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CDMA_INTERCEPT"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 134
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CDMA_REORDER"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_REORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 135
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CDMA_SO_REJECT"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 136
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CDMA_RETRY_ORDER"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 137
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CDMA_ACCESS_FAILURE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 138
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CDMA_PREEMPTED"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 139
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CDMA_NOT_EMERGENCY"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 140
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "CDMA_ACCESS_BLOCKED"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 141
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "ERROR_UNSPECIFIED"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 143
    new-instance v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/android/services/telephony/common/Call$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    .line 104
    const/16 v0, 0x26

    new-array v0, v0, [Lcom/android/services/telephony/common/Call$DisconnectCause;

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_MISSED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOCAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->BUSY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CONGESTION:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->MMI:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_UNREACHABLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INVALID_CREDENTIALS:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_NETWORK:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->SERVER_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->TIMED_OUT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOST_SIGNAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->INCOMING_REJECTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->POWER_OFF:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->ICC_ERROR:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->FDN_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_DROP:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_REORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_SO_REJECT:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_PREEMPTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->$VALUES:[Lcom/android/services/telephony/common/Call$DisconnectCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/services/telephony/common/Call$DisconnectCause;
    .locals 1
    .parameter

    .prologue
    .line 104
    const-class v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call$DisconnectCause;

    return-object v0
.end method

.method public static values()[Lcom/android/services/telephony/common/Call$DisconnectCause;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/services/telephony/common/Call$DisconnectCause;->$VALUES:[Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0}, [Lcom/android/services/telephony/common/Call$DisconnectCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/services/telephony/common/Call$DisconnectCause;

    return-object v0
.end method

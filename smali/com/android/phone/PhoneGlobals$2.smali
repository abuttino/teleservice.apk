.class Lcom/android/phone/PhoneGlobals$2;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .parameter

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 1289
    const-string v0, "PhoneApp"

    const-string v1, "Headset phone created, binding local service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v1

    #setter for: Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$1302(Lcom/android/phone/PhoneGlobals;Landroid/bluetooth/IBluetoothHeadsetPhone;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 1291
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 1295
    const-string v0, "PhoneApp"

    const-string v1, "Headset phone disconnected, cleaning local binding."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals$2;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;
    invoke-static {v0, v1}, Lcom/android/phone/PhoneGlobals;->access$1302(Lcom/android/phone/PhoneGlobals;Landroid/bluetooth/IBluetoothHeadsetPhone;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 1297
    return-void
.end method

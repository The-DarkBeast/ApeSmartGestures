.class Lcom/ape/gesturephone/GesturePhoneService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ape/gesturephone/GesturePhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ape/gesturephone/GesturePhoneService;


# direct methods
.method private constructor <init>(Lcom/ape/gesturephone/GesturePhoneService;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/ape/gesturephone/GesturePhoneService$a;->a:Lcom/ape/gesturephone/GesturePhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ape/gesturephone/GesturePhoneService;Lcom/ape/gesturephone/b;)V
    .locals 0

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lcom/ape/gesturephone/GesturePhoneService$a;-><init>(Lcom/ape/gesturephone/GesturePhoneService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 943
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 928
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    .line 929
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    .line 931
    const/high16 v2, -0x3f800000    # -4.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x40800000    # 4.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 932
    const-string v0, "answer"

    const-string v1, "====================================================================================================="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v0, "komaGesturePhoneService"

    const-string v1, "----Answer------mUprightState = true--------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/ape/gesturephone/GesturePhoneService$a;->a:Lcom/ape/gesturephone/GesturePhoneService;

    invoke-static {v0, v3}, Lcom/ape/gesturephone/GesturePhoneService;->g(Lcom/ape/gesturephone/GesturePhoneService;Z)Z

    .line 938
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/ape/gesturephone/GesturePhoneService$a;->a:Lcom/ape/gesturephone/GesturePhoneService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ape/gesturephone/GesturePhoneService;->g(Lcom/ape/gesturephone/GesturePhoneService;Z)Z

    goto :goto_0
.end method

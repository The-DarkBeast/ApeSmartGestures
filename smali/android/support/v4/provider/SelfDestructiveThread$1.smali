.class Landroid/support/v4/provider/SelfDestructiveThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Landroid/support/v4/provider/SelfDestructiveThread;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/SelfDestructiveThread;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Landroid/support/v4/provider/SelfDestructiveThread$1;->this$0:Landroid/support/v4/provider/SelfDestructiveThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 68
    :goto_0
    return v2

    .line 62
    :pswitch_0
    iget-object v1, p0, Landroid/support/v4/provider/SelfDestructiveThread$1;->this$0:Landroid/support/v4/provider/SelfDestructiveThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v1, v0}, Landroid/support/v4/provider/SelfDestructiveThread;->access$000(Landroid/support/v4/provider/SelfDestructiveThread;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/provider/SelfDestructiveThread$1;->this$0:Landroid/support/v4/provider/SelfDestructiveThread;

    invoke-static {v0}, Landroid/support/v4/provider/SelfDestructiveThread;->access$100(Landroid/support/v4/provider/SelfDestructiveThread;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

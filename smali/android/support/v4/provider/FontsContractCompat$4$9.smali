.class Landroid/support/v4/provider/FontsContractCompat$4$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/provider/FontsContractCompat$4;

.field final synthetic val$typeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(Landroid/support/v4/provider/FontsContractCompat$4;Landroid/graphics/Typeface;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Landroid/support/v4/provider/FontsContractCompat$4$9;->this$0:Landroid/support/v4/provider/FontsContractCompat$4;

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$4$9;->val$typeface:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$4$9;->this$0:Landroid/support/v4/provider/FontsContractCompat$4;

    iget-object v0, v0, Landroid/support/v4/provider/FontsContractCompat$4;->val$callback:Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;

    iget-object v1, p0, Landroid/support/v4/provider/FontsContractCompat$4$9;->val$typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/support/v4/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    .line 585
    return-void
.end method

.class Lcom/ape/selectcontact/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/ape/selectcontact/widget/b;


# direct methods
.method constructor <init>(Lcom/ape/selectcontact/widget/b;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/ape/selectcontact/widget/c;->a:Lcom/ape/selectcontact/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ape/selectcontact/widget/c;->a:Lcom/ape/selectcontact/widget/b;

    invoke-static {v0}, Lcom/ape/selectcontact/widget/b;->a(Lcom/ape/selectcontact/widget/b;)F

    move-result v1

    .line 107
    iget-object v2, p0, Lcom/ape/selectcontact/widget/c;->a:Lcom/ape/selectcontact/widget/b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v2, v0}, Lcom/ape/selectcontact/widget/b;->a(Lcom/ape/selectcontact/widget/b;F)F

    .line 108
    iget-object v0, p0, Lcom/ape/selectcontact/widget/c;->a:Lcom/ape/selectcontact/widget/b;

    invoke-static {v0}, Lcom/ape/selectcontact/widget/b;->a(Lcom/ape/selectcontact/widget/b;)F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ape/selectcontact/widget/c;->a:Lcom/ape/selectcontact/widget/b;

    invoke-virtual {v0}, Lcom/ape/selectcontact/widget/b;->invalidateSelf()V

    .line 111
    :cond_0
    return-void
.end method

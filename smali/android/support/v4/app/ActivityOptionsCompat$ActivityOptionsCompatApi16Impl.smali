.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatApi16Impl"
.end annotation


# instance fields
.field protected final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 256
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 257
    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .locals 2

    .prologue
    .line 266
    instance-of v0, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;

    if-eqz v0, :cond_0

    .line 267
    check-cast p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;

    .line 269
    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    iget-object v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatApi16Impl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V

    .line 271
    :cond_0
    return-void
.end method

.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/RemoteControlClient$OnMetadataUpdateListener;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;)V
    .locals 0

    .prologue
    .line 3142
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataUpdate(ILjava/lang/Object;)V
    .locals 3

    .prologue
    .line 3145
    const v0, 0x10000001

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/media/Rating;

    if-eqz v0, :cond_0

    .line 3147
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;

    const/16 v1, 0x13

    .line 3148
    invoke-static {p2}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v2

    .line 3147
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->postToHandler(ILjava/lang/Object;)V

    .line 3150
    :cond_0
    return-void
.end method

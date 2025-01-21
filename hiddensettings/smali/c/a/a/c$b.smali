.class public Lc/a/a/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Landroid/content/Intent;

.field public d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/c$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lc/a/a/c$b;->c:Landroid/content/Intent;

    iput-object p2, p0, Lc/a/a/c$b;->d:Landroid/app/Activity;

    const-string p1, "AdManagement"

    const-string p2, "adsDelay()"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lc/a/a/c$b;->b:Ljava/lang/String;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc/a/a/c$a;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdManagement"

    const-string v1, "AdsDelay run facebook"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lc/a/a/c$a;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    new-instance v1, Lc/a/a/c$c;

    iget-object v2, p0, Lc/a/a/c$b;->d:Landroid/app/Activity;

    iget-object v3, p0, Lc/a/a/c$b;->c:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lc/a/a/c$c;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    sget-object v0, Lc/a/a/c$a;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/a/a/c$b;->d:Landroid/app/Activity;

    iget-object v1, p0, Lc/a/a/c$b;->c:Landroid/content/Intent;

    .line 3
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

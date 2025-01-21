.class public Lc/a/a/d$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Boolean;

.field public c:Lc/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;Lc/a/a/a;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lc/a/a/d$a;->a:Ljava/lang/Boolean;

    iput-object p1, p0, Lc/a/a/d$a;->b:Ljava/lang/Boolean;

    const-string p1, "NetworkChangeReceiver"

    const-string v0, "checkNetworkAccess() "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lc/a/a/d$a;->a:Ljava/lang/Boolean;

    iput-object p3, p0, Lc/a/a/d$a;->c:Lc/a/a/a;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Void;

    const-string p1, "NetworkChangeReceiver"

    const-string v0, "doInBackground()"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc/a/a/d$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lc/a/a/d;->a()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/d$a;->b:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc/a/a/d;->a:Ljava/lang/Boolean;

    :goto_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lc/a/a/d$a;->b:Ljava/lang/Boolean;

    :goto_1
    const-string v0, "doInBackground() isDataAccess: "

    invoke-static {v0}, Lc/b/a/a/a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/d$a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc/a/a/d$a;->b:Ljava/lang/Boolean;

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 9

    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "NetworkChangeReceiver"

    const-string v1, "onPostExecute()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const/4 p1, 0x0

    sput-boolean p1, Lc/a/a/d;->c:Z

    iget-object v0, p0, Lc/a/a/d$a;->c:Lc/a/a/a;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lc/a/a/d$a;->b:Ljava/lang/Boolean;

    sput-object v1, Lc/a/a/d;->a:Ljava/lang/Boolean;

    check-cast v0, Lc/a/a/g;

    .line 2
    iget-object v2, v0, Lc/a/a/g;->a:Lc/a/a/h;

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, v0, Lc/a/a/g;->a:Lc/a/a/h;

    check-cast v0, Lcom/PDquila/HiddenSettings/MainActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const-string v2, "AdManagement"

    const-string v3, "onAvailable"

    .line 3
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Banner-loadBannerAds MainActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/PDquila/HiddenSettings/MainActivity;->w:Lc/a/a/c;

    if-nez v3, :cond_0

    invoke-static {v0}, Lc/a/a/c;->a(Landroid/app/Activity;)Lc/a/a/c;

    move-result-object v3

    sput-object v3, Lcom/PDquila/HiddenSettings/MainActivity;->w:Lc/a/a/c;

    :cond_0
    sget-object v3, Lcom/PDquila/HiddenSettings/MainActivity;->w:Lc/a/a/c;

    iget-object v4, v0, Lcom/PDquila/HiddenSettings/MainActivity;->v:Landroid/widget/LinearLayout;

    const-string v5, "MainActivity"

    if-eqz v3, :cond_b

    .line 4
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nBanner-loadBannerAds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\tisFacebookAds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lc/a/a/c$a;->c:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v3, Lc/a/a/c;->e:Lc/a/a/c;

    if-nez v3, :cond_1

    invoke-static {v0}, Lc/a/a/c;->a(Landroid/app/Activity;)Lc/a/a/c;

    move-result-object v3

    sput-object v3, Lc/a/a/c;->e:Lc/a/a/c;

    :cond_1
    sget-object v3, Lc/a/a/c$a;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lc/a/a/c;->f:Lc/a/a/c$a;

    if-eqz v3, :cond_7

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nBanner-loadFacebookBannerAds()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    sget-object v7, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    if-nez v7, :cond_4

    const-string v1, "\nfbAdView == null"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isTablet()"

    .line 8
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v7, 0x3

    if-lt v1, v7, :cond_2

    const/4 p1, 0x1

    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_90:Lcom/facebook/ads/AdSize;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    :goto_0
    new-instance v1, Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v0, v7, p1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    sput-object v1, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    new-instance p1, Lc/a/a/b;

    invoke-direct {p1, v3, v5, v4}, Lc/a/a/b;-><init>(Lc/a/a/c$a;Ljava/lang/String;Landroid/widget/LinearLayout;)V

    sget-object v1, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p1

    sget-object v1, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v1, p1}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    sget-object p1, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lcom/facebook/ads/AdView;->isAdInvalidated()Z

    move-result v3

    const-string v5, " "

    if-eqz v3, :cond_5

    const-string p1, "\nBanner-adsInValidity "

    invoke-static {p1}, Lc/b/a/a/a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v3, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v3}, Lcom/facebook/ads/AdView;->isAdInvalidated()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sput-object v1, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    goto :goto_2

    :cond_5
    const-string v1, "\nBanner-Else Part: "

    invoke-static {v1}, Lc/b/a/a/a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v3}, Lcom/facebook/ads/AdView;->isAdInvalidated()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v1, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_6
    sget-object v1, Lc/a/a/c$a;->b:Lcom/facebook/ads/AdView;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 12
    :cond_7
    throw v1

    :cond_8
    :goto_2
    const-string p1, "Interstitial-loadInterstitialAds()"

    .line 13
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-object p1, Lc/a/a/c;->e:Lc/a/a/c;

    if-nez p1, :cond_9

    invoke-static {v0}, Lc/a/a/c;->a(Landroid/app/Activity;)Lc/a/a/c;

    move-result-object p1

    sput-object p1, Lc/a/a/c;->e:Lc/a/a/c;

    :cond_9
    sget-object p1, Lc/a/a/c$a;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 15
    sget-object p1, Lc/a/a/c$a;->a:Lcom/facebook/ads/InterstitialAd;

    if-nez p1, :cond_a

    const-string p1, "Interstitial-loadFacebookInterstitial()  interstitialAd == null"

    .line 16
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance p1, Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p1, Lc/a/a/c$a;->a:Lcom/facebook/ads/InterstitialAd;

    goto :goto_3

    :cond_a
    const-string p1, "Interstitial-loadFacebookInterstitial()  interstitialAd != null"

    .line 18
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object p1, Lc/a/a/c$a;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result p1

    if-nez p1, :cond_f

    :goto_3
    sget-object p1, Lc/a/a/c$a;->a:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/facebook/ads/InterstitialAd;->loadAd()V

    goto :goto_4

    .line 20
    :cond_b
    throw v1

    .line 21
    :cond_c
    throw v1

    .line 22
    :cond_d
    iget-object p1, v0, Lc/a/a/g;->a:Lc/a/a/h;

    check-cast p1, Lcom/PDquila/HiddenSettings/MainActivity;

    invoke-virtual {p1}, Lcom/PDquila/HiddenSettings/MainActivity;->s()V

    goto :goto_4

    :cond_e
    if-eqz v2, :cond_f

    check-cast v2, Lcom/PDquila/HiddenSettings/MainActivity;

    invoke-virtual {v2}, Lcom/PDquila/HiddenSettings/MainActivity;->s()V

    :cond_f
    :goto_4
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    const/4 v0, 0x1

    sput-boolean v0, Lc/a/a/d;->c:Z

    const-string v0, "onPreExecute() isInternetConnection: "

    invoke-static {v0}, Lc/b/a/a/a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/d$a;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkChangeReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public Lc/a/a/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/c$b;,
        Lc/a/a/c$c;,
        Lc/a/a/c$a;
    }
.end annotation


# static fields
.field public static e:Lc/a/a/c;

.field public static f:Lc/a/a/c$a;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lc/a/a/c;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lc/a/a/c;->b:I

    const-string v0, ""

    iput-object v0, p0, Lc/a/a/c;->c:Ljava/lang/String;

    const-string v0, "AdManagement"

    const-string v1, "setAdsData() "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    .line 3
    sget-object p1, Lc/a/a/c;->f:Lc/a/a/c$a;

    if-nez p1, :cond_0

    new-instance p1, Lc/a/a/c$a;

    invoke-direct {p1}, Lc/a/a/c$a;-><init>()V

    sput-object p1, Lc/a/a/c;->f:Lc/a/a/c$a;

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;)Lc/a/a/c;
    .locals 3

    sget-object v0, Lc/a/a/c;->e:Lc/a/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/c;

    invoke-direct {v0, p0}, Lc/a/a/c;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lc/a/a/c;->e:Lc/a/a/c;

    :cond_0
    sget-object v0, Lc/a/a/c;->f:Lc/a/a/c$a;

    if-nez v0, :cond_1

    if-nez v0, :cond_1

    .line 1
    new-instance v0, Lc/a/a/c$a;

    invoke-direct {v0}, Lc/a/a/c$a;-><init>()V

    sput-object v0, Lc/a/a/c;->f:Lc/a/a/c$a;

    .line 2
    :cond_1
    sget-object v0, Lc/a/a/c;->e:Lc/a/a/c;

    new-instance v1, Landroid/app/ProgressDialog;

    const v2, 0x7f0f0165

    invoke-direct {v1, p0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, v0, Lc/a/a/c;->d:Landroid/app/ProgressDialog;

    sget-object p0, Lc/a/a/c;->e:Lc/a/a/c;

    return-object p0
.end method

.method public static b(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc/a/a/c;->e:Lc/a/a/c;

    if-nez v1, :cond_0

    invoke-static {p0}, Lc/a/a/c;->a(Landroid/app/Activity;)Lc/a/a/c;

    move-result-object v1

    sput-object v1, Lcom/PDquila/HiddenSettings/MainActivity;->w:Lc/a/a/c;

    :cond_0
    const-string v1, "Interstitial-showInterstitialAds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc/a/a/d;->b(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " adManagement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/a/a/c;->e:Lc/a/a/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc/a/a/d;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lc/a/a/c;->e:Lc/a/a/c;

    if-eqz v1, :cond_4

    iget v2, v1, Lc/a/a/c;->b:I

    iget v3, v1, Lc/a/a/c;->a:I

    rem-int/2addr v2, v3

    const-string v3, "   "

    const-string v4, "none"

    if-nez v2, :cond_2

    invoke-static {}, Lc/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc/a/a/c;->c:Ljava/lang/String;

    const-string v1, "needs to show: "

    invoke-static {v1}, Lc/b/a/a/a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc/a/a/c;->e:Lc/a/a/c;

    iget v2, v2, Lc/a/a/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/a/a/c;->e:Lc/a/a/c;

    iget-object v2, v2, Lc/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc/a/a/c;->e:Lc/a/a/c;

    iget-object v1, v1, Lc/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lc/a/a/c;->e:Lc/a/a/c;

    iget v2, v1, Lc/a/a/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lc/a/a/c;->b:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1
    :cond_1
    sget-object v1, Lc/a/a/c;->e:Lc/a/a/c;

    new-instance v2, Landroid/app/ProgressDialog;

    const v3, 0x7f0f0165

    invoke-direct {v2, p0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lc/a/a/c;->d:Landroid/app/ProgressDialog;

    sget-object v1, Lc/a/a/c;->e:Lc/a/a/c;

    iget-object v1, v1, Lc/a/a/c;->d:Landroid/app/ProgressDialog;

    const-string v2, "Please Wait while Loading Ads....."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v1, Lc/a/a/c;->e:Lc/a/a/c;

    iget-object v1, v1, Lc/a/a/c;->d:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v1, Lc/a/a/c;->e:Lc/a/a/c;

    iget-object v1, v1, Lc/a/a/c;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lc/a/a/c$b;

    sget-object v3, Lc/a/a/c;->e:Lc/a/a/c;

    iget-object v3, v3, Lc/a/a/c;->c:Ljava/lang/String;

    invoke-direct {v2, v3, p0, p1}, Lc/a/a/c$b;-><init>(Ljava/lang/String;Landroid/app/Activity;Landroid/content/Intent;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lc/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lc/a/a/c;->e:Lc/a/a/c;

    invoke-static {}, Lc/a/a/c;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc/a/a/c;->c:Ljava/lang/String;

    :cond_3
    const-string v1, "no needs to show: "

    invoke-static {v1}, Lc/b/a/a/a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc/a/a/c;->e:Lc/a/a/c;

    iget v2, v2, Lc/a/a/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/a/a/c;->e:Lc/a/a/c;

    iget-object v2, v2, Lc/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lc/a/a/c;->e:Lc/a/a/c;

    iget v2, v1, Lc/a/a/c;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lc/a/a/c;->b:I

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4
    :catch_0
    sget-object p0, Lc/a/a/c;->e:Lc/a/a/c;

    iget p1, p0, Lc/a/a/c;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/a/a/c;->b:I

    :catch_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdManagement"

    .line 5
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/a/a/c$a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc/a/a/c$a;->a:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "facebook"

    return-object v0

    :cond_0
    const-string v0, "AdManagement"

    const-string v1, "Interstitial-whichInterstitialAd: none"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "none"

    return-object v0
.end method

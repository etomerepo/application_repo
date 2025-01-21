.class public Lc/a/a/g;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lc/a/a/a;


# static fields
.field public static b:Z = true


# instance fields
.field public a:Lc/a/a/h;


# direct methods
.method public constructor <init>(Lc/a/a/h;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "NetworkChangeReceiver"

    const-string v1, "NetworkChangeReceiver()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/g;->a:Lc/a/a/h;

    iput-object p1, p0, Lc/a/a/g;->a:Lc/a/a/h;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "NetworkChangeReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :try_start_0
    sget-boolean p2, Lc/a/a/d;->c:Z

    if-nez p2, :cond_1

    const-string p2, "onReceive()"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lc/a/a/d;->b(Landroid/content/Context;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string p2, "Network Available"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lc/a/a/d$a;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p2, p1, v0, p0}, Lc/a/a/d$a;-><init>(Landroid/content/Context;Ljava/lang/Boolean;Lc/a/a/a;)V

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p1, Lc/a/a/d;->a:Ljava/lang/Boolean;

    sput v1, Lc/a/a/d;->b:I

    iget-object p1, p0, Lc/a/a/g;->a:Lc/a/a/h;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/a/a/g;->a:Lc/a/a/h;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Lcom/PDquila/HiddenSettings/MainActivity;

    :try_start_1
    invoke-virtual {p1}, Lcom/PDquila/HiddenSettings/MainActivity;->s()V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

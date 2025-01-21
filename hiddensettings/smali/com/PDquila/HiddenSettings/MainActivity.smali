.class public Lcom/PDquila/HiddenSettings/MainActivity;
.super Lb/b/k/h;
.source ""

# interfaces
.implements Lc/a/a/h;


# static fields
.field public static w:Lc/a/a/c;

.field public static x:Lc/a/a/g;

.field public static y:Lcom/PDquila/HiddenSettings/MainActivity;


# instance fields
.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public r:Landroid/widget/ListView;

.field public s:Lc/a/a/f;

.field public t:J

.field public u:Landroid/widget/SearchView;

.field public v:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lb/b/k/h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->p:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->q:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->s:Lc/a/a/f;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/PDquila/HiddenSettings/MainActivity;->t:J

    iput-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->u:Landroid/widget/SearchView;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lb/b/k/h;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    invoke-virtual {p0, p1}, Lb/b/k/h;->setContentView(I)V

    sput-object p0, Lcom/PDquila/HiddenSettings/MainActivity;->y:Lcom/PDquila/HiddenSettings/MainActivity;

    const p1, 0x7f080077

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/PDquila/HiddenSettings/MainActivity;->r:Landroid/widget/ListView;

    const p1, 0x7f08003b

    invoke-virtual {p0, p1}, Lb/b/k/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/PDquila/HiddenSettings/MainActivity;->v:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    :try_start_1
    aget-object v5, v1, v4

    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/PDquila/HiddenSettings/MainActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->p:Ljava/util/ArrayList;

    .line 2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-le v1, p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 3
    :cond_4
    iput-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->p:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/PDquila/HiddenSettings/MainActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/PDquila/HiddenSettings/MainActivity;->q:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lc/a/a/f;

    iget-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->p:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0, p0}, Lc/a/a/f;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/PDquila/HiddenSettings/MainActivity;->s:Lc/a/a/f;

    iget-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->r:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lcom/PDquila/HiddenSettings/MainActivity;->r:Landroid/widget/ListView;

    new-instance v0, Lc/a/a/e;

    invoke-direct {v0, p0}, Lc/a/a/e;-><init>(Lcom/PDquila/HiddenSettings/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lb/b/k/h;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f080094

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SearchView;

    iput-object p1, p0, Lcom/PDquila/HiddenSettings/MainActivity;->u:Landroid/widget/SearchView;

    new-instance v0, Lcom/PDquila/HiddenSettings/MainActivity$a;

    invoke-direct {v0, p0}, Lcom/PDquila/HiddenSettings/MainActivity$a;-><init>(Lcom/PDquila/HiddenSettings/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lb/b/k/h;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    iget-wide p1, p0, Lcom/PDquila/HiddenSettings/MainActivity;->t:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->t:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/PDquila/HiddenSettings/MainActivity;->t:J

    invoke-virtual {p0}, Lb/b/k/h;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0e001e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/high16 v1, 0x4000000

    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1
    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    const-string v1, "Hey,\nCheck Out This \"Hidden Settings \" App - \nhttps://play.google.com/store/apps/details?id=com.PDquila.HiddenSettings"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/PDquila/HiddenSettings/MainActivity;->y:Lcom/PDquila/HiddenSettings/MainActivity;

    const-string v1, "Share using"

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 2
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "market://details?id="

    invoke-static {v0}, Lc/b/a/a/a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/PDquila/HiddenSettings/MainActivity;->y:Lcom/PDquila/HiddenSettings/MainActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    sget-object v0, Lcom/PDquila/HiddenSettings/MainActivity;->y:Lcom/PDquila/HiddenSettings/MainActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lcom/PDquila/HiddenSettings/MainActivity;->y:Lcom/PDquila/HiddenSettings/MainActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "http://play.google.com/store/apps/details?id="

    invoke-static {v1}, Lc/b/a/a/a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/PDquila/HiddenSettings/MainActivity;->y:Lcom/PDquila/HiddenSettings/MainActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v3

    .line 3
    :sswitch_2
    sget-object p1, Lcom/PDquila/HiddenSettings/MainActivity;->y:Lcom/PDquila/HiddenSettings/MainActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v4, "https://play.google.com/store/apps/developer?id=PDquila&hl=en"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :sswitch_3
    return v3

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f08007b -> :sswitch_2
        0x7f08008c -> :sswitch_1
        0x7f0800a0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lb/h/a/d;->onPause()V

    sget-object v0, Lcom/PDquila/HiddenSettings/MainActivity;->x:Lc/a/a/g;

    if-eqz v0, :cond_0

    const-string v0, "NetworkChangeReceiver"

    const-string v1, "onPause() UnregisterReceiver MainActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/PDquila/HiddenSettings/MainActivity;->x:Lc/a/a/g;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lc/a/a/g;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/PDquila/HiddenSettings/MainActivity;->x:Lc/a/a/g;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lb/h/a/d;->onResume()V

    const-string v0, "networkChangeReceiver "

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc/a/a/g;

    invoke-direct {v0, p0}, Lc/a/a/g;-><init>(Lc/a/a/h;)V

    sput-object v0, Lcom/PDquila/HiddenSettings/MainActivity;->x:Lc/a/a/g;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/PDquila/HiddenSettings/MainActivity;->x:Lc/a/a/g;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public s()V
    .locals 2

    const-string v0, "AdManagement"

    const-string v1, "onNotAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/PDquila/HiddenSettings/MainActivity;->v:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.class public Lc/a/a/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic b:Lcom/PDquila/HiddenSettings/MainActivity;


# direct methods
.method public constructor <init>(Lcom/PDquila/HiddenSettings/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lc/a/a/e;->b:Lcom/PDquila/HiddenSettings/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lc/a/a/e;->b:Lcom/PDquila/HiddenSettings/MainActivity;

    iget-object p1, p1, Lcom/PDquila/HiddenSettings/MainActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.PDquila.HiddenSettings.SubActivity"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "pkgname"

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/PDquila/HiddenSettings/MainActivity;->w:Lc/a/a/c;

    iget-object p1, p0, Lc/a/a/e;->b:Lcom/PDquila/HiddenSettings/MainActivity;

    invoke-static {p1, p2}, Lc/a/a/c;->b(Landroid/app/Activity;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lc/a/a/e;->b:Lcom/PDquila/HiddenSettings/MainActivity;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.class public Lb/h/a/d$a;
.super Lb/h/a/h;
.source ""

# interfaces
.implements Lb/i/t;
.implements Lb/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/h/a/h<",
        "Lb/h/a/d;",
        ">;",
        "Lb/i/t;",
        "Lb/a/c;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lb/h/a/d;


# direct methods
.method public constructor <init>(Lb/h/a/d;)V
    .locals 0

    iput-object p1, p0, Lb/h/a/d$a;->g:Lb/h/a/d;

    invoke-direct {p0, p1}, Lb/h/a/h;-><init>(Lb/h/a/d;)V

    return-void
.end method


# virtual methods
.method public a()Lb/i/d;
    .locals 1

    iget-object v0, p0, Lb/h/a/d$a;->g:Lb/h/a/d;

    iget-object v0, v0, Lb/h/a/d;->h:Lb/i/h;

    return-object v0
.end method

.method public b()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Lb/h/a/d$a;->g:Lb/h/a/d;

    .line 1
    iget-object v0, v0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public d(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lb/h/a/d$a;->g:Lb/h/a/d;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lb/h/a/d$a;->g:Lb/h/a/d;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Lb/i/s;
    .locals 1

    iget-object v0, p0, Lb/h/a/d$a;->g:Lb/h/a/d;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->g()Lb/i/s;

    move-result-object v0

    return-object v0
.end method

.class public Landroidx/activity/ComponentActivity;
.super Lb/e/d/d;
.source ""

# interfaces
.implements Lb/i/g;
.implements Lb/i/t;
.implements Lb/l/c;
.implements Lb/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/ComponentActivity$b;
    }
.end annotation


# instance fields
.field public final c:Lb/i/h;

.field public final d:Lb/l/b;

.field public e:Lb/i/s;

.field public final f:Landroidx/activity/OnBackPressedDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/e/d/d;-><init>()V

    new-instance v0, Lb/i/h;

    invoke-direct {v0, p0}, Lb/i/h;-><init>(Lb/i/g;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/i/h;

    .line 1
    new-instance v0, Lb/l/b;

    invoke-direct {v0, p0}, Lb/l/b;-><init>(Lb/l/c;)V

    .line 2
    iput-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/l/b;

    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Landroidx/activity/ComponentActivity$a;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$a;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    .line 3
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/i/h;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v1}, Lb/i/d;->a(Lb/i/f;)V

    .line 5
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/i/h;

    .line 6
    new-instance v1, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v1, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-virtual {v0, v1}, Lb/i/d;->a(Lb/i/f;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/i/h;

    .line 8
    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lb/i/d;->a(Lb/i/f;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic j(Landroidx/activity/ComponentActivity;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public a()Lb/i/d;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/i/h;

    return-object v0
.end method

.method public final b()Landroidx/activity/OnBackPressedDispatcher;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    return-object v0
.end method

.method public final c()Lb/l/a;
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/l/b;

    .line 1
    iget-object v0, v0, Lb/l/b;->b:Lb/l/a;

    return-object v0
.end method

.method public g()Lb/i/s;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/i/s;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/ComponentActivity$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/activity/ComponentActivity$b;->a:Lb/i/s;

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/i/s;

    :cond_0
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/i/s;

    if-nez v0, :cond_1

    new-instance v0, Lb/i/s;

    invoke-direct {v0}, Lb/i/s;-><init>()V

    iput-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/i/s;

    :cond_1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/i/s;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->f:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedDispatcher;->a()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lb/e/d/d;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/l/b;

    invoke-virtual {v0, p1}, Lb/l/b;->a(Landroid/os/Bundle;)V

    invoke-static {p0}, Lb/i/o;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->e:Lb/i/s;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/ComponentActivity$b;

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroidx/activity/ComponentActivity$b;->a:Lb/i/s;

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v1, Landroidx/activity/ComponentActivity$b;

    invoke-direct {v1}, Landroidx/activity/ComponentActivity$b;-><init>()V

    iput-object v0, v1, Landroidx/activity/ComponentActivity$b;->a:Lb/i/s;

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/ComponentActivity;->c:Lb/i/h;

    .line 2
    instance-of v1, v0, Lb/i/h;

    if-eqz v1, :cond_0

    sget-object v1, Lb/i/d$b;->d:Lb/i/d$b;

    .line 3
    invoke-virtual {v0, v1}, Lb/i/h;->f(Lb/i/d$b;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lb/e/d/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity;->d:Lb/l/b;

    invoke-virtual {v0, p1}, Lb/l/b;->b(Landroid/os/Bundle;)V

    return-void
.end method

.class public Landroidx/lifecycle/FullLifecycleObserverAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/e;


# instance fields
.field public final a:Lb/i/b;

.field public final b:Lb/i/e;


# direct methods
.method public constructor <init>(Lb/i/b;Lb/i/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lb/i/b;

    iput-object p2, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Lb/i/e;

    return-void
.end method


# virtual methods
.method public d(Lb/i/g;Lb/i/d$a;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ON_ANY must not been send by anybody"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lb/i/b;

    invoke-interface {v0, p1}, Lb/i/b;->b(Lb/i/g;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lb/i/b;

    invoke-interface {v0, p1}, Lb/i/b;->f(Lb/i/g;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lb/i/b;

    invoke-interface {v0, p1}, Lb/i/b;->e(Lb/i/g;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lb/i/b;

    invoke-interface {v0, p1}, Lb/i/b;->a(Lb/i/g;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lb/i/b;

    invoke-interface {v0, p1}, Lb/i/b;->g(Lb/i/g;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->a:Lb/i/b;

    invoke-interface {v0, p1}, Lb/i/b;->c(Lb/i/g;)V

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/FullLifecycleObserverAdapter;->b:Lb/i/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lb/i/e;->d(Lb/i/g;Lb/i/d$a;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

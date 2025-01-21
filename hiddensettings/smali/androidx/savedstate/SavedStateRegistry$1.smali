.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/e;


# instance fields
.field public final synthetic a:Lb/l/a;


# direct methods
.method public constructor <init>(Lb/l/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/l/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lb/i/g;Lb/i/d$a;)V
    .locals 0

    sget-object p1, Lb/i/d$a;->ON_START:Lb/i/d$a;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/l/a;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lb/i/d$a;->ON_STOP:Lb/i/d$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Lb/l/a;

    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p1, Lb/l/a;->d:Z

    :cond_1
    return-void
.end method

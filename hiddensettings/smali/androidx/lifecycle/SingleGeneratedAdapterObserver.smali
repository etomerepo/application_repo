.class public Landroidx/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/e;


# instance fields
.field public final a:Lb/i/c;


# direct methods
.method public constructor <init>(Lb/i/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/i/c;

    return-void
.end method


# virtual methods
.method public d(Lb/i/g;Lb/i/d$a;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/i/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lb/i/c;->a(Lb/i/g;Lb/i/d$a;ZLb/i/k;)V

    iget-object v0, p0, Landroidx/lifecycle/SingleGeneratedAdapterObserver;->a:Lb/i/c;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lb/i/c;->a(Lb/i/g;Lb/i/d$a;ZLb/i/k;)V

    return-void
.end method

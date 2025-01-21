.class public final Lb/e/k/u/a;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field public final b:I

.field public final c:Lb/e/k/u/b;

.field public final d:I


# direct methods
.method public constructor <init>(ILb/e/k/u/b;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lb/e/k/u/a;->b:I

    iput-object p2, p0, Lb/e/k/u/a;->c:Lb/e/k/u/b;

    iput p3, p0, Lb/e/k/u/a;->d:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lb/e/k/u/a;->b:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lb/e/k/u/a;->c:Lb/e/k/u/b;

    iget v1, p0, Lb/e/k/u/a;->d:I

    .line 1
    iget-object v0, v0, Lb/e/k/u/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    return-void
.end method

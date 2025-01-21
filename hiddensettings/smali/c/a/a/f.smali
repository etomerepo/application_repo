.class public Lc/a/a/f;
.super Landroid/widget/ArrayAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ActivityInfo;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/a/f;->b:Ljava/util/List;

    iput-object p1, p0, Lc/a/a/f;->c:Landroid/app/Activity;

    iput-object p2, p0, Lc/a/a/f;->b:Ljava/util/List;

    iput-object p3, p0, Lc/a/a/f;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const-string p3, "DeviceInfoSettings"

    if-nez p2, :cond_0

    iget-object p2, p0, Lc/a/a/f;->c:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0b001e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lc/a/a/f$b;

    invoke-direct {v0, p0, v1}, Lc/a/a/f$b;-><init>(Lc/a/a/f;Lc/a/a/f$a;)V

    const v1, 0x7f080040

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const v1, 0x7f080041

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lc/a/a/f$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/f$b;

    :goto_0
    iget-object v1, p0, Lc/a/a/f;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    :try_start_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v0, Lc/a/a/f$b;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lc/a/a/f;->c:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "Activity"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "Wireless"

    .line 1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 2
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "Wifi"

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 4
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "Tether"

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 6
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "Network"

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 8
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "ApnSettingsActivity"

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_b

    .line 10
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "deviceinfo"

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 12
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "RadioInfo"

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 14
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "DEVICE_INFO_SETTINGS"

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 16
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_a

    .line 18
    :cond_2
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "storage"

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 20
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "memory"

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_9

    .line 22
    :cond_3
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "Applications"

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 24
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "RunningServices"

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 26
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v2, "Installed"

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 28
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto/16 :goto_8

    .line 30
    :cond_4
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "accessibility"

    .line 31
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 32
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070063

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_5
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "accounts"

    .line 33
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 34
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070064

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_6
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "development"

    .line 35
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 36
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f07006b

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_7
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "battery"

    .line 37
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_20

    .line 38
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "Power"

    .line 39
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto/16 :goto_6

    .line 40
    :cond_8
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "bluetooth"

    .line 41
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 42
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070068

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_9
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "DateTime"

    .line 43
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 44
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f07006a

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_a
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "display"

    .line 45
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 46
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f07006c

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_b
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "inputmethod"

    .line 47
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1f

    .line 48
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "keyboard"

    .line 49
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c

    goto/16 :goto_5

    .line 50
    :cond_c
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "home"

    .line 51
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 52
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f07006e

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_d
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "language"

    .line 53
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1e

    .line 54
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "LocalePickerActivity"

    .line 55
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_e

    goto/16 :goto_4

    .line 56
    :cond_e
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "location"

    .line 57
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 58
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070070

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_f
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "sim"

    .line 59
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1d

    .line 60
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "IccLockSettings"

    .line 61
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_10

    goto/16 :goto_3

    .line 62
    :cond_10
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "nfc"

    .line 63
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1c

    .line 64
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "payment"

    .line 65
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_11

    goto/16 :goto_2

    .line 66
    :cond_11
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "sound"

    .line 67
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 68
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070075

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_12
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "notification"

    .line 69
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 70
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070072

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_13
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "print"

    .line 71
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 72
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070073

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_14
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "backup"

    .line 73
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_15

    .line 74
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070066

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_15
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "security"

    .line 75
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1b

    .line 76
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "permission"

    .line 77
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_16

    goto/16 :goto_1

    .line 78
    :cond_16
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "sync"

    .line 79
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 80
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070077

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_17
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "DataUsage"

    .line 81
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 82
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070069

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_18
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "vpn"

    .line 83
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_19

    .line 84
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070089

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_19
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string p3, "settingsLicense"

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 86
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070086

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_1a
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f07005e

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_1b
    :goto_1
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070074

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_1c
    :goto_2
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070071

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_1d
    :goto_3
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070079

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_1e
    :goto_4
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f07006f

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_1f
    :goto_5
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070061

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    :cond_20
    :goto_6
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070067

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_7
    return-object p2

    :cond_21
    :goto_8
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070065

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_22
    :goto_9
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070076

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_23
    :goto_a
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070062

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_24
    :goto_b
    iget-object p1, v0, Lc/a/a/f$b;->a:Landroid/widget/ImageView;

    const p3, 0x7f070078

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.class public Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;
.super Landroid/preference/Preference;
.source "UsageBarPreference.java"


# instance fields
.field private mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 45
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 50
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    .line 40
    const v0, 0x7f04008b

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->setLayoutResource(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public addEntry(IFI)V
    .locals 2
    .param p1, "order"    # I
    .param p2, "percentage"    # F
    .param p3, "color"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;->createEntry(IFI)Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 56
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;->invalidate()V

    .line 70
    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 62
    const v0, 0x7f0b00e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    .line 63
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mChart:Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsageBarPreference;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    .line 64
    return-void
.end method

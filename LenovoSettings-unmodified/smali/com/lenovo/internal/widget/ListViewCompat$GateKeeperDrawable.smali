.class Lcom/lenovo/internal/widget/ListViewCompat$GateKeeperDrawable;
.super Lcom/lenovo/internal/widget/DrawableWrapper;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ListViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateKeeperDrawable"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/lenovo/internal/widget/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    .line 338
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 355
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 357
    :cond_0
    return-void
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/lenovo/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    .line 342
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-super {p0, p1, p2}, Lcom/lenovo/internal/widget/DrawableWrapper;->setHotspot(FF)V

    .line 364
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lenovo/internal/widget/DrawableWrapper;->setHotspotBounds(IIII)V

    .line 371
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 347
    invoke-super {p0, p1}, Lcom/lenovo/internal/widget/DrawableWrapper;->setState([I)Z

    move-result v0

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/lenovo/internal/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 376
    invoke-super {p0, p1, p2}, Lcom/lenovo/internal/widget/DrawableWrapper;->setVisible(ZZ)Z

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

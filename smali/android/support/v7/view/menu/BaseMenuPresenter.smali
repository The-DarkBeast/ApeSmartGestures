.class public abstract Landroid/support/v7/view/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Landroid/support/v7/view/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 63
    iput p2, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    .line 64
    iput p3, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    .line 65
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 138
    return-void
.end method

.method public abstract bindItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/v7/view/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView$ItemView;
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Landroid/support/v7/view/menu/MenuPresenter$Callback;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 182
    instance-of v0, p2, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v0, :cond_0

    .line 183
    check-cast p2, Landroid/support/v7/view/menu/MenuView$ItemView;

    move-object v0, p2

    .line 187
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/BaseMenuPresenter;->bindItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/v7/view/menu/MenuView$ItemView;)V

    .line 188
    check-cast v0, Landroid/view/View;

    return-object v0

    .line 185
    :cond_0
    invoke-virtual {p0, p3}, Landroid/support/v7/view/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView$ItemView;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/MenuView;

    iput-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    .line 78
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Landroid/support/v7/view/menu/MenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 82
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .locals 1

    .prologue
    .line 69
    iput-object p1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    iput-object p2, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 72
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 154
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 246
    iput p1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mId:I

    .line 247
    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/view/menu/MenuItemImpl;)Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    if-nez v0, :cond_1

    .line 124
    :cond_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_7

    .line 95
    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 96
    iget-object v1, p0, Landroid/support/v7/view/menu/BaseMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 97
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v5

    move v4, v5

    .line 98
    :goto_0
    if-ge v6, v8, :cond_5

    .line 99
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 100
    invoke-virtual {p0, v4, v1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->shouldIncludeItem(ILandroid/support/v7/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 101
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 102
    instance-of v2, v3, Landroid/support/v7/view/menu/MenuView$ItemView;

    if-eqz v2, :cond_4

    move-object v2, v3

    check-cast v2, Landroid/support/v7/view/menu/MenuView$ItemView;

    .line 103
    invoke-interface {v2}, Landroid/support/v7/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    .line 104
    :goto_1
    invoke-virtual {p0, v1, v3, v0}, Landroid/support/v7/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 105
    if-eq v1, v2, :cond_2

    .line 107
    invoke-virtual {v9, v5}, Landroid/view/View;->setPressed(Z)V

    .line 108
    invoke-virtual {v9}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 110
    :cond_2
    if-eq v9, v3, :cond_3

    .line 111
    invoke-virtual {p0, v9, v4}, Landroid/support/v7/view/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 113
    :cond_3
    add-int/lit8 v1, v4, 0x1

    .line 98
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    goto :goto_0

    .line 103
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 119
    :cond_5
    :goto_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 120
    invoke-virtual {p0, v0, v4}, Landroid/support/v7/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move v1, v4

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_3
.end method

/**
 * d_a_tag_shop_item.cpp
 * Tag - Shop Item
 */

#include "rel/d/a/tag/d_a_tag_shop_item/d_a_tag_shop_item.h"
#include "JSystem/JKernel/JKRHeap.h"

/* 80D60B78-80D60D78 000078 0200+00 1/1 0/0 0/0 .text            create__16daTag_ShopItem_cFv */
int daTag_ShopItem_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daTag_ShopItem_c();
        fopAcM_OnCondition(this, 8);
    }
    initialize();
    field_0x572 = 0;
    if (!strcmp("F_SP109", dComIfGp_getStartStageName())) {
        if (!i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[64])) {
            return cPhs_ERROR_e;
        }
        if ((dComIfGs_getTime() >= 90.0f) && (dComIfGs_getTime() < 270.0f)) {
            return cPhs_ERROR_e;
        }
    }
    if (getGroupID() == 0x0f) {
        field_0x570 = 0x96;
        if (getSwitchBit1() != 0xff) {
            if (!dComIfGs_isSaveSwitch(getSwitchBit1())) {
                dComIfGs_onSaveSwitch(getSwitchBit2());
                field_0x572 = 1;
                field_0x570 = 0;
            }
        }
    } else {
        field_0x570 = 0;
        if (getSwitchBit1() != 0xff) {
            if (dComIfGs_isSaveSwitch(getSwitchBit1())) {
                field_0x570 = 0x96;
            }
        }
        if (getSwitchBit2() != 0xff) {
            if (!dComIfGs_isSaveSwitch(getSwitchBit2())) {
                field_0x570 = 0x96;
            }
        }
    }
    return cPhs_COMPLEATE_e;
}

/* 80D60D78-80D60E04 000278 008C+00 1/1 0/0 0/0 .text            Delete__16daTag_ShopItem_cFv */
int daTag_ShopItem_c::Delete() {
    if ((field_0x572 != NULL) && (getGroupID() == 0x0f)) {
        if (dComIfGs_isSaveSwitch(getSwitchBit1())) {
            dComIfGs_offSaveSwitch(getSwitchBit2());
        }
    }
    return 1;
}

/* 80D60E04-80D61024 000304 0220+00 1/1 0/0 0/0 .text            Execute__16daTag_ShopItem_cFv */
int daTag_ShopItem_c::Execute() {
    if (field_0x56c == 0xffffffff) {
        if (!field_0x570) {
            field_0x56c =
                fopAcM_create(PROC_ShopItem, getType() & 0xff | getGroupID() << 0x1c, &current.pos,
                              fopAcM_GetRoomNo(this), &current.angle, NULL, 0xff);

        } else {
            field_0x570 -= 1;
            if (getGroupID() == 0x0f) {
                if (field_0x572) {
                    field_0x570 = 0;
                }
            } else {
                if (getSwitchBit1() != 0xff && dComIfGs_isSaveSwitch(getSwitchBit1())) {
                } else if (getSwitchBit2() == 0xff || dComIfGs_isSaveSwitch(getSwitchBit2())) {
                    field_0x570 = 0;
                }
            }
        }
    } else {
        daItemBase_c* mpItemBase = (daItemBase_c*)fopAcM_SearchByID(field_0x56c);
        if (mpItemBase) {
            if (getGroupID() == 0x0f) {
                if (!field_0x572) {
                    mpItemBase->hide();
                } else {
                    mpItemBase->show();
                }
            } else {
                if (getSwitchBit1() != 0xff && dComIfGs_isSaveSwitch(getSwitchBit1())) {
                    mpItemBase->hide();
                } else if (getSwitchBit2() != 0xff && !dComIfGs_isSaveSwitch(getSwitchBit2())) {
                    mpItemBase->hide();
                } else {
                    mpItemBase->show();
                }
            }
        }
    }
    return 1;
}

/* 80D61024-80D6102C 000524 0008+00 1/1 0/0 0/0 .text            Draw__16daTag_ShopItem_cFv */
int daTag_ShopItem_c::Draw() {
    return 1;
}

/* 80D6102C-80D61038 00052C 000C+00 1/1 0/0 0/0 .text            getType__16daTag_ShopItem_cFv */
u8 daTag_ShopItem_c::getType() {
    return mBase.mParameters & 0xff;
}

/* 80D61038-80D61044 000538 000C+00 3/3 0/0 0/0 .text            getGroupID__16daTag_ShopItem_cFv */
u8 daTag_ShopItem_c::getGroupID() {
    return mBase.mParameters >> 0x1c;
}

/* 80D61044-80D61050 000544 000C+00 3/3 0/0 1/1 .text            getSwitchBit1__16daTag_ShopItem_cFv */
u8 daTag_ShopItem_c::getSwitchBit1() {
    return orig.angle.z & 0xff;
}

/* 80D61050-80D6105C 000550 000C+00 3/3 0/0 0/0 .text            getSwitchBit2__16daTag_ShopItem_cFv */
u8 daTag_ShopItem_c::getSwitchBit2() {
    return orig.angle.z >> 8 & 0xff;
}

/* 80D6105C-80D610E0 00055C 0084+00 1/1 0/0 0/0 .text            initialize__16daTag_ShopItem_cFv */
void daTag_ShopItem_c::initialize() {
    fopAcM_setCullSizeBox(this, -30.0f, -15.0f, -30.0f, 30.0f, 45.0f, 30.0f);
    mAttentionInfo.mFlags = NULL;
    s16 mAngleY = orig.angle.y;
    current.angle.x = 0;
    current.angle.y = mAngleY;
    current.angle.z = 0;
    shape_angle = current.angle;
    field_0x56c = -1;
}

/* 80D610E0-80D61100 0005E0 0020+00 1/0 0/0 0/0 .text            daTag_ShopItem_Create__FPv */
static int daTag_ShopItem_Create(void* i_this) {
    return static_cast<daTag_ShopItem_c*>(i_this)->create();
}

/* 80D61100-80D61120 000600 0020+00 1/0 0/0 0/0 .text            daTag_ShopItem_Delete__FPv */
static int daTag_ShopItem_Delete(void* i_this) {
    return static_cast<daTag_ShopItem_c*>(i_this)->Delete();
}

/* 80D61120-80D61140 000620 0020+00 1/0 0/0 0/0 .text            daTag_ShopItem_Execute__FPv */
static int daTag_ShopItem_Execute(void* i_this) {
    return static_cast<daTag_ShopItem_c*>(i_this)->Execute();
}

/* 80D61140-80D61160 000640 0020+00 1/0 0/0 0/0 .text            daTag_ShopItem_Draw__FPv */
static int daTag_ShopItem_Draw(void* i_this) {
    return static_cast<daTag_ShopItem_c*>(i_this)->Draw();
}

/* 80D61160-80D61168 000660 0008+00 1/0 0/0 0/0 .text            daTag_ShopItem_IsDelete__FPv */
static int daTag_ShopItem_IsDelete(void* i_this) {
    return 1;
}

/* 80D61168-80D611C8 000668 0060+00 1/0 0/0 0/0 .text            __dt__16daTag_ShopItem_cFv */
daTag_ShopItem_c::~daTag_ShopItem_c() {}

/* 80D611F0-80D61210 -00001 0020+00 1/0 0/0 0/0 .data            daTag_ShopItem_MethodTable */
static actor_method_class daTag_ShopItem_MethodTable = {
    (process_method_func)daTag_ShopItem_Create,  (process_method_func)daTag_ShopItem_Delete,
    (process_method_func)daTag_ShopItem_Execute, (process_method_func)daTag_ShopItem_IsDelete,
    (process_method_func)daTag_ShopItem_Draw,
};

/* 80D61210-80D61240 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_SHOPITM */
extern actor_process_profile_definition g_profile_TAG_SHOPITM = {
    -3,                             // mLayerID
    7,                              // mListID
    -3,                             // mListPrio
    PROC_TAG_SHOPITM,               // mProcName
    &g_fpcLf_Method.mBase,          // mSubMtd
    sizeof(daTag_ShopItem_c),       // mSize
    0,                              // mSizeOther
    0,                              // mParameters
    &g_fopAc_Method.base,           // mSubMtd
    0x004B,                         // mPriority
    &daTag_ShopItem_MethodTable,    // mSubMtd
    0x00064100,                     // mStatus
    5,                              // mActorType
    14,                             // mCullType
};
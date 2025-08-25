/**
 * d_a_tag_shop_item.cpp
 * Tag - Shop Item
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_shop_item.h"
#include "d/d_procname.h"

/* 80D60B78-80D60D78 000078 0200+00 1/1 0/0 0/0 .text            create__16daTag_ShopItem_cFv */
int daTag_ShopItem_c::create() {
    fopAcM_SetupActor(this, daTag_ShopItem_c);
    initialize();
    field_0x572 = false;

    if (strcmp("F_SP109", dComIfGp_getStartStageName()) == 0) {
        // saveBitLabels[64] = Goron Mines completed
        if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[64])) {
            return cPhs_ERROR_e;
        }

        if (dComIfGs_getTime() >= 90.0f && dComIfGs_getTime() < 270.0f) {
            return cPhs_ERROR_e;
        }
    }

    if (getGroupID() == 15) {
        mCreateTimer = 150;

#ifdef DEBUG
        // "Event Item\n"
        OSReport("イベントアイテム\n");
#endif

        if (getSwitchBit1() != 0xFF) {
            if (!dComIfGs_isSaveSwitch(getSwitchBit1())) {
                dComIfGs_onSaveSwitch(getSwitchBit2());
                field_0x572 = true;
                mCreateTimer = 0;
#ifdef DEBUG
                // "Before Talk\n"
                OSReport("会話前\n");
#endif
            } else {
#ifdef DEBUG
                // "After Talk\n"
                OSReport("会話後\n");
#endif
            }
        }
    } else {
        mCreateTimer = 0;

        if (getSwitchBit1() != 0xFF) {
            if (dComIfGs_isSaveSwitch(getSwitchBit1())) {
                mCreateTimer = 150;
#ifdef DEBUG
                // "Already Sold\n"
                OSReport("もう売れたよ\n");
#endif
            }
        }

        if (getSwitchBit2() != 0xFF) {
            if (!dComIfGs_isSaveSwitch(getSwitchBit2())) {
                mCreateTimer = 150;
#ifdef DEBUG
                // "Not sold yet\n"
                OSReport("まだ売れない\n");
#endif
            }
        }
    }

    return cPhs_COMPLEATE_e;
}

/* 80D60D78-80D60E04 000278 008C+00 1/1 0/0 0/0 .text            Delete__16daTag_ShopItem_cFv */
int daTag_ShopItem_c::Delete() {
    if (field_0x572 && getGroupID() == 15) {
        if (dComIfGs_isSaveSwitch(getSwitchBit1())) {
            dComIfGs_offSaveSwitch(getSwitchBit2());
        }
    }

    return 1;
}

/* 80D60E04-80D61024 000304 0220+00 1/1 0/0 0/0 .text            Execute__16daTag_ShopItem_cFv */
int daTag_ShopItem_c::Execute() {
    if (mProcessID == fpcM_ERROR_PROCESS_ID_e) {
        if (mCreateTimer == 0) {
            mProcessID =
                fopAcM_create(PROC_ShopItem, (getType() & 0xFF) | (getGroupID() << 0x1C),
                              &current.pos, fopAcM_GetRoomNo(this), &current.angle, NULL, -1);

        } else {
            mCreateTimer--;

            if (getGroupID() == 15) {
                if (field_0x572) {
                    mCreateTimer = 0;
                }
            } else {
                if (getSwitchBit1() != 0xFF && dComIfGs_isSaveSwitch(getSwitchBit1())) {
                } else if (getSwitchBit2() == 0xFF || dComIfGs_isSaveSwitch(getSwitchBit2())) {
                    mCreateTimer = 0;
                }
            }
        }
    } else {
        daItemBase_c* item_actor_p = (daItemBase_c*)fopAcM_SearchByID(mProcessID);

        if (item_actor_p != NULL) {
            if (getGroupID() == 15) {
                if (!field_0x572) {
                    item_actor_p->hide();
                } else {
                    item_actor_p->show();
                }
            } else {
                if (getSwitchBit1() != 0xFF && dComIfGs_isSaveSwitch(getSwitchBit1())) {
                    item_actor_p->hide();
                } else if (getSwitchBit2() != 0xFF && !dComIfGs_isSaveSwitch(getSwitchBit2())) {
                    item_actor_p->hide();
                } else {
                    item_actor_p->show();
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
    return fopAcM_GetParam(this) & 0xFF;
}

/* 80D61038-80D61044 000538 000C+00 3/3 0/0 0/0 .text            getGroupID__16daTag_ShopItem_cFv */
u8 daTag_ShopItem_c::getGroupID() {
    return fopAcM_GetParam(this) >> 0x1C;
}

/* 80D61044-80D61050 000544 000C+00 3/3 0/0 1/1 .text            getSwitchBit1__16daTag_ShopItem_cFv
 */
u8 daTag_ShopItem_c::getSwitchBit1() {
    return home.angle.z & 0xFF;
}

/* 80D61050-80D6105C 000550 000C+00 3/3 0/0 0/0 .text            getSwitchBit2__16daTag_ShopItem_cFv
 */
u8 daTag_ShopItem_c::getSwitchBit2() {
    return home.angle.z >> 8 & 0xFF;
}

/* 80D6105C-80D610E0 00055C 0084+00 1/1 0/0 0/0 .text            initialize__16daTag_ShopItem_cFv */
void daTag_ShopItem_c::initialize() {
    fopAcM_setCullSizeBox(this, -30.0f, -15.0f, -30.0f, 30.0f, 45.0f, 30.0f);
    attention_info.flags = 0;
    current.angle.set(0, home.angle.y, 0);
    shape_angle = current.angle;
    mProcessID = -1;
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
    fpcLy_CURRENT_e,              // mLayerID
    7,                            // mListID
    fpcPi_CURRENT_e,              // mListPrio
    PROC_TAG_SHOPITM,             // mProcName
    &g_fpcLf_Method.base,        // sub_method
    sizeof(daTag_ShopItem_c),     // mSize
    0,                            // mSizeOther
    0,                            // mParameters
    &g_fopAc_Method.base,         // sub_method
    75,                           // mPriority
    &daTag_ShopItem_MethodTable,  // sub_method
    0x64100,                      // mStatus
    5,                            // mActorType
    fopAc_CULLBOX_CUSTOM_e,       // cullType
};

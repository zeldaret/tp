/**
 * d_insect.cpp
 *
 */

#include "d/dolzel.h"

#include "d/d_insect.h"
#include "d/d_com_inf_game.h"
#include "d/d_menu_insect.h"
#include "m_Do/m_Do_lib.h"
#include "dol2asm.h"

#if VERSION == VERSION_GCN_USA
// This is a HACK to get d_insect data at correct address due to
// issues with the d_a_obj_item vtable. TODO: fix daItem_c vtable
#pragma push
#pragma force_active on
SECTION_DATA extern void* __vt__8daItem_c__HACK[] = {
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};
#pragma pop
#endif

/* 8015E010-8015E078 158950 0068+00 0/0 0/0 13/13 .text            __ct__9dInsect_cFv */
dInsect_c::dInsect_c() {
    m_itemId = -1;
    field_0x56c = 0;
    mDraw = true;
    m_mode = 0;
    m_itemNo = fpcNm_ITEM_M_MAYFLY;
    field_0x584 = 0;
    field_0x585 = 0;
}

/* 8015E078-8015E26C 1589B8 01F4+00 0/0 0/0 24/24 .text            Insect_GetDemoMain__9dInsect_cFv
 */
void dInsect_c::Insect_GetDemoMain() {
    switch (m_mode) {
    case 0:
        if (fopAcM_checkCarryNow(this)) {
            cLib_offBit<u32>(attention_info.flags, 0x10);
            fopAcM_cancelCarryNow(this);
            fopAcM_orderItemEvent(this, 0, 0);
            eventInfo.onCondition(dEvtCnd_CANGETITEM_e);

            m_itemId = fopAcM_createItemForTrBoxDemo(&current.pos, m_itemNo, -1,
                                                     fopAcM_GetRoomNo(this), NULL, NULL);
            m_mode = 1;

            if (dMenu_Insect_c::isCatchNotGiveInsect(m_itemNo) != 0) {
                field_0x585 = 1;
            }
        } else {
            cLib_onBit<u32>(attention_info.flags, 0x10);
        }
        break;
    case 1:
        if (eventInfo.checkCommandItem()) {
            if (m_itemId != fpcM_ERROR_PROCESS_ID_e) {
                dComIfGp_event_setItemPartnerId(m_itemId);
            }

            mDraw = false;
            m_mode = 2;
        } else {
            fopAcM_orderItemEvent(this, 0, 0);
            eventInfo.onCondition(dEvtCnd_CANGETITEM_e);
        }
        break;
    case 2:
        if (dComIfGp_evmng_endCheck("DEFAULT_GETITEM")) {
            dComIfGp_event_reset();
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[m_saveBitNo]) ||
                field_0x585 != 0)
            {
                mDraw = true;
                m_mode = 0;
                if (field_0x584 == 0) {
                    fopAcM_createItem(&current.pos, fpcNm_ITEM_HEART, -1, -1, NULL, NULL, 0);
                    field_0x584 = 1;
                }
            } else {
                fopAcM_delete(this);
            }
        }
        break;
    }
}

/* 8015E26C-8015E3F8 158BAC 018C+00 0/0 0/0 3/3 .text            CalcZBuffer__9dInsect_cFf */
void dInsect_c::CalcZBuffer(f32 param_0) {
    f32 camera_trim_height;
    cXyz pos_projected;
    cXyz pos;

    pos = current.pos;
    pos.y += 20.0f;

    mDoLib_project(&pos, &pos_projected);

    if (dComIfGp_getCamera(0)) {
        camera_trim_height = dComIfGp_getCamera(0)->mCamera.mTrimHeight;
    } else {
        camera_trim_height = 0.0f;
    }

    if (pos_projected.x > 0.0f && pos_projected.x < 608.0f &&
        pos_projected.y > camera_trim_height && pos_projected.y < 448.0f - camera_trim_height)
    {
        dComIfGd_peekZ(pos_projected.x, pos_projected.y, &field_0x578);
    } else {
        field_0x578 = 0;
    }

    f32 view_near = dComIfGd_getView()->near;
    f32 view_far = dComIfGd_getView()->far;

    mDoLib_pos2camera(&pos, &pos_projected);
    pos_projected.z += param_0;
    if (!pos_projected.z) {
        pos_projected.z = -10.0f;
    }

    field_0x57c =
        (((view_near + ((view_far * view_near) / pos_projected.z)) / (view_far - view_near)) +
         1.0f) *
        16777215.0f;
}

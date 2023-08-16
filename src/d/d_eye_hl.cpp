/**
 * d_eye_hl.cpp
 * dolzel2 - Eye Highlight Management
 */

#include "d/d_eye_hl.h"
#include "JSystem/J3DGraphBase/J3DTexture.h"
#include "d/com/d_com_inf_game.h"
#include "dol2asm.h"
#include "dolphin/os/OS.h"
#include "d/s/d_s_play.h"

/* 8009C964-8009CA28 0972A4 00C4+00 0/0 2/2 0/0 .text            entry__8dEyeHL_cFP12J3DModelDataPCc
 */
void dEyeHL_c::entry(J3DModelData* p_mData, char const* name) {
    J3DTexture* tex = p_mData->getTexture();
    JUTNameTab* tex_nametab = p_mData->getTextureName();

    if (tex != NULL && tex_nametab != NULL) {
        for (u16 i = 0; i < tex->getNum(); i++) {
            const char* tex_name = tex_nametab->getName(i);

            if (tex_name != NULL && !strcmp(tex_name, name)) {
                m_timg = tex->getResTIMG(i);
                m_lodBias = m_timg->LODBias;
                dEyeHL_mng_c::entry(this);
                return;
            }
        }
    }
    // "Eye Highlight Texture doesn't exist!\n"
    OSReport_Error("目のハイライトテクスチャーがありません！\n");
}

/* 8009CA28-8009CA48 097368 0020+00 0/0 3/3 0/0 .text            remove__8dEyeHL_cFv */
void dEyeHL_c::remove() {
    dEyeHL_mng_c::remove(this);
}

/* ############################################################################################## */
/* 80450FA8-80450FB0 0004A8 0004+04 3/3 0/0 0/0 .sbss            m_obj__12dEyeHL_mng_c */
dEyeHL_mng_c* dEyeHL_mng_c::m_obj;

/* 8009CA48-8009CB14 097388 00CC+00 0/0 1/1 0/0 .text            update__12dEyeHL_mng_cFv */
void dEyeHL_mng_c::update() {
    dEyeHL_mng_c* obj = m_obj;

    if (g_envHIO[0x10] == 0 || !i_dComIfGp_event_runCheck()) {
        for (; obj != NULL; obj = obj->m_next) {
            obj->m_timg->LODBias = obj->m_lodBias;
        }
    } else {
        s16 tmp = 2.0f * (dComIfGd_getView()->mFovy - 45.0f);
        for (; obj != NULL; obj = obj->m_next) {
            ResTIMG* timg = obj->m_timg;
            timg->LODBias = obj->m_lodBias + tmp;
            timg->LODBias = (s16)cLib_minMaxLimit((s16)timg->LODBias, (s16)-400, (s16)399);
        }
    }
}

/* 8009CB14-8009CB34 097454 0020+00 1/1 0/0 0/0 .text            entry__12dEyeHL_mng_cFP8dEyeHL_c */
void dEyeHL_mng_c::entry(dEyeHL_c* i_obj) {
    if (m_obj != NULL) {
        m_obj->m_pre = i_obj;
    }
    i_obj->m_next = m_obj;
    m_obj = i_obj;
}

/* 8009CB34-8009CB88 097474 0054+00 1/1 0/0 0/0 .text            remove__12dEyeHL_mng_cFP8dEyeHL_c
 */
void dEyeHL_mng_c::remove(dEyeHL_c* i_obj) {
    if (i_obj->m_timg != NULL) {
        dEyeHL_mng_c* prev = i_obj->m_pre;
        dEyeHL_mng_c* next = i_obj->m_next;

        if (next != NULL) {
            next->m_pre = prev;
        }

        if (prev == NULL) {
            m_obj = next;
        } else {
            prev->m_next = next;
            next = m_obj;
        }

        i_obj->m_timg->LODBias = i_obj->m_lodBias;
        i_obj->m_timg = NULL;
        i_obj->m_pre = NULL;
        i_obj->m_next = NULL;
    }
}

/* ############################################################################################## */
/* 80450FB0-80450FB8 -00001 0008+00 0/0 2/2 0/0 .sbss            None */
/* 80450FB0 0001+00 data_80450FB0 None */
/* 80450FB1 0001+00 data_80450FB1 None */
/* 80450FB2 0006+00 data_80450FB2 None */
extern u8 struct_80450FB0[8];
u8 struct_80450FB0[8] ALIGN_DECL(8);

/* 80450FB8-80450FBC -00001 0004+00 0/0 1/1 0/0 .sbss            None */
/* 80450FB8 0001+00 data_80450FB8 None */
/* 80450FB9 0001+00 data_80450FB9 None */
/* 80450FBA 0001+00 data_80450FBA None */
/* 80450FBB 0001+00 data_80450FBB None */
extern u8 struct_80450FB8[4];
u8 struct_80450FB8[4];

/* 80450FBC-80450FC0 -00001 0004+00 0/0 1/1 0/0 .sbss            None */
/* 80450FBC 0001+00 data_80450FBC None */
/* 80450FBD 0003+00 data_80450FBD None */
extern u8 struct_80450FBC[4];
u8 struct_80450FBC[4];

/* 8037B100-8037B100 007760 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

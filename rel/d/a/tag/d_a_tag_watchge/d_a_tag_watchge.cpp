/**
 * d_a_tag_watchge.cpp
 * Tag - Guay
 */

#include "rel/d/a/tag/d_a_tag_watchge/d_a_tag_watchge.h"
#include "dol2asm.h"
#include "d/d_procname.h"

//
// Forward References:
//

extern "C" bool draw__14daTagWatchGe_cFv();
extern "C" static void daTagWatchGe_Draw__FP14daTagWatchGe_c();
extern "C" static void s_watchge__FPvPv();
extern "C" void execute__14daTagWatchGe_cFv();
extern "C" static void daTagWatchGe_Execute__FP14daTagWatchGe_c();
extern "C" static bool daTagWatchGe_IsDelete__FP14daTagWatchGe_c();
extern "C" static bool daTagWatchGe_Delete__FP14daTagWatchGe_c();
extern "C" void create__14daTagWatchGe_cFv();
extern "C" static void daTagWatchGe_Create__FP14daTagWatchGe_c();
extern "C" extern void* g_profile_Tag_WatchGe[12];

//
// External References:
//

extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void fopAcIt_Judge__FPFPvPv_PvPv();
extern "C" void fopAcM_delete__FP10fopAc_ac_c();
extern "C" void onSwitch__10dSv_info_cFii();
extern "C" void isSwitch__10dSv_info_cCFii();

//
// Declarations:
//

/* 80D642D8-80D642E0 000078 0008+00 1/1 0/0 0/0 .text            draw__14daTagWatchGe_cFv */
int daTagWatchGe_c::draw() {
    return 1;
}

/* 80D642E0-80D64300 000080 0020+00 1/0 0/0 0/0 .text daTagWatchGe_Draw__FP14daTagWatchGe_c */
static int daTagWatchGe_Draw(daTagWatchGe_c* i_this) {
    return i_this->draw();
}

/* ############################################################################################## */
/* 80D64528-80D6452C 000000 0004+00 2/2 0/0 0/0 .bss             m_group_count */
static s32 m_group_count;

/* 80D64300-80D64338 0000A0 0038+00 1/1 0/0 0/0 .text            s_watchge__FPvPv */
static void* s_watchge(void* i_guayP, void* i_this) {
    u8 group_no = static_cast<daTagWatchGe_c*>(i_this)->getGroupNo();
    if (fopAcM_GetName(i_guayP) == PROC_E_GE) {
        if (static_cast<daE_GE_c*>(i_guayP)->getGroupNo() == group_no) {
            m_group_count++;
        }
    }

    return 0;
}

/* 80D64338-80D643C8 0000D8 0090+00 1/1 0/0 0/0 .text            execute__14daTagWatchGe_cFv */
int daTagWatchGe_c::execute() {
    if (field_0x56a != 0) {
        field_0x56a--;
    } else {
        m_group_count = 0;
        fopAcM_Search(s_watchge,this);

        if (m_group_count == 0) {
            dComIfGs_onSwitch(field_0x568,fopAcM_GetRoomNo(this));
            fopAcM_delete(this);
        }
    }

    return 1;
}

/* 80D643C8-80D643E8 000168 0020+00 1/0 0/0 0/0 .text daTagWatchGe_Execute__FP14daTagWatchGe_c */
static int daTagWatchGe_Execute(daTagWatchGe_c* i_this) {
    return i_this->execute();
}

/* 80D643E8-80D643F0 000188 0008+00 1/0 0/0 0/0 .text daTagWatchGe_IsDelete__FP14daTagWatchGe_c */
static int daTagWatchGe_IsDelete(daTagWatchGe_c* param_0) {
    return 1;
}

/* 80D643F0-80D643F8 000190 0008+00 1/0 0/0 0/0 .text daTagWatchGe_Delete__FP14daTagWatchGe_c */
static int daTagWatchGe_Delete(daTagWatchGe_c* param_0) {
    return 1;
}

/* 80D643F8-80D644B0 000198 00B8+00 1/1 0/0 0/0 .text            create__14daTagWatchGe_cFv */
int daTagWatchGe_c::create() {
    if (!fopAcM_CheckCondition(this, 8)) {
        new (this) daTagWatchGe_c();
        fopAcM_OnCondition(this, 8);
    }

    mGroupNo = fopAcM_GetParam(this);

    if (mGroupNo == 0xFF) {
        return cPhs_ERROR_e;
    } else {
        field_0x568 = fopAcM_GetParam(this) >> 8;

        if (field_0x568 == 0xFF) {
            return cPhs_ERROR_e;
        }
        if (dComIfGs_isSwitch(field_0x568,fopAcM_GetRoomNo(this)) != 0) {
            return cPhs_ERROR_e;
        }
    }

    field_0x56a = 0x1e;
    return cPhs_COMPLEATE_e;
}

/* 80D644B0-80D644D0 000250 0020+00 1/0 0/0 0/0 .text daTagWatchGe_Create__FP14daTagWatchGe_c */
static int daTagWatchGe_Create(daTagWatchGe_c* i_this) {
    return i_this->create();
}

/* ############################################################################################## */
/* 80D644D8-80D644F8 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagWatchGe_Method */
SECTION_DATA static void* l_daTagWatchGe_Method[8] = {
    (void*)daTagWatchGe_Create__FP14daTagWatchGe_c,
    (void*)daTagWatchGe_Delete__FP14daTagWatchGe_c,
    (void*)daTagWatchGe_Execute__FP14daTagWatchGe_c,
    (void*)daTagWatchGe_IsDelete__FP14daTagWatchGe_c,
    (void*)daTagWatchGe_Draw__FP14daTagWatchGe_c,
    (void*)NULL,
    (void*)NULL,
    (void*)NULL,
};

/* 80D644F8-80D64528 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_WatchGe */
SECTION_DATA extern void* g_profile_Tag_WatchGe[12] = {
    (void*)0xFFFFFFFD, (void*)0x0007FFFD,
    (void*)0x01F30000, (void*)&g_fpcLf_Method,
    (void*)0x0000056C, (void*)NULL,
    (void*)NULL,       (void*)&g_fopAc_Method,
    (void*)0x00C10000, (void*)&l_daTagWatchGe_Method,
    (void*)0x00044000, (void*)NULL,
};

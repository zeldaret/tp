/**
 * d_a_tag_guard.cpp
 * Tag - Guard
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_guard.h"
#include "d/d_stage.h"

/* 80D597F8-80D5985C 000078 0064+00 0/0 0/0 1/1 .text getAppearPoint__12daTagGuard_cFP3Vec */
int daTagGuard_c::getAppearPoint(Vec* i_appearPnt) {
    if (mPath == NULL) {
        return 0;
    }

    *i_appearPnt = dPath_GetPnt(mPath, mPath->m_num - 1)->m_position;
    return 1;
}

/* 80D5985C-80D59928 0000DC 00CC+00 0/0 0/0 1/1 .text            createGuard__12daTagGuard_cFUl */
void daTagGuard_c::createGuard(u32 i_parameters) {
    cXyz pos = current.pos;

    if (getPathID() != 0xFF) {
        pos = dPath_GetPnt(mPath, 0)->m_position;
        i_parameters |= (getPathID() << 0x10);
    }

    fopAcM_createChild(PROC_NPC_GUARD, fopAcM_GetID(this), i_parameters, &pos,
                       fopAcM_GetRoomNo(this), &current.angle, NULL, -1, NULL);
}

int daTagGuard_c::create() {
    fopAcM_SetupActor(this, daTagGuard_c);
    create_init();
    return cPhs_COMPLEATE_e;
}

void daTagGuard_c::create_init() {
    mPath = dPath_GetRoomPath(getPathID(), fopAcM_GetHomeRoomNo(this));

    dPnt* pnt1 = dPath_GetPnt(mPath, 0);
    dPnt* pnt2 = dPath_GetPnt(mPath, 1);

    current.pos.x = pnt1->m_position.x;
    current.pos.y = pnt1->m_position.y;
    current.pos.z = pnt1->m_position.z;
    current.angle.y = cLib_targetAngleY(&pnt1->m_position, &pnt2->m_position);
}

/* 80D59928-80D599E0 0001A8 00B8+00 1/0 0/0 0/0 .text            daTagGuard_Create__FP10fopAc_ac_c
 */
static int daTagGuard_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagGuard_c*>(i_this)->create();
}

/* 80D599E0-80D59A10 000260 0030+00 1/0 0/0 0/0 .text            daTagGuard_Delete__FP12daTagGuard_c
 */
static int daTagGuard_Delete(daTagGuard_c* i_this) {
    i_this->~daTagGuard_c();
    return 1;
}

/* ############################################################################################## */
/* 80D59A18-80D59A38 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagGuard_Method */
static actor_method_class l_daTagGuard_Method = {
    (process_method_func)daTagGuard_Create,
    (process_method_func)daTagGuard_Delete,
};

/* 80D59A38-80D59A68 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_GUARD */
extern actor_process_profile_definition g_profile_TAG_GUARD = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_TAG_GUARD,
    &g_fpcLf_Method.base,
    sizeof(daTagGuard_c),
    0,
    0,
    &g_fopAc_Method.base,
    408,
    &l_daTagGuard_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};

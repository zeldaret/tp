/**
 * d_a_tag_yami.cpp
 * Tag - Yami (Twili)
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_tag_yami.h"
#include "d/d_com_inf_game.h"

/* ############################################################################################## */
/* 80D66210-80D66254 000000 0044+00 2/2 0/0 0/0 .rodata          l_sph_src */
const static dCcD_SrcCyl l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0xd8fbfdff, 0x0}, 0x19}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x8},                 // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                 // mGObjTg
        {0x0},                                              // mGObjCo
    },                                                      // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        0.0f,                // mRadius
        0.0f                 // mHeight
    }  // mCyl
};

/* 80D659F8-80D65C24 000078 022C+00 1/1 0/0 0/0 .text            create__11daTagYami_cFv */
int daTagYami_c::create() {
    fopAcM_SetupActor(this, daTagYami_c);

        /* dSv_event_flag_c::F_0570 - Palace of Twilight - Cleared Palace of Twilight */
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[570])) {
        return cPhs_ERROR_e;
    }

    OS_REPORT("-------------- TAG YAMI CREATE!!\n");
    mStts.Init(0xff, 0xff, this);
    mCyl.Set(l_sph_src);
    mCyl.SetStts(&mStts);

    mIsCoHit = 0;
    mMTagSw = get_MTagSw();
    mMTagSw2 = get_MTagSw2();

    switch (get_prm()) {
    case 2: {
        cXyz coC;
        calcCoC(coC);
        setCoC(coC);
        setCoR(700.0f);
        setCoH(300.0f);

        if (fopAcM_isSwitch(this, 0x3d) && fopAcM_isSwitch(this, 0x3e)) {
            off_CoHit();
        } else {
            on_CoHit();
        }
        break;
    }
    default:
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80D65C24-80D65C60 0002A4 003C+00 1/1 0/0 0/0 .text            Execute__11daTagYami_cFv */
int daTagYami_c::Execute() {
    col_set();
    mIsCoHit = chk_CoHit();
    return 1;
}

/* ############################################################################################## */
/* 80D65C60-80D65D08 0002E0 00A8+00 1/1 0/0 0/0 .text            calcCoC__11daTagYami_cFR4cXyz */
void daTagYami_c::calcCoC(cXyz& i_dst) {
    cXyz base(0.0f, 0.0f, 430.0f);
    mDoMtx_stack_c::ZXYrotS(csXyz(0, -0x7f96, 0));
    mDoMtx_stack_c::multVec(&base, &base);
    i_dst = home.pos + base;
}

/* 80D65D08-80D65D0C 000388 0004+00 1/1 0/0 0/0 .text            col_set__11daTagYami_cFv */
void daTagYami_c::col_set() {
    /* empty function */
}

/* 80D65D0C-80D65D60 00038C 0054+00 1/1 0/0 0/0 .text            chk_CoHit__11daTagYami_cFv */
u32 daTagYami_c::chk_CoHit() {
    if (!mCoHitValid) {
        return 0;
    }

    f32 coR = getCoR();
    f32 plDist = getPlDist();
    return plDist < coR;
}

/* ############################################################################################## */
/* 80D65D60-80D65EEC 0003E0 018C+00 1/1 0/0 0/0 .text            getPlDist__11daTagYami_cFv */
f32 daTagYami_c::getPlDist() {
    cXyz coC(mCoC);
    daPy_py_c* py = daPy_getPlayerActorClass();
    cXyz pyPos = fopAcM_GetPosition((fopAc_ac_c*)py);
    cXyz diff = pyPos - coC;
    return diff.absXZ();
}

/* 80D65EEC-80D65F24 00056C 0038+00 0/0 0/0 1/1 .text            onMidnaTagSw__11daTagYami_cFv */
void daTagYami_c::onMidnaTagSw() {
    fopAcM_onSwitch(this, mMTagSw);
}

/* 80D65F24-80D65F5C 0005A4 0038+00 0/0 0/0 1/1 .text            offMidnaTagSw2__11daTagYami_cFv */
void daTagYami_c::offMidnaTagSw2() {
    OS_REPORT("-----------off mtag2 sw!!\n");
    fopAcM_offSwitch(this, mMTagSw2);
}

/* 80D65F5C-80D65F7C 0005DC 0020+00 1/0 0/0 0/0 .text            daTagYami_Create__FP10fopAc_ac_c */
int daTagYami_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagYami_c*>(i_this)->create();
}

/* 80D65F7C-80D65F9C 0005FC 0020+00 1/0 0/0 0/0 .text            daTagYami_Execute__FP10fopAc_ac_c
 */
int daTagYami_Execute(fopAc_ac_c* i_this) {
    return static_cast<daTagYami_c*>(i_this)->Execute();
}

/* 80D65F9C-80D660B8 00061C 011C+00 1/0 0/0 0/0 .text            daTagYami_Delete__FP11daTagYami_c
 */
int daTagYami_Delete(daTagYami_c* i_this) {
    i_this->~daTagYami_c();
    return 1;
}

/* ############################################################################################## */
/* 80D66280-80D662A0 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagYami_Method */
static actor_method_class l_daTagYami_Method = {
    (process_method_func)daTagYami_Create,
    (process_method_func)daTagYami_Delete,
    (process_method_func)daTagYami_Execute,
};

/* 80D662A0-80D662D0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_TAG_YAMI */
extern actor_process_profile_definition g_profile_TAG_YAMI = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_TAG_YAMI,           // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daTagYami_c),     // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    21,                      // mPriority
    &l_daTagYami_Method,     // sub_method
    0x40000,                 // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

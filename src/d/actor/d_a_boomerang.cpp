/**
 * @file d_a_boomerang.cpp
 * 
*/

#include "d/actor/d_a_boomerang.h"
#include "JSystem/J2DGraph/J2DAnmLoader.h"
#include "d/actor/d_a_alink.h"
#include "d/d_pane_class.h"
#include "m_Do/m_Do_lib.h"
#include "d/actor/d_a_mirror.h"
#include "Z2AudioLib/Z2Instances.h"
#include "SSystem/SComponent/c_math.h"

/* 8049E0B8-8049E36C 000078 02B4+00 1/1 0/0 0/0 .text            createHeap__19daBoomerang_sight_cFv
 */
int daBoomerang_sight_c::createHeap() {
    void* tmpData;
    JKRArchive* archive = dComIfG_getObjectResInfo(daAlink_c::getAlinkArcName())->getArchive();

    m_cursorYellowScrn = new J2DScreen();
    if (m_cursorYellowScrn == NULL) {
        return 0;
    }

    m_cursorYellowScrn->setPriority("zelda_v_cursor_new_yellow.blo", 0x100000, archive);
    dPaneClass_showNullPane(m_cursorYellowScrn);

    tmpData = JKRGetNameResource("zelda_v_cursor_new_yellow.bpk", archive);
    JUT_ASSERT(398, tmpData);
    m_cursorYellowBpk = (J2DAnmColor*)J2DAnmLoaderDataBase::load(tmpData);
    if (m_cursorYellowBpk == NULL) {
        return 0;
    }

    tmpData = JKRGetNameResource("zelda_v_cursor_new_yellow.bck", archive);
    JUT_ASSERT(406, tmpData);
    m_cursorYellowBck = (J2DAnmTransform*)J2DAnmLoaderDataBase::load(tmpData);
    if (m_cursorYellowBck == NULL) {
        return 0;
    }

    tmpData = JKRGetNameResource("zelda_v_cursor_new_yellow_02.brk", archive);
    JUT_ASSERT(415, tmpData);
    m_cursorYellow2Brk = (J2DAnmTevRegKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (m_cursorYellow2Brk == NULL) {
        return 0;
    }

    tmpData = JKRGetNameResource("zelda_v_cursor_new_yellow.brk", archive);
    JUT_ASSERT(423, tmpData);
    m_cursorYellowBrk = (J2DAnmTevRegKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (m_cursorYellowBrk == NULL) {
        return 0;
    }

    m_cursorRedScrn = new J2DScreen();
    if (m_cursorRedScrn == NULL) {
        return 0;
    }

    m_cursorRedScrn->setPriority("zelda_v_cursor_new_red.blo", 0x100000, archive);
    dPaneClass_showNullPane(m_cursorRedScrn);

    tmpData = JKRGetNameResource("zelda_v_cursor_new_red_02.brk", archive);
    JUT_ASSERT(440, tmpData);
    m_cursorRed2Brk = (J2DAnmTevRegKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (m_cursorRed2Brk == NULL) {
        return 0;
    }

    tmpData = JKRGetNameResource("zelda_v_cursor_new_red.brk", archive);
    JUT_ASSERT(448, tmpData);
    m_cursorRedBrk = (J2DAnmTevRegKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (m_cursorRedBrk == NULL) {
        return 0;
    }

    m_cursorOrangeScrn = new J2DScreen();
    if (m_cursorOrangeScrn == NULL) {
        return 0;
    }

    m_cursorOrangeScrn->setPriority("zelda_v_cursor_new_orange.blo", 0x100000, archive);
    dPaneClass_showNullPane(m_cursorOrangeScrn);

    tmpData = JKRGetNameResource("zelda_v_cursor_new_orange_02.brk", archive);
    JUT_ASSERT(493, tmpData);
    m_cursorOrange2Brk = (J2DAnmTevRegKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (m_cursorOrange2Brk == NULL) {
        return 0;
    }

    tmpData = JKRGetNameResource("zelda_v_cursor_new_orange.brk", archive);
    JUT_ASSERT(501, tmpData);
    m_cursorOrangeBrk = (J2DAnmTevRegKey*)J2DAnmLoaderDataBase::load(tmpData);
    if (m_cursorOrangeBrk == NULL) {
        return 0;
    }

    return 1;
}

/* 804A2850-804A285C 000000 000C+00 7/7 0/0 0/0 .rodata          @4078 */
// unused
static u8 const lit_4078[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 804A285C-804A2868 00000C 000C+00 0/0 0/0 0/0 .rodata          l_blurTop */
// unused
static u8 const l_blurTop[12] = {
    0x42, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 804A2868-804A287A 000018 000C+06 0/0 0/0 0/0 .rodata          l_blurRoot */
// unused
static u8 const l_blurRoot[12 + 6] = {
    0xC2,
    0x20,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0x00,
    0xB4,
    0xA0,
    0x8C,
    0x3C,
    0x1E,
    0x1E,
};

/* 804A287A-804A287C 00002A 0002+00 0/0 0/0 0/0 .rodata m_lockWaitTime__18daBoomerang_HIO_c0 */
const u16 daBoomerang_HIO_c0::m_lockWaitTime = 10;

/* 804A287C-804A2880 00002C 0004+00 0/0 0/0 0/0 .rodata          m_minCircleR__18daBoomerang_HIO_c0
 */
const f32 daBoomerang_HIO_c0::m_minCircleR = 28.0f;

/* 804A2880-804A2884 000030 0004+00 0/0 0/0 0/0 .rodata m_middleCircleR__18daBoomerang_HIO_c0 */
const f32 daBoomerang_HIO_c0::m_middleCircleR = 35.0f;

/* 804A2884-804A2888 000034 0004+00 0/0 0/0 0/0 .rodata          m_maxCircleR__18daBoomerang_HIO_c0
 */
const f32 daBoomerang_HIO_c0::m_maxCircleR = 80.0f;

/* 804A2888-804A288C 000038 0004+00 0/0 0/0 0/0 .rodata          m_scale__18daBoomerang_HIO_c0 */
const f32 daBoomerang_HIO_c0::m_scale = 3.0f / 5.0f;

/* 804A288C-804A2890 00003C 0004+00 0/0 0/0 0/0 .rodata m_lockWindScale__18daBoomerang_HIO_c0 */
const f32 daBoomerang_HIO_c0::m_lockWindScale = 2.0f;

/* 804A2890-804A28A4 000040 0014+00 0/1 0/0 0/0 .rodata          l_lockSeFlg */
static const u32 l_lockSeFlg[BOOMERANG_LOCK_MAX] = {
    Z2SE_SY_BOOM_LOCK_ON_1,
    Z2SE_SY_BOOM_LOCK_ON_2,
    Z2SE_SY_BOOM_LOCK_ON_3,
    Z2SE_SY_BOOM_LOCK_ON_4,
    Z2SE_SY_BOOM_LOCK_ON_5,
};

/* 8049E36C-8049EB64 00032C 07F8+00 1/1 0/0 0/0 .text            initialize__19daBoomerang_sight_cFv
 */
void daBoomerang_sight_c::initialize() {
    m_cursorYellowAllPane = m_cursorYellowScrn->search('n_all');
    m_cursorYellow0Pane = m_cursorYellowScrn->search('cursor0');
    m_cursorYellow1Pane = m_cursorYellowScrn->search('cursor1');
    m_cursorYellow2Pane = m_cursorYellowScrn->search('cursor2');

    m_cursorYellowBck->searchUpdateMaterialID(m_cursorYellowScrn);
    m_cursorYellowAllPane->setAnimation(m_cursorYellowBck);
    m_cursorYellow0Pane->setAnimation(m_cursorYellowBck);
    m_cursorYellow1Pane->setAnimation(m_cursorYellowBck);
    m_cursorYellow2Pane->setAnimation(m_cursorYellowBck);
    m_cursorYellowBck->setFrame(0.0f);

    m_cursorYellowBpk->searchUpdateMaterialID(m_cursorYellowScrn);
    m_cursorYellow0Pane->setAnimation(m_cursorYellowBpk);
    m_cursorYellow1Pane->setAnimation(m_cursorYellowBpk);
    m_cursorYellow2Pane->setAnimation(m_cursorYellowBpk);
    m_cursorYellowScrn->search('flash')->setAnimation(m_cursorYellowBpk);
    m_cursorYellowBpk->setFrame(0.0f);

    m_cursorYellow2Brk->searchUpdateMaterialID(m_cursorYellowScrn);
    m_cursorYellowBrk->searchUpdateMaterialID(m_cursorYellowScrn);
    m_cursorYellow0Pane->setAnimation(m_cursorYellow2Brk);
    m_cursorYellow1Pane->setAnimation(m_cursorYellow2Brk);
    m_cursorYellow2Pane->setAnimation(m_cursorYellow2Brk);
    m_cursorYellow0Pane->setAnimation(m_cursorYellowBrk);
    m_cursorYellow1Pane->setAnimation(m_cursorYellowBrk);
    m_cursorYellow2Pane->setAnimation(m_cursorYellowBrk);
    m_cursorYellow2Brk->setFrame(0.0f);
    m_cursorYellowBrk->setFrame(0.0f);

    m_cursorYellowScrn->animation();
    m_cursorYellowScrn->setUserInfo('n_43');
    m_cursorYellowAllPane->setUserInfo(' ');

    m_cursorRedAllPane = m_cursorRedScrn->search('n_all');
    m_cursorRed0Pane = m_cursorRedScrn->search('cursor0');
    m_cursorRed1Pane = m_cursorRedScrn->search('cursor1');
    m_cursorRed2Pane = m_cursorRedScrn->search('cursor2');

    m_cursorRedAllPane->setAnimation(m_cursorYellowBck);
    m_cursorRed0Pane->setAnimation(m_cursorYellowBck);
    m_cursorRed1Pane->setAnimation(m_cursorYellowBck);
    m_cursorRed2Pane->setAnimation(m_cursorYellowBck);
    m_cursorRed0Pane->setAnimation(m_cursorYellowBpk);
    m_cursorRed1Pane->setAnimation(m_cursorYellowBpk);
    m_cursorRed2Pane->setAnimation(m_cursorYellowBpk);
    m_cursorRedScrn->search('flash')->setAnimation(m_cursorYellowBpk);

    m_cursorRed2Brk->searchUpdateMaterialID(m_cursorRedScrn);
    m_cursorRedBrk->searchUpdateMaterialID(m_cursorRedScrn);
    m_cursorRed0Pane->setAnimation(m_cursorRed2Brk);
    m_cursorRed1Pane->setAnimation(m_cursorRed2Brk);
    m_cursorRed2Pane->setAnimation(m_cursorRed2Brk);
    m_cursorRed0Pane->setAnimation(m_cursorRedBrk);
    m_cursorRed1Pane->setAnimation(m_cursorRedBrk);
    m_cursorRed2Pane->setAnimation(m_cursorRedBrk);
    m_cursorRed2Brk->setFrame(0.0f);
    m_cursorRedBrk->setFrame(0.0f);

    m_cursorRedScrn->animation();
    m_cursorRedScrn->setUserInfo('n_43');
    m_cursorRedAllPane->setUserInfo(' ');

    m_cursorOrangeAllPane = m_cursorOrangeScrn->search('n_all');
    m_cursorOrange0Pane = m_cursorOrangeScrn->search('cursor0');
    m_cursorOrange1Pane = m_cursorOrangeScrn->search('cursor1');
    m_cursorOrange2Pane = m_cursorOrangeScrn->search('cursor2');

    m_cursorOrangeAllPane->setAnimation(m_cursorYellowBck);
    m_cursorOrange0Pane->setAnimation(m_cursorYellowBck);
    m_cursorOrange1Pane->setAnimation(m_cursorYellowBck);
    m_cursorOrange2Pane->setAnimation(m_cursorYellowBck);
    m_cursorOrange0Pane->setAnimation(m_cursorYellowBpk);
    m_cursorOrange1Pane->setAnimation(m_cursorYellowBpk);
    m_cursorOrange2Pane->setAnimation(m_cursorYellowBpk);
    m_cursorOrangeScrn->search('flash')->setAnimation(m_cursorYellowBpk);

    m_cursorOrange2Brk->searchUpdateMaterialID(m_cursorOrangeScrn);
    m_cursorOrangeBrk->searchUpdateMaterialID(m_cursorOrangeScrn);
    m_cursorOrange0Pane->setAnimation(m_cursorOrange2Brk);
    m_cursorOrange1Pane->setAnimation(m_cursorOrange2Brk);
    m_cursorOrange2Pane->setAnimation(m_cursorOrange2Brk);
    m_cursorOrange0Pane->setAnimation(m_cursorOrangeBrk);
    m_cursorOrange1Pane->setAnimation(m_cursorOrangeBrk);
    m_cursorOrange2Pane->setAnimation(m_cursorOrangeBrk);
    m_cursorOrange2Brk->setFrame(0.0f);
    m_cursorOrangeBrk->setFrame(0.0f);

    m_cursorOrangeScrn->animation();
    m_cursorOrangeScrn->setUserInfo('n_43');
    m_cursorOrangeAllPane->setUserInfo(' ');
}

/* 8049EB64-8049EDA8 000B24 0244+00 1/1 0/0 0/0 .text            playAnime__19daBoomerang_sight_cFii
 */
int daBoomerang_sight_c::playAnime(int param_0, int param_1) {
    int i;
    f32* var_r30 = field_0x98;
    f32* var_r29 = field_0xb0;
    u8* alpha_p = m_alpha;

    for (i = 0; i < BOOMERANG_LOCK_MAX; i++, var_r30++, var_r29++, alpha_p++) {
        *var_r30 += 1.1f;
        if (*var_r30 >= 50.0f) {
            *var_r30 += -29.0f;
        }

        *var_r29 += 1.1f;
        if (*var_r29 >= (f32)m_cursorYellow2Brk->getFrameMax()) {
            *var_r29 -= (f32)m_cursorYellow2Brk->getFrameMax();
        }

        if (param_0 <= i && param_1 > i) {
            cLib_chaseUC(alpha_p, 0xFF, 30);
        } else {
            cLib_chaseUC(alpha_p, 0, 30);
            if (*alpha_p == 0 && i == 0) {
                m_redSight = false;
            }
        }
    }

    if (*var_r30 < 21.0f) {
        *var_r30 = 21.0f;
    }

    *var_r30 += 0.9f;
    if (*var_r30 >= 50.0f) {
        *var_r30 += -29.0f;
    }

    *var_r29 += 0.9f;
    if (*var_r29 >= m_cursorYellow2Brk->getFrameMax()) {
        *var_r29 -= (f32)m_cursorYellow2Brk->getFrameMax();
    }

    if (mReserve != 0) {
        return cLib_chaseUC(alpha_p, 0x80, 30);
    }

    return cLib_chaseUC(alpha_p, 0, 30);
}

/* 8049EDA8-8049EDE8 000D68 0040+00 2/2 0/0 0/0 .text            initFrame__19daBoomerang_sight_cFi
 */
void daBoomerang_sight_c::initFrame(int i_no) {
    m_alpha[i_no] = 0;
    field_0x98[i_no] = 4.0f;
    field_0xb0[i_no] = 0.0f;

    if (i_no == 0) {
        m_redSight = true;
    }
}

/* 8049EDE8-8049EE8C 000DA8 00A4+00 1/1 0/0 0/0 .text copyNumData__19daBoomerang_sight_cFi */
void daBoomerang_sight_c::copyNumData(int i_no) {
    int next_no = i_no + 1;

    u8 temp_alpha = m_alpha[i_no];
    m_alpha[i_no] = m_alpha[next_no];
    m_alpha[next_no] = temp_alpha;

    f32 temp_frame;
    temp_frame = field_0x98[i_no];
    field_0x98[i_no] = field_0x98[next_no];
    field_0x98[next_no] = temp_frame;

    temp_frame = field_0xb0[i_no];
    field_0xb0[i_no] = field_0xb0[next_no];
    field_0xb0[next_no] = temp_frame;

    cXyz temp_pos = m_pos[i_no];
    m_pos[i_no] = m_pos[next_no];
    m_pos[next_no] = temp_pos;
}

/* 8049EEC8-8049EF60 000E88 0098+00 1/1 0/0 0/0 .text setSight__19daBoomerang_sight_cFPC4cXyzi */
void daBoomerang_sight_c::setSight(const cXyz* i_pos, int i_no) {
    if (m_alpha[i_no]) {
        if (i_pos != NULL) {
            m_pos[i_no] = *i_pos;
        }

        Vec proj;
        mDoLib_project(&m_pos[i_no], &proj);
        m_proj_posX[i_no] = proj.x;
        m_proj_posY[i_no] = proj.y;
    }
}

/* 8049EF60-8049F280 000F20 0320+00 1/0 0/0 0/0 .text            draw__19daBoomerang_sight_cFv */
void daBoomerang_sight_c::draw() {
    J2DGrafContext* ctx = dComIfGp_getCurrentGrafPort();
    u8* alpha_p = m_alpha;

    J2DPane* cursor0_pane;
    J2DPane* cursor1_pane;
    J2DPane* cursor2_pane;
    J2DScreen* screen;
    J2DPane* cursorAll_pane;
    f32 var_f30;
    f32 var_f31;

    for (int i = 0; i < 6; i++, alpha_p++) {
        if (*alpha_p != 0) {
            m_cursorYellowBck->setFrame(field_0x98[i]);
            m_cursorYellowBpk->setFrame(field_0x98[i] > 21.0f ? 21.0f : field_0x98[i]);

            if (i == 5) {
                m_cursorYellow2Brk->setFrame(field_0xb0[i]);
                cursor0_pane = m_cursorYellow0Pane;
                cursor1_pane = m_cursorYellow1Pane;
                cursor2_pane = m_cursorYellow2Pane;
                screen = m_cursorYellowScrn;
                cursorAll_pane = m_cursorYellowAllPane;
                var_f31 = 80.0f;
            } else if (i == 0 && m_redSight) {
                m_cursorRed2Brk->setFrame(field_0xb0[i]);
                cursor0_pane = m_cursorRed0Pane;
                cursor1_pane = m_cursorRed1Pane;
                cursor2_pane = m_cursorRed2Pane;
                screen = m_cursorRedScrn;
                cursorAll_pane = m_cursorRedAllPane;
                var_f31 = 35.0f;
            } else {
                m_cursorOrange2Brk->setFrame(field_0xb0[i]);
                cursor0_pane = m_cursorOrange0Pane;
                cursor1_pane = m_cursorOrange1Pane;
                cursor2_pane = m_cursorOrange2Pane;
                screen = m_cursorOrangeScrn;
                cursorAll_pane = m_cursorOrangeAllPane;
                var_f31 = 35.0f;
            }

            screen->animation();
            cursorAll_pane->scale(0.6f, 0.6f);
            cursorAll_pane->translate(m_proj_posX[i], m_proj_posY[i]);
            field_0x98[i] = field_0x98[i];

            if (!(field_0x98[i] < 15.0f)) {
                if (field_0x98[i] < 21.0f) {
                    var_f30 = var_f31 * (field_0x98[i] - 15.0f) * 0.16666667f;
                } else if (i == 5) {
                    var_f30 = var_f31 * (*alpha_p * 0.00390625f + 0.5f);
                } else {
                    var_f30 = var_f31 * (*alpha_p * 0.0019607844f + 0.5f);
                }

                cursor0_pane->translate(0.0f, -var_f30);
                cursor1_pane->translate(var_f30 * cM_fcos(2.6179938f), var_f30 * cM_fsin(2.6179938f));
                cursor2_pane->translate(var_f30 * cM_fcos(0.5235988f), var_f30 * cM_fsin(0.5235988f));
            }

            screen->draw(0.0f, 0.0f, ctx);
        }
    }
}

/* 8049F280-8049F360 001240 00E0+00 1/1 0/0 0/0 .text windModelCallBack__13daBoomerang_cFv */
void daBoomerang_c::windModelCallBack() {
    mDoMtx_stack_c::YrotS(shape_angle.y);
    mDoMtx_stack_c::ZrotM(-shape_angle.z);
    mDoMtx_stack_c::XrotM(-shape_angle.x);
    mDoMtx_stack_c::YrotM(-shape_angle.y);
    mDoMtx_stack_c::concat(J3DSys::mCurrentMtx);

    mDoMtx_stack_c::get()[0][3] = J3DSys::mCurrentMtx[0][3];
    mDoMtx_stack_c::get()[1][3] = J3DSys::mCurrentMtx[1][3];
    mDoMtx_stack_c::get()[2][3] = J3DSys::mCurrentMtx[2][3];

    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    mp_shippuModel->setAnmMtx(4, mDoMtx_stack_c::get());
}

/* 8049F360-8049F39C 001320 003C+00 1/1 0/0 0/0 .text daBoomeang_windModelCallBack__FP8J3DJointi
 */
static int daBoomeang_windModelCallBack(J3DJoint* i_joint, int param_1) {
    daBoomerang_c* boomerang = (daBoomerang_c*)j3dSys.getModel()->getUserArea();
    if (param_1 == 0) {
        boomerang->windModelCallBack();
    }

    return 1;
}

/* 8049F39C-8049F5D4 00135C 0238+00 1/1 0/0 0/0 .text            draw__13daBoomerang_cFv */
int daBoomerang_c::draw() {
    if (!checkStateFlg0(FLG0_4)) {
        for (int i = 0; i < BOOMERANG_LOCK_MAX; i++) {
            if (m_sight.getAlpha(i) != 0) {
                if (m_lockActors[i] != NULL) {
                    m_lockActors[i] = fopAcM_SearchByID(m_lockActorIDs[i]);
                    if (m_lockActors[i] == NULL) {
                        pushLockList(i);
                        i--;
                    } else {
                        m_sight.setSight(&m_lockActors[i]->eyePos, i);
                    }
                } else {
                    if (field_0x718[i] != 0) {
                        m_sight.setSight(&m_lockActorsPositions[i], i);
                    } else {
                        m_sight.setSight(NULL, i);
                    }
                }
            }
        }

        if (m_sight.getAlpha(5) != 0) {
            if (field_0x6d8 != NULL) {
                field_0x6d8 = fopAcM_SearchByID(field_0x6d4);
            }

            if (field_0x6d8 != NULL) {
                m_sight.setSight(&field_0x6d8->eyePos, 5);
            } else {
                m_sight.setSight(NULL, 5);
            }
        }

        if (!dComIfGp_event_runCheck()) {
            dComIfGd_set2DXlu(&m_sight);
        }
    }

    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mp_boomModel, &tevStr);
    mDoExt_modelUpdateDL(mp_boomModel);
    daMirror_c::entry(mp_boomModel);

    if (fopAcM_GetParam(this) != 0) {
        g_env_light.setLightTevColorType_MAJI(mp_shippuModel, &tevStr);
        mDoExt_modelEntryDL(mp_shippuModel);
        daMirror_c::entry(mp_shippuModel);
    } else if (dComIfGp_checkPlayerStatus0(0, 0x80000)) {
        g_env_light.setLightTevColorType_MAJI(mp_setboomEfModel, &tevStr);
        mDoExt_modelUpdateDL(mp_setboomEfModel);
    }

    return 1;
}

/* 8049F5D4-8049F5F4 001594 0020+00 1/0 0/0 0/0 .text            daBoomerang_Draw__FP13daBoomerang_c
 */
static int daBoomerang_Draw(daBoomerang_c* i_this) {
    return i_this->draw();
}

/* 8049F5F4-8049F63C 0015B4 0048+00 1/1 0/0 0/0 .text
 * lockLineCallback__13daBoomerang_cFP10fopAc_ac_c              */
void daBoomerang_c::lockLineCallback(fopAc_ac_c* i_actor) {
    if (i_actor != NULL && fopAcM_GetName(i_actor) != PROC_Obj_glowSphere &&
        fopAcM_GetName(i_actor) != PROC_E_VT && fopAcM_GetName(i_actor) != PROC_OBJ_BRG)
    {
        setLockActor(i_actor, TRUE);
    }
}

/* 8049F63C-8049F660 0015FC 0024+00 1/1 0/0 0/0 .text
 * daBoomerang_lockLineCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daBoomerang_lockLineCallback(fopAc_ac_c* i_actorP1, dCcD_GObjInf* param_1,
                                         fopAc_ac_c* i_actorP2, dCcD_GObjInf* param_3) {
    daBoomerang_c* boomerang = (daBoomerang_c*)i_actorP1;
    boomerang->lockLineCallback(i_actorP2);
}

/* 8049F660-8049F6EC 001620 008C+00 1/1 0/0 0/0 .text
 * moveLineCallback__13daBoomerang_cFP10fopAc_ac_c              */
void daBoomerang_c::moveLineCallback(fopAc_ac_c* i_actor) {
    if (i_actor != NULL) {
        for (int i = 0; i < BOOMERANG_LOCK_MAX; i++) {
            if (m_lockActors[i] == i_actor) {
                m_lockActorIDs[i] = fpcM_ERROR_PROCESS_ID_e;
                m_lockActors[i] = NULL;

                if (i == field_0x951) {
                    field_0x957 = 10;
                    m_moveTargetPos = i_actor->eyePos;
                    m_movePos = current.pos;
                }
            }
        }
    }
}

/* 8049F6EC-8049F710 0016AC 0024+00 1/1 0/0 0/0 .text
 * daBoomerang_moveLineCallback__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf */
static void daBoomerang_moveLineCallback(fopAc_ac_c* i_actorP1, dCcD_GObjInf* param_1,
                                         fopAc_ac_c* i_actorP2, dCcD_GObjInf* param_3) {
    daBoomerang_c* boomerang = (daBoomerang_c*)i_actorP1;
    boomerang->moveLineCallback(i_actorP2);
}

/* 8049F710-8049F818 0016D0 0108+00 3/3 0/0 0/0 .text            pushLockList__13daBoomerang_cFi */
void daBoomerang_c::pushLockList(int param_0) {
    if (param_0 == 0) {
        m_sight.offRedSight();
    }

    if (fopAcM_GetParam(this) == 1 && param_0 < field_0x951) {
        field_0x951--;
    }

    int i;
    for (i = param_0; i < m_lockCnt - 1; i++) {
        m_lockActorIDs[i] = m_lockActorIDs[i + 1];
        m_lockActors[i] = m_lockActors[i + 1];
        m_lockActorsPositions[i] = m_lockActorsPositions[i + 1];
        field_0x718[i] = field_0x718[i + 1];
        m_sight.copyNumData(i);
    }

    m_lockActorIDs[i] = fpcM_ERROR_PROCESS_ID_e;
    m_lockActors[i] = NULL;
    field_0x718[i] = 0;

    if (m_lockCnt != 0) {
        m_lockCnt--;
    }
}

/* 8049F818-8049F874 0017D8 005C+00 1/0 0/0 0/0 .text
 * cancelLockActorBase__13daBoomerang_cFP10fopAc_ac_c           */
void daBoomerang_c::cancelLockActorBase(fopAc_ac_c* i_actor) {
    for (int i = 0; i < m_lockCnt; i++) {
        if (m_lockActors[i] == i_actor) {
            pushLockList(i);
            break;
        }
    }
}

/* 8049F874-8049F8B0 001834 003C+00 1/0 0/0 0/0 .text
 * setAimActorBase__13daBoomerang_cFP10fopAc_ac_c               */
void daBoomerang_c::setAimActorBase(fopAc_ac_c* i_actor) {
    if (m_lockCnt == 0) {
        onStateFlg0(FLG0_4);
        setLockActor(i_actor, FALSE);
    }
}

/* 8049F8B0-8049F9A4 001870 00F4+00 2/2 0/0 0/0 .text setLockActor__13daBoomerang_cFP10fopAc_ac_ci
 */
int daBoomerang_c::setLockActor(fopAc_ac_c* i_actor, BOOL i_isLockline) {
    if (m_lockCnt >= BOOMERANG_LOCK_MAX) {
        return 0;
    }

    fpc_ProcID lock_actor_id = fopAcM_GetID(i_actor);
    for (int i = 0; i < m_lockCnt; i++) {
        if (m_lockActorIDs[i] == lock_actor_id) {
            return 0;
        }
    }

    if (i_isLockline) {
        f32 sqdist = i_actor->eyePos.abs2(current.pos);
        if (sqdist > m_lockLineSqdist) {
            return 0;
        }

        m_lockLineSqdist = sqdist;
        m_lockLineActorID = lock_actor_id;
    } else {
        m_lockActorIDs[m_lockCnt] = lock_actor_id;
        m_lockActors[m_lockCnt] = i_actor;
        m_sight.initFrame(m_lockCnt);
        m_lockCnt++;
    }

    return 1;
}

/* 8049F9A4-8049F9F0 001964 004C+00 3/3 0/0 0/0 .text            resetLockActor__13daBoomerang_cFv
 */
void daBoomerang_c::resetLockActor() {
    for (int i = 0; i < BOOMERANG_LOCK_MAX; i++) {
        m_lockActorIDs[i] = fpcM_ERROR_PROCESS_ID_e;
        m_lockActors[i] = NULL;
        field_0x718[i] = 0;
    }

    m_lockCnt = 0;
    field_0x951 = 0;
}

/* 8049F9F0-8049FAA4 0019B0 00B4+00 2/2 0/0 0/0 .text            setRoomInfo__13daBoomerang_cFv */
void daBoomerang_c::setRoomInfo() {
    m_gndChk.SetPos(&current.pos);
    mGroundY = dComIfG_Bgsp().GroundCross(&m_gndChk);

    int roomNo;
    if (mGroundY != -1000000000.0f) {
        roomNo = dComIfG_Bgsp().GetRoomId(m_gndChk);
        tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(m_gndChk);
    } else {
        roomNo = dComIfGp_roomControl_getStayNo();
    }

    tevStr.room_no = roomNo;
    m_reverb = dComIfGp_getReverb(roomNo);
    m_colliderStts.SetRoomId(roomNo);
    fopAcM_SetRoomNo(this, roomNo);
}

/* 8049FAA4-8049FBAC 001A64 0108+00 2/2 0/0 0/0 .text            setKeepMatrix__13daBoomerang_cFv */
void daBoomerang_c::setKeepMatrix() {
    daAlink_c* player = daAlink_getAlinkActorClass();

    mDoMtx_stack_c::copy(player->getLeftItemMatrix());
    mDoMtx_stack_c::transM(32.0f, -5.0f, -6.0f);
    mDoMtx_stack_c::XYZrotM(cM_deg2s(-4.0f), cM_deg2s(39.0f), cM_deg2s(-9.0f));
    mp_boomModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mp_shippuModel->setBaseTRMtx(player->getLeftItemMatrix());

    mDoMtx_stack_c::multVecZero(&current.pos);
    daAlink_c::simpleAnmPlay(m_waitEffBtk);

    mp_setboomEfModel->setBaseTRMtx(player->getLeftItemMatrix());
}

/* 8049FBAC-8049FCD0 001B6C 0124+00 1/1 0/0 0/0 .text            setMoveMatrix__13daBoomerang_cFv */
void daBoomerang_c::setMoveMatrix() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mp_shippuModel->setBaseTRMtx(mDoMtx_stack_c::get());

    daAlink_c::simpleAnmPlay(m_windBtk);

    m_shippuFrame += 1.0f;
    s32 maxFrame = m_shippuBck.getBckAnm()->getFrameMax();
    if (m_shippuFrame >= maxFrame) {
        m_shippuFrame -= maxFrame;
    }

    m_shippuBck.entry(mp_shippuModel->getModelData(), m_shippuFrame);
    mp_shippuModel->calc();

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::YrotM(m_modelRotY);
    mDoMtx_stack_c::XrotM(0x7FFF);

    mp_boomModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 8049FCD0-8049FD6C 001C90 009C+00 1/1 0/0 0/0 .text            setRotAngle__13daBoomerang_cFv */
void daBoomerang_c::setRotAngle() {
    s16 prev_rot = m_modelRotY;

    m_modelRotY -= 0x1F00;
    if (prev_rot >= 0 && m_modelRotY < 0) {
        fopAcM_seStart(this, JA_SE_LK_BOOM_FLY, 0);
    }
}

/* 8049FD6C-8049FE6C 001D2C 0100+00 2/2 0/0 0/0 .text            setAimPos__13daBoomerang_cFv */
void daBoomerang_c::setAimPos() {
    if (checkStateFlg0(FLG0_1)) {
        if (fopAcM_GetParam(this) != 1)
            return;
        m_aimPos = daAlink_getAlinkActorClass()->getBoomerangCatchPos();
        return;
    }

    if (field_0x957 != 0) {
        m_aimPos = m_moveTargetPos;
        return;
    }

    for (int i = field_0x951; i < m_lockCnt; i++, field_0x951++) {
        if (m_lockActors[i] != NULL) {
            m_aimPos = m_lockActors[i]->eyePos;
            return;
        }

        if (field_0x718[i] != 0) {
            m_aimPos = m_lockActorsPositions[i];
            return;
        }
    }
}

/* 8049FE6C-804A006C 001E2C 0200+00 2/2 0/0 0/0 .text checkBgHit__13daBoomerang_cFP4cXyzP4cXyz */
void daBoomerang_c::checkBgHit(cXyz* i_start, cXyz* i_end) {
    m_lineChk.Set(i_start, i_end, this);
    if (dComIfG_Bgsp().LineCross(&m_lineChk)) {
        current.pos = m_lineChk.GetCross();
        onStateFlg0(FLG0_1);
        field_0x957 = 0;
        current.angle.y -= -0x8000;
        shape_angle.y = current.angle.y;
        resetLockActor();
        return;
    }

    if (field_0x962 != 0) {
        return;
    }

    m_boomLineChk.Set(i_start, i_end, this);
    if (!dComIfG_Bgsp().LineCross(&m_boomLineChk))
        return;

    if (checkStateFlg0(FLG0_200)) {
        return;
    }

    if (field_0x718[field_0x951] != 0) {
        if (m_lockActorsPositions[field_0x951].abs2(m_boomLineChk.GetCross()) < 2500.0f) {
            if (field_0x951 < m_lockCnt - 1) {
                field_0x718[field_0x951] = 0;
                field_0x951++;
                return;
            }
        }
    }

    if (field_0x957 == 0) {
        if (checkStateFlg0(FLG0_10) == 0 && m_lockCnt > field_0x951) {
            return;
        }

        current.pos = m_boomLineChk.GetCross();
        onStateFlg0(FLG0_1);
        field_0x957 = 0;
        current.angle.y -= -0x8000;

        if (dBgS_CheckBRoofPoly(m_boomLineChk)) {
            current.angle.x *= -1;
            current.pos.y -= 30.0f;
        }

        shape_angle.y = current.angle.y;
        resetLockActor();
    }
}

/* 804A006C-804A012C 00202C 00C0+00 1/1 0/0 0/0 .text setEffectTraceMatrix__13daBoomerang_cFPUlUs
 */
JPABaseEmitter* daBoomerang_c::setEffectTraceMatrix(u32* i_emitterID, u16 i_name) {
    *i_emitterID = dComIfGp_particle_set(*i_emitterID, i_name, &current.pos, &tevStr);

    JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(*i_emitterID);
    if (emitter != NULL) {
        emitter->setGlobalRTMatrix(mp_boomModel->getBaseTRMtx());
    }

    return emitter;
}

UNK_REL_DATA;
UNK_REL_BSS;

/* 804A2D10-804A2D14 000040 0001+03 0/0 0/0 0/0 .bss             l_HIO */
static daBoomerang_HIO_c0 l_HIO;

/* 804A012C-804A082C 0020EC 0700+00 1/1 0/0 0/0 .text            setEffect__13daBoomerang_cFv */
void daBoomerang_c::setEffect() {
    static JGeometry::TVec3<f32> effDirection(0.0f, 1.0f, 0.0f);
    static JGeometry::TVec3<f32> effScale0(1.5f, 1.5f, 1.5f);
    static JGeometry::TVec3<f32> effScaleSand(1.8f, 1.8f, 1.8f);
    static JGeometry::TVec3<f32> effScaleGrass(1.2f, 1.2f, 1.2f);

    if (fopAcM_GetParam(this) != 0) {
        setEffectTraceMatrix(&field_0x96c, 0x1FE);
        setEffectTraceMatrix(&field_0x970, 0x1FF);
        field_0x974 = dComIfGp_particle_set(field_0x974, 0x24C, &current.pos, &tevStr);

        cXyz no_crr_pos(current.pos);
        m_acch.CrrPos(dComIfG_Bgsp());
        current.pos = no_crr_pos;

        cXyz eff_center(mp_shippuModel->getAnmMtx(4)[0][3],
                  mp_shippuModel->getAnmMtx(5)[1][3],
                  mp_shippuModel->getAnmMtx(4)[2][3]);

        cXyz* eff_pos = NULL;
        cM3dGPla plane;
        if (m_acch.ChkWaterHit() && dComIfG_Bgsp().GetPolyAtt0(m_acch.m_wtr) != 6) {
            if (m_acch.m_wtr.GetHeight() > m_acch.GetGroundH() && m_acch.m_wtr.GetHeight() > eff_center.y) {
                eff_center.y = m_acch.m_wtr.GetHeight();
                eff_pos = &eff_center;
                dComIfG_Bgsp().GetTriPla(m_acch.m_wtr, &plane);
            }
        }

        if (eff_pos == NULL && m_acch.GetGroundH() > eff_center.y) {
            eff_center.y = m_acch.GetGroundH();
            eff_pos = &eff_center;
            dComIfG_Bgsp().GetTriPla(m_acch.m_gnd, &plane);
        }

        m_papo.setEffectCenter(&tevStr, &eff_center, 4, 0x60000, eff_pos, &current.angle, NULL, fopAcM_GetRoomNo(this), 0.0f, speedF);

        for (int i = 0; i < 2; i++) {
            u8 eff_type = m_papo.getCenterEffType(i);
            for (int j = 0; j < 4; j++) {
                JPABaseEmitter* emitter = m_papo.getCenterEmitter(i, j);
                if (emitter != NULL) {
                    if (eff_type == 0) {
                        emitter->setVolumeSize(60);
                        emitter->setLifeTime(20);
                        emitter->setRate(3.0f);
                        emitter->setAwayFromAxisSpeed(5.0f);
                        emitter->setDirectionalSpeed(0.0f);
                        emitter->setGlobalParticleScale(effScale0);
                    } else if (eff_type == 1) {
                        emitter->setVolumeSize(50);
                        emitter->setAwayFromAxisSpeed(10.0f);
                        emitter->setDirectionalSpeed(10.0f);
                        emitter->setDirection(effDirection);
                        emitter->setGlobalParticleScale(effScaleGrass);
                    } else if (eff_type == 2) {
                        emitter->setDirection(effDirection);
                        emitter->setGlobalScale(effScale0);
                    } else if (eff_type == 3) {
                        emitter->setVolumeSize(60);
                        emitter->setLifeTime(0xF);
                        emitter->setAwayFromAxisSpeed(3.0f);
                        emitter->setDirection(effDirection);
                        emitter->setGlobalParticleScale(effScaleSand);
                    } else if (eff_type == 4) {
                        emitter->setVolumeSize(60);
                        emitter->setAwayFromAxisSpeed(5.0f);
                        emitter->setDirection(effDirection);
                        emitter->setGlobalParticleScale(effScale0);
                    }
                }
            }
        }

        if (eff_pos != NULL) {
            csXyz eff_angle(cM_atan2s(plane.mNormal.absXZ(), plane.mNormal.y), 0, 0);
            if (eff_angle.x != 0) {
                eff_angle.y = plane.mNormal.atan2sX_Z();
            }

            field_0x978 = dComIfGp_particle_set(field_0x978, 0x256, eff_pos, &tevStr, &eff_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
            field_0x97c = dComIfGp_particle_set(field_0x97c, 0x257, eff_pos, &tevStr, &eff_angle, NULL, 0xFF, NULL, -1, NULL, NULL, NULL);
        }

        cXyz wind_cyl_pos(current.pos.x, eff_center.y, current.pos.z);
        m_windAtCyl.SetC(wind_cyl_pos);

        f32 wind_cyl_height = current.pos.y - eff_center.y;
        if (wind_cyl_height < 0.01f) {
            wind_cyl_height = 0.01f;
        }

        m_windAtCyl.SetH(wind_cyl_height);
    }

    if (dComIfGp_checkPlayerStatus0(0, 0x80000) && fopAcM_GetParam(this) == 0) {
        setEffectTraceMatrix(&field_0x968, 0x740);
    } else {
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(field_0x968);
        if (emitter != NULL) {
            emitter->stopDrawParticle();
        }
    }
}

/* 804A0874-804A0F0C 002834 0698+00 2/0 0/0 0/0 .text            procWait__13daBoomerang_cFv */
// NONMATCHING - small regalloc
int daBoomerang_c::procWait() {
    daAlink_c* player = daAlink_getAlinkActorClass();
    speedF = 0.0f;
    setKeepMatrix();

    if (fopAcM_GetParam(this) == 1) {
        speedF = player->getBoomSpeed();
        field_0x988 = speedF;
        m_windBtk->setFrame(0.0f);
        m_shippuFrame = 0.0f;

        m_atCps.ResetAtHit();
        m_windAtCyl.ResetAtHit();

        field_0x957 = 0;
        offStateFlg0(daBoomerang_FLG0(FLG0_80 | FLG0_2 | FLG0_1));
        field_0x951 = 0;
        setAimPos();

        if (m_lockCnt == 0) {
            resetLockActor();
            f32 fly_max = player->getBoomFlyMax();

            m_aimPos.set(current.pos.x + (fly_max * cM_ssin(current.angle.y) * cM_scos(current.angle.x)),
                         current.pos.y + (fly_max * cM_ssin(current.angle.x)),
                         current.pos.z + (fly_max * cM_scos(current.angle.y) * cM_scos(current.angle.x)));
        } else {
            cXyz sp24 = m_aimPos - current.pos;
            current.angle.x = sp24.atan2sY_XZ();
            current.angle.y = sp24.atan2sX_Z();
        }
    
        m_modelRotY = 0;

        if (m_lockCnt == 0) {
            onStateFlg0(FLG0_10);
        } else {
            offStateFlg0(FLG0_10);
        }
    
        current.angle.y += 0x1830;
        shape_angle.x = current.angle.x;
        shape_angle.y = current.angle.y;
        shape_angle.z = 0x1000;
        field_0x958 = 0x1000;

        m_procFn = &daBoomerang_c::procMove;
        offStateFlg0(FLG0_20);

        cXyz line_chk_start(player->current.pos.x, 60.0f + player->current.pos.y, player->current.pos.z);
        checkBgHit(&line_chk_start, &current.pos);

        field_0x960 = 10;
        field_0x954 = 30;
        field_0x955 = 0;
        field_0x962 = player->getBoomBgThroughTime();

        procMove();
    } else if (dCam_getBody()->Mode() != 8) {
        if (dComIfGp_checkPlayerStatus0(0, 0x80000) && player->getAtnActor() != NULL && m_lockCnt < BOOMERANG_LOCK_MAX) {
            fpc_ProcID atn_actor_id = fopAcM_GetID(player->getAtnActor());
            
            int var_r27 = 0;
            while (var_r27 < m_lockCnt) {
                if (m_lockActorIDs[var_r27] == atn_actor_id) {
                    break;
                }
                var_r27 += 1;
            }

            if (var_r27 == m_lockCnt) {
                m_lockActors[m_lockCnt] = player->getAtnActor();
                m_lockActorIDs[m_lockCnt] = atn_actor_id;

                m_sight.initFrame(m_lockCnt);
                mDoAud_seStart(l_lockSeFlg[m_lockCnt], NULL, 0, 0);
                m_lockCnt++;
            }
        } else if (!dComIfGp_checkPlayerStatus0(0, 0x80000)) {
            resetLockActor();
        }

        m_lockLineActorID = fpcM_ERROR_PROCESS_ID_e;
    } else if (player->checkBoomerangLockAccept()) {
        int sp10 = 0;

        fopAc_ac_c* lock_line_actor;
        if (m_lockLineActorID != fpcM_ERROR_PROCESS_ID_e) {
            lock_line_actor = fopAcM_SearchByID(m_lockLineActorID);
        } else {
            lock_line_actor = NULL;
        }

        if (lock_line_actor != NULL && checkStateFlg0(FLG0_100)) {
            m_lockActorIDs[m_lockCnt] = m_lockLineActorID;
            m_lockActors[m_lockCnt] = lock_line_actor;
            m_sight.initFrame(m_lockCnt);
            mDoAud_seStart(l_lockSeFlg[m_lockCnt], NULL, 0, 0);
            m_lockCnt++;
            sp10 = 1;
        } else if (checkStateFlg0(FLG0_400) && m_lockCnt < BOOMERANG_LOCK_MAX) {
            m_sight.initFrame(m_lockCnt);
            m_lockActorsPositions[m_lockCnt] = field_0x99c;
            field_0x718[m_lockCnt] = 1;
            mDoAud_seStart(l_lockSeFlg[m_lockCnt], NULL, 0, 0);
            m_lockCnt++;
        }

        if (m_lockCnt < BOOMERANG_LOCK_MAX && lock_line_actor != NULL && sp10 == 0) {
            m_sight.onReserve();
            field_0x6d4 = m_lockLineActorID;
            field_0x6d8 = lock_line_actor;
        }
    
        camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
        f32 cps_size;
        if (field_0x6d8 != NULL) {
            cps_size = 30.0f;
        } else {
            cps_size = 15.0f;
        }
    
        m_atCps.cM3dGCps::Set(*fopCamM_GetEye_p(camera), *player->getLineTopPosP(), cps_size);
        m_atCps.CalcAtVec();
        dComIfG_Ccsp()->Set(&m_atCps);

        m_lockLineSqdist = (100.0f + player->getBoomLockMax()) * (100.0f + player->getBoomLockMax());
        m_lockLineActorID = fpcM_ERROR_PROCESS_ID_e;
        offStateFlg0(FLG0_400);

        if (player->checkBoomerangLockTrigger()) {
            onStateFlg0(FLG0_100);
            if (player->checkItemSightBgHit()) {
                onStateFlg0(FLG0_400);
            }
            field_0x99c = *player->getBoomerangLockPosP();
        } else {
            offStateFlg0(FLG0_100);
        }
    } else {
        m_lockLineActorID = fpcM_ERROR_PROCESS_ID_e;
    }

    if (dComIfGp_checkPlayerStatus0(0, 0x80000)) {
        m_sound.startLevelSound(Z2SE_BOOM_POWER_RESUME, 0, -1);
    }

    return 1;
}

/* 804A0F0C-804A1814 002ECC 0908+00 2/1 0/0 0/0 .text            procMove__13daBoomerang_cFv */
int daBoomerang_c::procMove() {
    daAlink_c* player = daAlink_getAlinkActorClass();

    if (field_0x957 != 0) {
        speedF = 40.0f;
        field_0x957--;
        if (field_0x957 == 0) {
            onStateFlg0(FLG0_2);
            offStateFlg0(FLG0_10);
        }
        cLib_addCalc(&m_shippuSize, 2.0f, 0.5f, 0.5f, 0.1f);
    } else {
        if (checkStateFlg0(FLG0_80)) {
            speedF = player->getBoomCatchSpeed();
        } else {
            speedF = field_0x988;
        }
        cLib_addCalc(&m_shippuSize, 1.0f, 0.5f, 0.5f, 0.1f);
    }

    Vec shippu_size = {0.0f, 1.0f, 0.0f};
    shippu_size.x = m_shippuSize;
    shippu_size.z = m_shippuSize;
    mp_shippuModel->setBaseScale(shippu_size);

    offStateFlg0(daBoomerang_FLG0(FLG0_200 | FLG0_80));
    setRotAngle();
    setAimPos();

    if (checkStateFlg0(FLG0_40)) {
        offStateFlg0(FLG0_40);
        if (player->returnBoomerang(checkStateFlg0(FLG0_20))) {
            fopAcM_SetParam(this, 0);
            m_procFn = &daBoomerang_c::procWait;
            offStateFlg0(daBoomerang_FLG0(FLG0_400 | FLG0_100 | FLG0_20 | FLG0_4));
            m_lockLineActorID = fpcM_ERROR_PROCESS_ID_e;
            current.pos = m_aimPos;
            setMoveMatrix();
            resetLockActor();
        } else {
            fopAcM_delete(this);
        }

        return 1;
    }

    cXyz sp38 = m_aimPos - current.pos;
    f32 temp_f30 = sp38.abs();
    cXyz sp2C;

    if (temp_f30 > 0.1f) {
        sp2C = sp38 / temp_f30;
    } else {
        sp2C = sp38;
    }

    s16 var_r26 = sp2C.atan2sX_Z();
    s16 var_r28 = var_r26 - current.angle.y;

    if (checkStateFlg0(FLG0_2)) {
        offStateFlg0(FLG0_2);
        if (checkStateFlg0(FLG0_1)) {
            current.angle.y = var_r26 + 0x3000;
        } else if ((s16)(var_r26 - current.angle.y) >= 0) {
            current.angle.y = var_r26 - 0x3000;
        } else {
            current.angle.y = var_r26 + 0x3000;
        }
        var_r28 = var_r26 - current.angle.y;
    }

    if (field_0x960 != 0) {
        field_0x960--;
    }

    if (field_0x954 != 0) {
        field_0x954--;
        if (field_0x954 == 0) {
            field_0x954 = 30;

            field_0x955++;
            if (field_0x955 > 48) {
                field_0x955 = 48;
            }
        }
    }

    bool sp9 = field_0x960 == 0 && (current.pos.abs2(player->getBoomerangCatchPos()) < 4.0f * speedF * speedF);

    if ((checkStateFlg0(FLG0_1) || sp9) && (sp9 || temp_f30 < 2.0f * speedF)) {
        field_0x957 = 0;
        onStateFlg0(daBoomerang_FLG0(FLG0_40 | FLG0_1));
        resetLockActor();
    }

    if (!checkStateFlg0(FLG0_1) && field_0x957 == 0 && !checkStateFlg0(FLG0_10) && m_lockCnt <= field_0x951) {
        onStateFlg0(daBoomerang_FLG0(FLG0_2 | FLG0_1));
        resetLockActor();
        offStateFlg0(FLG0_10);
    }

    if (checkStateFlg0(FLG0_2)) {
        current.angle.y = var_r26;
        field_0x955 = 0;
        field_0x954 = 30;
    } else if (field_0x957 != 0) {
        cLib_chaseAngleS(&current.angle.y, var_r26, 0x2000);
    } else {
        f32 var_f31 = 20.0f - ((2.0f * temp_f30) / speedF);
        if (var_f31 < 0.0f) {
            var_f31 = 0.0f;
        } else if (var_f31 > 18.0f) {
            var_f31 = 20.0f + (40.0f * (var_f31 - 18.0f));
        }

        s16 var_r27 = 1024.0f + (256.0f * var_f31);
        if (var_r27 > 0x4000) {
            var_r27 = 0x4000;
        } else {
            var_r27 += field_0x955 * 256;
            if (var_r27 > 0x4000) {
                var_r27 = 0x4000;
            }
        }

        if (var_r28 > var_r27) {
            var_r28 = var_r27;
        } else if (var_r28 < -var_r27) {
            var_r28 = -var_r27;
        }

        current.angle.y += var_r28;
    }

    current.angle.x = sp2C.atan2sY_XZ();
    current.pos.x += speedF * cM_scos(current.angle.x) * cM_ssin(current.angle.y);
    current.pos.y -= speedF * cM_ssin(current.angle.x);
    current.pos.z += speedF * cM_scos(current.angle.x) * cM_scos(current.angle.y);

    cXyz sp20 = m_aimPos - current.pos;

    if (temp_f30 < speedF && field_0x957 == 0 && !checkStateFlg0(FLG0_1)) {
        if (sp20.inprod(sp38) <= 0.0f) {
            if (checkStateFlg0(FLG0_10)) {
                onStateFlg0(FLG0_2);
                offStateFlg0(FLG0_10);
            } else {
                field_0x957 = 10;
                m_moveTargetPos = m_aimPos;
                m_movePos = current.pos;
            }

            m_lockActors[field_0x951] = NULL;
            m_lockActorIDs[field_0x951] = fpcM_ERROR_PROCESS_ID_e;

            if (field_0x718[field_0x951] != 0) {
                onStateFlg0(FLG0_200);
            }
            field_0x718[field_0x951] = 0;
            field_0x951++;
        }
    }

    cLib_addCalcAngleS(&shape_angle.y, current.angle.y, 3, 0x1000, 0x400);
    cLib_addCalcAngleS(&shape_angle.x, current.angle.x, 3, 0x1000, 0x400);

    if (!checkStateFlg0(FLG0_1)) {
        checkBgHit(&old.pos, &current.pos);
    }

    var_r28 = -(var_r28 * 2);
    if (var_r28 > 0x100) {
        var_r28 = 0x1000;
    } else if (var_r28 < -0x100) {
        var_r28 = -0x1000;
    } else {
        var_r28 = field_0x958;
    }

    field_0x958 = var_r28;
    cLib_addCalcAngleS(&shape_angle.z, var_r28, 0x10, 0x1000, 0x10);

    setMoveMatrix();

    m_sound.startLevelSound(Z2SE_BOOM_TORNADO, 0, -1);

    if (!dComIfGp_event_runCheck()) {
        dComIfG_Ccsp()->Set(&m_windAtCyl);
        g_dComIfG_gameInfo.play.mCcs.mMass_Mng.Set(&m_windAtCyl, 1);
        //dComIfG_Ccsp()->SetMass(&m_windAtCyl, 1);
    } else {
        m_atCps.ResetAtHit();
        m_windAtCyl.ResetAtHit();
    }

    return 1;
}

/* 804A1814-804A1BD4 0037D4 03C0+00 1/1 0/0 0/0 .text            execute__13daBoomerang_cFv */
int daBoomerang_c::execute() {
    if (field_0x957 != 0) {
        current.pos = field_0x9b8;
    }

    if (checkStateFlg0(FLG0_1) && fopAcM_wt_c::waterCheck(&current.pos)) {
        cXyz spC(current.pos.x, current.pos.y - 50.0f, current.pos.z);

        f32 roof_y;
        if (fopAcM_rc_c::roofCheck(&spC) && dComIfG_Bgsp().GetUnderwaterRoofCode(*fopAcM_rc_c::getRoofCheck()) == 0) {
            roof_y = fopAcM_rc_c::getRoofY();
        } else {
            roof_y = 1000000000.0f;
        }

        if (roof_y > fopAcM_wt_c::getWaterY() && current.pos.y < fopAcM_wt_c::getWaterY() - 50.0f) {
            fopAcM_delete(this);
            return 1;
        }
    }

    if (m_forceDelete) {
        fopAcM_delete(this);
        return 1;
    }

    m_sight.offReserve();

    field_0x6d4 = fpcM_ERROR_PROCESS_ID_e;
    field_0x6d8 = 0;

    if (field_0x962 != 0) {
        field_0x962--;
    }

    camera_class* camera = dComIfGp_getCamera(dComIfGp_getPlayerCameraID(0));
    s16 cam_angleY = fopCamM_GetAngleY(camera);
    s16 cam_angleX = fopCamM_GetAngleX(camera);

    for (int i = 0; i < m_lockCnt; i++) {
        if (m_lockActorIDs[i] != fpcM_ERROR_PROCESS_ID_e) {
            m_lockActors[i] = fopAcM_SearchByID(m_lockActorIDs[i]);
            if (m_lockActors[i] == NULL) {
                pushLockList(i);
                i--;
            }
        }
    }

    daAlink_c* player = daAlink_getAlinkActorClass();

    if (dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) != ST_BOSS_ROOM) {
        f32 temp_f31 = 500.0f + player->getBoomLockMax();
        int var_r26 = 0;
        
        temp_f31 *= temp_f31;
        for (int i = 0; i < m_lockCnt; i++) {
            f32 var_f29;
            if (field_0x718[i] != 0) {
                var_f29 = player->current.pos.abs2(m_lockActorsPositions[i]);
            } else if (m_lockActors[i] != NULL) {
                var_f29 = player->current.pos.abs2(m_lockActors[i]->eyePos);
            } else {
                continue;
            }

            if (var_f29 > temp_f31) {
                pushLockList(i);
                i--;
                var_r26 = 1;
            }
        }

        if (var_r26 != 0 && m_lockCnt == 0) {
            onStateFlg0(FLG0_1);
            field_0x957 = 0;
        }
    }

    (this->*m_procFn)();
    setRoomInfo();

    m_sight.playAnime(field_0x951, m_lockCnt);

    field_0x95c = cam_angleY;
    field_0x95e = cam_angleX;
    setEffect();

    m_sound.framework(0, m_reverb);
    field_0x9b8 = current.pos;

    if (field_0x957 != 0) {
        cLib_chasePos(&m_movePos, m_moveTargetPos, speedF);
        current.pos = m_movePos;
    }

    attention_info.position = current.pos;
    eyePos = current.pos;

    if (dComIfGp_event_runCheck()) {
        daPy_boomerangMove_c::onEventKeepFlg();
    }

    return 1;
}

/* 804A1BD4-804A1BF4 003B94 0020+00 1/0 0/0 0/0 .text daBoomerang_Execute__FP13daBoomerang_c */
static int daBoomerang_Execute(daBoomerang_c* i_this) {
    return i_this->execute();
}

/* 804A1BF4-804A1EBC 003BB4 02C8+00 1/1 0/0 0/0 .text            __dt__13daBoomerang_cFv */
daBoomerang_c::~daBoomerang_c() {
    m_sound.deleteObject();
}

/* 804A1EBC-804A1EE4 003E7C 0028+00 1/0 0/0 0/0 .text daBoomerang_Delete__FP13daBoomerang_c */
static int daBoomerang_Delete(daBoomerang_c* i_this) {
    i_this->~daBoomerang_c();
    return 1;
}

/* 804A1EE4-804A2064 003EA4 0180+00 1/1 0/0 0/0 .text            createHeap__13daBoomerang_cFv */
int daBoomerang_c::createHeap() {
    if (!m_sight.createHeap()) {
        return 0;
    }

    m_sight.initialize();

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), 0x1F);
    JUT_ASSERT(2882, modelData != 0);
    mp_boomModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mp_boomModel == NULL) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), 0x34);
    JUT_ASSERT(2898, modelData != 0);
    mp_shippuModel = mDoExt_J3DModel__create(modelData, 0, 0x11000284);
    if (mp_shippuModel == NULL) {
        return 0;
    }

    J3DAnmTransform* transAnm = (J3DAnmTransform*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), 0x13);
    JUT_ASSERT(2911, transAnm != 0);
    if (m_shippuBck.init(transAnm, 0, 2, 1.0f, 0, -1, false) == 0) {
        return 0;
    }

    modelData = (J3DModelData*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), 0x19);
    mp_setboomEfModel = mDoExt_J3DModel__create(modelData, 0, 0x11000284);
    if (mp_setboomEfModel == NULL) {
        return 0;
    }

    m_sound.init(&current.pos, 2);
    return 1;
}

/* 804A2064-804A2084 004024 0020+00 1/1 0/0 0/0 .text daBoomerang_createHeap__FP10fopAc_ac_c */
static int daBoomerang_createHeap(fopAc_ac_c* i_this) {
    return ((daBoomerang_c*)i_this)->createHeap();
}

/* 804A2B14-804A2B60 000038 004C+00 0/1 0/0 0/0 .data            l_atCpsSrc */
static dCcD_SrcCps l_atCpsSrc = {
    {
        {0, {{AT_TYPE_BOOMERANG, 0, 0x3B}, {0, 0}, 0}},
        {dCcD_SE_WOOD, 4, 0, 0, {0}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {0},
    },
    {
        {
            {0.0f, 0.0f, 0.0f},
            {0.0f, 0.0f, 0.0f},
            15.0f,
        },
    }
};

/* 804A2B60-804A2BA4 000084 0044+00 0/1 0/0 0/0 .data            l_windAtCylSrc */
static dCcD_SrcCyl l_windAtCylSrc = {
    {
        {0, {{AT_TYPE_BOOMERANG, 0, 0x1B}, {0, 0}, 0}},
        {dCcD_SE_13, 0, 0, dCcD_MTRL_WIND, {2}},
        {dCcD_SE_NONE, 0, 0, 0, {0}},
        {0},
    },
    {
        {0.0f, 0.0f, 0.0f},
        150.0f,
        600.0f,
    }
};

/* 804A2084-804A230C 004044 0288+00 1/1 0/0 0/0 .text            create__13daBoomerang_cFv */
int daBoomerang_c::create() {
    fpc_ProcID id = fopAcM_GetID(this);
    fopAcM_SetupActor(this, daBoomerang_c);

    if (!fopAcM_entrySolidHeap(this, daBoomerang_createHeap, 0xC0D0)) {
        return cPhs_ERROR_e;
    }

    m_lockLineActorID = fpcM_ERROR_PROCESS_ID_e;

    m_acch.Set(this, 0, NULL);
    m_papo.init(&m_acch, 600.0f, 600.0f);
    setKeepMatrix();
    fopAcM_SetMtx(this, mp_boomModel->getBaseTRMtx());

    m_procFn = &daBoomerang_c::procWait;

    m_colliderStts.Init(60, 0xFF, this);

    m_atCps.Set(l_atCpsSrc);
    m_atCps.SetStts(&m_colliderStts);
    m_atCps.SetAtHitCallback(daBoomerang_lockLineCallback);

    m_windAtCyl.Set(l_windAtCylSrc);
    m_windAtCyl.SetStts(&m_colliderStts);
    m_windAtCyl.SetAtHitCallback(daBoomerang_moveLineCallback);

    m_boomLineChk.ClrSttsRoofOff();

    for (int i = 0; i < BOOMERANG_LOCK_MAX; i++) {
        m_lockActorIDs[i] = fpcM_ERROR_PROCESS_ID_e;
    }

    m_windBtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), 0x48);
    JUT_ASSERT(2997, m_windBtk);

    m_windBtk->searchUpdateMaterialID(mp_shippuModel->getModelData());
    mp_shippuModel->getModelData()->entryTexMtxAnimator(m_windBtk);
    mp_shippuModel->getModelData()->getJointNodePointer(4)->setCallBack(daBoomeang_windModelCallBack);
    mp_shippuModel->setUserArea((u32)this);

    m_waitEffBtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(daAlink_c::getAlinkArcName(), 0x47);
    JUT_ASSERT(3011, m_waitEffBtk);

    m_waitEffBtk->searchUpdateMaterialID(mp_setboomEfModel->getModelData());
    mp_setboomEfModel->getModelData()->entryTexMtxAnimator(m_waitEffBtk);

    setRoomInfo();

    model = mp_boomModel;
    attention_info.field_0xa = 150;

    fopAcM_setStageLayer(this);

    m_setAimActorFn = &daBoomerang_c::setAimActorBase;
    m_cancelLockActorFn = &daBoomerang_c::cancelLockActorBase;

    m_lineChk.OffFullGrp();
    m_lineChk.OnWaterGrp();

    m_shippuSize = 1.0f;
    return cPhs_COMPLEATE_e;
}

/* 804A230C-804A2524 0042CC 0218+00 1/1 0/0 0/0 .text            __ct__13daBoomerang_cFv */
daBoomerang_c::daBoomerang_c() {}

/* 804A26F8-804A2718 0046B8 0020+00 1/0 0/0 0/0 .text            daBoomerang_Create__FP10fopAc_ac_c
 */
static int daBoomerang_Create(fopAc_ac_c* i_this) {
    return ((daBoomerang_c*)i_this)->create();
}

/* 804A2BC8-804A2BE8 -00001 0020+00 1/0 0/0 0/0 .data            l_daBoomerang_Method */
static actor_method_class l_daBoomerang_Method = {
    (process_method_func)daBoomerang_Create,
    (process_method_func)daBoomerang_Delete,
    (process_method_func)daBoomerang_Execute,
    (process_method_func)NULL,
    (process_method_func)daBoomerang_Draw,
};

/* 804A2BE8-804A2C18 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_BOOMERANG */
extern actor_process_profile_definition g_profile_BOOMERANG = {
  fpcLy_CURRENT_e,       // mLayerID
  6,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_BOOMERANG,        // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(daBoomerang_c),            // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  686,                   // mPriority
  &l_daBoomerang_Method, // sub_method
  0x00060000,            // mStatus
  fopAc_UNK_GROUP_5_e,   // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

AUDIO_INSTANCES;

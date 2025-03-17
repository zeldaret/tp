//
// d_a_tag_Lv6Gate.cpp
// Temple of Time Gate
//

#include "d/actor/d_a_tag_Lv6Gate.h"
#include "JSystem/J3DGraphBase/J3DMaterial.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"
#include "dol2asm.h"

/* 80D4F898-80D4F8B8 000078 0020+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static int createSolidHeap(fopAc_ac_c* i_this) {
    return static_cast<daTagLv6Gate_c*>(i_this)->createHeap();
}

/* 80D50908-80D50914 000000 000C+00 2/2 0/0 0/0 .rodata          l_minRelative */
static f32 const l_minRelative[] = {-700.0f, -300.0f, -2000.0f};

/* 80D50914-80D50920 00000C 000C+00 0/1 0/0 0/0 .rodata          l_maxRelative */
static f32 const l_maxRelative[] = {700.0f, 0.0f, 1000.0f};

/* 80D509C8-80D509CC -00001 0004+00 4/4 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Lv6Gate";

/* 80D4F8B8-80D4FB70 000098 02B8+00 1/1 0/0 0/0 .text            createHeap__14daTagLv6Gate_cFv */
int daTagLv6Gate_c::createHeap() {
    J3DAnmTextureSRTKey* btk;

    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 15);
    mpModel[0] = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000284);
    if (mpModel[0] == NULL) {
        return 0;
    }

    btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 19);
    mpBtk[0] = new mDoExt_btkAnm();
    if (mpBtk[0] == NULL ||
        !mpBtk[0]->init(model_data, btk, TRUE, J3DFrameCtrl::EMode_NONE, 1.0f, 0, -1))
    {
        return 0;
    }

    if (fopAcM_isSwitch(this, getSwitchNo2())) {
        mpBtk[0]->setFrame(mpBtk[0]->getEndFrame());
    }

    btk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(l_arcName, 20);
    mpBtk[1] = new mDoExt_btkAnm();
    if (mpBtk[1] == NULL ||
        !mpBtk[1]->init(model_data, btk, TRUE, J3DFrameCtrl::EMode_LOOP, 1.0f, 0, -1))
    {
        return 0;
    }

    model_data = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 16);
    mpModel[1] = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);
    if (mpModel[1] == NULL) {
        return 0;
    }

    if (mBgW[0].Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, 27), cBgW::MOVE_BG_e, &field_0x6f8[0]))
    {
        return 0;
    }

    return checkEqual(
        mBgW[1].Set((cBgD_t*)dComIfG_getObjectRes(l_arcName, 28), cBgW::MOVE_BG_e, &field_0x6f8[1]),
        0);
}

/* 80D4FBB8-80D4FBD8 000398 0020+00 1/0 0/0 0/0 .text            daTagLv6Gate_Create__FP10fopAc_ac_c
 */
static int daTagLv6Gate_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagLv6Gate_c*>(i_this)->create();
}

void daTagLv6Gate_c::seStair() {
    Vec se_pos = {0.0f, 1800.0f, -6800.0f};
    mDoAud_seStart(Z2SE_OBJ_LV6_GATE_STAIR, &se_pos, 0, 0);
}

void daTagLv6Gate_c::seGlassOff() {
    Vec se_pos = {0.0f, 2887.0f, -8330.0f};
    mDoAud_seStart(Z2SE_OBJ_LV6_GATE_GLASS_OFF, &se_pos, 0, 0);
}

void daTagLv6Gate_c::seGlassOn() {
    Vec se_pos = {0.0f, 2887.0f, -8330.0f};
    mDoAud_seStart(Z2SE_OBJ_LV6_GATE_GLASS_ON, &se_pos, 0, 0);
}

void daTagLv6Gate_c::initBaseMtx() {
    fopAcM_SetMtx(this, mpModel[0]->getBaseTRMtx());

    mDoMtx_stack_c::transS(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::YrotM(0);
    MTXCopy(mDoMtx_stack_c::get(), field_0x6f8[0]);
    mpModel[0]->setBaseTRMtx(mDoMtx_stack_c::get());
    mBgW[0].Move();

    mDoMtx_stack_c::transS(0.0f, 2887.0f, -8330.0f);
    mDoMtx_stack_c::YrotM(0);
    MTXCopy(mDoMtx_stack_c::get(), field_0x6f8[1]);
    mpModel[1]->setBaseTRMtx(mDoMtx_stack_c::get());
    mBgW[1].Move();
}

void daTagLv6Gate_c::create_init() {
    fopAcM_setCullSizeBox(this, -50.0f, 0.0f, -50.0f, 50.0f, 100.0f, 50.0f);
    attention_info.position = current.pos;
    attention_info.flags = (fopAcM_isSwitch(this, getSwitchNo1()) != 0) ? 0 : 0x80;
    attention_info.distances[fopAc_attn_ETC_e] = 89;
    mEvtId = -1;
    field_0x76a = 0;

    field_0x760[0] = 255.0f;
    field_0x760[1] = 115.0f;

    initBaseMtx();

    if (!fopAcM_isSwitch(this, getSwitchNo1())) {
        parentActorID = fopAcM_create(PROC_NPC_TKS, 2, &cXyz(-13.272481f, 2887.0f, -10373.718f),
                                      fopAcM_GetRoomNo(this), &csXyz(0, 0x7FFF, 0), NULL, -1);
    }
}

/* 80D4FBD8-80D4FE5C 0003B8 0284+00 1/1 0/0 0/0 .text            create__14daTagLv6Gate_cFv */
int daTagLv6Gate_c::create() {
    fopAcM_SetupActor(this, daTagLv6Gate_c);

    int phase = dComIfG_resLoad(&mPhase, l_arcName);

    if (phase == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createSolidHeap, 0x7800)) {
            return cPhs_ERROR_e;
        } else {
            create_init();
        }
    }

    return phase;
}

/* 80D4FEBC-80D4FEDC 00069C 0020+00 1/0 0/0 0/0 .text daTagLv6Gate_Execute__FP14daTagLv6Gate_c */
static int daTagLv6Gate_Execute(daTagLv6Gate_c* i_this) {
    return i_this->execute();
}

bool daTagLv6Gate_c::checkOpenArea() {
    if (!fopAcM_isSwitch(this, getSwitchNo2())) {
        return false;
    }

    mDoMtx_stack_c::copy(mpModel[1]->getBaseTRMtx());
    mDoMtx_stack_c::inverse();

    for (int i = 0; i < 2; i++) {
        fopAc_ac_c* actor =
            (i == 0) ? daPy_getPlayerActorClass() : fopAcM_SearchByName(PROC_NPC_TKS);
        if (actor != NULL) {
            cXyz pos;
            mDoMtx_stack_c::push();
            mDoMtx_stack_c::multVec(fopAcM_GetPosition_p(actor), &pos);
            mDoMtx_stack_c::pop();
            if (pos.x >= l_minRelative[0] && pos.x <= l_maxRelative[0] &&
                pos.z >= l_minRelative[2] && pos.z <= l_maxRelative[2])
            {
                return true;
            }
        }
    }

    return false;
}

void daTagLv6Gate_c::cut1() {
    dComIfGp_getEvent().setSkipZev(this, "LV6_GATE_APPEAR_SKIP");

    cXyz pos(0.0f, 0.0f, 78.0f);

    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::multVec(&pos, &pos);
    daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos, shape_angle.y + 0x10000 - 0x8000, 0);
}

void daTagLv6Gate_c::cut2() {
    cXyz pos(0.0f, 0.0f, 0.0f);
    dComIfGp_particle_set(0x8B89, &pos, &csXyz(0, 0, 0), NULL);
}

void daTagLv6Gate_c::cut4() {
    cXyz pos(117.8473f, 1677.0f, -5110.8394f);

    fopAc_ac_c* actor2;
    fopAc_ac_c* actor1;

    actor1 = NULL;
    fopAcM_SearchByID(parentActorID, &actor1);

    if (actor1 == NULL) {
        return;
    }

    *fopAcM_GetOldPosition_p(actor1) = pos;
    *fopAcM_GetPosition_p(actor1) = pos;

    actor2 = NULL;
    fopAcM_SearchByName(PROC_NPC_TKC, &actor2);

    if (actor2 == NULL) {
        return;
    }

    *fopAcM_GetOldPosition_p(actor2) = pos;
    *fopAcM_GetPosition_p(actor2) = pos;
}

/* 80D4FEDC-80D5068C 0006BC 07B0+00 1/1 0/0 0/0 .text            execute__14daTagLv6Gate_cFv */
// NONMATCHING
int daTagLv6Gate_c::execute() {
    dComIfG_inf_c& game_info = g_dComIfG_gameInfo;  // Fake match?

    if (game_info.getPlay().getEvent().runCheck() && !eventInfo.checkCommandTalk()) {
        s32 cut_index = dComIfGp_getEventManager().getMyStaffId(l_arcName, NULL, 0);
        if (cut_index != -1) {
            int* cut_name = (int*)dComIfGp_getEventManager().getMyNowCutName(cut_index);

            daPy_getPlayerActorClass()->onShieldBackBone();

            if (dComIfGp_evmng_getIsAddvance(cut_index)) {
                switch (*cut_name) {
                case '0001':
                    cut1();
                    break;
                case '0002':
                    cut2();
                    break;
                case '0003':
                    fopAcM_onSwitch(this, getSwitchNo2());
                    seStair();
                    break;
                case '0004':
                    cut4();
                    break;
                case '0006':
                    fopAcM_onSwitch(this, getSwitchNo2());
                    mpBtk[0]->setFrame(mpBtk[0]->getEndFrame());
                    if (!mBgW[0].ChkUsed()) {
                        dComIfG_Bgsp().Regist(&mBgW[0], this);
                    }
                    fopAcM_delete(parentActorID);
                }
            }

            switch (*cut_name) {
            case '0001':
            case '0002':
            case '0003':
            case '0004':
            case '0005':
            case '0006':
                dComIfGp_evmng_cutEnd(cut_index);
            }

            if (eventInfo.checkCommandDemoAccrpt() && mEvtId != -1 &&
                dComIfGp_evmng_endCheck(mEvtId))
            {
                dComIfGp_event_reset();
                mEvtId = -1;
            }
        }
    } else if (field_0x76a && !fopAcM_isSwitch(this, getSwitchNo1())) {
        eventInfo.setArchiveName(l_arcName);
        dComIfGp_getEventManager().setObjectArchive(eventInfo.getArchiveName());
        mEvtId = dComIfGp_getEventManager().getEventIdx(this, "LV6_GATE_APPEAR", -1);
        fopAcM_orderOtherEventId(this, mEvtId, -1, -1, 0, 1);
        fopAcM_onSwitch(this, getSwitchNo1());
        attention_info.flags = 0;
    }

    if (fopAcM_isSwitch(this, getSwitchNo2())) {
        if (!mBgW[0].ChkUsed()) {
            dComIfG_Bgsp().Regist(&mBgW[0], this);
        }

        mpBtk[0]->play();
        mpBtk[1]->play();
    }

    if (checkOpenArea()) {
        if (mBgW[1].ChkUsed()) {
            dComIfG_Bgsp().Release(&mBgW[1]);
            seGlassOff();
        }

        field_0x760[0] -= 12.75f;
        field_0x760[1] -= 5.75f;

        if (field_0x760[0] < 0.0f) {
            field_0x760[0] = 0.0f;
        }

        if (field_0x760[1] < 0.0f) {
            field_0x760[1] = 0.0f;
        }
    } else {
        if (!mBgW[1].ChkUsed()) {
            dComIfG_Bgsp().Regist(&mBgW[1], this);
            seGlassOn();
        }

        field_0x760[0] += 12.75f;
        field_0x760[1] += 5.75f;

        if (field_0x760[0] > 255.0f) {
            field_0x760[0] = 255.0f;
        }

        if (field_0x760[1] > 115.0f) {
            field_0x760[1] = 115.0f;
        }
    }

    return 1;
}

/* 80D5068C-80D506AC 000E6C 0020+00 1/0 0/0 0/0 .text daTagLv6Gate_Draw__FP14daTagLv6Gate_c */
static int daTagLv6Gate_Draw(daTagLv6Gate_c* i_this) {
    return i_this->draw();
}

/* 80D506AC-80D50848 000E8C 019C+00 1/1 0/0 0/0 .text            draw__14daTagLv6Gate_cFv */
int daTagLv6Gate_c::draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);

    dComIfGd_setListBG();

    if (fopAcM_isSwitch(this, getSwitchNo2())) {
        g_env_light.setLightTevColorType_MAJI(mpModel[0], &tevStr);
        mpBtk[0]->entry(mpModel[0]->getModelData());
        mpBtk[1]->entry(mpModel[0]->getModelData());
        mDoExt_modelUpdateDL(mpModel[0]);

        mpBtk[0]->remove(mpModel[0]->getModelData());
        mpBtk[1]->remove(mpModel[0]->getModelData());
    }

    for (u16 i = 0; i < 2; i++) {
        J3DModelData* model_data = mpModel[1]->getModelData();
        model_data->getMaterialNodePointer(i)->getTevKColor(3)->a = field_0x760[i];
    }

    g_env_light.setLightTevColorType_MAJI(mpModel[1], &tevStr);
    mDoExt_modelUpdateDL(mpModel[1]);

    dComIfGd_setList();

    return 1;
}

/* 80D50848-80D50850 001028 0008+00 1/0 0/0 0/0 .text daTagLv6Gate_IsDelete__FP14daTagLv6Gate_c */
static int daTagLv6Gate_IsDelete(daTagLv6Gate_c* i_this) {
    return 1;
}

daTagLv6Gate_c::~daTagLv6Gate_c() {
    if (mBgW[0].ChkUsed()) {
        dComIfG_Bgsp().Release(&mBgW[0]);
    }
    if (mBgW[1].ChkUsed()) {
        dComIfG_Bgsp().Release(&mBgW[1]);
    }
    dComIfG_resDelete(&mPhase, l_arcName);
}

/* 80D50850-80D50900 001030 00B0+00 1/0 0/0 0/0 .text daTagLv6Gate_Delete__FP14daTagLv6Gate_c */
static int daTagLv6Gate_Delete(daTagLv6Gate_c* i_this) {
    i_this->~daTagLv6Gate_c();
    return 1;
}

/* 80D509CC-80D509EC -00001 0020+00 1/0 0/0 0/0 .data            l_daTagLv6Gate_Method */
static actor_method_class l_daTagLv6Gate_Method = {
    (process_method_func)daTagLv6Gate_Create,  (process_method_func)daTagLv6Gate_Delete,
    (process_method_func)daTagLv6Gate_Execute, (process_method_func)daTagLv6Gate_IsDelete,
    (process_method_func)daTagLv6Gate_Draw,
};

/* 80D509EC-80D50A1C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Lv6Gate */
extern actor_process_profile_definition g_profile_Tag_Lv6Gate = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Tag_Lv6Gate,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daTagLv6Gate_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    262,                     // mPriority
    &l_daTagLv6Gate_Method,  // sub_method
    0x40000,                 // mStatus
    0,                       // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

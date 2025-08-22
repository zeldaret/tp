/**
 * @file d_a_obj_amiShutter.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_amiShutter.h"
#include "d/actor/d_a_player.h"
#include "c/c_damagereaction.h"
#include "d/d_bg_w.h"

struct daAmiShutter_HIO_c : public mDoHIO_entry_c {
    /* 0x04 */ f32 mRange;
    /* 0x08 */ f32 mMaxOpenSpeed;
    /* 0x0c */ f32 mMaxCloseSpeed;
    /* 0x10 */ u8 mWaitTime;
    /* 0x11 */ u8 field_0x11;

    /* 80BA14CC */ daAmiShutter_HIO_c();
    /* 80BA21E0 */ ~daAmiShutter_HIO_c() {}

    void genMessage(JORMContext*);
};

/* 80BA14CC-80BA1514 0000EC 0048+00 1/1 0/0 0/0 .text            __ct__18daAmiShutter_HIO_cFv */
daAmiShutter_HIO_c::daAmiShutter_HIO_c() {
    mMaxOpenSpeed = 70.0f;
    mMaxCloseSpeed = 70.0f;
    field_0x11 = 3;
    mRange = 400.f;
    mWaitTime = 0;
}

#ifdef DEBUG
void daAmiShutter_HIO_c::genMessage(JORMContext* i_ctx) {
    i_ctx->genSlider("open速度", &mMaxOpenSpeed, 0.1f, 1000.0f, 
        0, NULL, 0xffff, 0xffff, 512, 24);
    i_ctx->genSlider("close速度", &mMaxCloseSpeed, 0.1f, 1000.0f, 
        0, NULL, 0xffff, 0xffff, 512, 24);
    i_ctx->genSlider("range", &mRange, 0.1f, 1000.0f, 
        0, NULL, 0xffff, 0xffff, 512, 24);
    i_ctx->genSlider("waitTime", &mWaitTime, 0, 255, 
        0, NULL, 0xffff, 0xffff, 512, 24);
}
#endif

/* 80BA256C-80BA2580 000014 0014+00 6/6 0/0 0/0 .bss             l_HIO */
static daAmiShutter_HIO_c l_HIO;

/* 80BA155C-80BA15E4 00017C 0088+00 2/2 0/0 0/0 .text            setBaseMtx__14daAmiShutter_cFv */
void daAmiShutter_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* ############################################################################################## */

/* 80BA15E4-80BA1650 000204 006C+00 1/0 0/0 0/0 .text            CreateHeap__14daAmiShutter_cFv */
int daAmiShutter_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*) dComIfG_getObjectRes("S_Zami", 4);
    JUT_ASSERT(167, modelData != 0); 
    
    mpModel = mDoExt_J3DModel__create(modelData, 
        J3DMdlFlag_Unk80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* ############################################################################################## */

/* 80BA1650-80BA182C 000270 01DC+00 1/1 0/0 0/0 .text            create__14daAmiShutter_cFv */
cPhs__Step daAmiShutter_c::create() {
    fopAcM_SetupActor(this, daAmiShutter_c);
    cPhs__Step phaseStep = (cPhs__Step) dComIfG_resLoad(&mPhaseReq, "S_Zami");

    if (phaseStep == cPhs_COMPLEATE_e) {
        cPhs__Step res = (cPhs__Step) MoveBGCreate("S_Zami", 7, 
            dBgS_MoveBGProc_Typical, 0x1a00, NULL);

        if (res == cPhs_ERROR_e) {
            phaseStep = cPhs_ERROR_e;
            return phaseStep;
        }

        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        mType = getType();
        mPosZ = current.pos.z;
        
        if (mType == 0 || mType == 1) {
            if (mType == 0 && cDmr_SkipInfo != 0 
                && daPy_getPlayerActorClass()->current.pos.y > -800.0f){
                mMode = MODE_CLOSE_END;
            } else {
                mPos = current.pos;
                current.pos.z -= 600.0f;
                mOpen = true;
                init_modeWaitEvent();
            }
        } else {
            mSwBit = getSwBit();
            mSwitch = fopAcM_isSwitch(this, mSwBit);
            mOpen = false;
            init_modeWait();
        }
        setBaseMtx();
        #ifdef DEBUG
        l_HIO.entryHIO("アミシャッター");
        #endif
    }
    return phaseStep;
}

/* 80BA182C-80BA1888 00044C 005C+00 1/0 0/0 0/0 .text            Execute__14daAmiShutter_cFPPA3_A4_f
 */
int daAmiShutter_c::Execute(Mtx** i_mtx) {
    eventUpdate();
    moveShutter();
    *i_mtx = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* ############################################################################################## */

/* 80BA1888-80BA1974 0004A8 00EC+00 1/1 0/0 0/0 .text            moveShutter__14daAmiShutter_cFv */
void daAmiShutter_c::moveShutter() {
    static daAmiShutter_c::modeProc const mode_proc[6] = {
        &daAmiShutter_c::modeWait,
        &daAmiShutter_c::modeWaitEvent,
        &daAmiShutter_c::modeClose,
        &daAmiShutter_c::modeCloseEvent,
        &daAmiShutter_c::modeCloseEnd,
        &daAmiShutter_c::modeOpen,
    };

    (this->*mode_proc[mMode])();
}

/* ############################################################################################## */

/* 80BA1974-80BA1B4C 000594 01D8+00 1/1 0/0 0/0 .text            playerAreaCheck__14daAmiShutter_cFv
 */
BOOL daAmiShutter_c::playerAreaCheck() {
    BOOL inArea = FALSE;
    if (mType == 0) {
        fopAc_ac_c* player = dComIfGp_getPlayer(0);
        cXyz posDiff = mPos - player->current.pos;
        f32 distance = posDiff.absXZ();
        if (distance >= l_HIO.mRange 
            && player->current.pos.y > current.pos.y
            && player->current.pos.y < current.pos.y + 50.f){
            inArea = TRUE;
        }
    } else if (dComIfGp_getLinkPlayer()->getFootOnGround()) {
        inArea = TRUE;
    }
    return inArea;
}

/* 80BA1B4C-80BA1B58 00076C 000C+00 3/3 0/0 0/0 .text            init_modeWait__14daAmiShutter_cFv
 */
void daAmiShutter_c::init_modeWait() {
    mMode = MODE_WAIT;
}

/* 80BA1B58-80BA1BCC 000778 0074+00 1/0 0/0 0/0 .text            modeWait__14daAmiShutter_cFv */
void daAmiShutter_c::modeWait() {
    u8 isSwitch = fopAcM_isSwitch(this, mSwBit);
    if (mSwitch != isSwitch) {
        mSwitch = isSwitch;
        mSwitch == FALSE ? init_modeClose() : init_modeOpen();
    }
}

/* 80BA1BCC-80BA1BD8 0007EC 000C+00 1/1 0/0 0/0 .text init_modeWaitEvent__14daAmiShutter_cFv */
void daAmiShutter_c::init_modeWaitEvent() {
    mMode = MODE_WAIT_EVENT;
}

/* 80BA1BD8-80BA1C90 0007F8 00B8+00 1/0 0/0 0/0 .text            modeWaitEvent__14daAmiShutter_cFv
 */
void daAmiShutter_c::modeWaitEvent() {
    if (playerAreaCheck() == TRUE) {
        if (getEvent() != 0xff) {
            if (mType == 0 && fopAcM_isSwitch(this, 4) == TRUE) {
                eventStart();
            } else {
                orderEvent(getEvent(), 0xff, 1);
            }
        } else {
            eventStart();
        }
    }
}

/* 80BA1C90-80BA1CB4 0008B0 0024+00 2/1 0/0 0/0 .text            eventStart__14daAmiShutter_cFv */
bool daAmiShutter_c::eventStart() {
    init_modeCloseEvent();
    return true;
}

/* ############################################################################################## */

/* 80BA1CB4-80BA1D48 0008D4 0094+00 1/1 0/0 0/0 .text            init_modeClose__14daAmiShutter_cFv
 */
void daAmiShutter_c::init_modeClose() {
    mDoAud_seStart(Z2SE_OBJ_NET_SHTR_CL, &current.pos, 0, 
        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mpBgW->OffRoofRegist();
    mMode = MODE_CLOSE;
}

/* ############################################################################################## */
/* 80BA1D48-80BA1DCC 000968 0084+00 1/0 0/0 0/0 .text            modeClose__14daAmiShutter_cFv */
void daAmiShutter_c::modeClose() {
    f32 distance = cLib_addCalc(&current.pos.z, mPosZ, 0.5f, 
        l_HIO.mMaxCloseSpeed, 1.0f);
    if (distance == 0.0f) {
        mpBgW->OnRoofRegist();
        mOpen = false;
        init_modeWait();
    }
}

/* 80BA1DCC-80BA1E60 0009EC 0094+00 1/1 0/0 0/0 .text init_modeCloseEvent__14daAmiShutter_cFv */
void daAmiShutter_c::init_modeCloseEvent() {
    mDoAud_seStart(Z2SE_OBJ_NET_L_SHTR_CL, &current.pos, 0, 
        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mWaitTime = l_HIO.mWaitTime;
    mMode = MODE_CLOSE_EVENT;
}

/* ############################################################################################## */

/* 80BA1E60-80BA1EEC 000A80 008C+00 1/0 0/0 0/0 .text            modeCloseEvent__14daAmiShutter_cFv
 */
void daAmiShutter_c::modeCloseEvent() {
    if (mWaitTime != 0) {
        mWaitTime -= 1;
        return;
    }

    f32 distance = cLib_addCalc(&current.pos.z, mPosZ, 0.2, 
        l_HIO.mMaxOpenSpeed, 1.0f);
    if (distance == 0.0f) {
        mOpen = false;
        init_modeCloseEnd();
    }
}

/* 80BA1EEC-80BA1F7C 000B0C 0090+00 1/1 0/0 0/0 .text init_modeCloseEnd__14daAmiShutter_cFv */
void daAmiShutter_c::init_modeCloseEnd() {
    if (mType == 0 && fopAcM_isSwitch(this, 4) == 0) {
        daPy_getPlayerActorClass()->changeOriginalDemo();
        daPy_getPlayerActorClass()->changeDemoMode(daPy_demo_c::DEMO_TURN_BACK_e,
             0, 0,0);
    }
    mMode = MODE_CLOSE_END;
}

/* 80BA1F7C-80BA1F80 000B9C 0004+00 1/0 0/0 0/0 .text            modeCloseEnd__14daAmiShutter_cFv */
void daAmiShutter_c::modeCloseEnd() {
    // EMPTY METHOD
}

/* 80BA1F80-80BA2004 000BA0 0084+00 1/1 0/0 0/0 .text            init_modeOpen__14daAmiShutter_cFv
 */
void daAmiShutter_c::init_modeOpen() {
    mDoAud_seStart(Z2SE_OBJ_NET_SHTR_OP, &current.pos, 0, 
        dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = MODE_OPEN;
}

/* 80BA2004-80BA2080 000C24 007C+00 1/0 0/0 0/0 .text            modeOpen__14daAmiShutter_cFv */
void daAmiShutter_c::modeOpen() {
    f32 distance = cLib_addCalc(&current.pos.z, mPosZ - 600.0f, 0.2, 
        l_HIO.mMaxOpenSpeed, 1.0f);
    if (distance == 0.0f) {
        mOpen = true;
        init_modeWait();
    }
}

/* 80BA2080-80BA2124 000CA0 00A4+00 1/0 0/0 0/0 .text            Draw__14daAmiShutter_cFv */
int daAmiShutter_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80BA2124-80BA2154 000D44 0030+00 1/0 0/0 0/0 .text            Delete__14daAmiShutter_cFv */
int daAmiShutter_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, "S_Zami");
    #ifdef DEBUG
    l_HIO.removeHIO();
    #endif

    return 1;
}

/* 80BA2154-80BA2180 000D74 002C+00 1/0 0/0 0/0 .text daAmiShutter_Draw__FP14daAmiShutter_c */
int daAmiShutter_Draw(daAmiShutter_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BA2180-80BA21A0 000DA0 0020+00 1/0 0/0 0/0 .text daAmiShutter_Execute__FP14daAmiShutter_c */
int daAmiShutter_Execute(daAmiShutter_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BA21A0-80BA21C0 000DC0 0020+00 1/0 0/0 0/0 .text daAmiShutter_Delete__FP14daAmiShutter_c */
int daAmiShutter_Delete(daAmiShutter_c* i_this) {
    fopAcM_GetID(i_this);
    return i_this->MoveBGDelete();
}

/* 80BA21C0-80BA21E0 000DE0 0020+00 1/0 0/0 0/0 .text            daAmiShutter_Create__FP10fopAc_ac_c
 */
int daAmiShutter_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daAmiShutter_c*>(i_this)->create();
}

/* 80BA248C-80BA24AC -00001 0020+00 1/0 0/0 0/0 .data            l_daAmiShutter_Method */
actor_method_class l_daAmiShutter_Method = {
    (process_method_func)daAmiShutter_Create,
    (process_method_func)daAmiShutter_Delete,
    (process_method_func)daAmiShutter_Execute,
    NULL,
    (process_method_func)daAmiShutter_Draw,
};


/* 80BA24AC-80BA24DC -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_AmiShutter */
extern actor_process_profile_definition g_profile_Obj_AmiShutter = {
    fpcLy_CURRENT_e,        // mLayerID
    3,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Obj_AmiShutter,    // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daAmiShutter_c), // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    521,                    // mPriority
    &l_daAmiShutter_Method, // sub_method
    0x00044000,             // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
  };

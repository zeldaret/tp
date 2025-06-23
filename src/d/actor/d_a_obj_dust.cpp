/**
 * @file d_a_obj_dust.cpp
 * 
*/

#include "d/actor/d_a_obj_dust.h"

/* 80BE3054-80BE3058 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static const char* l_arcName = "M_Dust";

namespace {
/* 80BE30F8-80BE30FC 000000 0004+00 2/2 0/0 0/0 .bss             e_ymb__26@unnamed@d_a_obj_dust_cpp@ */
static fopAc_ac_c* e_ymb;

/* 80BE30FC-80BE3100 000004 0004+00 2/2 0/0 0/0 .bss e_ymb_Pos__26@unnamed@d_a_obj_dust_cpp@ */
static cXyz* e_ymb_Pos;
};

static f32 dummyFloat() {
    return 0.0f;
}

static f64 dummyFloat2() {
    return 4503601774854144.0;
}

/* 80BE22B8-80BE2490 000078 01D8+00 1/1 0/0 0/0 .text            Search_Ymb__11daObjDust_cFv */
void daObjDust_c::Search_Ymb() {
    f32 e_ymb_speed = 0.0f;
    cXyz ymb_rel_dist(e_ymb_Pos->x - current.pos.x, e_ymb_Pos->y - current.pos.y, e_ymb_Pos->z - current.pos.z);

    mDoMtx_stack_c::YrotS(-shape_angle.y);
    mDoMtx_stack_c::multVec(&ymb_rel_dist, &ymb_rel_dist);

    if (ymb_rel_dist.x < (750.0f + BREG_F(0)) && ymb_rel_dist.x > (-750.0f - BREG_F(0)) &&
        ymb_rel_dist.z < (450.0f + BREG_F(1)) && ymb_rel_dist.z > (-450.0f - BREG_F(1)) &&
        ymb_rel_dist.y < (600.0f + BREG_F(7)))
    {
        e_ymb_speed = fopAcM_GetSpeedF(e_ymb);
        if (e_ymb_speed > 0.0f) {
            mRideAngleAmplitude = 256.0f + (e_ymb_speed * (16.0f + BREG_F(6)));
            mRideOscillationSpeed = e_ymb_speed * (31.0f + BREG_F(5));

            cLib_addCalc(&mOffsetY, -100.0f + BREG_F(8), 0.5f, 100.0f, 0);

            if (mYmbFlag == false && mRideOnFlag == true && mRideOscillationSpeed > 300.0f && mRideOscillationSpeed < 1900.0f) {
                fopAcM_seStart(this, Z2SE_OBJ_FLOATBOARD_SWING, 0);
                mYmbFlag = true; 
            }
        }
    } else {
        mYmbFlag = false;        
    }
}

/* 80BE2490-80BE24F8 000250 0068+00 1/1 0/0 0/0 .text            RideOn_Angle__11daObjDust_cFRsfsf */
void daObjDust_c::RideOn_Angle(s16& o_angle, f32 i_value, s16 i_scale, f32 i_max) {
    cLib_addCalcAngleS(&o_angle, i_scale * (i_value / i_max), 1, 0x100, 1);
}

/* 80BE24F8-80BE2708 0002B8 0210+00 1/1 0/0 0/0 .text            Check_RideOn__11daObjDust_cFv */
int daObjDust_c::Check_RideOn() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz& player_pos = fopAcM_GetPosition(player);
    f32 player_speed = 0.0f;
    s16 intensity_target = 0;

    mRideOnFlag = false;

    cXyz player_rel_dist(player_pos.x - current.pos.x, player_pos.y - current.pos.y, player_pos.z - current.pos.z);   
    mDoMtx_stack_c::YrotS(-shape_angle.y);
    mDoMtx_stack_c::multVec(&player_rel_dist, &player_rel_dist);

    if (player_rel_dist.x < 750.0f && player_rel_dist.x > -750.0f && player_rel_dist.z < 450.0f && player_rel_dist.z > -450.0f) {
        RideOn_Angle(mRideAngle.x, (s16)-player_rel_dist.x, 0x200, 750.0);
        RideOn_Angle(mRideAngle.z, player_rel_dist.z, 0x200, 450.0);
        f32 var_f30 = 0.0f;
        mRideOnFlag = true;
        
        player_speed = fopAcM_GetSpeedF(player);
        if (player_speed > 0.0f) {
            cLib_addCalcAngleS(&mRideAngleAmplitude, 0x150, 11, 0x100, 0);
            intensity_target = 0x400;            
        } else {
            cLib_addCalcAngleS(&mRideAngleAmplitude, 0x100, 11, 0x100, 0);            
        }
    } else {
        cLib_addCalcAngleS(&mRideAngleAmplitude, 0x100, 11, 0x100, 0);
        cLib_addCalcAngleS(&mRideAngle.x, 0, 2, 0x100, 1);
        cLib_addCalcAngleS(&mRideAngle.z, 0, 2, 0x100, 1);
    }

    cLib_addCalc(&mRideIntensity, intensity_target, 0.05f + HREG_F(13), 100.0f, 0.0f);
    return 0;
}

/* 80BE2708-80BE2734 0004C8 002C+00 1/1 0/0 0/0 .text            initBaseMtx__11daObjDust_cFv */
void daObjDust_c::initBaseMtx() {
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    setBaseMtx();
}

/* 80BE2734-80BE2790 0004F4 005C+00 2/2 0/0 0/0 .text            setBaseMtx__11daObjDust_cFv */
void daObjDust_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(shape_angle);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80BE2790-80BE27BC 000550 002C+00 1/1 0/0 0/0 .text
 * rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c              */
static void rideCallBack(dBgW* i_bgw, fopAc_ac_c* i_bgActor, fopAc_ac_c* i_rideActor) {
    fopAc_ac_c* ride_actor = (fopAc_ac_c*)i_rideActor;
    daObjDust_c* a_this = (daObjDust_c*)i_bgActor;

    if (std::abs(ride_actor->current.pos.y - ride_actor->old.pos.y) > 30.0f) {
        a_this->mRideBounce = ride_actor->current.pos.y - ride_actor->old.pos.y;
    }
}

/* 80BE27BC-80BE27E8 00057C 002C+00 1/0 0/0 0/0 .text            daObjDust_Draw__FP11daObjDust_c */
static int daObjDust_Draw(daObjDust_c* i_this) {
    return i_this->MoveBGDraw();
}

/* 80BE27E8-80BE2808 0005A8 0020+00 1/0 0/0 0/0 .text            daObjDust_Execute__FP11daObjDust_c
 */
static int daObjDust_Execute(daObjDust_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80BE2808-80BE2810 0005C8 0008+00 1/0 0/0 0/0 .text            daObjDust_IsDelete__FP11daObjDust_c
 */
static int daObjDust_IsDelete(daObjDust_c* i_this) {
    return 1;
}

/* 80BE2810-80BE2834 0005D0 0024+00 1/0 0/0 0/0 .text            daObjDust_Delete__FP11daObjDust_c
 */
static int daObjDust_Delete(daObjDust_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    i_this->MoveBGDelete();
    return 1;
}

int daObjDust_c::create() {
    fopAcM_SetupActor(this, daObjDust_c);

    int phase_state = dComIfG_resLoad(&mPhaseReq, l_arcName);
    if (phase_state == cPhs_COMPLEATE_e) {
        int dzb_id = dComIfG_getObjctResName2Index(l_arcName, "M_FloatingDust01.dzb");
        JUT_ASSERT(116, dzb_id != -1);

        phase_state = MoveBGCreate(l_arcName, dzb_id, dBgS_MoveBGProc_TypicalRotY, 0x1060, NULL);
        if (phase_state == cPhs_ERROR_e) {
            return phase_state;
        }
    }

    fopAcM_setCullSizeBox(this, -200.0f, -50.0f, -200.0f, 200.0f, 50.0f, 200.0f);

    mAcch.Set(
        fopAcM_GetPosition_p(this),
        fopAcM_GetOldPosition_p(this),
        this,
        1,
        &mAcchCir, 
        fopAcM_GetSpeed_p(this),
        NULL,
        NULL);
    mAcchCir.SetWall(100.0f, 200.0f);
    mAcch.CrrPos(dComIfG_Bgsp());
    current.pos.y = -18850.0f + HREG_F(0) + oREG_F(0);

    return phase_state;
}

/* 80BE2834-80BE2A00 0005F4 01CC+00 1/0 0/0 0/0 .text            daObjDust_Create__FP10fopAc_ac_c */
static int daObjDust_Create(fopAc_ac_c* i_this) {
    daObjDust_c* a_this = (daObjDust_c*)i_this;
    fpc_ProcID id = fopAcM_GetID(i_this);
    return a_this->create();
}

/* 80BE2A70-80BE2AE8 000830 0078+00 1/0 0/0 0/0 .text            CreateHeap__11daObjDust_cFv */
int daObjDust_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, "M_FloatingDust01.bmd");
    JUT_ASSERT(86, modelData != 0);

    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }

    return 1;
}

/* 80BE2AE8-80BE2B30 0008A8 0048+00 1/0 0/0 0/0 .text            Create__11daObjDust_cFv */
int daObjDust_c::Create() {
    initBaseMtx();
    mpBgW->SetRideCallback(rideCallBack);
    fopAcM_wt_c::waterCheck(&current.pos);
    return cPhs_COMPLEATE_e;
}

/* 80BE2B30-80BE2E9C 0008F0 036C+00 1/0 0/0 0/0 .text            Execute__11daObjDust_cFPPA3_A4_f */
// NONMATCHING somehow this needs to not inline TSinCosTable<13,f32>::sinShort
int daObjDust_c::Execute(Mtx** i_mtx) {
    fopAcM_seStartLevel(this, Z2SE_OBJ_FLOATBOARD, 0);
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz& player_pos = fopAcM_GetPosition(player);
    cXyz& player_speed = fopAcM_GetSpeed(player);

    if (fopAcM_SearchByName(PROC_E_YMB, &e_ymb) && e_ymb != NULL) {
        e_ymb_Pos = &fopAcM_GetPosition(e_ymb);
    }
   
    mRideOscillationPhaseX += 768.0f + TREG_F(1) + ((2.0f + HREG_F(1)) * mRideIntensity) + ((2.0f + BREG_F(3)) * mRideOscillationSpeed);
    mRideOscillationPhaseZ += 768.0f + TREG_F(2) + ((2.0f + HREG_F(2)) * mRideIntensity) + ((2.0f + BREG_F(3)) * mRideOscillationSpeed);
    Check_RideOn();

    if (e_ymb != NULL) {
        Search_Ymb();
    }

    cXyz water_check_pos(current.pos.x, current.pos.y + 300.0f, current.pos.z);
    f32 height;  //! @bug: uninitialized value. if the waterCheck fails, this causes the platform height to chase to an unintended height, usually y-0
    if (fopAcM_wt_c::waterCheck(&water_check_pos)) {
        height = fopAcM_wt_c::getWaterY() - 40.0f;
    }

    cLib_addCalc(&current.pos.y, mOffsetY + (HREG_F(0) + (80.0f + height + mRideBounce) + (20.0f * cM_ssin(mRideOscillationPhaseZ))), 0.1f, 15.0f, 0.1f);
    cLib_addCalcAngleS(&shape_angle.x, mRideAngle.x + ((1.0f + nREG_F(0)) * mRideAngleAmplitude * cM_ssin(mRideOscillationPhaseX + oREG_S(1) + 0x2000)), 2, 0x1000, 1);
    cLib_addCalcAngleS(&shape_angle.z, mRideAngle.z + ((1.0f + nREG_F(1)) * mRideAngleAmplitude * cM_ssin(mRideOscillationPhaseZ)), 2, 0x1000, 1);

    cLib_chaseF(&mRideBounce, 0.0f, 1.0f);
    cLib_addCalc(&mRideOscillationSpeed, 0.0f, 0.01f + HREG_F(13), 100.0f, 0.0f);
    cLib_addCalc(&mOffsetY, 0.0f, 0.1f, 100.0f, 0.0f);

    fopAcM_posMoveF(this, mStts.GetCCMoveP());

    *i_mtx = &mBgMtx;    
    setBaseMtx();
    mAcch.CrrPos(dComIfG_Bgsp());
    return 1;
}

/* 80BE2E9C-80BE2F40 000C5C 00A4+00 1/0 0/0 0/0 .text            Draw__11daObjDust_cFv */
int daObjDust_c::Draw() {
    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80BE2F40-80BE2F74 000D00 0034+00 1/0 0/0 0/0 .text            Delete__11daObjDust_cFv */
int daObjDust_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_arcName);
    return 1;
}

/* 80BE3058-80BE3078 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjDust_Method */
static actor_method_class l_daObjDust_Method = {
    (process_method_func)daObjDust_Create,
    (process_method_func)daObjDust_Delete,
    (process_method_func)daObjDust_Execute,
    (process_method_func)daObjDust_IsDelete,
    (process_method_func)daObjDust_Draw,
};


/* 80BE3078-80BE30A8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_DUST */
extern actor_process_profile_definition g_profile_Obj_DUST = {
    fpcLy_CURRENT_e,        // mLayerID
    3,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_Obj_DUST,          // mProcName
    &g_fpcLf_Method.base,   // sub_method
    sizeof(daObjDust_c),    // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    473,                    // mPriority
    &l_daObjDust_Method,    // sub_method
    0x00040180,             // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
  };

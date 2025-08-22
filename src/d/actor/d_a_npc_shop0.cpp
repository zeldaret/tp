/**
 * @file d_a_npc_shop0.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_npc_shop0.h"

/* 80AEA7D8-80AEA7F8 000078 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c
 */
static int createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daNpc_Shop0_c*>(i_this)->createHeap();
}

/* 80AEBC74-80AEBC78 -00001 0004+00 1/1 0/0 0/0 .data            l_resName */
static char* l_resName = "Shop0";

/* 80AEBC78-80AEBC7C -00001 0004+00 1/1 0/0 0/0 .data            l_bmdFileName */
static char* l_bmdFileName = "grA_a.bmd";

/* 80AEBC7C-80AEBC80 -00001 0004+00 1/1 0/0 0/0 .data            l_bckFileNameTBL */
static char* l_bckFileNameTBL = "grA_wait_a";

/* 80AEA7F8-80AEAA10 000098 0218+00 1/0 0/0 0/0 .text            __dt__13daNpc_Shop0_cFv */
daNpc_Shop0_c::~daNpc_Shop0_c() {
    dComIfG_resLoad(&mPhaseReq, getResName());
}

/* 80AEAA10-80AEAC10 0002B0 0200+00 1/1 0/0 0/0 .text            create__13daNpc_Shop0_cFv */
int daNpc_Shop0_c::create() {
    fopAcM_SetupActor(this, daNpc_Shop0_c);

    int phase_step = dComIfG_resLoad(&mPhaseReq, getResName());
    if (phase_step == cPhs_COMPLEATE_e) {
        getParam();
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, 0) == 0) {
            return cPhs_ERROR_e;            
        } else if (isDelete() || init() == 0) {
            return cPhs_ERROR_e;
        }
    }
    return phase_step;
}

dCcD_SrcCyl const daNpc_Shop0_c::mCylDat = {
    {
        {
            0x0, // mFlags
            {
                {0x0, 0x0, 0x0}, // mObjAt
                {0x0, 0x0}, // mObjTg
                0x79 // mObjCo
            } // mSrcObjHitInf
        }, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80AEBC18-80AEBC24 000044 000C+00 0/0 0/0 0/0 .rodata          mParam__19daNpc_Shop0_Param_c */
daNpc_Shop0_Param_c::param const daNpc_Shop0_Param_c::mParam = {
    0x44480000, 
    0x44480000,
    0x41F00000,
};

/* 80AEAE9C-80AEAF8C 00073C 00F0+00 1/1 0/0 0/0 .text            createHeap__13daNpc_Shop0_cFv */
int daNpc_Shop0_c::createHeap() {
    mpModel = mDoExt_J3DModel__create(
        (J3DModelData *) dComIfG_getObjectRes(getResName(), l_bmdFileName),
        0x80000,
        0x11000084
    );
    if (mpModel == NULL) {
        return 0;
    }
    
    mpShopParam = new daNpc_Shop0_Param_c();
    if (mpShopParam == NULL) {
        return 0;
    }

    setBckAnm(getTrnsfrmAnmP(0, &l_bckFileNameTBL), 1.0, 2, 0 , -1, false);
    return 1;
}

/* 80AEAF8C-80AEAFC0 00082C 0034+00 1/1 0/0 0/0 .text            destroy__13daNpc_Shop0_cFv */
int daNpc_Shop0_c::destroy() {
    this->~daNpc_Shop0_c();
    return 1;
}

/* 80AEAFC0-80AEB078 000860 00B8+00 2/2 0/0 0/0 .text            execute__13daNpc_Shop0_cFv */
int daNpc_Shop0_c::execute() {
    int event = checkEvent();
    gravity = -3.0f;

    mAcchCir.SetWallH(40.0f);
    mAcchCir.SetWallR(40.0f);

    if (event) {
        if (mProcess != NULL) {
            (this->*mProcess)(0);
        }
        orderEvent();
    }

    mBckAnm.play();
    mBckAnm.setPlaySpeed(mPlaySpeed);
    
    setRoomInf();
    setCollision();
    setMtx();
    return 1;
}

/* 80AEB078-80AEB148 000918 00D0+00 1/1 0/0 0/0 .text            draw__13daNpc_Shop0_cFv */
int daNpc_Shop0_c::draw() {
    mBckAnm.entry(mpModel->getModelData());
    mDoExt_modelUpdateDL(mpModel);

    if (mGroundCross != -1e+9f) {
        cM3dGPla tri_pla;
        if (dComIfG_Bgsp().GetTriPla(mGndChk, &tri_pla)) {
            dComIfGd_setSimpleShadow(
                &current.pos,
                mGroundCross,
                10.0f,
                &tri_pla.mNormal,
                0,
                1.0f,
                dDlst_shadowControl_c::getSimpleTex());
        }
    }
    return 1;
}

/* 80AEB190-80AEB1A0 000A30 0010+00 5/5 0/0 0/0 .text            getResName__13daNpc_Shop0_cFv */
char* daNpc_Shop0_c::getResName() {
    return l_resName;
}

/* 80AEB1A0-80AEB1C8 000A40 0028+00 1/1 0/0 0/0 .text            getParam__13daNpc_Shop0_cFv */
void daNpc_Shop0_c::getParam() {
    mParam = fopAcM_GetParam(this);
    mFlowNodeNum = (fopAcM_GetParam(this) & 0xffff00) >> 8;
    mFlowNodeNum = 9;
    field_0x9ea = 0;
}

/* 80AEB1C8-80AEB1D0 000A68 0008+00 2/2 0/0 0/0 .text            getFlowNodeNum__13daNpc_Shop0_cFv
 */
int daNpc_Shop0_c::getFlowNodeNum() {
    return mFlowNodeNum;
}

/* 80AEB1D0-80AEB22C 000A70 005C+00 1/1 0/0 0/0 .text            isDelete__13daNpc_Shop0_cFv */
int daNpc_Shop0_c::isDelete() {
    bool ret = 0;
    if (field_0x9ea != 0xff && dComIfGs_isSwitch(field_0x9ea, fopAcM_GetRoomNo(this))) {
        ret = 1;
    }
    return ret;
}

/* 80AEB22C-80AEB32C 000ACC 0100+00 1/1 0/0 0/0 .text            init__13daNpc_Shop0_cFv */
int daNpc_Shop0_c::init() {
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    mAcchCir.SetWall(40.0f, 40.0f);
    mAcch.Set(
        fopAcM_GetPosition_p(this),
        fopAcM_GetOldPosition_p(this),
        this,
        1,
        &mAcchCir,
        fopAcM_GetSpeed_p(this),
        fopAcM_GetAngle_p(this),
        fopAcM_GetShapeAngle_p(this));
    mStts.Init(0xd9, 0xff, this);
    mCyl.SetStts(&mStts);
    mCyl.Set(mCylDat);
    
    attention_info.flags = 0xa;
    eventInfo.setArchiveName(getResName());
    field_0x9e8 = -1;

    setProcess(daNpc_Shop0_c::wait, NULL, 0);
    setRoomInf();
    return execute();
}

/* 80AEBDC0-80AEBDD8 000000 0015+03 1/1 0/0 0/0 .bss             l_fileName */
static char l_fileName[21];

/* 80AEB32C-80AEB3A8 000BCC 007C+00 1/1 0/0 0/0 .text getTrnsfrmAnmP__13daNpc_Shop0_cFiPPc */
J3DAnmTransform* daNpc_Shop0_c::getTrnsfrmAnmP(int i_fileIndex, char** i_fileName) {
    strcpy(l_fileName, i_fileName[i_fileIndex]);
    strcat(l_fileName, ".bck");
    return (J3DAnmTransform*) dComIfG_getObjectRes(getResName(), l_fileName);
}

/* 80AEB3A8-80AEB45C 000C48 00B4+00 1/1 0/0 0/0 .text
 * setBckAnm__13daNpc_Shop0_cFP15J3DAnmTransformfiiib           */
int daNpc_Shop0_c::setBckAnm(J3DAnmTransform* i_bck, f32 i_rate, int i_attr, int i_start, int i_end,
        bool i_modify)  {
    int init_status = mBckAnm.init(i_bck, 1, i_attr, 0, i_start, i_end, i_modify);
    if (init_status) {
        mBckAnm.reset();
        mPlaySpeed = i_rate;
    }
    return init_status;
}

/* 80AEB45C-80AEB4C8 000CFC 006C+00 1/1 0/0 0/0 .text            setCollision__13daNpc_Shop0_cFv */
int daNpc_Shop0_c::setCollision() {
    mCyl.SetR(40.0f);
    mCyl.SetH(40.0f);
    mCyl.SetC(current.pos);
    
    dComIfG_Ccsp()->Set(&mCyl);
    return 1;
}

/* 80AEB4C8-80AEB5E8 000D68 0120+00 1/1 0/0 0/0 .text            checkEvent__13daNpc_Shop0_cFv */
int daNpc_Shop0_c::checkEvent() {
    int ret = 1;
    if (dComIfGp_event_runCheck()) {
        ret = 0;
        if (eventInfo.checkCommandTalk()) {
            if (chkProcess(&daNpc_Shop0_c::talk)) {
                ret = (this->*mProcess)(0);
            } else if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
                setProcess(&daNpc_Shop0_c::talk, NULL, 0); 
            }
            return ret;
        }
    }
    return ret;
}

/* 80AEB5E8-80AEB634 000E88 004C+00 1/1 0/0 0/0 .text            orderEvent__13daNpc_Shop0_cFv */
void daNpc_Shop0_c::orderEvent() {
    if (getFlowNodeNum() >= 0 && attention_info.flags == 0xa) {
        eventInfo.onCondition(1);
    }
}

/* 80AEB634-80AEB6DC 000ED4 00A8+00 1/1 0/0 0/0 .text            setMtx__13daNpc_Shop0_cFv */
void daNpc_Shop0_c::setMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());

    attention_info.position = current.pos;
    attention_info.position.y += 240.0f;
    eyePos = current.pos;
}

/* 80AEB6DC-80AEB780 000F7C 00A4+00 2/2 0/0 0/0 .text            setRoomInf__13daNpc_Shop0_cFv */
void daNpc_Shop0_c::setRoomInf() {
    u32 room_no;
    mGndChk.SetPos(&current.pos);

    mGroundCross = dComIfG_Bgsp().GroundCross(&mGndChk);

    if (mGroundCross != -1e+09f) {
        room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
        tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    } else {
        room_no = dComIfGp_roomControl_getStayNo();        
    }
    tevStr.room_no = room_no;
    fopAcM_SetRoomNo(this, room_no);
}

/* 80AEB780-80AEB7F0 001020 0070+00 1/1 0/0 0/0 .text            cut_alert__13daNpc_Shop0_cFii */
int daNpc_Shop0_c::cut_alert(int, int i_param1) {
    if (i_param1) {
        mMsgFlow.init(this, getFlowNodeNum(), 0, NULL);
        return 0;
    } else if (mMsgFlow.doFlow(this, NULL, 0) == 0) {
        return 0;
    }
    return 1;
}

/* 80AEB7F0-80AEB824 001090 0034+00 2/2 0/0 0/0 .text
 * chkProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_i       */
int daNpc_Shop0_c::chkProcess(int (daNpc_Shop0_c::* process)(void*)) {
    return process == mProcess;

}

/* 80AEB824-80AEB920 0010C4 00FC+00 3/3 0/0 0/0 .text
 * setProcess__13daNpc_Shop0_cFM13daNpc_Shop0_cFPCvPvPv_iPvi    */
int daNpc_Shop0_c::setProcess(int (daNpc_Shop0_c::* process)(void*), void* i_func_param,
                                   int param_2) {
    int ret = 0;    
    if (chkProcess(process) && param_2 == 0) {
        return 0;
    }

    mMode = 2;
    if (mProcess != NULL) {
        ret = (this->*mProcess)(0);
    }

    mProcess = process;
    mMode = 0;
    if (mProcess != NULL) {
        ret = (this->*mProcess)(i_func_param);
    }

    mMode = 1;
    return ret;
}

/* 80AEB920-80AEB9BC 0011C0 009C+00 2/0 0/0 0/0 .text            wait__13daNpc_Shop0_cFPv */
int daNpc_Shop0_c::wait(void* i_stat_loc) {
    switch (mMode) {
        case 0:
            break;        
        case 1:
            (daPy_getPlayerActorClass()->current.pos - current.pos).absXZ();
            break;
        case 2:
        default:
            break;
    }
    return 1;
}

/* 80AEB9BC-80AEBA8C 00125C 00D0+00 2/0 0/0 0/0 .text            talk__13daNpc_Shop0_cFPv */
int daNpc_Shop0_c::talk(void* i_stat_loc) {
    int ret = 0;
    switch (mMode) {
        case 0:
            cut_alert(-1, 1);
            break;
        case 1:
            if (cut_alert(-1, 0) != 0) {
                setProcess(daNpc_Shop0_c::wait, NULL, 0);
            }
            break;
        case 2:
            dComIfGp_event_reset();
            ret = 1;
    }
    return ret;
}

/* 80AEBA8C-80AEBAAC 00132C 0020+00 1/0 0/0 0/0 .text            daNpc_Shop0_Create__FPv */
static int daNpc_Shop0_Create(void* i_this) {
    return static_cast<daNpc_Shop0_c*>(i_this)->create();
}

/* 80AEBAAC-80AEBACC 00134C 0020+00 1/0 0/0 0/0 .text            daNpc_Shop0_Delete__FPv */
static int daNpc_Shop0_Delete(void* i_this) {
    return static_cast<daNpc_Shop0_c*>(i_this)->destroy();
}

/* 80AEBACC-80AEBAEC 00136C 0020+00 1/0 0/0 0/0 .text            daNpc_Shop0_Execute__FPv */
static int daNpc_Shop0_Execute(void* i_this) {
    return static_cast<daNpc_Shop0_c*>(i_this)->execute();
}

/* 80AEBAEC-80AEBB0C 00138C 0020+00 1/0 0/0 0/0 .text            daNpc_Shop0_Draw__FPv */
static int daNpc_Shop0_Draw(void* i_this) {
    return static_cast<daNpc_Shop0_c*>(i_this)->draw();
}

/* 80AEBB0C-80AEBB14 0013AC 0008+00 1/0 0/0 0/0 .text            daNpc_Shop0_IsDelete__FPv */
static int daNpc_Shop0_IsDelete(void*) {
    return true;
}

/* 80AEBCB0-80AEBCD0 -00001 0020+00 1/0 0/0 0/0 .data            daNpc_Shop0_MethodTable */
static actor_method_class daNpc_Shop0_MethodTable = {
    daNpc_Shop0_Create, daNpc_Shop0_Delete, daNpc_Shop0_Execute, daNpc_Shop0_IsDelete, daNpc_Shop0_Draw,
};

/* 80AEBCD0-80AEBD00 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_NPC_SHOP0 */
extern actor_process_profile_definition g_profile_NPC_SHOP0 = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_NPC_SHOP0,           // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daNpc_Shop0_c),    // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  426,                      // mPriority
  &daNpc_Shop0_MethodTable, // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_0_e,        // cullType
};

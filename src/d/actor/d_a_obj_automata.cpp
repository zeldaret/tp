/**
 * @file d_a_obj_automata.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_automata.h"
#include "SSystem/SComponent/c_counter.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"

/* 80BA6CD0-80BA6CD8 000020 0008+00 4/5 0/0 0/0 .data            l_bmdData */
static int l_bmdData[1][2] = {
    9, 1,
};

/* 80BA6CD8-80BA6CE0 -00001 0008+00 4/6 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "AutoMata",
};

/* ############################################################################################## */
/* 80BA6C10-80BA6C1C 000000 000C+00 5/5 0/0 0/0 .rodata          m__22daObj_AutoMata_Param_c */
f32 const daObj_AutoMata_Param_c::m[3] = {
    220.0f, 80.0f, 40.0f,
};

/* 80BA6C1C-80BA6C4C 00000C 0030+00 1/1 0/0 0/0 .rodata          l_ccDObjData */
static dCcD_SrcGObjInf const l_ccDObjData = 
{
        {0x0, {{0x0, 0x0, 0}, {0xD8FBFDFF, 0x1F}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_STONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
};

/* 80BA6CE0-80BA6D24 000030 0044+00 1/2 0/0 0/0 .data            l_ccDCyl */
static dCcD_SrcCyl l_ccDCyl = {
    l_ccDObjData, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80BA6D24-80BA6D64 000074 0040+00 1/2 0/0 0/0 .data            l_ccDSph */
static dCcD_SrcSph l_ccDSph = {
    l_ccDObjData, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f} // mSph
    } // mSphAttr
};

/* 80BA56EC-80BA5990 0000EC 02A4+00 1/0 0/0 0/0 .text            __dt__16daObj_AutoMata_cFv */
daObj_AutoMata_c::~daObj_AutoMata_c() {
    OS_REPORT("|%06d:%x|daObj_AutoMata_c -> デストラクト\n", g_Counter.mCounter0, this);
    if (mpMorf != NULL) {
        mpMorf->stopZelAnime();
    }
    dComIfG_resDelete(&mPhase, l_resNameList[l_bmdData[field_0xb30][1]]);
}

/* 80BA5990-80BA5D2C 000390 039C+00 1/1 0/0 0/0 .text            create__16daObj_AutoMata_cFv */
int daObj_AutoMata_c::create() {
    fopAcM_SetupActor(this, daObj_AutoMata_c);
    field_0xb30 = 0;
    int rv = dComIfG_resLoad(&mPhase, l_resNameList[l_bmdData[field_0xb30][1]]);
    if (rv == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) <%08x>\n", fopAcM_getProcNameString(this), field_0xb30, fopAcM_GetParam(this));
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, 0x1370) == 0) {
            return cPhs_ERROR_e;
        } 
        mpMorf->getModel()->getModelData();
        fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
        fopAcM_setCullSizeBox(this, -200.0f, -100.0f, -200.0f, 200.0f, 300.0f, 200.0f);
        mCreature.init(&current.pos, &eyePos, 3, 1);
        mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &field_0x834,
                  fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));
        mStts.Init(0xff, 0, this);
        mCyl.Set(l_ccDCyl);
        mCyl.SetStts(&mStts);
        mSph.Set(l_ccDSph);
        mSph.SetStts(&mStts);
        mAcch.SetWallNone();
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1e9f) {
            setEnvTevColor();
            setRoomNo();
        }
        Execute();
    }
    return rv;
}

/* 80BA5F88-80BA60A0 000988 0118+00 1/1 0/0 0/0 .text            CreateHeap__16daObj_AutoMata_cFv */
int daObj_AutoMata_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(
        l_resNameList[l_bmdData[field_0xb30][1]],
        l_bmdData[field_0xb30][0]);
    if (modelData == NULL) {
        return 0;
    }
    mpMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mCreature, 0x80000,
                                  0x11000284);
    if (mpMorf == NULL || mpMorf->getModel() == NULL) {
        return 0;
    } 
    return setAnm(0, false) ? 1 : 0;
}

/* 80BA60A0-80BA60D4 000AA0 0034+00 1/1 0/0 0/0 .text            Delete__16daObj_AutoMata_cFv */
int daObj_AutoMata_c::Delete() {
    OS_REPORT("|%06d:%x|daObj_AutoMata_c -> Delete\n", g_Counter.mCounter0, this);
    this->~daObj_AutoMata_c();
    return 1;
}

/* 80BA60D4-80BA639C 000AD4 02C8+00 2/2 0/0 0/0 .text            Execute__16daObj_AutoMata_cFv */
int daObj_AutoMata_c::Execute() {
    if (home.roomNo == dComIfGp_roomControl_getStayNo()) {
        cXyz sphCenter;
        cXyz cStack_28;
        mAcch.SetWallNone();
        gravity = 0.0f;
        if (dComIfGp_event_runCheck()) {
            gravity = -4.0f;
        }
        fopAcM_posMoveF(this, mStts.GetCCMoveP());
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundH = mAcch.GetGroundH();
        if (mGroundH != -1e9f) {
            if (fopAcIt_Judge((fopAcIt_JudgeFunc)srchTHouse, &current.pos) != NULL) {
                current.pos.y = mGroundH;
            }
            setEnvTevColor();
            setRoomNo();
        }
        mpMorf->setPlaySpeed(mAnmPlaySpeed);
        mpMorf->play(0, 0);
        mBtk.setPlaySpeed(mAnmPlaySpeed);
        mBtk.play();
        mAnmPlaySpeed = 0.0f;
        setSe();
        setMtx();
        if (field_0xb31 == 0) {
            cStack_28.set(0.0f, 40.0f, 0.0f);
            mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(3));
            mDoMtx_stack_c::multVec(&cStack_28, &sphCenter);
            mSph.SetC(sphCenter);
            mSph.SetR(daObj_AutoMata_Param_c::m[2]);
            dComIfG_Ccsp()->Set(&mSph);
            mCyl.SetH(daObj_AutoMata_Param_c::m[0]);
            mCyl.SetR(daObj_AutoMata_Param_c::m[1]);
            mCyl.SetC(current.pos);
            dComIfG_Ccsp()->Set(&mCyl);
        }
        mSph.ClrCoHit();
        mCyl.ClrCoHit();
        attention_info.flags = 0;
        eyePos = attention_info.position = current.pos;
        field_0xb31 = 0;
        return 1;
    } 
    return 0;
}

/* 80BA639C-80BA6480 000D9C 00E4+00 1/1 0/0 0/0 .text            Draw__16daObj_AutoMata_cFv */
int daObj_AutoMata_c::Draw() {
    J3DModel* morfModel = mpMorf->getModel();
    J3DModelData* modelData = morfModel->getModelData();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(morfModel, &tevStr);
    mBtk.entry(modelData);
    mpMorf->entryDL();
    mBtk.remove(modelData);
    if (mGroundH != -1e+09f) {
        mShadowId = dComIfGd_setShadow(
            mShadowId, 1, morfModel, &current.pos, 600.0f, 20.0f,
            current.pos.y, mGroundH, mGndChk,
            &tevStr, 0, 1.0f, dDlst_shadowControl_c::getSimpleTex());
    }
    return 1;
}

/* 80BA6480-80BA64A0 000E80 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__16daObj_AutoMata_cFP10fopAc_ac_c         */
int daObj_AutoMata_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daObj_AutoMata_c*>(i_this)->CreateHeap();
}

/* 80BA64A0-80BA6500 000EA0 0060+00 1/1 0/0 0/0 .text
 * srchTHouse__16daObj_AutoMata_cFP10fopAc_ac_cPv               */
void* daObj_AutoMata_c::srchTHouse(fopAc_ac_c* actor, void* param_1) {
    if (fopAcM_GetName(actor) == PROC_Obj_TobyHouse) {
        if (fopAcM_IsExecuting(fopAcM_GetID(actor))) {
            return actor;
        }
    }
    return NULL;
}

/* ############################################################################################## */
/* 80BA6C78-80BA6C80 000068 0008+00 0/1 0/0 0/0 .rodata          bckArcIx$4220 */
static int const bckArcIx[2] = {
    5, 6,
};

/* 80BA6C80-80BA6C88 000070 0008+00 0/1 0/0 0/0 .rodata          btkArcIx$4221 */
static int const btkArcIx[2] = {
    12, 13,
};

/* 80BA6C88-80BA6C90 000078 0008+00 0/1 0/0 0/0 .rodata          playMode$4222 */
static int const playMode[2] = {
    0, 2,
};

/* 80BA6500-80BA6634 000F00 0134+00 1/1 0/0 1/1 .text            setAnm__16daObj_AutoMata_cFib */
int daObj_AutoMata_c::setAnm(int param_1, bool param_2) {
    J3DModelData* modelData = mpMorf->getModel()->getModelData();
    const char* resName = l_resNameList[l_bmdData[field_0xb30][1]];
    if (param_1 >= 0 && param_1 < 2) {
        J3DAnmTransform* anmTransform = (J3DAnmTransform*)dComIfG_getObjectRes(
            resName,
            bckArcIx[param_1]);
        if (anmTransform == NULL) {
            return 0;
        }
        mpMorf->setAnm(anmTransform, playMode[param_1], 0.0f, 0.0f, 0.0f, -1.0f);
        J3DAnmTextureSRTKey* srtKey =
            (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(resName, btkArcIx[param_1]);
        if (srtKey == NULL) {
            return 0;
        }
        if (mBtk.init(modelData, srtKey, 1, playMode[param_1], 0.0f, 0, -1) == 1) {
            return 1;
        }
        return 0;
    }
    return 0;
}

/* 80BA6634-80BA6690 001034 005C+00 2/2 0/0 0/0 .text setEnvTevColor__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::setEnvTevColor() {
    tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    tevStr.room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
}

/* 80BA6690-80BA66D4 001090 0044+00 2/2 0/0 0/0 .text            setRoomNo__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::setRoomNo() {
    s32 roomId = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, roomId);
    mStts.SetRoomId(roomId);
}

/* 80BA66D4-80BA674C 0010D4 0078+00 1/1 0/0 0/0 .text            setMtx__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::setMtx() {
    J3DModel* morfModel = mpMorf->getModel();
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle);
    mDoMtx_stack_c::scaleM(scale);
    morfModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();
}

/* 80BA674C-80BA6A10 00114C 02C4+00 1/1 0/0 0/0 .text            setSe__16daObj_AutoMata_cFv */
void daObj_AutoMata_c::setSe() {
    if (cM3d_IsZero(mpMorf->getPlaySpeed()) == false) {
        const char* resName = l_resNameList[l_bmdData[field_0xb30][1]];
        J3DAnmTransform* anmTransform = (J3DAnmTransform*)dComIfG_getObjectRes(resName, 5);
        J3DAnmTransform* currentAnm = mpMorf->getAnm();
        if (anmTransform == currentAnm) {
            if (mpMorf->checkFrame(17.0f)) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_AMATA_ACTION, &current.pos,
                                         mpMorf->getPlaySpeed() * 100.0f, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
            }
            Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_AMATA_CRK, &current.pos,
                                          mpMorf->getPlaySpeed() * 100.0f, 0, 1.0f, 1.0f, -1.0f,
                                          -1.0f, 0);
        }
        anmTransform = (J3DAnmTransform*)dComIfG_getObjectRes(resName, 6);
        currentAnm = mpMorf->getAnm();
        if (anmTransform == currentAnm) {
            if (mpMorf->checkFrame(7.0f)) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_AMATA_ACTION, &current.pos,
                                         mpMorf->getPlaySpeed() * 100.0f, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0, 0);
            }
            if (mpMorf->checkFrame(67.0f)) {
                Z2GetAudioMgr()->seStart(Z2SE_OBJ_AMATA_ACTION, &current.pos,
                                         mpMorf->getPlaySpeed() * 100.0f, 0, 1.0f, 1.0f, -1.0f,
                                         -1.0f, 0);
            }
            Z2GetAudioMgr()->seStartLevel(Z2SE_OBJ_AMATA_CRK, &current.pos,
                                          mpMorf->getPlaySpeed() * 100.0f, 0, 1.0f, 1.0f, -1.0f,
                                          -1.0f, 0);
        }
    }
}

/* 80BA6A10-80BA6A30 001410 0020+00 1/0 0/0 0/0 .text            daObj_AutoMata_Create__FPv */
static int daObj_AutoMata_Create(void* i_this) {
    return static_cast<daObj_AutoMata_c*>(i_this)->create();
}

/* 80BA6A30-80BA6A50 001430 0020+00 1/0 0/0 0/0 .text            daObj_AutoMata_Delete__FPv */
static int daObj_AutoMata_Delete(void* i_this) {
    return static_cast<daObj_AutoMata_c*>(i_this)->Delete();
}

/* 80BA6A50-80BA6A70 001450 0020+00 1/0 0/0 0/0 .text            daObj_AutoMata_Execute__FPv */
static int daObj_AutoMata_Execute(void* i_this) {
    return static_cast<daObj_AutoMata_c*>(i_this)->Execute();
}

/* 80BA6A70-80BA6A90 001470 0020+00 1/0 0/0 0/0 .text            daObj_AutoMata_Draw__FPv */
static int daObj_AutoMata_Draw(void* i_this) {
    return static_cast<daObj_AutoMata_c*>(i_this)->Draw();
}

/* 80BA6A90-80BA6A98 001490 0008+00 1/0 0/0 0/0 .text            daObj_AutoMata_IsDelete__FPv */
static int daObj_AutoMata_IsDelete(void* i_this) {
    return 1;
}

/* 80BA6E5C-80BA6E60 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_AutoMata_Param_c l_HIO;

/* 80BA6D64-80BA6D84 -00001 0020+00 1/0 0/0 0/0 .data            daObj_AutoMata_MethodTable */
static actor_method_class daObj_AutoMata_MethodTable = {
    (process_method_func)daObj_AutoMata_Create,
    (process_method_func)daObj_AutoMata_Delete,
    (process_method_func)daObj_AutoMata_Execute,
    (process_method_func)daObj_AutoMata_IsDelete,
    (process_method_func)daObj_AutoMata_Draw,
};

/* 80BA6D84-80BA6DB4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_AUTOMATA */
extern actor_process_profile_definition g_profile_OBJ_AUTOMATA = {
  fpcLy_CURRENT_e,             // mLayerID
  8,                           // mListID
  fpcPi_CURRENT_e,             // mListPrio
  PROC_OBJ_AUTOMATA,           // mProcName
  &g_fpcLf_Method.base,       // sub_method
  sizeof(daObj_AutoMata_c),    // mSize
  0,                           // mSizeOther
  0,                           // mParameters
  &g_fopAc_Method.base,        // sub_method
  81,                          // mPriority
  &daObj_AutoMata_MethodTable, // sub_method
  0x00044100,                  // mStatus
  fopAc_ACTOR_e,               // mActorType
  fopAc_CULLBOX_CUSTOM_e,      // cullType
};

/* 80BA6CA4-80BA6CA4 000094 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

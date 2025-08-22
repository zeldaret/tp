/**
 * @file d_a_bullet.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_bullet.h"
#include "d/d_com_inf_game.h"

/* 8065678C-80656790 -00001 0004+00 1/1 0/0 0/0 .data            l_resFileNameList */
static char* l_resFileNameList[] = {"Hanjo1"};

/* 80656790-80656794 -00001 0004+00 1/2 0/0 0/0 .data            l_bmdFileNameList */
static char* l_bmdFileNameList[] = {"hanjo_stone.bmd"};

/* 806568CC-806568D0 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daBullet_Param_c l_HIO;

/* 80656714-80656744 000000 0030+00 2/2 0/0 0/0 .rodata          mCcDObjInfo__10daBullet_c */
const dCcD_SrcGObjInf daBullet_c::mCcDObjInfo = {
    {0, {{0, 0, 0}, {0x0, 0x0}, {0x79}}},
    {dCcD_SE_NONE, 0, 0, 0, 0},
    {dCcD_SE_NONE, 0, 0, 0, 0},
    {0},
};

/* 80656794-806567D4 000008 0040+00 2/2 0/0 0/0 .data            mCcDSph__10daBullet_c */
dCcD_SrcSph daBullet_c::mCcDSph = {
    daBullet_c::mCcDObjInfo,
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f}  // mSph
    }  // mSphAttr
};

/* 8065594C-80655B08 0000EC 01BC+00 1/0 0/0 0/0 .text            __dt__10daBullet_cFv */
daBullet_c::~daBullet_c() {
    dComIfG_resDelete(&mPhase, getResName());
}

/* 80655B08-80655C90 0002A8 0188+00 1/1 0/0 0/0 .text            create__10daBullet_cFv */
int daBullet_c::create() {
    fopAcM_SetupActor(this, daBullet_c);
    mType = getTypeFromParam();

    int phase_state = dComIfG_resLoad(&mPhase, getResName());
    if (phase_state == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, createHeapCallBack, 0x810)) {
            return cPhs_ERROR_e;
        }

        initialize();
    }

    return phase_state;
}

/* 80655E5C-80655EDC 0005FC 0080+00 1/1 0/0 0/0 .text            CreateHeap__10daBullet_cFv */
BOOL daBullet_c::CreateHeap() {
    void* mdlData_p = dComIfG_getObjectRes(getResName(), getBmdName());
    JUT_ASSERT(273, 0 != mdlData_p);
    mpModel = mDoExt_J3DModel__create((J3DModelData*)mdlData_p, 0x80000, 0x11000084);
    return mpModel != NULL;
}

/* 80655EDC-80655F10 00067C 0034+00 1/1 0/0 0/0 .text            Delete__10daBullet_cFv */
int daBullet_c::Delete() {
    fopAcM_GetID(this);
    this->~daBullet_c();
    return 1;
}

/* 80656744-8065675C 000030 0018+00 1/2 0/0 0/0 .rodata          m__16daBullet_Param_c */
daBullet_HIOParam const daBullet_Param_c::m = {
    -3.0f,
    255.0f,
    3.0f,
    1.5f,
    3.0f,
    0x708,
};

/* 80655F10-806560FC 0006B0 01EC+00 2/2 0/0 0/0 .text            Execute__10daBullet_cFv */
int daBullet_c::Execute() {
    gravity = daBullet_Param_c::m.gravity;

    if (field_0x957 == 0) {
        if (mProcess != NULL) {
            (this->*mProcess)(NULL);
        }

        fopAcM_posMoveF(this, mCcStts.GetCCMoveP());
        mAcch.CrrPos(dComIfG_Bgsp());
        mGndChk = mAcch.m_gnd;
        mGroundY = mAcch.GetGroundH();
    } else {
        mGroundY = -1000000000.0f;
    }

    int room_no;
    if (mGroundY != -1000000000.0f) {
        room_no = dComIfG_Bgsp().GetRoomId(mGndChk);
        tevStr.YukaCol = dComIfG_Bgsp().GetPolyColor(mGndChk);
    } else {
        room_no = dComIfGp_roomControl_getStayNo();
    }

    tevStr.room_no = room_no;
    fopAcM_SetRoomNo(this, tevStr.room_no);
    attention_info.flags = 0;
    attention_info.position = current.pos;
    eyePos = attention_info.position;

    if (field_0x957 == 0) {
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::ZXYrotM(shape_angle);
        mDoMtx_stack_c::scaleM(scale);
        mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }

    field_0x957 = 0;
    return 1;
}

/* 806560FC-80656160 00089C 0064+00 1/1 0/0 0/0 .text            Draw__10daBullet_cFv */
int daBullet_c::Draw() {
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    mDoExt_modelUpdateDL(mpModel);
    return 1;
}

/* 80656160-80656180 000900 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__10daBullet_cFP10fopAc_ac_c               */
int daBullet_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return ((daBullet_c*)i_this)->CreateHeap();
}

/* 80656180-80656198 000920 0018+00 3/3 0/0 0/0 .text            getResName__10daBullet_cFv */
const char* daBullet_c::getResName() {
    return l_resFileNameList[mType];
}

/* 80656198-806561B0 000938 0018+00 1/1 0/0 0/0 .text            getBmdName__10daBullet_cFv */
const char* daBullet_c::getBmdName() {
    return l_bmdFileNameList[mType];
}

/* 806561B0-806561D0 000950 0020+00 1/1 0/0 0/0 .text            getTypeFromParam__10daBullet_cFv */
int daBullet_c::getTypeFromParam() {
    u8 prm = fopAcM_GetParam(this);
    switch (prm) {
    case 0:
        return 0;
    }

    return 0;
}

static f32 dummyLiteral() {
    f32 rt = 0.1f;
    rt += 0.5f;
    return rt;
}

static f32 dummyLiteral2() {
    return 0.0f;
}

/* 806561D0-80656378 000970 01A8+00 1/1 0/0 0/0 .text            initialize__10daBullet_cFv */
void daBullet_c::initialize() {
    mpModel->getModelData();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox(this, -10.0f, -10.0f, -10.0f, 10.0f, 10.0f, 10.0f);

    mAcchCir.SetWall(daBullet_Param_c::m.width, daBullet_Param_c::m.knee_height);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir, fopAcM_GetSpeed_p(this), fopAcM_GetAngle_p(this), fopAcM_GetShapeAngle_p(this));

    mCcStts.Init(daBullet_Param_c::m.weight, 0, this);
    mCcSph.Set(mCcDSph);
    mCcSph.SetStts(&mCcStts);
    mAcch.CrrPos(dComIfG_Bgsp());
    mGndChk = mAcch.m_gnd;
    mGroundY = mAcch.GetGroundH();

    setProcess(&daBullet_c::wait);
    mLifetime = daBullet_Param_c::m.lifetime;
    Execute();
}

/* 80656378-80656420 000B18 00A8+00 2/2 0/0 0/0 .text
 * setProcess__10daBullet_cFM10daBullet_cFPCvPvPv_i             */
int daBullet_c::setProcess(daBullet_c::processFn i_process) {
    mMode = 2;
    if (mProcess != NULL) {
        (this->*mProcess)(NULL);
    }

    mMode = 0;
    mProcess = i_process;

    if (mProcess != NULL) {
        (this->*mProcess)(NULL);
    }

    return 1;
}

/* 80656420-806564B8 000BC0 0098+00 1/0 0/0 0/0 .text            wait__10daBullet_cFPv */
int daBullet_c::wait(void*) {
    switch (mMode) {
    case 0:
        mMode = 1;
        break;
    case 1:
        if (cM3d_IsZero(speedF) == false) {
            setProcess(&daBullet_c::move);
        }
        break;
    case 2:
        break;
    }

    return 1;
}

/* 806564B8-80656548 000C58 0090+00 1/0 0/0 0/0 .text            move__10daBullet_cFPv */
int daBullet_c::move(void*) {
    switch (mMode) {
    case 0:
        mMode = 1;
        break;
    case 1:
        if (cLib_calcTimer<int>(&mLifetime) == 0) {
            fopAcM_delete(this);
        } else if (mAcch.ChkGroundHit() || mAcch.ChkWallHit()) {
            fopAcM_delete(this);
        }
        break;
    case 2:
        break;
    }

    return 1;
}

/* 80656548-80656568 000CE8 0020+00 1/0 0/0 0/0 .text            daBullet_Create__FPv */
static int daBullet_Create(void* i_this) {
    return ((daBullet_c*)i_this)->create();
}

/* 80656568-80656588 000D08 0020+00 1/0 0/0 0/0 .text            daBullet_Delete__FPv */
static int daBullet_Delete(void* i_this) {
    return ((daBullet_c*)i_this)->Delete();
}

/* 80656588-806565A8 000D28 0020+00 1/0 0/0 0/0 .text            daBullet_Execute__FPv */
static int daBullet_Execute(void* i_this) {
    return ((daBullet_c*)i_this)->Execute();
}

/* 806565A8-806565C8 000D48 0020+00 1/0 0/0 0/0 .text            daBullet_Draw__FPv */
static int daBullet_Draw(void* i_this) {
    return ((daBullet_c*)i_this)->Draw();
}

/* 806565C8-806565D0 000D68 0008+00 1/0 0/0 0/0 .text            daBullet_IsDelete__FPv */
static int daBullet_IsDelete(void* i_this) {
    return 1;
}

/* 806567EC-8065680C -00001 0020+00 1/0 0/0 0/0 .data            daBullet_MethodTable */
static actor_method_class daBullet_MethodTable = {
    (process_method_func)daBullet_Create,
    (process_method_func)daBullet_Delete,
    (process_method_func)daBullet_Execute,
    (process_method_func)daBullet_IsDelete,
    (process_method_func)daBullet_Draw,
};

/* 8065680C-8065683C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_BULLET */
extern actor_process_profile_definition g_profile_BULLET = {
  fpcLy_CURRENT_e,        // mLayerID
  8,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_BULLET,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daBullet_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  751,                    // mPriority
  &daBullet_MethodTable,  // sub_method
  0x00044000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

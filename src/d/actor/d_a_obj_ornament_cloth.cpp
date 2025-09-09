/**
 * @file d_a_obj_ornament_cloth.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_ornament_cloth.h"
#include "dol2asm.h"



//
// Forward References:
//

extern "C" void create_init__14daObjOnCloth_cFv();
extern "C" void initBaseMtx__14daObjOnCloth_cFv();
extern "C" void setBaseMtx__14daObjOnCloth_cFv();
extern "C" void setNormalClothPos__14daObjOnCloth_cFv();
extern "C" void calcJointAngle__14daObjOnCloth_cFv();
extern "C" void checkPlayerMove__14daObjOnCloth_cFv();
extern "C" static void nodeCallBack__FP8J3DJointi();
extern "C" static void createSolidHeap__FP10fopAc_ac_c();
extern "C" void __dt__12J3DFrameCtrlFv();
extern "C" static void daObjOnCloth_Draw__FP14daObjOnCloth_c();
extern "C" static void daObjOnCloth_Execute__FP14daObjOnCloth_c();
extern "C" static bool daObjOnCloth_IsDelete__FP14daObjOnCloth_c();
extern "C" static void daObjOnCloth_Delete__FP14daObjOnCloth_c();
extern "C" void __dt__12ClothJoint_cFv();
extern "C" static void daObjOnCloth_Create__FP10fopAc_ac_c();
extern "C" void __ct__12ClothJoint_cFv();
extern "C" u8 const M_attr__14daObjOnCloth_c[48];
extern "C" extern char const* const d_a_obj_ornament_cloth__stringBase0;

//
// External References:
//

extern "C" void mDoMtx_XrotM__FPA4_fs();
extern "C" void mDoMtx_YrotM__FPA4_fs();
extern "C" void push__14mDoMtx_stack_cFv();
extern "C" void pop__14mDoMtx_stack_cFv();
extern "C" void transS__14mDoMtx_stack_cFRC4cXyz();
extern "C" void transM__14mDoMtx_stack_cFfff();
extern "C" void init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss();
extern "C" void entry__13mDoExt_btkAnmFP16J3DMaterialTablef();
extern "C" void mDoExt_modelUpdateDL__FP8J3DModel();
extern "C" void mDoExt_J3DModel__create__FP12J3DModelDataUlUl();
extern "C" void __ct__10fopAc_ac_cFv();
extern "C" void __dt__10fopAc_ac_cFv();
extern "C" void fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl();
extern "C" void fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff();
extern "C" void fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c();
extern "C" void dComIfG_resLoad__FP30request_of_phase_process_classPCc();
extern "C" void dComIfG_resDelete__FP30request_of_phase_process_classPCc();
extern "C" void getRes__14dRes_control_cFPCcPCcP11dRes_info_ci();
extern "C" void dKyw_get_AllWind_vecpow__FP4cXyz();
extern "C" void settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c();
extern "C" void setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c();
extern "C" void __pl__4cXyzCFRC3Vec();
extern "C" void __mi__4cXyzCFRC3Vec();
extern "C" void __ml__4cXyzCFf();
extern "C" void normalizeZP__4cXyzFv();
extern "C" void cM_atan2s__Fff();
extern "C" void cM_rnd__Fv();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void init__12J3DFrameCtrlFs();
extern "C" void __destroy_arr();
extern "C" void __construct_array();
extern "C" void _savegpr_22();
extern "C" void _savegpr_25();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_22();
extern "C" void _restgpr_25();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" u8 now__14mDoMtx_stack_c[48];
extern "C" u8 mCurrentMtx__6J3DSys[48];
extern "C" u8 sincosTable___5JMath[65536];

//
// Declarations:
//

#include "d/d_a_obj.h"

#ifdef DEBUG
class daObjOnCloth_Hio_c : public JORReflexible {
public:

    void default_set() { mAttr = daObjOnCloth_c::M_attr; }

    void genMessage(JORMContext* ctx) {
        ctx->genLabel("§ 飾り布パラメータ設定  §\n", 0, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 0x18); // § Ornamental Fabric Parameter Strings §
        ctx->genSlider("重力", &mAttr.gravity, 0.0f, 30.0f, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("オフセット", &mAttr.offset, -100.0f, 100.0f, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("windRate", &mAttr.windRate, 0.0f, 5.0f, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("speedRate", &mAttr.speedRate, 0.0f, 5.0f, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("revPowRate", &mAttr.revPowRate, 0.0f, 1.0f, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("回転限界[0]", &mAttr.rotationLimit[0], -0x4000, 0x3FFF, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("回転限界[1]", &mAttr.rotationLimit[1], -0x4000, 0x3FFF, 0, 
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("回転限界[2]", &mAttr.rotationLimit[2], -0x4000, 0x3FFF, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("プレイヤ反応距離", &mAttr.playerReactionDist, 0.0f, 500.0f, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("プレイヤ反応速度", &mAttr.playerReactionSpeed, 0.0f, 50.0f, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("プレイヤ反応係数", &mAttr.playerReactionCoeff, 0.0f, 5.0f, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("反射還元力係数", &mAttr.reflectReducePowCoeff, 0.0f, 1.0f, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genSlider("揺れ遅延フレーム", &mAttr.delayedVibrationFrame, 1, 30, 0,
                       NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
        ctx->genCheckBox("ジョイント表示", &mAttr.jointDisplay, 1, 0,
                         NULL, 0xFFFF, 0xFFFF, 0x200, 0x18);
    }

    void ct() {
        if (mCount++ == 0) {
            daObj::HioVarious_c::init(this, "飾り布"); // Ornamental Cloth
        }
    }

    void dt() {
        if (--mCount == 0) {
            daObj::HioVarious_c::clean(this);
        }
    }

    /* 0x4 */ int mCount;
    /* 0x8 */ daObjOnCloth_Attr_c mAttr;
};
#endif

/* 80595CB4-80595CE4 000000 0030+00 4/4 0/0 0/0 .rodata          M_attr__14daObjOnCloth_c */
daObjOnCloth_Attr_c const daObjOnCloth_c::M_attr = {
    8.0f,
    -40.0f,
    0.3f,
    0.47f,
    0.3f,
    150.0f,
    14.0f,
    0.08f,
    0.8f,
    0x040,
    0x431,
    0x431,
    15,
    0
};

/* 80595038-80595158 000078 0120+00 1/1 0/0 0/0 .text            create_init__14daObjOnCloth_cFv */
void daObjOnCloth_c::create_init() {
    fopAcM_setCullSizeBox(this, -50.0f, -170.0f, -50.0f, 50.0f, 20.0f, 50.0f);
    ClothJoint_c* clothJoints_p = mClothJoints;

    for (int i = 0; i < 3; i++, clothJoints_p++) {
        clothJoints_p->field_0x0 = current.pos;
        clothJoints_p->field_0x0.y += (i + 1) * attr().offset;
        clothJoints_p[0].field_0xc = clothJoints_p[0].field_0x0;
        clothJoints_p->field_0x24.set(cM_ssin(shape_angle.y) * -1.0f, 0.0f, cM_scos(shape_angle.y) * -1.0f);
    }

    gravity = attr().gravity;
    initBaseMtx();
}

/* 80595158-80595178 000198 0020+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjOnCloth_cFv */
void daObjOnCloth_c::initBaseMtx() {
    setBaseMtx();
}

/* 80595178-805951DC 0001B8 0064+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjOnCloth_cFv */
void daObjOnCloth_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mMtx);
}

/* 805951DC-805954B0 00021C 02D4+00 1/1 0/0 0/0 .text setNormalClothPos__14daObjOnCloth_cFv */
void daObjOnCloth_c::setNormalClothPos() {
    cXyz sp4c = dKyw_get_AllWind_vecpow(&current.pos);
    sp4c *= attr().offset * attr().windRate;
    f32 fVar1 = sp4c.abs();
    cXyz sp58;
    ClothJoint_c* clothJoints_p = mClothJoints;
    cXyz* pos = &current.pos;

    for (int i = 0; i < 3; i++, clothJoints_p++) {
        sp58 = *pos - clothJoints_p->field_0x0;
        sp58.y += gravity;

        if (cM_rnd() < 0.6f && cM_rnd() < 0.1f) {
            clothJoints_p->field_0x18 += clothJoints_p->field_0x24 * fVar1;
        }

        sp58 += clothJoints_p->field_0x18;
        sp58.normalizeZP();
        clothJoints_p->field_0x0 = *pos + (sp58 * attr().offset);
        clothJoints_p->field_0x18 = (clothJoints_p->field_0x18 + (clothJoints_p->field_0xc - clothJoints_p->field_0x0)) * attr().speedRate;
        clothJoints_p->field_0xc = clothJoints_p->field_0x0;
        pos = &clothJoints_p->field_0x0;
    }
}

/* 805954B0-80595638 0004F0 0188+00 1/1 0/0 0/0 .text            calcJointAngle__14daObjOnCloth_cFv */
void daObjOnCloth_c::calcJointAngle() {
    cXyz sp24;
    ClothJoint_c* clothJoints_p = mClothJoints;
    
    mDoMtx_stack_c::copy(mMtx);

    for (int i = 0; i < 3; i++, clothJoints_p++) {
        mDoMtx_stack_c::push();
        mDoMtx_stack_c::inverse();
        mDoMtx_stack_c::multVec(&clothJoints_p->field_0x0, &sp24);
        mDoMtx_stack_c::pop();
        sp24 *= -1.0f;
        clothJoints_p->field_0x30.x = cM_atan2s(sp24.z, sp24.y);

        if (getColorType() != 4.0f) {
            if (attr().rotationLimit[i] > 0) {
                if (clothJoints_p->field_0x30.x > attr().rotationLimit[i]) {
                    clothJoints_p->field_0x30.x = attr().rotationLimit[i];
                    clothJoints_p->field_0x18.zero();
                }
            } else if (attr().rotationLimit[i] < 0 && clothJoints_p->field_0x30.x < attr().rotationLimit[i]) {
                clothJoints_p->field_0x30.x = attr().rotationLimit[i];
                clothJoints_p->field_0x18.zero();
            }
        }

        mDoMtx_stack_c::XrotM(clothJoints_p->field_0x30.x);
        mDoMtx_stack_c::transM(0.0f, attr().offset, 0.0f);
    }
}

/* 80595638-80595784 000678 014C+00 1/1 0/0 0/0 .text            checkPlayerMove__14daObjOnCloth_cFv */
void daObjOnCloth_c::checkPlayerMove() {
    // NONMATCHING
    f32 fVar1 = field_0x650;
    ClothJoint_c* clothJoints_p = mClothJoints + 1;

    for (int i = 2; i > 0; i--, clothJoints_p--) {
        clothJoints_p->field_0x18 += clothJoints_p->field_0x24 * (-fVar1 * attr().playerReactionCoeff);
        fVar1 = fVar1 * attr().reflectReducePowCoeff;
    }

    f32* pfVar1 = &field_0x650;
    f32* pfVar2 = &field_0x654;

    for (int i = 0; i < attr().delayedVibrationFrame - 1; i++) {
        *pfVar1 = *pfVar2;
        pfVar1++;
        pfVar2++;
    }

    fVar1 = 0.0f;
    pfVar1[attr().delayedVibrationFrame] = fVar1;

    if (!(fopAcM_searchPlayerDistanceXZ2(this) > attr().playerReactionDist * attr().playerReactionDist)) {
        f32 fVar2 = fopAcM_GetSpeedF((fopAc_ac_c*)daPy_getPlayerActorClass());
        if (fVar2 > attr().playerReactionSpeed) {
            pfVar2[attr().delayedVibrationFrame] = fVar2;
        }
    }
}

/* 80595784-80595850 0007C4 00CC+00 1/1 0/0 0/0 .text            nodeCallBack__FP8J3DJointi */
static void nodeCallBack(J3DJoint* param_0, int param_1) {
    // NONMATCHING
}

/* ############################################################################################## */
/* 80595D34-80595D38 000080 0004+00 1/1 0/0 0/0 .rodata          @3973 */
SECTION_RODATA static f32 const lit_3973 = 1.0f;
COMPILER_STRIP_GATE(0x80595D34, &lit_3973);

/* 80595D38-80595D38 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80595D38 = "J_Necktie";
SECTION_DEAD static char const* const stringBase_80595D42 = "J_Necktie.bmd";
SECTION_DEAD static char const* const stringBase_80595D50 = "J_Necktie.btk";
#pragma pop

/* 80595D60-80595D64 -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
SECTION_DATA static void* l_arcName = (void*)&d_a_obj_ornament_cloth__stringBase0;

/* 80595D64-80595D84 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjOnCloth_Method */
static actor_method_class l_daObjOnCloth_Method = {
    (process_method_func)daObjOnCloth_Create__FP10fopAc_ac_c,
    (process_method_func)daObjOnCloth_Delete__FP14daObjOnCloth_c,
    (process_method_func)daObjOnCloth_Execute__FP14daObjOnCloth_c,
    (process_method_func)daObjOnCloth_IsDelete__FP14daObjOnCloth_c,
    (process_method_func)daObjOnCloth_Draw__FP14daObjOnCloth_c,
};

/* 80595D84-80595DB4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_OnCloth */
extern actor_process_profile_definition g_profile_Obj_OnCloth = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_OnCloth,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjOnCloth_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  33,                     // mPriority
  &l_daObjOnCloth_Method, // sub_method
  0x00040180,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

/* 80595DB4-80595DC0 000054 000C+00 2/2 0/0 0/0 .data            __vt__12J3DFrameCtrl */
SECTION_DATA extern void* __vt__12J3DFrameCtrl[3] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)__dt__12J3DFrameCtrlFv,
};

/* 80595850-805959E8 000890 0198+00 1/1 0/0 0/0 .text            createSolidHeap__FP10fopAc_ac_c */
static void createSolidHeap(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 805959E8-80595A30 000A28 0048+00 1/0 0/0 0/0 .text            __dt__12J3DFrameCtrlFv */
// J3DFrameCtrl::~J3DFrameCtrl() {
extern "C" void __dt__12J3DFrameCtrlFv() {
    // NONMATCHING
}

/* 80595A30-80595AEC 000A70 00BC+00 1/0 0/0 0/0 .text daObjOnCloth_Draw__FP14daObjOnCloth_c */
static void daObjOnCloth_Draw(daObjOnCloth_c* param_0) {
    // NONMATCHING
}

/* 80595AEC-80595B2C 000B2C 0040+00 1/0 0/0 0/0 .text daObjOnCloth_Execute__FP14daObjOnCloth_c */
static void daObjOnCloth_Execute(daObjOnCloth_c* param_0) {
    // NONMATCHING
}

/* 80595B2C-80595B34 000B6C 0008+00 1/0 0/0 0/0 .text daObjOnCloth_IsDelete__FP14daObjOnCloth_c */
static bool daObjOnCloth_IsDelete(daObjOnCloth_c* param_0) {
    return true;
}

/* 80595B34-80595B9C 000B74 0068+00 1/0 0/0 0/0 .text daObjOnCloth_Delete__FP14daObjOnCloth_c */
static void daObjOnCloth_Delete(daObjOnCloth_c* param_0) {
    // NONMATCHING
}

/* 80595B9C-80595BD8 000BDC 003C+00 2/2 0/0 0/0 .text            __dt__12ClothJoint_cFv */
ClothJoint_c::~ClothJoint_c() {
    // NONMATCHING
}

/* 80595BD8-80595CA8 000C18 00D0+00 1/0 0/0 0/0 .text            daObjOnCloth_Create__FP10fopAc_ac_c
 */
static void daObjOnCloth_Create(fopAc_ac_c* param_0) {
    // NONMATCHING
}

/* 80595CA8-80595CAC 000CE8 0004+00 1/1 0/0 0/0 .text            __ct__12ClothJoint_cFv */
ClothJoint_c::ClothJoint_c() {
    /* empty function */
}

/* 80595D38-80595D38 000084 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/**
 * @file d_a_obj_swLight.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_swLight.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"

#ifdef DEBUG
class daObjSwLight_HIO_c : public mDoHIO_entry_c {
public:
    /* 811CF8C0 */ daObjSwLight_HIO_c();
    /* 811CF920 */ void genMessage(JORMContext*);

private:
    /* 0x06 */ u8 field_0x06;
    /* 0x08 */ f32 mLightMaxRadius;
    /* 0x0C */ u8 mNoLightHit;
    /* 0x0D */ u8 mCheckRendering;
};

daObjSwLight_HIO_c::daObjSwLight_HIO_c() {
    mLightMaxRadius = 500.0f;
    mCheckRendering = 0;
    mNoLightHit = 0;
}

void daObjSwLight_HIO_c::genMessage(JORMContext* ctx) {
    // Light Candlestick Switch
    ctx->genLabel("光燭台スイッチ", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Light Maximum Radius
    ctx->genSlider("光最大半径", &mLightMaxRadius, 0.0f, 1000.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Check Rendering
    ctx->genCheckBox("チェック描画", &mCheckRendering, 1, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // No Light Hit
    ctx->genCheckBox("光当たり無し", &mNoLightHit, 1, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}
#endif

/* 80CF6F98-80CF6FD4 000078 003C+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjSwLight_cFv */
void daObjSwLight_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CF6FD4-80CF7038 0000B4 0064+00 2/2 0/0 0/0 .text            setBaseMtx__14daObjSwLight_cFv */
void daObjSwLight_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
#ifdef DEBUG
    C_MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
#else
    cMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
#endif
    
}

/* ############################################################################################## */
/* 80CF83A0-80CF83E0 000000 0040+00 4/4 0/0 0/0 .rodata          l_sph_src_at */
const static dCcD_SrcSph l_sph_src_at = {
    {
        {0x0, {{AT_TYPE_LANTERN_SWING, 0x0, 0x11}, {0x0, 0x0}, 0x78}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x4, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 100.0f} // mSph
    } // mSphAttr
};

/* 80CF83E0-80CF8420 000040 0040+00 0/1 0/0 0/0 .rodata          l_sph_src_tg */
const static dCcD_SrcSph l_sph_src_tg = {
    {
        {0x0, {{0x0, 0x0, 0x10}, {0x202, 0x11}, 0x78}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x4, 0x0}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 90.0f} // mSph
    } // mSphAttr
};

/* 80CF8488-80CF848C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName[2] = {
    "Obj_l8sw0",
    "cc_LB_v",
};

/* 80CF848C-80CF84A4 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static Vec l_cull_box[2] = {
    {
        -500.0f,
        0.0f,
        -500.0f,
    },
    {
        500.0f,
        500.0f,
        500.0f,
    }
};

/* 80CF84A4-80CF84E8 00003C 0044+00 1/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1e}, {0xd8fafdff, 0x11}, 0x79}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x7, 0x3}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        90.0f, // mRadius
        170.0f // mHeight
    } // mCyl
};

/* 80CF7038-80CF71F0 000118 01B8+00 1/0 0/0 0/0 .text            Create__14daObjSwLight_cFv */
int daObjSwLight_c::Create() {
    if (fopAcM_isSwitch(this,getSwbit()) == 0) {
        init_modeSwOnWait();
        mInfluence.mPos.x = 0.0f;
    } else {
        init_modeSwOffWait();
        mInfluence.mPos.x = 500.0f; // l_hio
    }

    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    mStts.Init(0xff, 0xff, this);
    mAtSph.Set(l_sph_src_at);
    mAtSph.SetStts(&mStts);
    for (int i = 0; i < 2; i++) {
        mTgSph[i].Set(l_sph_src_tg);
        mTgSph[i].SetStts(&mStts);
    }

    mTgSph[0].SetTgType(2);
    mTgSph[1].SetTgType(0x200);
    mCyl.Set(l_cyl_src);
    mCyl.SetStts(&mStts);
    // fopAcM_setCullSizeBox(this, l_cull_box, DAT_811d10fc, DAT_811d1100, DAT_811d1104, DAT_811d1108, DAT_811d110c); // l_hio
    mInfluence.field_0xc = 0xffff;

    JUTNameTab* name = mpModel->getModelData()->getMaterialName();

    for (int i = 0; i < mpModel->getModelData()->getMaterialNum(); i++) {
        if (strcmp(name->getName(i),"cc_LB_v")) {
            mInfluence.field_0xc = i;
        }
    }

    s16 sVar1 = mInfluence.field_0xc;

    if (sVar1 != -1) {
        mSound.init(&current.pos, 1);
    } else {
        // Light Candlestick Switch: Material "cc_LB_v" is missing.
        OSReport_Error("光燭台スイッチ：マテリアル\"cc_LB_v\"がありません");
    }

    return sVar1 != -1;
}

/* 80CF71F0-80CF7260 0002D0 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjSwLight_cFv */
int daObjSwLight_c::CreateHeap() {
    // NONMATCHING
}

/* 80CF7260-80CF7320 000340 00C0+00 1/1 0/0 0/0 .text            create1st__14daObjSwLight_cFv */
int daObjSwLight_c::create1st() {
    // NONMATCHING
}

/* 80CF7320-80CF73E0 000400 00C0+00 1/0 0/0 0/0 .text            Execute__14daObjSwLight_cFPPA3_A4_f
 */
int daObjSwLight_c::Execute(Mtx** param_0) {
    // NONMATCHING
}

/* 80CF8518-80CF8548 0000B0 0030+00 0/1 0/0 0/0 .data            l_func$3737 */
#pragma push
#pragma force_active on
SECTION_DATA static u8 l_func[48] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};
#pragma pop

/* 80CF73E0-80CF761C 0004C0 023C+00 1/1 0/0 0/0 .text            action__14daObjSwLight_cFv */
void daObjSwLight_c::action() {
    // NONMATCHING
}

/* 80CF761C-80CF766C 0006FC 0050+00 2/2 0/0 0/0 .text init_modeSwOnWait__14daObjSwLight_cFv */
void daObjSwLight_c::init_modeSwOnWait() {
    // NONMATCHING
}

/* 80CF766C-80CF777C 00074C 0110+00 1/0 0/0 0/0 .text            modeSwOnWait__14daObjSwLight_cFv */
void daObjSwLight_c::modeSwOnWait() {
    // NONMATCHING
}

/* 80CF777C-80CF7788 00085C 000C+00 1/1 0/0 0/0 .text init_modeOnLight__14daObjSwLight_cFv */
void daObjSwLight_c::init_modeOnLight() {
    // NONMATCHING
}

/* 80CF7788-80CF77D8 000868 0050+00 1/0 0/0 0/0 .text            modeOnLight__14daObjSwLight_cFv */
void daObjSwLight_c::modeOnLight() {
    // NONMATCHING
}

/* 80CF77D8-80CF7838 0008B8 0060+00 3/3 0/0 0/0 .text init_modeSwOffWait__14daObjSwLight_cFv */
void daObjSwLight_c::init_modeSwOffWait() {
    // NONMATCHING
}

/* 80CF7838-80CF7974 000918 013C+00 1/0 0/0 0/0 .text            modeSwOffWait__14daObjSwLight_cFv
 */
void daObjSwLight_c::modeSwOffWait() {
    // NONMATCHING
}

/* 80CF7974-80CF7978 000A54 0004+00 1/0 0/0 0/0 .text            modeDead__14daObjSwLight_cFv */
void daObjSwLight_c::modeDead() {
    /* empty function */
}

/* 80CF7978-80CF7A6C 000A58 00F4+00 2/2 0/0 0/0 .text            checkHit__14daObjSwLight_cFv */
void daObjSwLight_c::checkHit() {
    // NONMATCHING
}

/* 80CF7A6C-80CF7A98 000B4C 002C+00 1/1 0/0 0/0 .text            setOnTimer__14daObjSwLight_cFv */
void daObjSwLight_c::setOnTimer() {
    // NONMATCHING
}

/* 80CF7A98-80CF7BA8 000B78 0110+00 1/0 0/0 0/0 .text            Draw__14daObjSwLight_cFv */
int daObjSwLight_c::Draw() {
    // NONMATCHING
}

/* 80CF7BA8-80CF7BF0 000C88 0048+00 1/0 0/0 0/0 .text            Delete__14daObjSwLight_cFv */
int daObjSwLight_c::Delete() {
    // NONMATCHING
}

/* 80CF85EC-80CF8630 000184 0044+00 2/2 0/0 0/0 .data            __vt__14daObjSwLight_c */
// SECTION_DATA extern void* __vt__14daObjSwLight_c[17] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)CreateHeap__14daObjSwLight_cFv,
//     (void*)Create__14daObjSwLight_cFv,
//     (void*)Execute__14daObjSwLight_cFPPA3_A4_f,
//     (void*)Draw__14daObjSwLight_cFv,
//     (void*)Delete__14daObjSwLight_cFv,
//     (void*)IsDelete__16dBgS_MoveBgActorFv,
//     (void*)ToFore__16dBgS_MoveBgActorFv,
//     (void*)ToBack__16dBgS_MoveBgActorFv,
//     (void*)NULL,
//     (void*)NULL,
//     (void*)func_80CF8390,
//     (void*)eventStart__17dEvLib_callback_cFv,
//     (void*)eventRun__17dEvLib_callback_cFv,
//     (void*)eventEnd__17dEvLib_callback_cFv,
//     (void*)__dt__14daObjSwLight_cFv,
// };

/* 80CF7BF0-80CF7D8C 000CD0 019C+00 1/0 0/0 0/0 .text daObjSwLight_create1st__FP14daObjSwLight_c
 */
static void daObjSwLight_create1st(daObjSwLight_c* param_0) {
    // NONMATCHING
}

/* 80CF8010-80CF8030 0010F0 0020+00 1/0 0/0 0/0 .text
 * daObjSwLight_MoveBGDelete__FP14daObjSwLight_c                */
static void daObjSwLight_MoveBGDelete(daObjSwLight_c* param_0) {
    // NONMATCHING
}

/* 80CF8030-80CF8050 001110 0020+00 1/0 0/0 0/0 .text
 * daObjSwLight_MoveBGExecute__FP14daObjSwLight_c               */
static void daObjSwLight_MoveBGExecute(daObjSwLight_c* param_0) {
    // NONMATCHING
}

/* 80CF8050-80CF807C 001130 002C+00 1/0 0/0 0/0 .text daObjSwLight_MoveBGDraw__FP14daObjSwLight_c
 */
static void daObjSwLight_MoveBGDraw(daObjSwLight_c* param_0) {
    // NONMATCHING
}

/* 80CF8124-80CF8358 001204 0234+00 2/1 0/0 0/0 .text            __dt__14daObjSwLight_cFv */
// daObjSwLight_c::~daObjSwLight_c() {
//     // NONMATCHING
// }

/* ############################################################################################## */
/* 80CF8548-80CF8568 -00001 0020+00 1/0 0/0 0/0 .data            daObjSwLight_METHODS */
static actor_method_class daObjSwLight_METHODS = {
    (process_method_func)daObjSwLight_create1st,
    (process_method_func)daObjSwLight_MoveBGDelete,
    (process_method_func)daObjSwLight_MoveBGExecute,
    0,
    (process_method_func)daObjSwLight_MoveBGDraw,
};

/* 80CF8568-80CF8598 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwLight */
extern actor_process_profile_definition g_profile_Obj_SwLight = {
  fpcLy_CURRENT_e,        // mLayerID
  3,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_SwLight,       // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjSwLight_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  554,                    // mPriority
  &daObjSwLight_METHODS,  // sub_method
  0x00040100,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

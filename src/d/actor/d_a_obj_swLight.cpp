/**
 * @file d_a_obj_swLight.cpp
 *
 */

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_swLight.h"
#include "d/d_cc_d.h"
#include "d/d_s_play.h"
#include "dol2asm.h"

#ifdef DEBUG
class daObjSwLight_HIO_c : public mDoHIO_entry_c {
public:
    /* 811CF8C0 */ daObjSwLight_HIO_c();
    /* 811CF920 */ void genMessage(JORMContext*);

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
    ctx->genSlider("光最大半径", &mLightMaxRadius, 0.0f, 1000.0f, 0, NULL, 0xffff, 0xffff, 0x200,
                   0x18);
    // Check Rendering
    ctx->genCheckBox("チェック描画", &mCheckRendering, 1, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // No Light Hit
    ctx->genCheckBox("光当たり無し", &mNoLightHit, 1, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
}

static daObjSwLight_HIO_c l_HIO;
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
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
}

/* ############################################################################################## */
/* 80CF83A0-80CF83E0 000000 0040+00 4/4 0/0 0/0 .rodata          l_sph_src_at */
const static dCcD_SrcSph l_sph_src_at = {
    {
        {0x0, {{AT_TYPE_LANTERN_SWING, 0x0, 0x11}, {0x0, 0x0}, 0x78}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x4, 0x0},                             // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                             // mGObjTg
        {0x0},                                                          // mGObjCo
    },                                                                  // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 100.0f}  // mSph
    }  // mSphAttr
};

/* 80CF83E0-80CF8420 000040 0040+00 0/1 0/0 0/0 .rodata          l_sph_src_tg */
const static dCcD_SrcSph l_sph_src_tg = {
    {
        {0x0, {{0x0, 0x0, 0x10}, {0x202, 0x11}, 0x78}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},              // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x4, 0x0},              // mGObjTg
        {0x0},                                           // mGObjCo
    },                                                   // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 90.0f}  // mSph
    }  // mSphAttr
};

/* 80CF8488-80CF848C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "Obj_l8sw0";

/* 80CF848C-80CF84A4 000024 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static Vec l_cull_box[2] = {{
                                -500.0f,
                                0.0f,
                                -500.0f,
                            },
                            {
                                500.0f,
                                500.0f,
                                500.0f,
                            }};

/* 80CF84A4-80CF84E8 00003C 0044+00 1/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x1e}, {0xd8fafdff, 0x11}, 0x79}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},                   // mGObjAt
        {dCcD_SE_METAL, 0x2, 0x0, 0x7, 0x3},                  // mGObjTg
        {0x0},                                                // mGObjCo
    },                                                        // mObjInf
    {
        {0.0f, 0.0f, 0.0f},  // mCenter
        90.0f,               // mRadius
        170.0f               // mHeight
    }  // mCyl
};

/* 80CF7038-80CF71F0 000118 01B8+00 1/0 0/0 0/0 .text            Create__14daObjSwLight_cFv */
int daObjSwLight_c::Create() {
    if (fopAcM_isSwitch(this, getSwbit())) {
        init_modeSwOffWait();
#ifdef DEBUG
        field_0xadc = l_HIO.mLightMaxRadius;
#else
        field_0xadc = 500.0f;
#endif
    } else {
        init_modeSwOnWait();
        field_0xadc = 0.0f;
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
    fopAcM_setCullSizeBox(this, l_cull_box[0].x, l_cull_box[0].y, l_cull_box[0].z, l_cull_box[1].x,
                          l_cull_box[1].y, l_cull_box[1].z);
    field_0xae8 = 0xffff;

    JUTNameTab* name = mpModel->getModelData()->getMaterialTable().getMaterialName();
    for (u16 i = 0; i < mpModel->getModelData()->getMaterialNum(); i++) {
        if (!strcmp(name->getName(i), "cc_LB_v")) {
            field_0xae8 = i;
        }
    }

#ifdef DEBUG
    if (field_0xae8 == 0xffff) {
        // Light Candlestick Switch: Material "cc_LB_v" is missing.
        OSReport_Error("光燭台スイッチ：マテリアル\"cc_LB_v\"がありません\n");
        return 0;
    }
#endif

    mSound.init(&current.pos, 1);
    return 1;
}

/* 80CF71F0-80CF7260 0002D0 0070+00 1/0 0/0 0/0 .text            CreateHeap__14daObjSwLight_cFv */
int daObjSwLight_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(385, modelData != NULL);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    return mpModel == NULL ? 0 : 1;
}

/* 80CF7260-80CF7320 000340 00C0+00 1/1 0/0 0/0 .text            create1st__14daObjSwLight_cFv */
int daObjSwLight_c::create1st() {
    if (field_0xb20 == 0) {
        field_0xb20 = 1;
        field_0xb22 = home.angle.x;
        field_0xb24 = home.angle.z;
        home.angle.x = current.angle.x = shape_angle.x = 0;
        home.angle.z = current.angle.z = shape_angle.z = 0;
    }

    int phase = dComIfG_resLoad(&mPhase, l_arcName);

    if (phase == cPhs_COMPLEATE_e) {
        phase = MoveBGCreate(l_arcName, -1, NULL, 0xec0, NULL);
        if (phase == cPhs_ERROR_e) {
            return phase;
        }
#ifdef DEBUG
        // Light Candlestick Switch
        l_HIO.entryHIO("光燭台スイッチ");
#endif
    }

    return phase;
}

/* 80CF7320-80CF73E0 000400 00C0+00 1/0 0/0 0/0 .text            Execute__14daObjSwLight_cFPPA3_A4_f
 */
int daObjSwLight_c::Execute(Mtx** param_0) {
    action();
    eventUpdate();
    *param_0 = &mBgMtx;
    setBaseMtx();

    if (mCyl.ChkTgHit()) {
        cCcD_Obj* hit_obj = mCyl.GetTgHitObj();
        if (hit_obj != NULL) {
            hit_obj->ChkAtType(AT_TYPE_BOOMERANG);
            u32 se_id = mCyl.GetTgHitObjHitSeID(1);
            mSound.startCollisionSE(se_id, 9, NULL);
        }
    }

    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    return 1;
}

/* 80CF73E0-80CF761C 0004C0 023C+00 1/1 0/0 0/0 .text            action__14daObjSwLight_cFv */
void daObjSwLight_c::action() {
    static modeFunc l_func[] = {
        &daObjSwLight_c::modeSwOnWait,
        &daObjSwLight_c::modeSwOffWait,
        &daObjSwLight_c::modeOnLight,
        &daObjSwLight_c::modeDead,
    };

    f32 fVar2 = field_0xadc;
    (this->*l_func[field_0xae0])();
    cXyz cStack_48(current.pos.x, current.pos.y + 90.0f + KREG_F(1), current.pos.z);

    for (int i = 0; i < 2; i++) {
        mTgSph[i].SetC(cStack_48);
        dComIfG_Ccsp()->Set(&mTgSph[i]);
    }
#ifdef DEBUG
    u8 a = 1;
    u8 light_hit = l_HIO.mNoLightHit == 0;
#endif

    mCyl.SetC(current.pos);
    dComIfG_Ccsp()->Set(&mCyl);
    mInfluence.mPos = cStack_48;
    mInfluence.field_0xc = field_0xadc;

    if (field_0xadc != 0.0f && fVar2 == 0.0f) {
        dKy_dalkmist_inf_set(&mInfluence);
    } else if (field_0xadc == 0.0f) {
        if (fVar2 != 0.0f) {
            dKy_dalkmist_inf_cut(&mInfluence);
        }
    }

#ifdef DEBUG
    u8 tmp = field_0xadc / l_HIO.mLightMaxRadius * 255.0f;
#else
    u8 tmp = field_0xadc / 500.0f * 255.0f;
#endif

    if (tmp != 0) {
        fopAcM_seStartLevel(this, Z2SE_OBJ_L8_L_TORCH_SW, tmp);
    }
}

/* 80CF761C-80CF766C 0006FC 0050+00 2/2 0/0 0/0 .text init_modeSwOnWait__14daObjSwLight_cFv */
void daObjSwLight_c::init_modeSwOnWait() {
    // Light Candlestick Switch: Switch <%d> was turned off.
    OS_REPORT("光燭台スイッチ：スイッチ<%d>オフしました\n", getSwbit());
    fopAcM_offSwitch(this, getSwbit());

    field_0xae1 = 0;
    field_0xae0 = 0;
}

/* 80CF766C-80CF777C 00074C 0110+00 1/0 0/0 0/0 .text            modeSwOnWait__14daObjSwLight_cFv */
void daObjSwLight_c::modeSwOnWait() {
    checkHit();
    u8 tmp = field_0xae6;

    if (cLib_checkBit<u8>(tmp, 1)) {
        init_modeOnLight();
    } else {
        u8 tmp2 = field_0xae6;
        if (cLib_checkBit<u8>(tmp2, 2)) {
            if (field_0xae1 <= 60) {
                field_0xae1++;
            }

            if (field_0xae1 < 5) {
                field_0xadc = 0.0f;
            } else if (field_0xae1 == 5) {
#ifdef DEBUG
                field_0xadc = l_HIO.mLightMaxRadius * 0.25f;
#else
                field_0xadc = 500.0f * 0.25f;
#endif
            } else if (field_0xae1 < 50) {
#ifdef DEBUG
                field_0xadc =
                    l_HIO.mLightMaxRadius * ((field_0xae1 - 5) * 0.25f / 45.0f + 0.25f);
#else
                field_0xadc = 500.0f * ((field_0xae1 - 5) * 0.25f / 45.0f + 0.25f);
#endif

            } else if (field_0xae1 == 50) {
#ifdef DEBUG
                field_0xadc = l_HIO.mLightMaxRadius;
#else
                field_0xadc = 500.0f;
#endif
            } else if (field_0xae1 == 60) {
                init_modeSwOffWait();
            }
        } else {
            cLib_calcTimer(&field_0xae1);
        }
    }
}

/* 80CF777C-80CF7788 00085C 000C+00 1/1 0/0 0/0 .text init_modeOnLight__14daObjSwLight_cFv */
void daObjSwLight_c::init_modeOnLight() {
    field_0xae0 = 2;
}

/* 80CF7788-80CF77D8 000868 0050+00 1/0 0/0 0/0 .text            modeOnLight__14daObjSwLight_cFv */
void daObjSwLight_c::modeOnLight() {
#ifdef DEBUG
    if (cLib_chaseF(&field_0xadc, l_HIO.mLightMaxRadius, l_HIO.mLightMaxRadius * 0.05f)) {
        init_modeSwOffWait();
    }
#else
    if (cLib_chaseF(&field_0xadc, 500.0f, 500.0f * 0.05f)) {
        init_modeSwOffWait();
    }
#endif
}

/* 80CF77D8-80CF7838 0008B8 0060+00 3/3 0/0 0/0 .text init_modeSwOffWait__14daObjSwLight_cFv */
void daObjSwLight_c::init_modeSwOffWait() {
    // Light Candlestick Switch: Switch <%d> was turned on.
    OS_REPORT("光燭台スイッチ：スイッチ<%d>オンしました\n", getSwbit());
    fopAcM_onSwitch(this, getSwbit());
    field_0xae3 = 0;
    field_0xae1 = 0;
    setOnTimer();
    field_0xae0 = 1;
}

/* 80CF7838-80CF7974 000918 013C+00 1/0 0/0 0/0 .text            modeSwOffWait__14daObjSwLight_cFv
 */
void daObjSwLight_c::modeSwOffWait() {
    checkHit();

    if (getSwbit2() != 0xff) {
        if (fopAcM_isSwitch(this, getSwbit2())) {
            field_0xae3 = 1;
        }
    }

    if (field_0xae3 != 0) {
        if (!fopAcM_isSwitch(this, getSwbit2())) {
#ifdef DEBUG
            if (cLib_chaseF(&field_0xadc, 0.0f, l_HIO.mLightMaxRadius * 0.05f)) {
#else
            if (cLib_chaseF(&field_0xadc, 0.0f, 500.0f * 0.05f)) {
#endif
                init_modeSwOnWait();
            }
        } else {
#ifdef DEBUG
            cLib_chaseF(&field_0xadc, l_HIO.mLightMaxRadius, l_HIO.mLightMaxRadius * 0.05f);
#else
            cLib_chaseF(&field_0xadc, 500.0f, 500.0f * 0.05);
#endif
        }

    } else {
        if (!cLib_checkBit<u8>(field_0xae6, (u8)1) && !cLib_checkBit<u8>(field_0xae6, 2) &&
            !cLib_calcTimer(&field_0xae4) &&
#ifdef DEBUG
            cLib_chaseF(&field_0xadc, 0.0f, l_HIO.mLightMaxRadius * 0.05f))
        {
#else
            cLib_chaseF(&field_0xadc, 0.0f, 500.0f * 0.05f))
        {
#endif
            init_modeSwOnWait();
        }
    }

    if (getEvent() != 0xff) {
        orderEvent(getEvent(), 0xff, 1);
    }
}

/* 80CF7974-80CF7978 000A54 0004+00 1/0 0/0 0/0 .text            modeDead__14daObjSwLight_cFv */
void daObjSwLight_c::modeDead() {}

/* 80CF7978-80CF7A6C 000A58 00F4+00 2/2 0/0 0/0 .text            checkHit__14daObjSwLight_cFv */
int daObjSwLight_c::checkHit() {
    field_0xae7 = field_0xae6;
    field_0xae6 = 0;

    if (mTgSph[0].ChkTgHit()) {
        cCcD_Obj* hit_obj = mTgSph[0].GetTgHitObj();
        if (hit_obj != NULL && hit_obj->ChkAtType(AT_TYPE_NORMAL_SWORD) && mTgSph[0].GetTgHitGObj())
        {
            if (mTgSph[0].GetTgHitGObj()->GetAtMtrl() == dCcD_MTRL_LIGHT) {
                cLib_onBit(field_0xae6, (u8)1);
            }
        }
    }

    if (mTgSph[1].ChkTgHit()) {
        cCcD_Obj* hit_obj = mTgSph[1].GetTgHitObj();
        if (hit_obj != NULL && hit_obj->ChkAtType(AT_TYPE_LANTERN_SWING) &&
            mTgSph[1].GetTgHitGObj())
        {
            if (mTgSph[1].GetTgHitGObj()->GetAtMtrl() == dCcD_MTRL_LIGHT) {
                cLib_onBit(field_0xae6, (u8)2);
            }
        }
    }

    return 1;
}

/* 80CF7A6C-80CF7A98 000B4C 002C+00 1/1 0/0 0/0 .text            setOnTimer__14daObjSwLight_cFv */
void daObjSwLight_c::setOnTimer() {
    if (getOnTime() == 0 || getOnTime() == 255) {
        field_0xae4 = 75;
    } else {
        field_0xae4 = getOnTime() * 15;
    }
}

/* 80CF7A98-80CF7BA8 000B78 0110+00 1/0 0/0 0/0 .text            Draw__14daObjSwLight_cFv */
int daObjSwLight_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    J3DModelData* modelData = (J3DModelData*)mpModel->getModelData();
    J3DMaterial* material = modelData->getMaterialNodePointer(field_0xae8);
    J3DGXColor* color = material->getTevKColor(0);

#ifdef DEBUG
    u8 fVar1 = field_0xadc / l_HIO.mLightMaxRadius * 255.0f;
#else
    u8 fVar1 = field_0xadc / 500.0f * 255.0f;
#endif
    color->a = 0xff;
    color->r = fVar1;
    color->g = fVar1;
    color->b = fVar1;
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

#ifdef DEBUG
    if (l_HIO.mCheckRendering) {
        mpBgW->CalcPlane();
    }
#endif

    return 1;
}

/* 80CF7BA8-80CF7BF0 000C88 0048+00 1/0 0/0 0/0 .text            Delete__14daObjSwLight_cFv */
int daObjSwLight_c::Delete() {
    mSound.deleteObject();
    dComIfG_resDelete(&mPhase, l_arcName);
#ifdef DEBUG
    l_HIO.removeHIO();
#endif
    return 1;
}

/* 80CF7BF0-80CF7D8C 000CD0 019C+00 1/0 0/0 0/0 .text daObjSwLight_create1st__FP14daObjSwLight_c
 */
static int daObjSwLight_create1st(daObjSwLight_c* i_this) {
    fopAcM_ct(i_this, daObjSwLight_c);
    return i_this->create1st();
}

/* 80CF8010-80CF8030 0010F0 0020+00 1/0 0/0 0/0 .text
 * daObjSwLight_MoveBGDelete__FP14daObjSwLight_c                */
static int daObjSwLight_MoveBGDelete(daObjSwLight_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80CF8030-80CF8050 001110 0020+00 1/0 0/0 0/0 .text
 * daObjSwLight_MoveBGExecute__FP14daObjSwLight_c               */
static int daObjSwLight_MoveBGExecute(daObjSwLight_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80CF8050-80CF807C 001130 002C+00 1/0 0/0 0/0 .text daObjSwLight_MoveBGDraw__FP14daObjSwLight_c
 */
static int daObjSwLight_MoveBGDraw(daObjSwLight_c* i_this) {
    return i_this->MoveBGDraw();
}

/* ############################################################################################## */
/* 80CF8548-80CF8568 -00001 0020+00 1/0 0/0 0/0 .data            daObjSwLight_METHODS */
static actor_method_class daObjSwLight_METHODS = {
    (process_method_func)daObjSwLight_create1st,     (process_method_func)daObjSwLight_MoveBGDelete,
    (process_method_func)daObjSwLight_MoveBGExecute, 0,
    (process_method_func)daObjSwLight_MoveBGDraw,
};

/* 80CF8568-80CF8598 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwLight */
extern actor_process_profile_definition g_profile_Obj_SwLight = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_SwLight,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjSwLight_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    554,                     // mPriority
    &daObjSwLight_METHODS,   // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

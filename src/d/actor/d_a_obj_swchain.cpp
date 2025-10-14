/**
 * @file d_a_obj_swchain.cpp
 *
 */

#include "d/dolzel_rel.h"  // IWYU pragma: keep

#ifdef DEBUG
#include "d/d_debug_viewer.h"
#endif
#include "d/actor/d_a_obj_swchain.h"
#include "d/d_cc_d.h"
#include "dol2asm.h"

#ifdef DEBUG
class daObjSwChain_HIO_c : public mDoHIO_entry_c {
public:
    /* 811C8DE0 */ daObjSwChain_HIO_c();
    /* 811C8EE0 */ void genMessage(JORMContext*);

    /* 0x06 */ u8 field_0x06;
    /* 0x08 */ f32 mGravity;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 mTension;
    /* 0x20 */ f32 mTensionBootsEquipped;
    /* 0x24 */ f32 mTensionWolf;
    /* 0x28 */ f32 mSwitchOnTension;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 mReturnSpeed;
    /* 0x34 */ f32 mReturnSpeedHigh;
    /* 0x38 */ f32 mReturnSpeedLow;
    /* 0x3C */ s16 mReactionAngle;
    /* 0x3E */ s16 field_0x3e;
    /* 0x40 */ u8 mSwitchOnTime;
    /* 0x41 */ u8 field_0x41;
    /* 0x42 */ u8 field_0x42;
    /* 0x43 */ u8 mProcessStop;
    /* 0x44 */ u8 field_0x44;
    /* 0x45 */ u8 mReactionAngleDisplay;
};
daObjSwChain_HIO_c::daObjSwChain_HIO_c() {
    mGravity = -6.0f;
    field_0x0c = 35.0f;
    field_0x10 = 35.0f;
    field_0x14 = 8.0f;
    field_0x18 = 0.0f;
    mTension = 15.0f;
    mTensionWolf = 13.0f;
    mTensionBootsEquipped = 2.1f;
    mSwitchOnTension = 10.0f;
    field_0x2c = 1.5f;
    mSwitchOnTime = 0;
    mReturnSpeedHigh = 30.0f;
    mReturnSpeedLow = 15.0;
    mReturnSpeed = 2.0;
    mReactionAngle = 0xe74;
    mReactionAngleDisplay = 0;
    field_0x3e = 0;
    field_0x41 = 0;
    field_0x42 = 0;
    mProcessStop = 0;
    field_0x44 = 0;
}

void daObjSwChain_HIO_c::genMessage(JORMContext* ctx) {
    // Chain Switch
    ctx->genLabel("チェーンスイッチ", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Gravity
    ctx->genSlider("重力", &mGravity, -100.0f, -1.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Tension
    ctx->genSlider("張力", &mTension, 0.0f, 20.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Tension (Boots Equipped)
    ctx->genSlider("張力（ブーツ装備）", &mTensionBootsEquipped, 0.0f, 20.0f, 0, NULL, 0xffff,
                   0xffff, 0x200, 0x18);
    // Tension (Wolf)
    ctx->genSlider("張力（狼）", &mTensionWolf, 0.0f, 20.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // SWITCH ON Tension
    ctx->genSlider("ＳＷＯＮの張力", &mSwitchOnTension, 0.0f, 20.0f, 0, NULL, 0xffff, 0xffff, 0x200,
                   0x18);
    // SWITCH ON Time
    ctx->genSlider("ＳＷＯＮの時間", &mSwitchOnTime, 0, 64.0f, 0, NULL, 0xffff, 0xffff, 0x200,
                   0x18);
    // -- Normal --
    ctx->genLabel("-- ノーマル --", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Return Speed
    ctx->genSlider("戻る速度", &mReturnSpeed, 0.0f, 50.0f, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // -- With Chandelier --
    ctx->genLabel("-- シャンデリア付き --", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Return Speed・High
    ctx->genSlider("戻る速度・高速", &mReturnSpeedHigh, 0.0f, 50.0f, 0, NULL, 0xffff, 0xffff, 0x200,
                   0x18);
    // Return Speed・Low
    ctx->genSlider("戻る速度・低速", &mReturnSpeedLow, 0.0f, 50.0f, 0, NULL, 0xffff, 0xffff, 0x200,
                   0x18);
    // Process Stop
    ctx->genCheckBox("処理停止", &mProcessStop, '\x01', 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Clawshot Related
    ctx->genLabel("-- フックショット関係 --", 0, 0, NULL, 0xffff, 0xffff, 0x200, 0x18);
    // Reaction Angle Display
    ctx->genCheckBox("反応角度表示", &mReactionAngleDisplay, '\x01', 0, NULL, 0xffff, 0xffff, 0x200,
                     0x18);
    // Clawshot Reaction Angle
    ctx->genSlider("フックショット反応角度", &mReactionAngle, 0, 0x7fff, 0, NULL, 0xffff, 0xffff,
                   0x200, 0x18);
}

static daObjSwChain_HIO_c l_HIO;

#endif

/* 80CF86B8-80CF86D8 000078 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* a_this) {
    daObjSwChain_c* i_this = (daObjSwChain_c*)a_this;
    return i_this->CreateHeap();
}

/* 80CF86D8-80CF8768 000098 0090+00 2/2 0/0 0/0 .text            GetActorName__FR13cBgS_PolyInfo */
static s16 GetActorName(cBgS_PolyInfo& param_0) {
    if (dComIfG_Bgsp().ChkPolySafe(param_0)) {
        if (dComIfG_Bgsp().ChkMoveBG_NoDABg(param_0)) {
            if (dComIfG_Bgsp().GetActorPointer(param_0)) {
                return fopAcM_GetName(dComIfG_Bgsp().GetActorPointer(param_0));
            }
        }
    }

    return PROC_Obj_SwChain;
}

/* 80CFB798-80CFB79C -00001 0004+00 3/3 0/0 0/0 .data            l_arcName */
static char* l_arcName = "P_Chain";

/* 80CFB79C-80CFB7DC 000004 0040+00 1/1 0/0 0/0 .data            l_sph_src */
static dCcD_SrcSph l_sph_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x4000, 0x11}, 0x58}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},              // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},              // mGObjTg
        {0x0},                                           // mGObjCo
    },                                                   // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f}  // mSph
    }  // mSphAttr
};

/* 80CFB7DC-80CFB81C 000044 0040+00 1/1 0/0 0/0 .data            l_sph_srcCo */
static dCcD_SrcSph l_sph_srcCo = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x0, 0x10}, 0x49}},  // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},           // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0},           // mGObjTg
        {0x0},                                        // mGObjCo
    },                                                // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 50.0f}  // mSph
    }  // mSphAttr
};

/* 80CF8768-80CF89C0 000128 0258+00 1/1 0/0 0/0 .text            Create__14daObjSwChain_cFv */
int daObjSwChain_c::Create() {
    mStts.Init(0xff, 0xff, this);
    mSph1.Set(l_sph_src);
    mSph1.SetStts(&mStts);
    mSph2.Set(l_sph_srcCo);
    mSph2.SetStts(&mStts);
    mAcchCir.SetWall(0.0f, 40.0f);
    mAcch.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1, &mAcchCir,
              fopAcM_GetSpeed_p(this), &current.angle, &shape_angle);
    fopAcM_setCullSizeSphere(this, home.pos.x, home.pos.y, home.pos.z, (field_0xa65 + 1) * 35.0f);
    cXyz cStack_3c(0.0f, 0.0f, 50.0f);
    cXyz cStack_48;
    cXyz cStack_54;

    mDoMtx_stack_c::YrotS(shape_angle.y);
    mDoMtx_stack_c::multVec(&cStack_3c, &cStack_48);

    getChainBasePos(&field_0xa74->field_0x34);
    cStack_54 = field_0xa74->field_0x34;

    chain_s* p_chain = field_0xa74;

    for (int i = 0; i < field_0xa65 + 1; i++) {
        if (i < getTopChainNo()) {
            p_chain->field_0x34 = home.pos;
            cStack_54 = p_chain->field_0x34;
        } else {
            p_chain->field_0x34 = cStack_54 + cStack_48;
            cStack_54 = p_chain->field_0x34;
        }

        p_chain++;
    }

    initChainMtx();
    mModel.create(mChainModelData, 0, &tevStr);

    if (fopAcM_GetRoomNo(this) == 4) {
        field_0xa67 = 0x14;
        field_0xa69 = 0x14;
    } else {
        if (fopAcM_GetRoomNo(this) == 6) {
            field_0xa67 = 0x14;
            field_0xa69 = 0x14;
        }
    }

    return 1;
}

/* 80CF89C0-80CF8B00 000380 0140+00 1/1 0/0 0/0 .text            CreateHeap__14daObjSwChain_cFv */
int daObjSwChain_c::CreateHeap() {
    field_0xa74 = new chain_s[field_0xa65 + 1];

    if (field_0xa74 == NULL) {
        return 0;
    }

    chain_s* p_chain = field_0xa74;
    for (int i = 0; i < field_0xa65 + 1; i++, p_chain++) {
        p_chain->field_0x34.setall(0.0f);
        p_chain->field_0x40.setall(0);
        p_chain->field_0x48 = 0.0f;
        p_chain->field_0x4c = 0;
    }

    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 4);
    JUT_ASSERT(532, modelData != 0);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);

    if (mpModel == NULL) {
        return 0;
    }

    mChainModelData = (J3DModelData*)dComIfG_getObjectRes(l_arcName, 3);
    JUT_ASSERT(545, mChainModelData != 0);

    return 1;
}

/* 80CF8B00-80CF8B3C 0004C0 003C+00 1/1 0/0 0/0 .text            __dt__Q214daObjSwChain_c7chain_sFv
 */
daObjSwChain_c::chain_s::~chain_s() {}

/* 80CF8B3C-80CF8B48 0004FC 000C+00 1/1 0/0 0/0 .text            __ct__Q214daObjSwChain_c7chain_sFv
 */
daObjSwChain_c::chain_s::chain_s() {}

/* 80CF8B48-80CF8DD0 000508 0288+00 1/1 0/0 0/0 .text            create1st__14daObjSwChain_cFv */
// NONMATCHING
int daObjSwChain_c::create1st() {
    fopAcM_SetupActor(this, daObjSwChain_c);

    if (field_0xa60 == 0) {
        mHookshotLength = home.angle.x;
        field_0xa5e = home.angle.z;
        home.angle.x = home.angle.z = 0;
        current.angle.x = current.angle.z = 0;
        shape_angle.x = shape_angle.z = 0;
        field_0xa60 = 1;
    }

    // missing instructions
    field_0xa65 = getChainNum() & 1 ? getChainNum() : getChainNum() + 1;

    field_0xa66 = getHookShotLength();
    field_0xa64 = getOutNum();
    field_0xa63 = getChainID();

#ifdef DEBUG
    if (field_0xa63 != 0 && field_0xa63 != 1 && field_0xa63 != 2 && field_0xa63 != 3) {
        // Chain Switch: Chain ID value is abnormal <%d>
        OS_REPORT_ERROR("チェーンスイッチ：鎖の番号が異常値です<%d>\n", field_0xa63);
        return cPhs_ERROR_e;
    }
#endif

#ifdef DEBUG
    if (field_0xa64 > field_0xa65) {
        // Chain Switch: Argument 2 > Argument 1 !
        OS_REPORT_ERROR("チェーンスイッチ：引数２＞引数１になっています！\n");
        return cPhs_ERROR_e;
    }
#endif

#ifdef DEBUG
    if (field_0xa66 > field_0xa65) {
        // Chain Switch: Argument 3 > Argument 1 !
        OS_REPORT_ERROR("チェーンスイッチ：引数３＞引数１になっています！\n");
        return cPhs_ERROR_e;
    }
#endif

    int phase = dComIfG_resLoad(&mPhase, l_arcName);
    if (phase == cPhs_COMPLEATE_e) {
        u32 size = 0x4000;
        size |= 0x80000000;

        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, size)) {
            return cPhs_ERROR_e;
        }

        if (!Create()) {
            return cPhs_ERROR_e;
        }
#ifdef DEBUG
        // Chain Switch
        l_HIO.entryHIO("チェーンスイッチ");
#endif
    }

    return phase;
}

/* 80CF8ED0-80CF94E4 000890 0614+00 1/1 0/0 0/0 .text            execute__14daObjSwChain_cFv */
// NONMATCHING - regalloc / instruction ordering
int daObjSwChain_c::execute() {
#ifdef DEBUG
    if (l_HIO.mProcessStop) {
        return 1;
    }
#endif

    field_0xa9c = 0;

    if (getSwbit2() != 0xff && !fopAcM_isSwitch(this, getSwbit2())) {
        field_0xa6c = 1;
    } else {
        field_0xa6c = 0;
    }

    chain_count_control();
    chain_s* unused = field_0xa74;
    chain_control();
    chain_s* iVar1 = &field_0xa74[field_0xa65];

    if (!field_0xa6c && daPy_py_c::setFmChainPos(this, &iVar1->field_0x34, field_0xa63)) {
        mCarry = 1;
        eyePos = home.pos;
    } else {
        mCarry = 0;
        eyePos = iVar1->field_0x34;
    }

    if (field_0xa9d == 0 && mCarry != 0 || field_0xa9d != 0 && mCarry == 0) {
        daPy_py_c::setPlayerSe(Z2SE_AL_GRAB_CHAIN);
    }

    if (fopAcM_checkHookCarryNow(this)) {
        field_0xa61 = 1;
        if (field_0xa64 >= field_0xa66 && field_0xa9e == 0) {
            fopAcM_cancelHookCarryNow(this);
        }
    } else {
        field_0xa61 = 0;
        current.pos = iVar1->field_0x34;
    }

    chain_control2();
    setTension();
    setChainMtx();
    field_0xa6b = 0;
    cXyz cStack_68(field_0xa74[getTopChainNo()].field_0x34);
    cXyz cStack_74(field_0xa74[field_0xa65].field_0x34);
    f32 fVar15 = cStack_74.abs(cStack_68);
#ifdef DEBUG
    if (fVar15 < (l_HIO.field_0x0c * (field_0xa64 - 2)) || mCarry == 0)
#else
    if (fVar15 < (35.0f * (field_0xa64 - 2)) || mCarry == 0)
#endif
        if (field_0xa64 > getOutNum() && mRatio != 0.0f) {
            cXyz cStack_80(field_0xa74[0].field_0x34);
            cXyz cStack_8c;
            cStack_8c = cStack_80 - field_0xa74[getTopChainNo()].field_0x34;
            cStack_8c.normalizeZP();

            switch (fopAcM_GetRoomNo(this)) {
            case 4:
            case 6:
                if (field_0xa64 > field_0xa69) {
#ifdef DEBUG
                    iVar1->field_0x34 += cStack_8c * l_HIO.mReturnSpeedHigh;
#else
                    iVar1->field_0x34 += cStack_8c * 30.0f;
#endif
                    // mistake?
                    field_0xa6b = 1;
                    field_0xa6b = 1;
                } else {
#ifdef DEBUG
                    iVar1->field_0x34 += cStack_8c * l_HIO.mReturnSpeedLow;
#else
                    iVar1->field_0x34 += cStack_8c * 15.0f;
#endif
                }
                break;
            default:
#ifdef DEBUG
                iVar1->field_0x34 += cStack_8c * l_HIO.mReturnSpeed;
#else
                iVar1->field_0x34 += cStack_8c * 2.0f;
#endif
            }
        }

    if (field_0xa6c == 0) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        cXyz pos = (player->current.pos - home.pos);
        s16 abs_tmp = pos.atan2sX_Z() - shape_angle.y;
#ifdef DEBUG
        if (abs(abs_tmp) < l_HIO.mReactionAngle) {
#else
        if (abs(abs_tmp) < 0xe74) {
#endif
            chain_s* chain_p2 = &field_0xa74[field_0xa65];
            mSph1.SetC(chain_p2->field_0x34);
            dComIfG_Ccsp()->Set(&mSph1);
        }
    }

    if (mCarry != 0) {
        cXyz local_a4;
        cXyz cStack_b0(current.pos);
        mAcch.CrrPos(dComIfG_Bgsp());
        local_a4 = current.pos - cStack_b0;
        current.pos = cStack_b0;

        if (mSph2.ChkCoHit()) {
            cXyz* move_pos = mStts.GetCCMoveP();
            if (move_pos != NULL) {
                local_a4 += *move_pos;
            }
        }

        mStts.ClrCcMove();
        mSph2.ClrCoHit();

        daPy_getPlayerActorClass()->setGrabCollisionOffset(local_a4.x, local_a4.z, 0);
        mSph2.SetC(current.pos);
        dComIfG_Ccsp()->Set(&mSph2);
    }

    field_0xa9d = mCarry;
#ifdef DEBUG
    if (l_HIO.field_0x42 != 0) {
        if (l_HIO.field_0x44 == getChainID()) {
            dDbVw_Report(0x28, 200, "Num<%d>Len<%.2f>", getCurrentChainNum(),
                         getCurrentChainLength());
            if (checkTight() != 0) {
                dDbVw_Report(0x28, 100, "TENSION!");
            }
        }

        dDbVw_Report(0x28, 0xd4, "SeenAngY   <%x>", fopAcM_seenPlayerAngleY(this));
        dDbVw_Report(0x28, 0xe0, "SearchAngY <%x>", fopAcM_searchPlayerAngleY(this));
        dDbVw_Report(0x28, 0xec, "toShapeAngY<%x>", fopAcM_toPlayerShapeAngleY(this));
    }
#endif

    return 1;
}

/* 80CF94E4-80CF9500 000EA4 001C+00 1/1 0/0 0/0 .text getChainBasePos__14daObjSwChain_cFP4cXyz */
void daObjSwChain_c::getChainBasePos(cXyz* param_0) {
    *param_0 = home.pos;
}

/* 80CF9500-80CF99C0 000EC0 04C0+00 1/1 0/0 0/0 .text            chain_control__14daObjSwChain_cFv
 */
void daObjSwChain_c::chain_control() {
    // NONMATCHING
}

/* 80CF99C0-80CFA05C 001380 069C+00 1/1 0/0 0/0 .text            chain_control2__14daObjSwChain_cFv
 */
void daObjSwChain_c::chain_control2() {
    // NONMATCHING
}

/* 80CFA05C-80CFA124 001A1C 00C8+00 1/1 0/0 0/0 .text            initChainMtx__14daObjSwChain_cFv */
void daObjSwChain_c::initChainMtx() {
    // NONMATCHING
}

/* 80CFA124-80CFA4A8 001AE4 0384+00 2/2 0/0 0/0 .text            setChainMtx__14daObjSwChain_cFv */
void daObjSwChain_c::setChainMtx() {
    // NONMATCHING
}

/* 80CFA4A8-80CFAD50 001E68 08A8+00 1/1 0/0 0/0 .text chain_count_control__14daObjSwChain_cFv */
void daObjSwChain_c::chain_count_control() {
    // NONMATCHING
}

/* 80CFAD50-80CFB450 002710 0700+00 1/1 0/0 0/0 .text            setTension__14daObjSwChain_cFv */
void daObjSwChain_c::setTension() {
    // NONMATCHING
}

/* 80CFB450-80CFB464 002E10 0014+00 8/8 0/0 0/0 .text            getTopChainNo__14daObjSwChain_cFv
 */
int daObjSwChain_c::getTopChainNo() {
    // NONMATCHING
}

/* 80CFB464-80CFB53C 002E24 00D8+00 1/1 0/0 0/0 .text            checkPlayerPull__14daObjSwChain_cFv
 */
void daObjSwChain_c::checkPlayerPull() {
    // NONMATCHING
}

/* 80CFB53C-80CFB5E8 002EFC 00AC+00 1/1 0/0 0/0 .text            draw__14daObjSwChain_cFv */
int daObjSwChain_c::draw() {
    // NONMATCHING
}

/* 80CFB5E8-80CFB61C 002FA8 0034+00 1/1 0/0 0/0 .text            _delete__14daObjSwChain_cFv */
int daObjSwChain_c::_delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
#ifdef DEBUG
    l_HIO.removeHIO();
#endif
    return 1;
}

/* 80CFB61C-80CFB63C 002FDC 0020+00 1/0 0/0 0/0 .text daObjSwChain_Draw__FP14daObjSwChain_c */
static int daObjSwChain_Draw(daObjSwChain_c* i_this) {
    return i_this->draw();
}

/* 80CFB63C-80CFB65C 002FFC 0020+00 1/0 0/0 0/0 .text daObjSwChain_Execute__FP14daObjSwChain_c */
static int daObjSwChain_Execute(daObjSwChain_c* i_this) {
    return i_this->execute();
}

/* 80CFB65C-80CFB67C 00301C 0020+00 1/0 0/0 0/0 .text daObjSwChain_Delete__FP14daObjSwChain_c */
static int daObjSwChain_Delete(daObjSwChain_c* i_this) {
    fpc_ProcID unused = fopAcM_GetID(i_this);
    return i_this->_delete();
}

/* 80CFB67C-80CFB69C 00303C 0020+00 1/0 0/0 0/0 .text            daObjSwChain_Create__FP10fopAc_ac_c
 */
static int daObjSwChain_Create(fopAc_ac_c* a_this) {
    daObjSwChain_c* i_this = (daObjSwChain_c*)a_this;
    fpc_ProcID unused = fopAcM_GetID(a_this);
    return i_this->Create();
}

/* ############################################################################################## */
/* 80CFB81C-80CFB83C -00001 0020+00 1/0 0/0 0/0 .data            l_daObjSwChain_Method */
static actor_method_class l_daObjSwChain_Method = {
    (process_method_func)daObjSwChain_Create,  (process_method_func)daObjSwChain_Delete,
    (process_method_func)daObjSwChain_Execute, 0,
    (process_method_func)daObjSwChain_Draw,
};

/* 80CFB83C-80CFB86C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_SwChain */
extern actor_process_profile_definition g_profile_Obj_SwChain = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_SwChain,        // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daObjSwChain_c),  // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    615,                     // mPriority
    &l_daObjSwChain_Method,  // sub_method
    0x000C0000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

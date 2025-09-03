/**
 * @file d_a_obj_firepillar.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_firepillar.h"
#include "d/d_cc_d.h"
#include "d/d_com_inf_game.h"
#include "d/d_debug_viewer.h"
#include "f_op/f_op_actor_mng.h"

/* 80BE9118-80BE9138 000078 0020+00 1/1 0/0 0/0 .text            initBaseMtx__14daObjFPillar_cFv */
void daObjFPillar_c::initBaseMtx() {
    setBaseMtx();
}

/* 80BE9138-80BE9190 000098 0058+00 1/1 0/0 0/0 .text            setBaseMtx__14daObjFPillar_cFv */
void daObjFPillar_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
}

/* 80BE9ADC-80BE9AF4 000020 0018+00 1/1 0/0 0/0 .data            l_cull_box */
static f32 l_cull_box[6] = {
    -30.0f, -10.0f, -30.0f,
    30.0f, 60.0f, 30.0f,
};

/* 80BE9AF4-80BE9B40 000038 004C+00 1/1 0/0 0/0 .data            l_cps_src */
static dCcD_SrcCps l_cps_src = {
    {
        {0x0, {{0x100, 0x1, 0x1d}, {0x0, 0x0}, 0x0}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x1, 0x2}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x4}, // mGObjTg
        {0x0}, // mGObjCo
    }, // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 100.0f, 0.0f}, 50.0f}, // mCps
    } // mCpsAttr
};

/* 80BE9190-80BE9230 0000F0 00A0+00 1/1 0/0 0/0 .text            Create__14daObjFPillar_cFv */
int daObjFPillar_c::Create() {
    initBaseMtx();
    mStts.Init(0, 0xff, this);
    mCps.Set(l_cps_src);
    mCps.SetStts(&mStts);
    f32 maxy = l_cull_box[4] * scale.y;
    fopAcM_setCullSizeBox(this,
        (l_cull_box[0] * scale.x),
        (l_cull_box[1] * scale.y),
        (l_cull_box[2] * scale.x),
        (l_cull_box[3] * scale.x),
        maxy,
        maxy);
    return 1;
}

/* 80BE9230-80BE9360 000190 0130+00 1/1 0/0 0/0 .text            create__14daObjFPillar_cFv */
int daObjFPillar_c::create() {
    fopAcM_SetupActor(this, daObjFPillar_c);
    int rv = Create();
    if (rv == 0) {
        return cPhs_ERROR_e;
    }
    return cPhs_COMPLEATE_e;
}

/* 80BE94E4-80BE9610 000444 012C+00 1/1 0/0 0/0 .text            execute__14daObjFPillar_cFv */
int daObjFPillar_c::execute() {
    action();
    mCylScale.x = scale.x;
    mCylScale.z = scale.z;
    cXyz cStack_1c(0.0f, 1.0f, 0.0f);
    cStack_1c.y *= mCylScale.y * 100.0f;
    mDoMtx_stack_c::ZXYrotS(current.angle.x, current.angle.y, current.angle.z);
    mDoMtx_stack_c::multVec(&cStack_1c, &cStack_1c);
    field_0x954.mStart = current.pos;
    field_0x954.mEnd = cStack_1c + current.pos;
    field_0x954.mRadius = scale.x * 50.0f;
    if (mCylScale.y > scale.y * 0.1f) {
        mCps.cM3dGCps::Set(field_0x954);
        dComIfG_Ccsp()->Set(&mCps);
    }
    return 1;
}

/* 80BE9610-80BE96B4 000570 00A4+00 1/1 0/0 0/0 .text            action__14daObjFPillar_cFv */
void daObjFPillar_c::action() {
    static daObjFPillar_c::actionFunc l_func[3] = {
        &daObjFPillar_c::actionOff,
        &daObjFPillar_c::actionOnWait,
        &daObjFPillar_c::actionOn,
    };
    (this->*(l_func[mAction]))();
}

/* 80BE96B4-80BE96E0 000614 002C+00 2/2 0/0 0/0 .text            actionOffInit__14daObjFPillar_cFv
 */
void daObjFPillar_c::actionOffInit() {
    u8 bVar1 = daObjFPillar_prm::getArg0(this);
    if (bVar1 == 0xff) {
        bVar1 = 1;
    }
    mActionTimer = bVar1 * 15;
    mAction = ACTION_OFF;
}

/* 80BE96E0-80BE9784 000640 00A4+00 1/0 0/0 0/0 .text            actionOff__14daObjFPillar_cFv */
void daObjFPillar_c::actionOff() {
    cLib_chaseF(&mCylScale.y, 0.0f, scale.y * 0.1f);
    if (mActionTimer == 0) {
        actionOnWaitInit();
    } else {
        if (daObjFPillar_prm::getSwNo(this) != 0xff) {
            if (fopAcM_isSwitch(this, daObjFPillar_prm::getSwNo(this))) {
                mActionTimer--;
            }
        } else {
            mActionTimer--;
        }
    }
}

/* 80BE9784-80BE97B8 0006E4 0034+00 1/1 0/0 0/0 .text actionOnWaitInit__14daObjFPillar_cFv */
void daObjFPillar_c::actionOnWaitInit() {
    u8 bVar1 = daObjFPillar_prm::getArg1(this);
    if (bVar1 == 0xff) {
        bVar1 = 1;
    }
    mActionTimer = bVar1 * 15;
    mActionTimer = 30;
    mAction = ACTION_ON_WAIT;
}

/* 80BE97B8-80BE986C 000718 00B4+00 1/0 0/0 0/0 .text            actionOnWait__14daObjFPillar_cFv */
void daObjFPillar_c::actionOnWait() {
    cLib_chaseF(&mCylScale.y, scale.y * 0.1f, scale.y * 0.02f);
    if (mActionTimer == 0) {
        actionOnInit();
    } else {
        if (daObjFPillar_prm::getSwNo(this) != 0xff) {
            if (fopAcM_isSwitch(this, daObjFPillar_prm::getSwNo(this))) {
                mActionTimer--;
            } else {
                actionOffInit();
            }
        } else {
            mActionTimer--;
        }
    }
}

/* 80BE986C-80BE98A0 0007CC 0034+00 1/1 0/0 0/0 .text            actionOnInit__14daObjFPillar_cFv */
void daObjFPillar_c::actionOnInit() {
    u8 bVar1 = daObjFPillar_prm::getArg2(this);
    if (bVar1 == 0xff) {
        bVar1 = 1;
    }
    mActionTimer = bVar1 * 15;
    mActionTimer = 30;
    mAction = ACTION_ON;
}

/* 80BE98A0-80BE9980 000800 00E0+00 1/0 0/0 0/0 .text            actionOn__14daObjFPillar_cFv */
void daObjFPillar_c::actionOn() {
    f32 target = scale.y;
    if (mActionTimer == 0) {
        target = 0.0;
    } else {
        if (daObjFPillar_prm::getSwNo(this) != 0xff) {
            if (fopAcM_isSwitch(this, daObjFPillar_prm::getSwNo(this))) {
                mActionTimer--;
            } else {
                target = 0.0;
            }
        } else {
            mActionTimer--;
        }
    }
    int reachedTarget = cLib_chaseF(&mCylScale.y, target, scale.y * 0.1f);
    if (reachedTarget && target == 0.0f) {
        actionOffInit();
    }
}

/* 80BE9980-80BE9984 0008E0 0004+00 1/1 0/0 0/0 .text            drawCylinder__FP4cXyzP4cXyzP5csXyz
 */
static void drawCylinder(cXyz* pos, cXyz* scale, csXyz* angle) {
    static GXColor const color = {0xFF,00,00,0x60};

    #if DEBUG
    mDoMtx_stack_c::transS(pos->x, pos->y, pos->z);
    mDoMtx_stack_c::ZXYrotM(angle->x, angle->y, angle->z);
    mDoMtx_stack_c::scaleM(scale->x * 50.0f, scale->y * 50.0f, scale->x * 50.0f);
    mDoMtx_stack_c::transM(0.0f, 1.0f, 0.0f);
    mDoMtx_stack_c::XrotM(0x4000);
    Mtx mtx;
    MTXCopy(mDoMtx_stack_c::get(), mtx);
    dDbVw_drawCylinderMXlu(mtx, color, 1);
    #endif
}

/* 80BE9984-80BE99B8 0008E4 0034+00 1/1 0/0 0/0 .text            draw__14daObjFPillar_cFv */
int daObjFPillar_c::draw() {
    drawCylinder(&current.pos, &mCylScale, &current.angle);
    return 1;
}

/* 80BE99B8-80BE99C0 000918 0008+00 1/1 0/0 0/0 .text            _delete__14daObjFPillar_cFv */
int daObjFPillar_c::_delete() {
    return 1;
}

/* 80BE99C0-80BE99E0 000920 0020+00 1/0 0/0 0/0 .text daObjFPillar_Draw__FP14daObjFPillar_c */
static int daObjFPillar_Draw(daObjFPillar_c* i_this) {
    return i_this->draw();
}

/* 80BE99E0-80BE9A00 000940 0020+00 1/0 0/0 0/0 .text daObjFPillar_Execute__FP14daObjFPillar_c */
static int daObjFPillar_Execute(daObjFPillar_c* i_this) {
    return i_this->execute();
}

/* 80BE9A00-80BE9A20 000960 0020+00 1/0 0/0 0/0 .text daObjFPillar_Delete__FP14daObjFPillar_c */
static int daObjFPillar_Delete(daObjFPillar_c* i_this) {
    fopAcM_GetID(i_this);
    return i_this->_delete();
}

/* 80BE9A20-80BE9A40 000980 0020+00 1/0 0/0 0/0 .text            daObjFPillar_Create__FP10fopAc_ac_c
 */
static int daObjFPillar_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daObjFPillar_c*>(i_this)->create();
}

/* 80BE9B88-80BE9BA8 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjFPillar_Method */
static actor_method_class l_daObjFPillar_Method = {
    (process_method_func)daObjFPillar_Create,
    (process_method_func)daObjFPillar_Delete,
    (process_method_func)daObjFPillar_Execute,
    NULL,
    (process_method_func)daObjFPillar_Draw,
};

/* 80BE9BA8-80BE9BD8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_FirePillar */
extern actor_process_profile_definition g_profile_Obj_FirePillar = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_Obj_FirePillar,    // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daObjFPillar_c), // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  446,                    // mPriority
  &l_daObjFPillar_Method, // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

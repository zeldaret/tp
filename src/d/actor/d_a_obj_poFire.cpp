/**
* @file d_a_obj_poFire.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_poFire.h"

class daPoFire_HIO_c : public mDoHIO_entry_c {
public:
    /* 80CB294C */ daPoFire_HIO_c();
    /* 80CB3D24 */ virtual ~daPoFire_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x06 */ s8 unk6;
    /* 0x08 */ f32 mWaitPeriod;       // Wait oscillation period
    /* 0x0C */ f32 mWaitVertRange;    // Wait oscillation amplitude, vertical range
    /* 0x10 */ f32 mWaitVertSpeed;    // Wait oscillation speed, vertical speed
    /* 0x14 */ f32 mMovePeriod1;      // Move period
    /* 0x18 */ f32 mMoveSwingSpeed1;  // Move oscillation speed
    /* 0x1C */ f32 mMoveSpeed;        // Move speed
    /* 0x20 */ f32 mMovePeriod2;      // Move period ??
    /* 0x24 */ f32 mMoveSwingSpeed2;  // Move oscillation speed
    /* 0x28 */ f32 mMoveSwingRange;   // Move oscillation range
    /* 0x2C */ f32 mPickupRange;      // Horizontal dist ?
    /* 0x30 */ u8 mFireWaitTime;      // Fire wait
};

/* ############################################################################################## */

/* 80CB4114-80CB4148 000014 0034+00 5/5 0/0 0/0 .bss             l_HIO */
static daPoFire_HIO_c l_HIO;

/* 80CB294C-80CB29C4 0000EC 0078+00 1/1 0/0 0/0 .text            __ct__14daPoFire_HIO_cFv */
daPoFire_HIO_c::daPoFire_HIO_c() {
    unk6 = 0x3C;
    mWaitPeriod = 1.0f;
    mWaitVertRange = 10.0f;
    mWaitVertSpeed = 5.0f;
    mMovePeriod1 = 0.2f;
    mMoveSwingSpeed1 = 10.0f;
    mMoveSpeed = 6.0f;
    mMovePeriod2 = 1.0f;
    mMoveSwingSpeed2 = 5.0f;
    mMoveSwingRange = 40.0f;
    mPickupRange = 150.0f;
    mFireWaitTime = 20;
}
#ifdef DEBUG
/* daPoFire_HIO_c::genMessage (JORMContext *) */
void daPoFire_HIO_c::genMessage(JORMContext* mctx) {
    mctx->genSlider("捕まえ範囲", &mPickupRange, 0.0f, 1000.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genLabel("\n", 0, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("周期", &mWaitPeriod, 0.1f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("上下幅", &mWaitVertRange, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("上下速度", &mWaitVertSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genLabel("\n", 0, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("周期", &mMovePeriod1, 0.1f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("移動速度", &mMoveSpeed, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("揺らぎ速度", &mMoveSwingSpeed1, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200,
                    24);
    mctx->genLabel("\n", 0, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("周期", &mMovePeriod2, 0.1f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("揺らぎ速度", &mMoveSwingSpeed2, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200,
                    24);
    mctx->genSlider("揺らぎ幅", &mMoveSwingRange, 0.0f, 100.0f, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genLabel("\n", 0, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
    mctx->genSlider("Fire Wait", &mFireWaitTime, 0, 0xFFU, 0, NULL, 0xFFFF, 0xFFFF, 0x200, 24);
}
#endif

/* 80CB2A0C-80CB2A74 0001AC 0068+00 2/2 0/0 0/0 .text            setBaseMtx__10daPoFire_cFv */
void daPoFire_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);
    mDoMtx_stack_c::transM(unk5F8.x, unk5F8.y, unk5F8.z);
}

/* ############################################################################################## */

/* 80CB3F08-80CB3F0C 00001C 0004+00 1/2 0/0 0/0 .rodata          itemNo */
static u8 const itemNo[4] = {fpcNm_ITEM_POU_FIRE1, fpcNm_ITEM_POU_FIRE2, fpcNm_ITEM_POU_FIRE3,
                             fpcNm_ITEM_POU_FIRE4};

/* 80CB2A74-80CB2BB8 000214 0144+00 1/1 0/0 0/0 .text            create__10daPoFire_cFv */
int daPoFire_c::create() {
    fopAcM_SetupActor(this, daPoFire_c);

    int phase = dComIfG_resLoad(&mPhase, "poFire");
    if (phase != cPhs_COMPLEATE_e) {
        return cPhs_INIT_e;
    }
    fopAcM_setRoomLayer(this, fopAcM_GetRoomNo(this));
    mActorID = getID();
    if (mActorID > 3 && mActorID != 0xFF) {
        OS_REPORT("=== ポウ炎：ＩＤが無効な値です ===\n");
        mActorID &= (u8)0x03;
    }
    dComIfGs_offItemFirstBit(itemNo[mActorID]);
    unk5F4 = 0.0f;
    unk5F8.x = 0.0f;
    unk5F8.y = 0.0f;
    unk5F8.z = 0.0f;
    unk604 = 0;
    unk590 = -1;
    mMoveEnd = 0;
    setBaseMtx();
    if (mActorID != 0xFF) {
        init_modeInitMove();
    } else {
        init_modeOnFire();
    }

#ifdef DEBUG
    l_HIO.entryHIO("ポウ炎");
#endif

    return cPhs_COMPLEATE_e;
}

/* 80CB2BB8-80CB2BFC 000358 0044+00 1/1 0/0 0/0 .text            Execute__10daPoFire_cFv */
int daPoFire_c::Execute() {
    eventUpdate();
    procMain();
    setBaseMtx();
    return 1;
}

/* ############################################################################################## */
/* 80CB2BFC-80CB2D84 00039C 0188+00 1/1 0/0 0/0 .text            procMain__10daPoFire_cFv */
void daPoFire_c::procMain() {
    static const daPoFire_c::modeProc mode_proc[9] = {
        &daPoFire_c::modeInitMove, &daPoFire_c::modeWait,   &daPoFire_c::modeWaitSetEffect,
        &daPoFire_c::modeMoveOut,  &daPoFire_c::modeMove,   &daPoFire_c::modeNoMove,
        &daPoFire_c::modeMoveWait, &daPoFire_c::modeOnFire, &daPoFire_c::modeFireEnd,
    };

    if (unk5C4) {
        setFire();
    }
    (this->*(mode_proc[mMode]))();
    attention_info.position = current.pos;
    attention_info.position.y += 20.0f;
}

/* ############################################################################################## */

/* 80CB2D84-80CB2F68 000524 01E4+00 1/1 0/0 0/0 .text            setFire__10daPoFire_cFv */
void daPoFire_c::setFire() {
    cXyz temp_r1(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::transS(unk5F8.x, unk5F8.y, unk5F8.z);
    mDoMtx_stack_c::multVec(&temp_r1, &temp_r1);

    cXyz temp_r2 = current.pos + temp_r1;
    unk5A0 = (temp_r2 - unk5AC) * 0.5f;
    mParticleKeys[0] = dComIfGp_particle_set(mParticleKeys[0], 0x866D, &temp_r2, NULL, NULL);
    mParticleKeys[1] = dComIfGp_particle_set(mParticleKeys[1], 0x869B, &temp_r2, NULL, NULL);
    for (int i = 0; i < 2; i++) {
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKeys[i]);
        if (emitter != NULL) {
            emitter->setParticleCallBackPtr(dPa_control_c::getParticleTracePCB());
            emitter->setUserWork((u32)&unk5A0);
        }
    }
    unk5AC = temp_r2;
}

/* 80CB2F68-80CB2FD4 000708 006C+00 1/1 0/0 0/0 .text            searchCandle__10daPoFire_cFPvPv */
void* daPoFire_c::searchCandle(void* i_actor, void* i_this) {
    daPoFire_c* _this = static_cast<daPoFire_c*>(i_this);
    daPoCandle_c* _actor = static_cast<daPoCandle_c*>(i_actor);
    if (_actor != NULL && fopAcM_IsActor(_actor) &&
        fopAcM_GetProfName(_actor) == PROC_Obj_poCandle &&
        _this->mActorID == ((daPoCandle_c*)_actor)->getIDNum())
    {
        return _actor;
    }
    return NULL;
}

/* 80CB2FD4-80CB3024 000774 0050+00 1/1 0/0 0/0 .text            searchFireTag__10daPoFire_cFPvPv */
void* daPoFire_c::searchFireTag(void* i_actor, void* i_this) {
    daPoFire_c* _this = static_cast<daPoFire_c*>(i_this);
    daTagPoFire_c* _actor = static_cast<daTagPoFire_c*>(i_actor);
    if (_actor != NULL && fopAcM_IsActor(_actor) && fopAcM_GetProfName(_actor) == PROC_Tag_poFire) {
        return _actor;
    }
    return NULL;
}

/* 80CB3024-80CB30FC 0007C4 00D8+00 1/1 0/0 0/0 .text            init_modeInitMove__10daPoFire_cFv
 */
void daPoFire_c::init_modeInitMove() {
    dBgS_GndChk gndchk;
    gndchk.SetPos(&current.pos);
    mGroundY = dComIfG_Bgsp().GroundCross(&gndchk);
    cXyz sp14(0.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::transS(unk5F8.x, unk5F8.y, unk5F8.z);
    mDoMtx_stack_c::multVec(&sp14, &sp14);
    unk5AC = current.pos + sp14;
    unk5C4 = 1;
    mMode = MODE_INIT_MOVE;
}

/* ############################################################################################## */

/* 80CB30FC-80CB31FC 00089C 0100+00 1/0 0/0 0/0 .text            modeInitMove__10daPoFire_cFv */
void daPoFire_c::modeInitMove() {
    f32 calc_res = cLib_addCalc(&current.pos.y, mGroundY + 70.0f, 0.5f, 2.0f, 0.5f);
    if (calc_res == 0.0f) {
        unk5D4 = current.pos.y;
        mpPoCandle = (daPoCandle_c*)fopAcM_Search((fopAcIt_JudgeFunc)searchCandle, this);
        mpTagPoFire = (daTagPoFire_c*)fopAcM_Search((fopAcIt_JudgeFunc)searchFireTag, this);
        if (mpPoCandle == NULL && mpTagPoFire == NULL) {
            init_modeMoveOut();
            return;
        }
        if (mpTagPoFire != NULL) {
            init_modeMoveOut();
            return;
        }
        if (mpPoCandle != NULL) {
            if (unk590 != -1) {
                orderEvent(0xFF, unk590, 1);
                return;
            }
            init_modeMove();
        }
    }
}

// needed for .rodata ordering
static f32 dummy1() {
    return -1.0f;
}

/* ############################################################################################## */

/* 80CB31FC-80CB32EC 00099C 00F0+00 1/0 0/0 0/0 .text            modeWait__10daPoFire_cFv */
void daPoFire_c::modeWait() {
    if (eventInfo.checkCommandCatch()) {
        init_modeWaitSetEffect();
    } else {
        dComIfGp_att_CatchRequest(this, itemNo[mActorID], l_HIO.mPickupRange, 70.0f, -70.0f, 0x5000,
                                  1);
        eventInfo.onCondition(dEvtCnd_40_e);
    }
    current.pos.y = unk5D4 + l_HIO.mWaitVertRange * cM_ssin(cM_deg2s(unk5D8 * l_HIO.mWaitPeriod));
    unk5D8 += l_HIO.mWaitVertSpeed;
}

/* 80CB32EC-80CB3380 000A8C 0094+00 1/1 0/0 0/0 .text init_modeWaitSetEffect__10daPoFire_cFv */
void daPoFire_c::init_modeWaitSetEffect() {
    for (int i = 0; i < 2; i++) {
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKeys[i]);
        if (emitter != NULL) {
            emitter->deleteAllParticle();
            emitter->becomeInvalidEmitter();
        }
    }
    unk5C4 = 0;
    mMode = MODE_WAIT_SET_EFFECT;
}

/* 80CB3380-80CB3540 000B20 01C0+00 1/0 0/0 0/0 .text            modeWaitSetEffect__10daPoFire_cFv
 */
void daPoFire_c::modeWaitSetEffect() {
    JPABaseEmitter* emitter;
    if (!daPy_getLinkPlayerActorClass()->getBottleMtx()) {
        for (int i = 0; i < 2; i++) {
            emitter = dComIfGp_particle_getEmitter(mParticleKeys[i]);
            if (emitter != NULL) {
                emitter->deleteAllParticle();
                emitter->becomeInvalidEmitter();
            }
        }
        fopAcM_delete(this);
        return;
    }

    mParticleKeys[0] = dComIfGp_particle_set(mParticleKeys[0], 0x866F, &current.pos, NULL, NULL);
    mParticleKeys[1] = dComIfGp_particle_set(mParticleKeys[1], 0x866E, &current.pos, NULL, NULL);

    for (int i = 0; i < 2; i++) {
        emitter = dComIfGp_particle_getEmitter(mParticleKeys[i]);
        if (emitter != NULL) {
            emitter->setGlobalRTMatrix(daPy_getLinkPlayerActorClass()->getBottleMtx());
        }
    }
}

/* 80CB3540-80CB355C 000CE0 001C+00 1/1 0/0 0/0 .text            init_modeMoveOut__10daPoFire_cFv */
void daPoFire_c::init_modeMoveOut() {
    unk5EC = 0.0f;
    unk5F0 = 0.0f;
    mMode = MODE_MOVE_OUT;
}

/* ############################################################################################## */

/* 80CB355C-80CB3714 000CFC 01B8+00 1/0 0/0 0/0 .text            modeMoveOut__10daPoFire_cFv */
void daPoFire_c::modeMoveOut() {
    unk5E8 = 1.0f + cM_ssin(cM_deg2s(unk5EC * l_HIO.mMovePeriod1));
    f32 temp_f31 = cLib_addCalcPos(&current.pos, mpTagPoFire->current.pos, 1.0f,
                                   l_HIO.mMoveSpeed * unk5E8, 0.5f);
    unk5EC += l_HIO.mMoveSwingSpeed1;
    if (temp_f31 < 100.0f) {
        cLib_addCalc(&unk608, 0.0f, 0.5f, 0.2f, 0.01f);
    } else {
        unk608 = 1.0f;
    }
    unk5F8.x = l_HIO.mMoveSwingRange * unk608 * cM_ssin(cM_deg2s(unk5F0 * l_HIO.mMovePeriod2));
    unk5F8.y = l_HIO.mMoveSwingRange * unk608 * cM_ssin(cM_deg2s(unk5F0 * l_HIO.mMovePeriod2));
    unk5F0 += l_HIO.mMoveSwingSpeed2;
    if (0.0f == temp_f31) {
        mpTagPoFire->setFireFlag(1);
        mMoveEnd = true;
        unk5C4 = 0;
        init_modeFireEnd();
    }
}

/* 80CB3714-80CB3730 000EB4 001C+00 2/2 0/0 0/0 .text            init_modeMove__10daPoFire_cFv */
void daPoFire_c::init_modeMove() {
    unk5EC = 0.0f;
    unk5F0 = 0.0f;
    mMode = MODE_MOVE;
}

/* 80CB3730-80CB38EC 000ED0 01BC+00 1/0 0/0 0/0 .text            modeMove__10daPoFire_cFv */
void daPoFire_c::modeMove() {
    unk5E8 = 1.0f + cM_ssin(cM_deg2s(unk5EC * l_HIO.mMovePeriod1));
    f32 temp_f31 = cLib_addCalcPos(&current.pos, mpPoCandle->getFirePos(), 1.0f,
                                   l_HIO.mMoveSpeed * unk5E8, 0.5f);
    unk5EC += l_HIO.mMoveSwingSpeed1;
    if (temp_f31 < 100.0f) {
        cLib_addCalc(&unk608, 0.0f, 0.5f, 0.2f, 0.01f);
    } else {
        unk608 = 1.0f;
    }
    unk5F8.x = l_HIO.mMoveSwingRange * unk608 * cM_ssin(cM_deg2s(unk5F0 * l_HIO.mMovePeriod2));
    unk5F8.y = l_HIO.mMoveSwingRange * unk608 * cM_ssin(cM_deg2s(unk5F0 * l_HIO.mMovePeriod2));
    unk5F0 += l_HIO.mMoveSwingSpeed2;
    if (0.0f == temp_f31) {
        unk5F8.x = 0.0f;
        unk5F8.y = 0.0f;
        init_modeMoveWait();
    }
}

/* 80CB38EC-80CB3918 00108C 002C+00 1/1 0/0 0/0 .text            init_modeMoveWait__10daPoFire_cFv
 */
void daPoFire_c::init_modeMoveWait() {
    mWaitTimer = l_HIO.mFireWaitTime;
    mMoveEnd = true;
    mpPoCandle->setFireFlag(1);
    mMode = MODE_MOVE_WAIT;
}

/* 80CB3918-80CB3958 0010B8 0040+00 1/0 0/0 0/0 .text            modeMoveWait__10daPoFire_cFv */
void daPoFire_c::modeMoveWait() {
    if (mWaitTimer != 0) {
        mWaitTimer--;
        return;
    }
    unk5C4 = 0;
    init_modeFireEnd();
}

/* ############################################################################################## */

/* 80CB3958-80CB39CC 0010F8 0074+00 1/0 0/0 0/0 .text            modeNoMove__10daPoFire_cFv */
void daPoFire_c::modeNoMove() {
    f32 calc_res = cLib_addCalc(&current.pos.y, mGroundY + 300.0f, 0.5f, 2.0f, 0.5f);
    if (calc_res == 0.0f) {
        unk5C4 = 0;
        init_modeFireEnd();
    }
}

/* 80CB39CC-80CB39E0 00116C 0014+00 1/1 0/0 0/0 .text            init_modeOnFire__10daPoFire_cFv */
void daPoFire_c::init_modeOnFire() {
    unk5C4 = 0;
    mMode = MODE_ON_FIRE;
}

/* ############################################################################################## */

/* 80CB39E0-80CB3ADC 001180 00FC+00 1/0 0/0 0/0 .text            modeOnFire__10daPoFire_cFv */
void daPoFire_c::modeOnFire() {
    cXyz sp8(3.5f, 3.5f, 3.5f);
    mParticleKeys[0] = dComIfGp_particle_set(mParticleKeys[0], 0x8670, &current.pos, NULL, &sp8);
    mParticleKeys[1] = dComIfGp_particle_set(mParticleKeys[1], 0x8671, &current.pos, NULL, &sp8);
}

/* 80CB3ADC-80CB3AE8 00127C 000C+00 3/3 0/0 0/0 .text            init_modeFireEnd__10daPoFire_cFv */
void daPoFire_c::init_modeFireEnd() {
    mMode = MODE_FIRE_END;
}

/* 80CB3AE8-80CB3B70 001288 0088+00 1/0 0/0 0/0 .text            modeFireEnd__10daPoFire_cFv */
void daPoFire_c::modeFireEnd() {
    for (int i = 0; i < 2; i++) {
        JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleKeys[i]);
        if (emitter != NULL) {
            emitter->deleteAllParticle();
            dComIfGp_particle_levelEmitterOnEventMove(mParticleKeys[i]);
        }
    }
    fopAcM_delete(this);
}

/* 80CB3B70-80CB3BE0 001310 0070+00 2/1 0/0 0/0 .text            eventStart__10daPoFire_cFv */
bool daPoFire_c::eventStart() {
    mStaffID = dComIfGp_evmng_getMyStaffId("pofire", NULL, 0);
    dComIfGp_event_setTalkPartner(mpPoCandle);
    init_modeMove();
    return true;
}

/* 80CB3BE0-80CB3C64 001380 0084+00 2/1 0/0 0/0 .text            eventRun__10daPoFire_cFv */
bool daPoFire_c::eventRun() {
    static char* action_table[1] = {
        "MOVE_END",
    };

    int staff_id = dComIfGp_evmng_getMyActIdx(mStaffID, action_table, 1, 0, 0);
    switch (staff_id) {
    case 0:
        if (mMoveEnd) {
            dComIfGp_evmng_cutEnd(mStaffID);
        }
    }
    return true;
}

/* 80CB3C64-80CB3C6C 001404 0008+00 2/1 0/0 0/0 .text            eventEnd__10daPoFire_cFv */
bool daPoFire_c::eventEnd() {
    return true;
}

/* 80CB3C6C-80CB3C74 00140C 0008+00 1/1 0/0 0/0 .text            Draw__10daPoFire_cFv */
int daPoFire_c::Draw() {
    return 1;
}

/* 80CB3C74-80CB3CA4 001414 0030+00 1/1 0/0 0/0 .text            Delete__10daPoFire_cFv */
int daPoFire_c::Delete() {
    dComIfG_resDelete(&mPhase, "poFire");

#ifdef DEBUG
    l_HIO.removeHIO();
#endif

    return 1;
}

/* 80CB3CA4-80CB3CC4 001444 0020+00 1/0 0/0 0/0 .text            daPoFire_Draw__FP10daPoFire_c */
static int daPoFire_Draw(daPoFire_c* i_this) {
    return static_cast<daPoFire_c*>(i_this)->Draw();
}

/* 80CB3CC4-80CB3CE4 001464 0020+00 1/0 0/0 0/0 .text            daPoFire_Execute__FP10daPoFire_c */
static int daPoFire_Execute(daPoFire_c* i_this) {
    return static_cast<daPoFire_c*>(i_this)->Execute();
}

/* 80CB3CE4-80CB3D04 001484 0020+00 1/0 0/0 0/0 .text            daPoFire_Delete__FP10daPoFire_c */
static int daPoFire_Delete(daPoFire_c* i_this) {
    fopAcM_RegisterDeleteID(i_this, "daPoFire");
    return static_cast<daPoFire_c*>(i_this)->Delete();
}

/* 80CB3D04-80CB3D24 0014A4 0020+00 1/0 0/0 0/0 .text            daPoFire_Create__FP10fopAc_ac_c */
static int daPoFire_Create(fopAc_ac_c* i_this) {
    fopAcM_RegisterCreateID(daPoFire_c, i_this, "daPoFire");
    return a_this->create();
}

/* 80CB4050-80CB4070 -00001 0020+00 1/0 0/0 0/0 .data            l_daPoFire_Method */
static actor_method_class l_daPoFire_Method = {
    (process_method_func)daPoFire_Create,  (process_method_func)daPoFire_Delete,
    (process_method_func)daPoFire_Execute, NULL,
    (process_method_func)daPoFire_Draw,
};

/* 80CB4070-80CB40A0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_poFire */
extern actor_process_profile_definition g_profile_Obj_poFire = {
    fpcLy_CURRENT_e,         // mLayerID
    7,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Tag_Lv4Candle,      // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daPoFire_c),      // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    540,                     // mPriority
    &l_daPoFire_Method,      // sub_method
    0x00044000,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

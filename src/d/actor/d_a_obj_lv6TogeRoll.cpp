/**
* @file d_a_obj_lv6TogeRoll.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv6TogeRoll.h"
#include "d/d_path.h"

/* 80C79D44-80C79D58 000014 0014+00 4/4 0/0 0/0 .bss             l_HIO */
static daTogeRoll_HIO_c l_HIO;

/* 80C79B0C-80C79B4C 000020 0040+00 2/2 0/0 0/0 .data            mCcDSph__12daTogeRoll_c */
dCcD_SrcSph daTogeRoll_c::mCcDSph = {
    daTogeRoll_c::mCcDObjInfo,  // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, 0.0f}  // mSph
    }  // mSphAttr
};

/* 80C79B4C-80C79B98 000060 004C+00 2/2 0/0 0/0 .data            mCcDCps__12daTogeRoll_c */
dCcD_SrcCps daTogeRoll_c::mCcDCps = {
    daTogeRoll_c::mCcDObjInfo2,  // mObjInf
    {
        {{0.0f, 0.0f, 0.0f}, {0.0f, 1100.0f, 0.0f}, 150.0f},  // mCps
    }  // mCpsAttr
};

/* 80C77C2C-80C77C80 0000EC 0054+00 1/1 0/0 0/0 .text            __ct__16daTogeRoll_HIO_cFv */
daTogeRoll_HIO_c::daTogeRoll_HIO_c() {
    field_0x04 = 60;
    field_0x05 = 1;
    field_0x06 = 30;
    field_0x08 = 10.0f;
    field_0x0c = 0.3f;
    field_0x10 = 50.0f;
}

/* 80C77CC8-80C77D50 000188 0088+00 2/2 0/0 0/0 .text            setBaseMtx__12daTogeRoll_cFv */
void daTogeRoll_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::ZXYrotM(shape_angle.x, shape_angle.y, shape_angle.z);

    mpModel->setBaseScale(scale);
    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80C77D50-80C77DBC 000210 006C+00 1/0 0/0 0/0 .text            CreateHeap__12daTogeRoll_cFv */
int daTogeRoll_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes("togeRol", 4);
    mpModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mpModel == NULL) {
        return 0;
    }
    return 1;
}

/* 80C799F0-80C79A20 00000C 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo__12daTogeRoll_c */
dCcD_SrcGObjInf const daTogeRoll_c::mCcDObjInfo = {
    {0, {{0x800, 0x1, 0x1f}, {0xdafbfdff, 0x1f}, {0x79}}},
    {1, 0, 1, 0, 1},
    {0xa, 5, 0, 0, 0},
    {0},
};

/* 80C79A20-80C79A50 00003C 0030+00 1/1 0/0 0/0 .rodata          mCcDObjInfo2__12daTogeRoll_c */
dCcD_SrcGObjInf const daTogeRoll_c::mCcDObjInfo2 = {
    {0, {{0, 0, 0}, {0xdafbfdff, 0x1f}, {0}}},
    {1, 0, 0, 0, 0},
    {0xa, 1, 0, 0, 2},
    {0},
};

/* 80C79A50-80C79A90 00006C 0040+00 1/1 0/0 0/0 .rodata          mSpeed__12daTogeRoll_c */
f32 const daTogeRoll_c::mSpeed[] = {
    10.0f, 16.6666666f, 23.3333333f, 25.0f,      26.6666666f, 28.3333333f,
    30.0f, 31.6666666f, 33.3333333f, 40.0f,      46.6666666f, 53.3333333f,
    60.0f, 66.6666666f, 83.3333333f, 3.3333333f,
};

/* 80C77DBC-80C78058 00027C 029C+00 1/1 0/0 0/0 .text            create__12daTogeRoll_cFv */
int daTogeRoll_c::create() {
    fopAcM_SetupActor(this, daTogeRoll_c);

    int phase = dComIfG_resLoad(&mPhase, "togeRol");

    if (phase == cPhs_COMPLEATE_e) {
        if (MoveBGCreate("togeRol", -1, NULL, 0x900, NULL) == cPhs_ERROR_e) {
            return cPhs_ERROR_e;
        }

        mPathID = getPathID();

        dPath* path = dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this));

        if (path == NULL) {
            return cPhs_INIT_e;
        }

        dPnt* points = &path->m_points[0];
        current.pos.x = points->m_position.x;
        current.pos.y = points->m_position.y + 50.0f;
        current.pos.z = points->m_position.z;

        field_0x5ad = -1;
        field_0x5ae = 0;
        field_0x5d4 = mSpeed[getSpeed()];
        init_modeWaitInit();
        fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
        fopAcM_setCullSizeBox2(this, mpModel->getModelData());
        setBaseMtx();
        mStts.Init(0xfe, 0xff, this);

        for (int i = 0; i < 8; i++) {
            mSph[i].Set(mCcDSph);
            mSph[i].SetStts(&mStts);
        }

        mCps.Set(mCcDCps);
        mCps.SetStts(&mStts);
        field_0x5da = 1;
        field_0x5dc = 0;
        mSound.init(&current.pos, 1);
        field_0x1158 = 0;
    }

    return phase;
}

/* 80C78294-80C78638 000754 03A4+00 1/0 0/0 0/0 .text            Execute__12daTogeRoll_cFPPA3_A4_f
 */
int daTogeRoll_c::Execute(Mtx** i_mtx) {
    moveTogeRoll();

    cCcD_ObjHitInf* gobj;
    cCcD_Obj* obj = NULL;
    u32 se_id;

    if (mCps.ChkTgHit()) {
        gobj = mCps.GetTgHitGObj();
        obj = mCps.GetTgHitObj();
        se_id = mCps.GetTgHitObjHitSeID(1);
        if ((gobj->GetAtType() & 0x2000000)) {
            init_modeBreak();
        }
    } else {
        for (int i = 0; i < 8; i++) {
            if (mSph[i].ChkTgHit()) {
                gobj = mSph[i].GetTgHitGObj();
                obj = mSph[i].GetTgHitObj();
                se_id = mSph[i].GetTgHitObjHitSeID(1);
                if ((gobj->GetAtType() & 0x2000000)) {
                    init_modeBreak();
                    break;
                }
            }
        }
    }

    if (obj != NULL && gobj != NULL) {
        fopAc_ac_c* hit_actor = dCc_GetAc(obj->GetAc());

        bool bVar1 = true;

        if (hit_actor != NULL) {
            if (fopAcM_GetName(hit_actor) == PROC_ALINK && gobj->GetAtType() & 2 && field_0x1158) {
                bVar1 = false;
            }
            if (bVar1) {
                mSound.startCollisionSE(se_id, 9, NULL);
                field_0x1158 = 1;
            }
        }
    } else {
        field_0x1158 = 0;
    }

    cXyz pos;
    for (int i = 0; i < 8; i++) {
        cXyz pos(0.0f, 0.0f, 0.0f);
        pos.x = (f32)i * 70.0f - 248.0f;

        mDoMtx_stack_c::ZXYrotS(shape_angle.x, shape_angle.y, shape_angle.z);
        mDoMtx_stack_c::multVec(&pos, &pos);

        cXyz pos2 = current.pos;
        pos2 += pos;

        mSph[i].SetR(50.0f);
        mSph[i].SetC(pos2);
        dComIfG_Ccsp()->Set(&mSph[i]);
    }

    cXyz pos3(270.0f, 0.0f, 0.0f);

    mDoMtx_stack_c::ZXYrotS(current.angle.x, current.angle.y, current.angle.z);
    mDoMtx_stack_c::multVec(&pos3, &pos3);

    field_0x113c.mStart = pos3 + current.pos;
    field_0x113c.mEnd = current.pos - pos3;
    field_0x113c.mRadius = 30.0f;

    mCps.cM3dGCps::Set(field_0x113c);
    dComIfG_Ccsp()->Set(&mCps);
    mStts.Move();
    mSound.framework(0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    *i_mtx = &mpModel->getBaseTRMtx();
    setBaseMtx();
    return 1;
}

/* 80C78638-80C78A8C 000AF8 0454+00 1/1 0/0 0/0 .text            moveTogeRoll__12daTogeRoll_cFv */
void daTogeRoll_c::moveTogeRoll() {
    if (mPathID != 0xFF) {
        static daTogeRoll_c::modeFunc mode_proc[] = {
            &daTogeRoll_c::modeAcc,   &daTogeRoll_c::modeMove,     &daTogeRoll_c::modeBrk,
            &daTogeRoll_c::modeWait,  &daTogeRoll_c::modeWaitInit, &daTogeRoll_c::modeBreak,
            &daTogeRoll_c::modeBound, &daTogeRoll_c::modeBound2,   &daTogeRoll_c::modeBoundWait,
        };

        if (field_0x5dc == NULL) {
            for (int i = 0; i < 8; i++) {
                if (mSph[i].ChkCoHit()) {
                    fopAc_ac_c* hit_actor = dCc_GetAc(mSph[i].GetCoHitObj()->GetAc());
                    if (hit_actor != NULL && fopAcM_GetName(hit_actor) == PROC_CSTATUE) {
                        field_0x5e0 = hit_actor->current.pos;
                        cXyz pos1 = current.pos - hit_actor->current.pos;
                        cXyz pos2 = current.pos - field_0x5b0;
                        if (pos1.getDotProduct(pos2) >= 0.0f) {
                            init_modeBound();
                        }
                        break;
                    }
                }
            }
        }

        cXyz pos3 = current.pos;
        (this->*mode_proc[mMode])();
        cXyz pos4 = current.pos - pos3;
        cXyz pos5 = current.pos - field_0x5b0;
        cXyz pos6 = pos5.normalizeZP();
        shape_angle.x = shape_angle.x + pos6.x * cM_deg2s((pos4.absXZ() / 314.15927f) * 360.0f);
    }
}

/* 80C78A8C-80C78B7C 000F4C 00F0+00 1/1 0/0 0/0 .text            init_modeBound__12daTogeRoll_cFv */
void daTogeRoll_c::init_modeBound() {
    field_0x5dc = 1;
    fopAcM_SetSpeedF(this, 0.0f);
    setNextPoint();
    field_0x5bc = field_0x5b0;
    field_0x5f8 = l_HIO.field_0x10;
    cXyz pos1 = current.pos - field_0x5e0;
    field_0x5ec = pos1.normalizeZP();
    cXyz pos2;
    cM3d_InDivPos2(&current.pos, &field_0x5b0, l_HIO.field_0x0c, &pos2);
    field_0x5b0 = pos2;
    mMode = MODE_BOUND;
}

/* 80C78B7C-80C78BD8 00103C 005C+00 1/0 0/0 0/0 .text            modeBound__12daTogeRoll_cFv */
void daTogeRoll_c::modeBound() {
    if (cLib_addCalcPos(&current.pos, field_0x5b0, 1.0f, field_0x5d4, 1.0f) == 0) {
        init_modeBoundWait();
    }
}

/* 80C78BD8-80C78C34 001098 005C+00 1/0 0/0 0/0 .text            modeBound2__12daTogeRoll_cFv */
void daTogeRoll_c::modeBound2() {
    if (cLib_addCalcPos(&current.pos, field_0x5b0, 1.0f, field_0x5d4, 1.0f) == 0) {
        init_modeBoundWait();
    }
}

/* 80C78C34-80C78C50 0010F4 001C+00 2/2 0/0 0/0 .text init_modeBoundWait__12daTogeRoll_cFv */
void daTogeRoll_c::init_modeBoundWait() {
    field_0x5db = l_HIO.field_0x06;
    mMode = MODE_BOUND_WAIT;
}

/* 80C78C50-80C78CA8 001110 0058+00 1/0 0/0 0/0 .text            modeBoundWait__12daTogeRoll_cFv */
void daTogeRoll_c::modeBoundWait() {
    if (field_0x5db != NULL) {
        field_0x5db -= 1;
    } else {
        field_0x5dc = 0;
        field_0x5b0 = field_0x5bc;
        init_modeWait();
    }
}

/* 80C78CA8-80C78CB4 001168 000C+00 1/1 0/0 0/0 .text            init_modeAcc__12daTogeRoll_cFv */
void daTogeRoll_c::init_modeAcc() {
    mMode = MODE_ACC;
}

/* 80C78CB4-80C78DA0 001174 00EC+00 1/0 0/0 0/0 .text            modeAcc__12daTogeRoll_cFv */
void daTogeRoll_c::modeAcc() {
    int iVar1 = cLib_chaseF(&speedF, field_0x5d4, field_0x5d4 / l_HIO.field_0x08);

    cLib_addCalcPos(&current.pos, field_0x5b0, 1.0f, fopAcM_GetSpeedF(this), 0.1f);

    s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_ROLL_MV, &current.pos, fopAcM_GetSpeedF(this), reverb);

    if (iVar1 == 1 || current.pos == field_0x5b0) {
        init_modeMove();
    }
}

/* 80C78DA0-80C78DAC 001260 000C+00 1/1 0/0 0/0 .text            init_modeMove__12daTogeRoll_cFv */
void daTogeRoll_c::init_modeMove() {
    mMode = MODE_MOVE;
}

/* 80C78DAC-80C790C4 00126C 0318+00 1/0 0/0 0/0 .text            modeMove__12daTogeRoll_cFv */
void daTogeRoll_c::modeMove() {
    cXyz pos1 = field_0x5c8;
    cXyz pos2 = field_0x5b0;
    f32 fVar1 = (pos1 - pos2).abs();
    f32 fVar2 = fVar1 * 0.3f;
    if (fVar2 < 30.0f) {
        fVar2 = 30.0f;
    }
    if (fVar2 > 300.0f) {
        fVar2 = 300.0f;
    }

    cLib_addCalcPos(&current.pos, field_0x5b0, 1.0f, fopAcM_GetSpeedF(this), 0.1f);

    s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_ROLL_MV, &current.pos, fopAcM_GetSpeedF(this), reverb);

    fVar1 = (current.pos - field_0x5b0).abs();

    if (fVar2 > fVar1) {
        init_modeBrk();
    }
}

/* 80C790C4-80C790D0 001584 000C+00 1/1 0/0 0/0 .text            init_modeBrk__12daTogeRoll_cFv */
void daTogeRoll_c::init_modeBrk() {
    mMode = MODE_BRK;
}

/* 80C790D0-80C792CC 001590 01FC+00 1/0 0/0 0/0 .text            modeBrk__12daTogeRoll_cFv */
void daTogeRoll_c::modeBrk() {
    cXyz pos1 = current.pos;
    f32 fVar1 = cLib_addCalcPos(&current.pos, field_0x5b0, 0.1f, fopAcM_GetSpeedF(this), 0.5f);

    f32 fVar2 = (pos1 - current.pos).abs();

    s8 reverb = dComIfGp_getReverb(fopAcM_GetRoomNo(this));
    mDoAud_seStartLevel(Z2SE_OBJ_TOGE_ROLL_MV, &current.pos, fVar2, reverb);

    if (fVar1 == 0) {
        init_modeWaitInit();
    }
}

/* 80C792CC-80C792E4 00178C 0018+00 2/2 0/0 0/0 .text            init_modeWaitInit__12daTogeRoll_cFv
 */
void daTogeRoll_c::init_modeWaitInit() {
    speedF = 0.0f;
    mMode = MODE_WAIT_INIT;
}

/* 80C792E4-80C79318 0017A4 0034+00 1/0 0/0 0/0 .text            modeWaitInit__12daTogeRoll_cFv */
void daTogeRoll_c::modeWaitInit() {
    setNextPoint();
    init_modeWait();
}

/* 80C79318-80C79324 0017D8 000C+00 2/2 0/0 0/0 .text            init_modeWait__12daTogeRoll_cFv */
void daTogeRoll_c::init_modeWait() {
    mMode = MODE_WAIT;
}

/* 80C79324-80C79344 0017E4 0020+00 1/0 0/0 0/0 .text            modeWait__12daTogeRoll_cFv */
void daTogeRoll_c::modeWait() {
    init_modeAcc();
}

/* 80C79344-80C793C8 001804 0084+00 1/1 0/0 0/0 .text            init_modeBreak__12daTogeRoll_cFv */
void daTogeRoll_c::init_modeBreak() {
    mDoAud_seStart(Z2SE_OBJ_TRAP_BREAK, &current.pos, 0,
                   dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
    mMode = MODE_BREAK;
}

/* 80C793C8-80C795E8 001888 0220+00 1/0 0/0 0/0 .text            modeBreak__12daTogeRoll_cFv */
void daTogeRoll_c::modeBreak() {
    csXyz rot = shape_angle;
    rot.x = 0.0f;
    rot.z = 0.0f;

    dComIfGp_particle_set(0x8A73, &current.pos, &rot, NULL);
    dComIfGp_particle_set(0x8A74, &current.pos, &rot, NULL);
    dComIfGp_particle_set(0x8A75, &current.pos, &rot, NULL);
    dComIfGp_particle_set(0x8A76, &current.pos, &rot, NULL);
    dComIfGp_particle_set(0x8A77, &current.pos, &rot, NULL);
    dComIfGp_particle_set(0x8A78, &current.pos, &rot, NULL);

    fopAcM_delete(this);
}

/* 80C795E8-80C79714 001AA8 012C+00 2/2 0/0 0/0 .text            setNextPoint__12daTogeRoll_cFv */
void daTogeRoll_c::setNextPoint() {
    s16 sVar = field_0x5ae + field_0x5ad;
    dPath* room_path = dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this));
    if (dPath_ChkClose(room_path)) {
        if (sVar > room_path->m_num - 1) {
            sVar = 0;
            field_0x5ad = -1;
        } else if (sVar < 0) {
            sVar = (s8)(room_path->m_num - 1);
            field_0x5ad = 1;
        }
    } else if (sVar > room_path->m_num - 1) {
        field_0x5ad = -1;
        sVar = (s8)(room_path->m_num - 2);
    } else if (sVar < 0) {
        field_0x5ad = 1;
        sVar = 1;
    }
    field_0x5c8 = field_0x5b0;
    dPnt* points = room_path->m_points;
    field_0x5b0.x = points[sVar].m_position.x;
    field_0x5b0.y = points[sVar].m_position.y + 50.0f;
    field_0x5b0.z = points[sVar].m_position.z;
    field_0x5ae = sVar;
}

/* 80C79714-80C797B8 001BD4 00A4+00 1/0 0/0 0/0 .text            Draw__12daTogeRoll_cFv */
int daTogeRoll_c::Draw() {
    g_env_light.settingTevStruct(64, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();
    return 1;
}

/* 80C797B8-80C797FC 001C78 0044+00 1/0 0/0 0/0 .text            Delete__12daTogeRoll_cFv */
int daTogeRoll_c::Delete() {
    mSound.deleteObject();
    dComIfG_resDelete(&mPhase, "togeRol");
    return 1;
}

/* 80C797FC-80C79828 001CBC 002C+00 1/0 0/0 0/0 .text            daTogeRoll_Draw__FP12daTogeRoll_c
 */
static int daTogeRoll_Draw(daTogeRoll_c* i_this) {
    return i_this->Draw();
}

/* 80C79828-80C79848 001CE8 0020+00 1/0 0/0 0/0 .text daTogeRoll_Execute__FP12daTogeRoll_c */
static int daTogeRoll_Execute(daTogeRoll_c* i_this) {
    return i_this->MoveBGExecute();
}

/* 80C79848-80C79868 001D08 0020+00 1/0 0/0 0/0 .text            daTogeRoll_Delete__FP12daTogeRoll_c
 */
static int daTogeRoll_Delete(daTogeRoll_c* i_this) {
    return i_this->MoveBGDelete();
}

/* 80C79868-80C79888 001D28 0020+00 1/0 0/0 0/0 .text            daTogeRoll_Create__FP10fopAc_ac_c
 */
static int daTogeRoll_Create(fopAc_ac_c* i_this) {
    return static_cast<daTogeRoll_c*>(i_this)->create();
}

/* 80C79C70-80C79C90 -00001 0020+00 1/0 0/0 0/0 .data            l_daTogeRoll_Method */
static actor_method_class l_daTogeRoll_Method = {
    (process_method_func)daTogeRoll_Create,  (process_method_func)daTogeRoll_Delete,
    (process_method_func)daTogeRoll_Execute, 0,
    (process_method_func)daTogeRoll_Draw,
};

/* 80C79C90-80C79CC0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Lv6TogeRoll */
extern actor_process_profile_definition g_profile_Obj_Lv6TogeRoll = {
    fpcLy_CURRENT_e,         // mLayerID
    3,                       // mListID
    fpcPi_CURRENT_e,         // mListPrio
    PROC_Obj_Lv6TogeRoll,    // mProcName
    &g_fpcLf_Method.base,    // sub_method
    sizeof(daTogeRoll_c),    // mSize
    0,                       // mSizeOther
    0,                       // mParameters
    &g_fopAc_Method.base,    // sub_method
    621,                     // mPriority
    &l_daTogeRoll_Method,    // sub_method
    0x00040100,              // mStatus
    fopAc_ACTOR_e,           // mActorType
    fopAc_CULLBOX_CUSTOM_e,  // cullType
};

/**
 * @file d_a_obj_smtile.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_smtile.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "SSystem/SComponent/c_counter.h"

/* 80CDE394-80CDE39C 000000 0008+00 3/3 0/0 0/0 .data            l_bmdData */
static u32 l_bmdData[1][2] = {
    4, 1,
};

/* 80CDE39C-80CDE3A4 -00001 0008+00 3/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {
    "",
    "A_SMTile",
};

/* 80CDE3A4-80CDE3F8 000010 0054+00 3/3 0/0 0/0 .data            l_tileMoveData */
SECTION_DATA static s8 l_tileMoveData[21][4] = {
    0x01, 0x03, 0x05, 0x01, 0x01, 0x02, 0x04, 0x01, 0x01, 0x01, 0x03, 0x01, 0x01, 0x02,
    0x04, 0x00, 0x00, 0x02, 0x03, 0x01, 0x01, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x01,
    0x00, 0xFF, 0x02, 0x01, 0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00,
    0x00, 0x04, 0x00, 0x00, 0x01, 0x03, 0x00, 0xFF, 0x02, 0x03, 0xFF, 0x02, 0x04, 0x00,
    0x00, 0x02, 0x03, 0x02, 0xFF, 0x00, 0x02, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0xFF,
    0x02, 0x02, 0xFF, 0x03, 0x05, 0x02, 0xFF, 0x02, 0x04, 0x02, 0xFF, 0x01, 0x03, 0x02,
};

/* 80CDD2AC-80CDD3AC 0000EC 0100+00 1/0 0/0 0/0 .text            __dt__14daObj_SMTile_cFv */
daObj_SMTile_c::~daObj_SMTile_c() {
    OS_REPORT("|%06d:%x|daObj_SMTile_c -> デストラクト\n", g_Counter.mCounter0, this);
    dComIfG_resDelete(
        &mPhase,
        l_resNameList[l_bmdData[mType][1]]);
}

/* 80CDD3E8-80CDD580 000228 0198+00 1/1 0/0 0/0 .text            create__14daObj_SMTile_cFv */
int daObj_SMTile_c::create() {
    fopAcM_SetupActor(this, daObj_SMTile_c);
    mType = getType();
    int rv = dComIfG_resLoad(
        &mPhase,
       l_resNameList[l_bmdData[mType][1]]);
    if (rv == cPhs_COMPLEATE_e) {
        OS_REPORT("\t(%s:%d) SWBit:%02x<%08x> -> roomNo.%d", fopAcM_getProcNameString(this), getType(), getBitSW(), fopAcM_GetParam(this),
                              fopAcM_GetRoomNo(this));
        if (getBitSW() != 0xff) {
            if (dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this))) {
                OS_REPORT("===>isDelete:TRUE\n");
                return cPhs_ERROR_e;
            }
        }
        OS_REPORT("\n");
        if (fopAcM_entrySolidHeap(this, createHeapCallBack, 0x800) == 0) {
            return cPhs_ERROR_e;
        }
        field_0xb2b = 1;
        Execute();
    }
    return rv;
}

/* ############################################################################################## */
/* 80CDE35C-80CDE364 000000 0008+00 4/4 0/0 0/0 .rodata          m__20daObj_SMTile_Param_c */
f32 const daObj_SMTile_Param_c::m[2] = {
    600.0f, 20.0f,
};

/* 80CDD5CC-80CDD6E8 00040C 011C+00 1/1 0/0 0/0 .text            CreateHeap__14daObj_SMTile_cFv */
int daObj_SMTile_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(
        l_resNameList[l_bmdData[mType][1]],
        l_bmdData[mType][0]);
    if (modelData == NULL) {
        return 0;
    }
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mModel == NULL) {
        return 0;
    }
    J3DAnmTevRegKey* regKey =
        (J3DAnmTevRegKey*) dComIfG_getObjectRes(l_resNameList[l_bmdData[mType][1]], 7);
    if (regKey != NULL) {
        if (mBrk.init(modelData, regKey, 1, 0, 0.0f, 0, -1) != 0) {
            return 1;
        }
    }
    return 0;
}

/* 80CDD6E8-80CDD71C 000528 0034+00 1/1 0/0 0/0 .text            Delete__14daObj_SMTile_cFv */
int daObj_SMTile_c::Delete() {
    OS_REPORT("|%06d:%x|daObj_SMTile_c -> Delete\n", g_Counter.mCounter0, this);
    this->~daObj_SMTile_c();
    return 1;
}

/* 80CDD71C-80CDDA98 00055C 037C+00 2/2 0/0 0/0 .text            Execute__14daObj_SMTile_cFv */
int daObj_SMTile_c::Execute() {
    if (home.roomNo == dComIfGp_roomControl_getStayNo()) {
        if (field_0xb2b != 0) {
            for (int i = 0; i < 21; i++) {
                JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleIds[i]);
                if (emitter != NULL) {
                    emitter->becomeDeleteEmitter();
                }
                mParticleIds[i] = 0;
                if (mEmitters[i] != NULL) {
                    mEmitters[i]->becomeDeleteEmitter();
                    mEmitters[i] = NULL;
                }
                mParticleTimers[i] = 0;
                field_0x9d4[i] = 0;
                field_0xa28[i] = 0;
            }
            mBrk.setPlaySpeed(0.0f);
            mBrk.setFrame(mBrk.getStartFrame());
            setDstPos();
            field_0xa7c = 0;
            field_0xb2b = 0;
        }
        if (field_0xb29 != 0) {
            switch (field_0xa7c) {
            case 0:
                setPrtcls(3, 0);
                mBrk.setPlaySpeed(1.0f);
                mDoAud_seStart(Z2SE_OBJ_SEKI_TFORCE_ON, 0, 0, 0);
                break;
            case 50:
                setPrtcls(1, 0);
                break;
            case 75:
                setPrtcls(2, 1);
                break;
            case 96:
                setPrtcls(2, 2);
                break;
            case 117:
                setPrtcls(2, 3);
                break;
            case 138:
                setPrtcls(2, 4);
                break;
            case 159:
                setPrtcls(2, 5);
                break;
            case 200:
                for (int i = 0; i < 21; i++) {
                    mDoAud_seStart(Z2SE_OBJ_SEKI_TILE_ON_LAST, &field_0x788[i], 0, 0);
                }
                break;
            }
            
            if (field_0xa7c > 240) {
                field_0xb29 = 0;
            } else {
                if (field_0xa7c > 220) {
                    field_0xb2a = 1;
                }
                f32 fVar1 = (240 - field_0xa7c) / 40.0f;
                if (1.0f < fVar1) {
                    fVar1 = 1.0f;
                }
                touchPrtcls(fVar1);
                field_0xa7c++;
            }
        }
        mBrk.play();
        setMtx();
        attention_info.position = current.pos;
        eyePos = attention_info.position;
        return 1;
    } 
    return 0;
}

/* 80CDDA98-80CDDB28 0008D8 0090+00 1/1 0/0 0/0 .text            Draw__14daObj_SMTile_cFv */
int daObj_SMTile_c::Draw() {
    J3DModelData* modelData = mModel->getModelData();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    mBrk.entry(modelData);
    mDoExt_modelUpdateDL(mModel);
    mBrk.remove(modelData);
    return 1;
}

/* 80CDDB28-80CDDB48 000968 0020+00 1/1 0/0 0/0 .text
 * createHeapCallBack__14daObj_SMTile_cFP10fopAc_ac_c           */
int daObj_SMTile_c::createHeapCallBack(fopAc_ac_c* i_this) {
    return static_cast<daObj_SMTile_c*>(i_this)->CreateHeap();
}

/* 80CDDB48-80CDDD28 000988 01E0+00 1/1 0/0 0/0 .text            setDstPos__14daObj_SMTile_cFv */
void daObj_SMTile_c::setDstPos() {
    cXyz local_2c;
    cXyz local_38;
    mDoMtx_stack_c::YrotS(current.angle.y);
    for (int i = 0; i < 21; i++) {
        local_2c.setall(0.0f);
        local_2c.x = l_tileMoveData[i][0];
        local_2c.z = l_tileMoveData[i][1];
        local_38 = local_2c;
        local_38.x *= daObj_SMTile_Param_c::m[0];
        local_38.z *= daObj_SMTile_Param_c::m[0];
        mDoMtx_stack_c::multVec(&local_38, &field_0x68c[i]);
        switch ((u8)l_tileMoveData[i][3]) {
        case 0:
            local_2c.z += 1.0f;
            break;
        case 1:
            local_2c.x += 1.0f;
            break;
        case 2:
            local_2c.x -= 1.0f;
            break;
        case 3:
            local_2c.z -= 1.0f;
            break;    
        }

        local_2c.x *= daObj_SMTile_Param_c::m[0];
        local_2c.z *= daObj_SMTile_Param_c::m[0];
        mDoMtx_stack_c::multVec(&local_2c, &field_0x590[i]);
    }
}

/* 80CDDD28-80CDDEFC 000B68 01D4+00 1/1 0/0 0/0 .text            setPrtcls__14daObj_SMTile_cFii */
void daObj_SMTile_c::setPrtcls(int param_1, int param_2) {
    switch(param_1) {
    case 1:
    case 2:
        for (int i = 0; i < 21; i++) {
            if (param_2 == l_tileMoveData[i][2]) {
                if (param_1 == 1) {
                    mDoAud_seStart(Z2SE_OBJ_SEKI_TILE_EMERGE, &field_0x788[i], 0, 0);
                }
                field_0x788[i] = current.pos + field_0x68c[i];
                mParticleTimers[i] = daObj_SMTile_Param_c::m[1];
                field_0xa28[i] = param_1;
            }
        }
        break;
    case 3:
        for (int i = 0; i < 21; i++) {
            field_0x788[i + 21] = current.pos + field_0x590[i];
            mEmitters[i] = dComIfGp_particle_set(0x86ee, field_0x788 + i + 21, NULL, NULL);
        }
        break;
    }
}

/* 80CDE37C-80CDE384 000020 0008+00 0/1 0/0 0/0 .rodata          id$4105 */
static u16 const id[4] = {
    0xFFFF, 0x86EC, 0x86ED, 0x86EE,
};

/* 80CDDEFC-80CDE1A8 000D3C 02AC+00 1/1 0/0 0/0 .text            touchPrtcls__14daObj_SMTile_cFf */
void daObj_SMTile_c::touchPrtcls(f32 param_1) {
    cXyz local_3c;
    cXyz cStack_48(1.0f, 1.0f, 1.0f);
    int local_30 = param_1 * 255.0f;
    mDoMtx_stack_c::YrotS(current.angle.y);
    for (int i = 0; i < 21; i++) {
        if ((field_0xa28[i] == 1) || (field_0xa28[i] == 2)) {
            mParticleIds[i] =
                dComIfGp_particle_set(mParticleIds[i], id[field_0xa28[i]], &field_0x788[i], 0, 0);
            JPABaseEmitter* emitter = dComIfGp_particle_getEmitter(mParticleIds[i]);
            if (emitter != NULL) {
                f32 dVar6 = daObj_SMTile_Param_c::m[1] - mParticleTimers[i];
                dVar6 /= daObj_SMTile_Param_c::m[1];
                local_3c.setall(0.0f);
                switch ((u8)l_tileMoveData[i][3]) {
                case 0:
                    local_3c.z = daObj_SMTile_Param_c::m[0] * dVar6;
                    break;
                case 1:
                    local_3c.x = daObj_SMTile_Param_c::m[0] * dVar6;
                    break;
                case 2:
                    local_3c.x = daObj_SMTile_Param_c::m[0] * dVar6 * -1.0f;
                    break;
                case 3:
                    local_3c.z = daObj_SMTile_Param_c::m[0] * dVar6 * -1.0f;
                    break;
                }

                mDoMtx_stack_c::multVec(&local_3c, &local_3c);
                field_0x788[i] = current.pos + field_0x68c[i] + local_3c;
                if (mParticleTimers[i] > 0 && cLib_calcTimer(&mParticleTimers[i]) == 0) {
                    mDoAud_seStart(Z2SE_OBJ_SEKI_TILE_ON, &field_0x788[i], 0, 0);
                }
                emitter->setGlobalTranslation(field_0x788[i].x, field_0x788[i].y, field_0x788[i].z);
                emitter->setGlobalAlpha(local_30);
            }
        }
    }
}

/* 80CDE1A8-80CDE21C 000FE8 0074+00 1/1 0/0 0/0 .text            setMtx__14daObj_SMTile_cFv */
void daObj_SMTile_c::setMtx() {
    csXyz acStack_18(shape_angle);
    acStack_18.y += 0x8000;
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::ZXYrotM(acStack_18);
    mDoMtx_stack_c::scaleM(scale);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80CDE21C-80CDE23C 00105C 0020+00 1/0 0/0 0/0 .text            daObj_SMTile_Create__FPv */
static int daObj_SMTile_Create(void* i_this) {
    static_cast<daObj_SMTile_c*>(i_this)->create();
}

/* 80CDE23C-80CDE25C 00107C 0020+00 1/0 0/0 0/0 .text            daObj_SMTile_Delete__FPv */
static int daObj_SMTile_Delete(void* i_this) {
    static_cast<daObj_SMTile_c*>(i_this)->Delete();
}

/* 80CDE25C-80CDE27C 00109C 0020+00 1/0 0/0 0/0 .text            daObj_SMTile_Execute__FPv */
static int daObj_SMTile_Execute(void* i_this) {
    static_cast<daObj_SMTile_c*>(i_this)->Execute();
}

/* 80CDE27C-80CDE29C 0010BC 0020+00 1/0 0/0 0/0 .text            daObj_SMTile_Draw__FPv */
static int daObj_SMTile_Draw(void* i_this) {
    static_cast<daObj_SMTile_c*>(i_this)->Draw();
}

/* 80CDE29C-80CDE2A4 0010DC 0008+00 1/0 0/0 0/0 .text            daObj_SMTile_IsDelete__FPv */
static int daObj_SMTile_IsDelete(void* i_this) {
    return 1;
}

/* 80CDE484-80CDE488 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_SMTile_Param_c l_HIO;

/* 80CDE3F8-80CDE418 -00001 0020+00 1/0 0/0 0/0 .data            daObj_SMTile_MethodTable */
static actor_method_class daObj_SMTile_MethodTable = {
    (process_method_func)daObj_SMTile_Create,
    (process_method_func)daObj_SMTile_Delete,
    (process_method_func)daObj_SMTile_Execute,
    (process_method_func)daObj_SMTile_IsDelete,
    (process_method_func)daObj_SMTile_Draw,
};

/* 80CDE418-80CDE448 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_SMTILE */
extern actor_process_profile_definition g_profile_OBJ_SMTILE = {
  fpcLy_CURRENT_e,           // mLayerID
  7,                         // mListID
  fpcPi_CURRENT_e,           // mListPrio
  PROC_OBJ_SMTILE,           // mProcName
  &g_fpcLf_Method.base,     // sub_method
  sizeof(daObj_SMTile_c),    // mSize
  0,                         // mSizeOther
  0,                         // mParameters
  &g_fopAc_Method.base,      // sub_method
  89,                        // mPriority
  &daObj_SMTile_MethodTable, // sub_method
  0x00044000,                // mStatus
  fopAc_ACTOR_e,             // mActorType
  fopAc_CULLBOX_CUSTOM_e,    // cullType
};

/* 80CDE388-80CDE388 00002C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

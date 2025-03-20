/**
 * @file d_a_obj_sekidoor.cpp
 * 
*/

#include "d/actor/d_a_obj_sekidoor.h"
#include "dol2asm.h"

//
// Declarations:
//

/* ############################################################################################## */
/* 80CCDA3C-80CCDA48 000000 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 80CCDA48-80CCDA5C 00000C 0004+10 0/0 0/0 0/0 .data            @1787 */

static u32 lit_1787[1 + 4 /* padding */] = {
    0x02000201,
    /* padding */
    0x40080000,
    0x00000000,
    0x3FE00000,
    0x00000000,
};

/* 80CCDA5C-80CCDA64 000020 0008+00 2/3 0/0 0/0 .data            l_bmdData */
static struct {
    u32 bmdIdx;
    u32 resIdx;
} l_bmdData[1] = {4, 1};

/* 80CCDA64-80CCDA6C 000028 0008+00 0/1 0/0 0/0 .data            l_dzbData */
static struct {
    u32 dzbIdx;
    u32 resIdx;
} l_dzbData[1] = {7, 1};

/* 80CCDA6C-80CCDA74 -00001 0008+00 2/3 0/0 0/0 .data            l_resNameList */
static char* l_resNameList[2] = {"", "SekiDoor"};

/* 80CCD02C-80CCD154 0000EC 0128+00 1/1 0/0 0/0 .text            create__16daObj_SekiDoor_cFv */
int daObj_SekiDoor_c::create() {
    fopAcM_SetupActor(this, daObj_SekiDoor_c);

    mBitSW = 0;
    
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, l_resNameList[l_bmdData[mBitSW].resIdx]);
    if (step == cPhs_COMPLEATE_e) {
        if (getBitSW() != 0xff){
            if (dComIfGs_isSwitch(getBitSW(), fopAcM_GetRoomNo(this))) {
                return cPhs_ERROR_e;
            }
        }

        step = (cPhs__Step)MoveBGCreate(l_resNameList[l_dzbData[mBitSW].resIdx], 
            l_dzbData[mBitSW].dzbIdx, dBgS_MoveBGProc_TypicalRotY, 0xc20, NULL
        );

        if (step == cPhs_ERROR_e) {
            return step;
        }
    }

    return step;
}

/* 80CCD154-80CCD1F0 000214 009C+00 1/0 0/0 0/0 .text            CreateHeap__16daObj_SekiDoor_cFv */
int daObj_SekiDoor_c::CreateHeap() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getObjectRes(
        l_resNameList[l_bmdData[mBitSW].resIdx],
        l_bmdData[mBitSW].bmdIdx
    );
    
    if (model_data == NULL){
        return 0;
    }
    
    mpModel = mDoExt_J3DModel__create(model_data, 0x80000, 0x11000084);

    if (mpModel == NULL) {
        return 0;
      }
    return 1;
}

/* 80CCD1F0-80CCD23C 0002B0 004C+00 1/0 0/0 0/0 .text            Create__16daObj_SekiDoor_cFv */
int daObj_SekiDoor_c::Create() {
    initBaseMtx();
    fopAcM_SetMtx(this, mpModel->getBaseTRMtx());
    fopAcM_setCullSizeBox2(this, mpModel->getModelData());

    return 1;
    // NONMATCHING
}

/* 80CCD23C-80CCD290 0002FC 0054+00 1/0 0/0 0/0 .text            Delete__16daObj_SekiDoor_cFv */
int daObj_SekiDoor_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_resNameList[l_bmdData[mBitSW].resIdx]);

    return 1;
}

/* ############################################################################################## */
/* 80CCDA08-80CCDA0C 000000 0001+03 2/2 0/0 0/0 .rodata          m__22daObj_SekiDoor_Param_c */
const u8 daObj_SekiDoor_Param_c::m[1 + 3 /* padding */] = {
    0, /* padding */ 0, 0, 0,
};

/* 80CCDA0C-80CCDA10 000004 0004+00 1/3 0/0 0/0 .rodata          @3956 */
// SECTION_RODATA static f32 const lit_3956 = 460.0f;
// COMPILER_STRIP_GATE(0x80CCDA0C, &lit_3956);
static const f32 reference_posy = 460.0f;

/* 80CCDA10-80CCDA14 000008 0004+00 0/1 0/0 0/0 .rodata          @3957 */
static const f32 rising_speed_y = 4.0f;

/* 80CCDA14-80CCDA18 00000C 0004+00 0/2 0/0 0/0 .rodata          @3958 */
SECTION_RODATA static f32 const lit_3958 = 1.0f;
COMPILER_STRIP_GATE(0x80CCDA14, &lit_3958);

/* 80CCDA18-80CCDA1C 000010 0004+00 0/1 0/0 0/0 .rodata          @3959 */
SECTION_RODATA static f32 const lit_3959 = -1.0f;
COMPILER_STRIP_GATE(0x80CCDA18, &lit_3959);

/* 80CCDA1C-80CCDA20 000014 0004+00 0/1 0/0 0/0 .rodata          @3960 */
SECTION_RODATA static u8 const lit_3960[4] = {
    0x00, 0x00, 0x00, 0x00,
};

/* 80CCDA20-80CCDA28 000018 0008+00 0/1 0/0 0/0 .rodata          @3962 */
static const u8 lit_3962[8] = {
    0x43, 0x30, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00,
};

/* 80CCD290-80CCD51C 000350 028C+00 1/0 0/0 0/0 .text Execute__16daObj_SekiDoor_cFPPA3_A4_f */
int daObj_SekiDoor_c::Execute(Mtx** i_mtx) {
    cXyz tempV;
    *i_mtx = &mBgMtx;

    if (mOpening != 0) {
        if (mDestroyed != 0) {
            if(!dComIfGp_event_runCheck()){
                fopAcM_delete(this);
            }
        }
        else {
            if (!cM3d_IsZero(mDoorPosY) && mFrameCounter == 0) {
                mOpenSpeed = 0;
                mFrameCounter++;
            }
            else {
                if (mOpenSpeed != 0) {
                    mRotation.z = mOpenSpeed * cM_ssin(mFrameCounter * 4000);
    
                    if (cLib_chaseS(&mOpenSpeed, 0, 0x10)) {
                        dComIfGp_getVibration().StopQuake(0xf);
                    }
                    
                    mFrameCounter ++;
                }
                if (mOpenSpeed == 0) {
                    tempV = current.pos;
                    if (mDoorPosY < reference_posy) {
                        speed.y = rising_speed_y;
                        cLib_chaseF(&mDoorPosY, reference_posy, speed.y);
    
                        tempV.y += mDoorPosY;
                        fopAcM_seStart(this, Z2SE_OBJ_SEKI_DOOR_OP, 0);
                    }
                    else {
                        tempV.y += mDoorPosY;
    
                        fopAcM_seStart(this, Z2SE_OBJ_SEKI_DOOR_OP_ST, 0);
    
                        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0xf, cXyz(0.0f, 1.0f, 0.0f));
                        mDestroyed = 1;
                    }
                    
                }
            }
        }
    }
    else {
        speed.setall(0.0f);

        mFrameCounter = 0; mOpenSpeed = 0;
        mDoorPosY = 0.;
        mDestroyed = 0;
    }
    
    

    setBaseMtx();
    setPrtcls();
    return 1;
}

/* 80CCD51C-80CCD538 0005DC 001C+00 1/0 0/0 0/0 .text            dComIfGp_event_runCheck__Fv */
// static void dComIfGp_event_runCheck() {
//     // NONMATCHING
// }

/* 80CCD538-80CCD5DC 0005F8 00A4+00 1/0 0/0 0/0 .text            Draw__16daObj_SekiDoor_cFv */
int daObj_SekiDoor_c::Draw() {
    g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mpModel, &tevStr);

    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mpModel);
    dComIfGd_setList();

    return 1;
}

/* 80CCD5DC-80CCD64C 00069C 0070+00 0/0 0/0 1/1 .text            evtSkip__16daObj_SekiDoor_cFv */
void daObj_SekiDoor_c::evtSkip() {
    if (mFrameCounter != 0){
        dComIfGp_getVibration().StopQuake(0xf);
    }
    mRotation.setall(0);
    mDoorPosY = reference_posy;
    mOpening = true;
    mDestroyed = true;
}

/* ############################################################################################## */
/* 80CCDA28-80CCDA30 000020 0008+00 0/1 0/0 0/0 .rodata          id$4006 */
static const u16 particle_id[4] = {
    0x8B85, 0x8B86, 0x8B87, 0x8B88,
};

/* 80CCD64C-80CCD810 00070C 01C4+00 1/1 0/0 0/0 .text            setPrtcls__16daObj_SekiDoor_cFv */
void daObj_SekiDoor_c::setPrtcls() {
    cXyz particlePos = current.pos;
    cXyz particleScale(1,1,1);

    particlePos.y += mDoorPosY;
    
    if (mOpening == false) {
        return;
    }
    if (mDestroyed != false) {
        for (int index = 2; index <= 3; index++){
            mpEmitters[index] = dComIfGp_particle_set(particle_id[index], &particlePos, NULL, &particleScale, 0xff,
                NULL, -1, NULL, NULL, NULL);
        }
    }
    else {
        if (mDoorPosY < reference_posy) {
            for (int index = 0; index <= 1; index++){
                mpEmitters[index] = dComIfGp_particle_set(particle_id[index], &particlePos, NULL, &particleScale, 0xff,
                    NULL, -1, NULL, NULL, NULL);
                
                JPABaseEmitter* emitter_p = dComIfGp_particle_getEmitter(particle_id[index]);
                if (emitter_p != NULL) {
                    emitter_p->setGlobalTranslation(particlePos);
                }
            }
        }
    }
}

/* 80CCD810-80CCD84C 0008D0 003C+00 1/1 0/0 0/0 .text            initBaseMtx__16daObj_SekiDoor_cFv
 */
void daObj_SekiDoor_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CCD84C-80CCD8D8 00090C 008C+00 2/2 0/0 0/0 .text            setBaseMtx__16daObj_SekiDoor_cFv */
void daObj_SekiDoor_c::setBaseMtx() {
    mDoMtx_trans(mDoMtx_stack_c::get(), current.pos.x, current.pos.y + mDoorPosY, current.pos.z);
    mDoMtx_YrotM(mDoMtx_stack_c::get(), shape_angle.y);
    mDoMtx_ZrotM(mDoMtx_stack_c::get(), mRotation.z);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_copy(mDoMtx_stack_c::get(), mBgMtx);
}

/* 80CCD8D8-80CCD8F8 000998 0020+00 1/0 0/0 0/0 .text            daObj_SekiDoor_Create__FPv */
static int daObj_SekiDoor_Create(void* i_this) {
    return static_cast<daObj_SekiDoor_c*>(i_this)->create();
}

/* 80CCD8F8-80CCD918 0009B8 0020+00 1/0 0/0 0/0 .text            daObj_SekiDoor_Delete__FPv */
static int daObj_SekiDoor_Delete(void* i_this) {
    return static_cast<daObj_SekiDoor_c*>(i_this)->MoveBGDelete();
}

/* 80CCD918-80CCD938 0009D8 0020+00 1/0 0/0 0/0 .text            daObj_SekiDoor_Execute__FPv */
static int daObj_SekiDoor_Execute(void* i_this) {
    return static_cast<daObj_SekiDoor_c*>(i_this)->MoveBGExecute();
}

/* 80CCD938-80CCD964 0009F8 002C+00 1/0 0/0 0/0 .text            daObj_SekiDoor_Draw__FPv */
static int daObj_SekiDoor_Draw(void* i_this) {
    return static_cast<daObj_SekiDoor_c*>(i_this)->MoveBGDraw();
}

/* 80CCD964-80CCD96C 000A24 0008+00 1/0 0/0 0/0 .text            daObj_SekiDoor_IsDelete__FPv */
static bool daObj_SekiDoor_IsDelete(void* param_0) {
    return 1;
}

/* ############################################################################################## */
/* 80CCDAEC-80CCDAF8 0000B0 000C+00 2/2 0/0 0/0 .data            __vt__22daObj_SekiDoor_Param_c */
// SECTION_DATA extern void* __vt__22daObj_SekiDoor_Param_c[3] = {
//     (void*)NULL /* RTTI */,
//     (void*)NULL,
//     (void*)__dt__22daObj_SekiDoor_Param_cFv,
// };

/* 80CCDB00-80CCDB0C 000008 000C+00 1/1 0/0 0/0 .bss             @3803 */
static u8 lit_3803[12];

/* 80CCDB0C-80CCDB10 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static u8 l_HIO[4];

/* 80CCD96C-80CCD9AC 000A2C 0040+00 0/0 1/0 0/0 .text            __sinit_d_a_obj_sekidoor_cpp */
// void __sinit_d_a_obj_sekidoor_cpp() {
//     // NONMATCHING
// }

// #pragma push
// #pragma force_active on
// REGISTER_CTORS(0x80CCD96C, __sinit_d_a_obj_sekidoor_cpp);
// #pragma pop

/* 80CCD9AC-80CCD9F4 000A6C 0048+00 2/1 0/0 0/0 .text            __dt__22daObj_SekiDoor_Param_cFv */
daObj_SekiDoor_Param_c::~daObj_SekiDoor_Param_c() {
}

/* 80CCDA30-80CCDA30 000028 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 80CCDA74-80CCDA94 -00001 0020+00 1/0 0/0 0/0 .data            daObj_SekiDoor_MethodTable */
static actor_method_class daObj_SekiDoor_MethodTable = {
    (process_method_func)daObj_SekiDoor_Create,
    (process_method_func)daObj_SekiDoor_Delete,
    (process_method_func)daObj_SekiDoor_Execute,
    (process_method_func)daObj_SekiDoor_IsDelete,
    (process_method_func)daObj_SekiDoor_Draw,
};

/* 80CCDA94-80CCDAC4 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_OBJ_SEKIDOOR */
extern actor_process_profile_definition g_profile_OBJ_SEKIDOOR = {
    fpcLy_CURRENT_e,             // mLayerID
    7,                           // mListID
    fpcPi_CURRENT_e,             // mListPrio
    PROC_OBJ_SEKIDOOR,           // mProcName
    &g_fpcLf_Method.base,       // sub_method
    sizeof(daObj_SekiDoor_c),    // mSize
    0,                           // mSizeOther
    0,                           // mParameters
    &g_fopAc_Method.base,        // sub_method
    87,                          // mPriority
    &daObj_SekiDoor_MethodTable, // sub_method
    0x00044000,                  // mStatus
    fopAc_ACTOR_e,               // mActorType
    fopAc_CULLBOX_CUSTOM_e,      // cullType
  };

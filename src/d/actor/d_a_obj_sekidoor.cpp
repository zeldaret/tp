/**
 * @file d_a_obj_sekidoor.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_sekidoor.h"

/* ############################################################################################## */   

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
}

/* 80CCD23C-80CCD290 0002FC 0054+00 1/0 0/0 0/0 .text            Delete__16daObj_SekiDoor_cFv */
int daObj_SekiDoor_c::Delete() {
    dComIfG_resDelete(&mPhaseReq, l_resNameList[l_bmdData[mBitSW].resIdx]);

    return 1;
}

/* ############################################################################################## */

/* 80CCDA08-80CCDA0C 000000 0001+03 2/2 0/0 0/0 .rodata          m__22daObj_SekiDoor_Param_c */
const u8 daObj_SekiDoor_Param_c::m = 0;

/* 80CCDA0C-80CCDA10 000004 0004+00 1/3 0/0 0/0 .rodata          @3956 */
static const f32 reference_posy = 460.0f;

/* 80CCDA10-80CCDA14 000008 0004+00 0/1 0/0 0/0 .rodata          @3957 */
static const f32 rising_speed_y = 4.0f;


/* 80CCD290-80CCD51C 000350 028C+00 1/0 0/0 0/0 .text Execute__16daObj_SekiDoor_cFPPA3_A4_f */
int daObj_SekiDoor_c::Execute(Mtx** i_mtx) {
    cXyz temp_y_position;
    *i_mtx = &mBgMtx;

    if (mOpening != 0) {
        if (mDestroyed != 0) {
            if(!dComIfGp_event_runCheck){
                fopAcM_delete(this);
            }
        }
        else {
            if (cM3d_IsZero(mDoorPosY) && mFrameCounter == 0) {
                mOpenSpeed = 0;
                mFrameCounter++;
            }
            else {
                if (mOpenSpeed != 0) {
                    mRotation.z = mOpenSpeed * cM_ssin(mFrameCounter << 14);
    
                    if (cLib_chaseS(&mOpenSpeed, 0, 0x10)) {
                        dComIfGp_getVibration().StopQuake(0xf);
                    }
                    
                    mFrameCounter++;
                }
                if (mOpenSpeed == 0) {
                    temp_y_position = current.pos;
                    if (mDoorPosY < reference_posy) {
                        speed.y = rising_speed_y;
                        cLib_chaseF(&mDoorPosY, reference_posy, speed.y);
    
                        temp_y_position.y += mDoorPosY;

                        mDoAud_seStartLevel(Z2SE_OBJ_SEKI_DOOR_OP, &temp_y_position,
                            0, 0);
                    }
                    else {
                        temp_y_position.y += mDoorPosY;
                        
                        mDoAud_seStart(Z2SE_OBJ_SEKI_DOOR_OP_ST, NULL,
                            0, 0);
    
                        dComIfGp_getVibration().StartShock(VIBMODE_S_POWER5, 0xf, 
                            cXyz(0.0f, 1.0f, 0.0f));
                        mDestroyed = 1;
                    }
                    
                }
            }
        }
    }
    else {
        speed.setall(0.0f);
        mFrameCounter = 0;
        mOpenSpeed = 0;
        mDoorPosY = 0.0f;
        mDestroyed = 0;
    }    

    setBaseMtx();
    setPrtcls();
    return 1;
}

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

/* 80CCD64C-80CCD810 00070C 01C4+00 1/1 0/0 0/0 .text            setPrtcls__16daObj_SekiDoor_cFv */
void daObj_SekiDoor_c::setPrtcls() {
    static const u16 id[4] = {
        0x8B85, 0x8B86, 0x8B87, 0x8B88,
    };

    cXyz particle_pos = current.pos;
    cXyz particle_scale(1.0f,1.0f,1.0f);
    particle_pos.y += mDoorPosY;
    
    if (mOpening == false) {
        return;
    }
    if (mDestroyed != false) {
        for (int index = 2; index <= 3; index++){
            u16 id_partcl = id[index];

            mpEmitters[index] = dComIfGp_particle_set(
                mpEmitters[index], id_partcl, &particle_pos,
                NULL, &particle_scale
            );
        }
    }


    else {
        if (mDoorPosY < reference_posy) {
            for (int index = 0; index <= 1; index++){
                mpEmitters[index] = dComIfGp_particle_set(
                    mpEmitters[index], id[index], &particle_pos,
                    NULL, &particle_scale
                );
                
                JPABaseEmitter* emitter_p = dComIfGp_particle_getEmitter(mpEmitters[index]);
                if (emitter_p != NULL) {
                    emitter_p->setGlobalTranslation(particle_pos.x, particle_pos.y,particle_pos.z);
                }
            }
        }
    }
}

/* 80CCD810-80CCD84C 0008D0 003C+00 1/1 0/0 0/0 .text            initBaseMtx__16daObj_SekiDoor_cFv */
void daObj_SekiDoor_c::initBaseMtx() {
    mpModel->setBaseScale(scale);
    setBaseMtx();
}

/* 80CCD84C-80CCD8D8 00090C 008C+00 2/2 0/0 0/0 .text            setBaseMtx__16daObj_SekiDoor_cFv */
void daObj_SekiDoor_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mDoorPosY, current.pos.z);
    mDoMtx_stack_c::YrotM(shape_angle.y);
    mDoMtx_stack_c::ZrotM(mRotation.z);

    mpModel->setBaseTRMtx(mDoMtx_stack_c::get());
    MTXCopy(mDoMtx_stack_c::get(), mBgMtx);
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
static int daObj_SekiDoor_IsDelete(void* param_0) {
    return 1;
}

/* ############################################################################################## */

/* 80CCDB0C-80CCDB10 000014 0004+00 1/1 0/0 0/0 .bss             l_HIO */
static daObj_SekiDoor_Param_c l_HIO;

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

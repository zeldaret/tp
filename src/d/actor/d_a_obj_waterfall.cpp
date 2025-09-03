/**
 * @file d_a_obj_waterfall.cpp
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_waterfall.h"
#include "d/actor/d_a_arrow.h"
#include "d/d_com_inf_game.h"
#include "d/d_bomb.h"
#include "SSystem/SComponent/c_math.h"

#define MAX_TARGET_INFO_COUNT 10

static int daObjWaterFall_Draw(daObjWaterFall_c* i_this);
static int daObjWaterFall_Execute(daObjWaterFall_c* i_this);
static int daObjWaterFall_Delete(daObjWaterFall_c* i_this);
static int daObjWaterFall_Create(fopAc_ac_c* i_this);

/* ############################################################################################## */
/* 80D2FE50-80D2FE78 000000 0028+00 4/4 0/0 0/0 .bss             target_info */
static fopAc_ac_c* target_info[MAX_TARGET_INFO_COUNT];

/* 80D2FE78-80D2FE7C 000028 0004+00 4/4 0/0 0/0 .bss             target_info_count */
static s32 target_info_count;

/* 80D2EC18-80D2ECA4 000078 008C+00 1/1 0/0 0/0 .text            s_b_sub__FPvPv */
static void* s_b_sub(void* param_0, void* unused) {
    if(fopAcM_IsActor(param_0) && fopAcM_GetName(param_0) == PROC_NBOMB) {
        dBomb_c* foundBomb = static_cast<dBomb_c*>(param_0);
        if(!foundBomb->checkWaterBomb(foundBomb) && fopAcM_GetParam(foundBomb) != dBomb_c::PRM_NORMAL_BOMB_EXPLODE) {
            const u32 idx = target_info_count;  //  Regalloc issues if this isn't done

            if(target_info_count < MAX_TARGET_INFO_COUNT) {
                target_info[idx] = foundBomb;
                target_info_count++;
            }
        }
    }
    return NULL;
}

/* 80D2ECA4-80D2ED14 000104 0070+00 1/1 0/0 0/0 .text            s_a_sub__FPvPv */
static void* s_a_sub(void* param_0, void* unused) {
    if(fopAcM_IsActor(param_0) && fopAcM_GetName(param_0) == PROC_ARROW) {
        const u32 idx = target_info_count;  //  Regalloc issues if this isn't done
        
        if(target_info_count < MAX_TARGET_INFO_COUNT) {
            daArrow_c* arrow_0 = static_cast<daArrow_c*>(param_0);
            target_info[idx] = arrow_0;
            target_info_count++;
        }
    }
    return NULL;
}

/* 80D2ED14-80D2EFF8 000174 02E4+00 1/1 0/0 0/0 .text            search_bomb__16daObjWaterFall_cFv
 */
void daObjWaterFall_c::search_bomb() {
    if(checkFallOut() != TRUE) {
        //  Get rid of previously found arrow or bomb processes populating target_info
        target_info_count = 0;
        for(u32 i = 0; i < MAX_TARGET_INFO_COUNT; i++) {
            target_info[i] = NULL;
        }

        //  Find first 10 bomb processes to populate target_info
        fpcM_Search(s_b_sub, this);

        //  Check whether the bomb processes are within bounds (and should therefore be deleted)
        if(target_info_count) {
            for(int i = 0; i < target_info_count; i++) {
                cXyz vectorToOldBombPos;
                cXyz vectorToCurrentBombPos;
                dBomb_c* const bomb = static_cast<dBomb_c*>(target_info[i]);

                vectorToOldBombPos = bomb->old.pos - current.pos;
                vectorToCurrentBombPos =  bomb->current.pos - current.pos;

                mDoMtx_stack_c::YrotS(-current.angle.y);

                mDoMtx_stack_c::multVec(&vectorToOldBombPos, &vectorToOldBombPos);
                mDoMtx_stack_c::multVec(&vectorToCurrentBombPos, &vectorToCurrentBombPos);

                bool bombPassedZOriginPrevAndCurrentBombPosAreWithinXYBounds = (
                    (vectorToOldBombPos.z * vectorToCurrentBombPos.z) < 0.0f && 
                    (vectorToOldBombPos.x > -scale.x * 50.0f && vectorToOldBombPos.x < scale.x * 50.0f) && 
                    (vectorToCurrentBombPos.x > -scale.x * 50.0f && vectorToCurrentBombPos.x < scale.x * 50.0f) &&
                    (vectorToOldBombPos.y > 0.0f && vectorToOldBombPos.y < scale.y * 100.0f) &&
                    (vectorToCurrentBombPos.y > 0.0f && vectorToCurrentBombPos.y < scale.y * 100.0f)
                );

                bool currentBombPosIsWithinXYZBounds = (
                    (vectorToCurrentBombPos.x > -scale.x * 50.0f && vectorToCurrentBombPos.x < scale.x * 50.0f) &&
                    (vectorToCurrentBombPos.y > 0.0f && vectorToCurrentBombPos.y < scale.y * 100.0f) &&
                    (vectorToCurrentBombPos.z > -scale.z * 50.0f && vectorToCurrentBombPos.z < scale.z * 50.0f)
                );

                if(bombPassedZOriginPrevAndCurrentBombPosAreWithinXYBounds || currentBombPosIsWithinXYZBounds)
                    fopAcM_delete(bomb);
            }
        }
    }
}

/* 80D2F034-80D2F324 000494 02F0+00 1/1 0/0 0/0 .text            search_arrow__16daObjWaterFall_cFv
 */
void daObjWaterFall_c::search_arrow() {
    //  Some waterfalls (e.g. in the Lakebed Temple) allow arrows to fly through them
    if(getType() == ALLOW_ARROWS_e || checkFallOut() == TRUE)
        return;

    //  Get rid of previously found arrow or bomb processes populating target_info
    target_info_count = 0;
    for(u32 i = 0; i < MAX_TARGET_INFO_COUNT; i++) {
        target_info[i] = NULL;
    }

    //  Find first 10 arrow processes to populate target_info
    fpcM_Search(s_a_sub, this);

    //  Check whether the arrow processes are within bounds (and should therefore be deleted)
    if(target_info_count) {
        for(int i = 0; i < target_info_count; i++) {
            cXyz vectorToOldArrowPos;
            cXyz vectorToCurrentArrowPos;
            daArrow_c* const arrow = static_cast<daArrow_c*>(target_info[i]);

            vectorToOldArrowPos = arrow->old.pos - current.pos;
            vectorToCurrentArrowPos =  arrow->current.pos - current.pos;

            mDoMtx_stack_c::YrotS(-current.angle.y);

            mDoMtx_stack_c::multVec(&vectorToOldArrowPos, &vectorToOldArrowPos);
            mDoMtx_stack_c::multVec(&vectorToCurrentArrowPos, &vectorToCurrentArrowPos);

            bool arrowPassedZOriginPrevAndCurrentArrowPosAreWithinXYBounds = (
                (vectorToOldArrowPos.z * vectorToCurrentArrowPos.z) < 0.0f && 
                (vectorToOldArrowPos.x > -scale.x * 50.0f && vectorToOldArrowPos.x < scale.x * 50.0f) && 
                (vectorToCurrentArrowPos.x > -scale.x * 50.0f && vectorToCurrentArrowPos.x < scale.x * 50.0f) &&
                (vectorToOldArrowPos.y > 0.0f && vectorToOldArrowPos.y < scale.y * 100.0f) &&
                (vectorToCurrentArrowPos.y > 0.0f && vectorToCurrentArrowPos.y < scale.y * 100.0f)
            );

            bool currentArrowPosIsWithinXYZBounds = (
                (vectorToCurrentArrowPos.x > -scale.x * 50.0f && vectorToCurrentArrowPos.x < scale.x * 50.0f) &&
                (vectorToCurrentArrowPos.y > 0.0f && vectorToCurrentArrowPos.y < scale.y * 100.0f) &&
                (vectorToCurrentArrowPos.z > -scale.z * 50.0f && vectorToCurrentArrowPos.z < scale.z * 50.0f)
            );

            if(arrowPassedZOriginPrevAndCurrentArrowPosAreWithinXYBounds || currentArrowPosIsWithinXYZBounds)
                fopAcM_delete(arrow);
        }
    }
}

/* 80D2F324-80D2F344 000784 0020+00 1/1 0/0 0/0 .text            initBaseMtx__16daObjWaterFall_cFv
 */
void daObjWaterFall_c::initBaseMtx() {
    setBaseMtx();
}

/* 80D2F344-80D2F39C 0007A4 0058+00 1/1 0/0 0/0 .text            setBaseMtx__16daObjWaterFall_cFv */
void daObjWaterFall_c::setBaseMtx() {
    cXyz* pos = fopAcM_GetPosition_p(this);
    PSMTXTrans(mDoMtx_stack_c::get(), pos->x, pos->y, pos->z);

    csXyz* shapeAngle = fopAcM_GetShapeAngle_p(this);
    mDoMtx_stack_c::ZXYrotM(shapeAngle->x, shapeAngle->y, shapeAngle->z);
}

/* 80D2FD84-80D2FD88 -00001 0004+00 1/1 0/0 0/0 .data            l_arcName */
static const char* l_arcName = "sample";

/* 80D2FD88-80D2FDCC 000004 0044+00 1/1 0/0 0/0 .data            l_cyl_src */
static dCcD_SrcCyl l_cyl_src = {
    {
        {0x0, {{0x0, 0x0, 0x0}, {0x2, 0x10}, 0x119}}, // mObj
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x0}, // mGObjAt
        {dCcD_SE_NONE, 0x0, 0x0, 0x0, 0x84}, // mGObjTg
        {0x2}, // mGObjCo
    }, // mObjInf
    {
        {0.0f, 0.0f, 0.0f}, // mCenter
        0.0f, // mRadius
        0.0f // mHeight
    } // mCyl
};

/* 80D2F39C-80D2F5A0 0007FC 0204+00 1/1 0/0 0/0 .text            Create__16daObjWaterFall_cFv */
cPhs__Step daObjWaterFall_c::Create() {
    initBaseMtx();

    mCylColliderStts.Init(0, 0xFF, this);
    mCylCollider.Set(l_cyl_src);
    mCylCollider.SetStts(&mCylColliderStts);
    mCylCollider.SetH(scale.y * 100.0f);

    if(scale.x < scale.z)
        mCylCollider.SetR(scale.x * 50.0f);
    else
        mCylCollider.SetR(scale.z * 50.0f);

    mCylCollider.OnCoNoCamHit();

    //  If a waterfall process is not a circular cylinder (i.e. scale.x != scale.z), the circular cylindrical collider 
    //      is oscillated in order to approximate the elliptical shape of the process.
    //
    //  The member variable speedF (inherited from fopAc_ac_c) is used to control the speed of oscillation
    //
    //  This effect can be observed at the largest waterfall in Zora's Domain
    if(scale.x > scale.z) {
        mCylColliderCenterOscillationTargets[0].set((scale.x * -50.0f) + (scale.z * 50.0f), 0.0f,0.0f);
        mCylColliderCenterOscillationTargets[1].set((scale.x * 50.0f) - (scale.z * 50.0f), 0.0f,0.0f);
        speedF = ((scale.x * 100.0f) - (scale.z * 100.0f)) / 10.0f;
    }
    else {
        mCylColliderCenterOscillationTargets[0].set(0.0f, 0.0f,(scale.z * -50.0f) + (scale.x * 50.0f));
        mCylColliderCenterOscillationTargets[1].set(0.0f, 0.0f,(scale.z * 50.0f) - (scale.x * 50.0f));
        speedF = ((scale.z * 100.0f) - (scale.x * 100.0f)) / 10.0f;
    }

    mDoMtx_stack_c::transS(home.pos);
    mDoMtx_stack_c::YrotM(home.angle.y);

    PSMTXMultVec(mDoMtx_stack_c::get(), &mCylColliderCenterOscillationTargets[0], &mCylColliderCenterOscillationTargets[0]);
    PSMTXMultVec(mDoMtx_stack_c::get(), &mCylColliderCenterOscillationTargets[1], &mCylColliderCenterOscillationTargets[1]);

    mCylColliderCenter = mCylColliderCenterOscillationTargets[0];
    mCylColliderCenterQuantizedOscillation = 1;

    return cPhs_LOADING_e;
}

/* ############################################################################################## */
/* 80D2FDCC-80D2FDEC -00001 0020+00 1/0 0/0 0/0 .data            l_daObjWaterFall_Method */
static actor_method_class l_daObjWaterFall_Method = {
    (process_method_func)daObjWaterFall_Create,
    (process_method_func)daObjWaterFall_Delete,
    (process_method_func)daObjWaterFall_Execute,
    NULL,
    (process_method_func)daObjWaterFall_Draw,
};

/* 80D2FDEC-80D2FE1C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_WaterFall */
extern actor_process_profile_definition g_profile_Obj_WaterFall = {
  fpcLy_CURRENT_e,          // mLayerID
  7,                        // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_WaterFall,       // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObjWaterFall_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  543,                      // mPriority
  &l_daObjWaterFall_Method, // sub_method
  0x00040100,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_CUSTOM_e,   // cullType
};

/* 80D2F5A0-80D2F6DC 000A00 013C+00 1/1 0/0 0/0 .text            create__16daObjWaterFall_cFv */
cPhs__Step daObjWaterFall_c::create() {
    fopAcM_SetupActor(this, daObjWaterFall_c);

    if(Create() == cPhs_INIT_e) {
        return cPhs_ERROR_e;
    }
    
    return cPhs_COMPLEATE_e;
}

/* 80D2F984-80D2FA6C 000DE4 00E8+00 1/1 0/0 0/0 .text            execute__16daObjWaterFall_cFv */
int daObjWaterFall_c::execute() {
    if(getSwbit() != 0xFF && !fopAcM_isSwitch(this, getSwbit()))
        return 1;

    push_player();
    search_bomb();
    search_arrow();

    if(mCylColliderCenterQuantizedOscillation > 0) {
        if(cLib_chasePosXZ(&mCylColliderCenter, mCylColliderCenterOscillationTargets[1], speedF))
            mCylColliderCenterQuantizedOscillation = -1;
    }
    else if(cLib_chasePosXZ(&mCylColliderCenter, mCylColliderCenterOscillationTargets[0], speedF)) {
        mCylColliderCenterQuantizedOscillation = 1;
    }

    mCylCollider.SetC(mCylColliderCenter);
    dComIfG_Ccsp()->Set(&mCylCollider);

    return 1;
}

/* 80D2FA6C-80D2FC94 000ECC 0228+00 1/1 0/0 0/0 .text            push_player__16daObjWaterFall_cFv
 */
void daObjWaterFall_c::push_player() {
    daPy_py_c* const player = daPy_getPlayerActorClass();
    
    f32 outMagnitude = 10.0f;
    if(daPy_getLinkPlayerActorClass()->checkWolf())
        outMagnitude = 25.0f;

    if(scale.x == scale.z) {
        // Waterfall is a circular cylinder 
        const f32 distToPlayer = fopAcM_searchPlayerDistanceXZ(this);

        if(distToPlayer < scale.x * 50.0f) {
            cXyz vectorToPlayer = player->current.pos - current.pos;
            s16 outAngle = cM_atan2s(vectorToPlayer.x, vectorToPlayer.z);
            player->setOutPower(outMagnitude,outAngle,FALSE);
        }
    }
    else {
        // Waterfall is an elliptic cylinder
        cXyz vectorToPlayer = player->current.pos - current.pos;

        mDoMtx_YrotS(mDoMtx_stack_c::get(), -current.angle.y);
        PSMTXMultVec(mDoMtx_stack_c::get(), &vectorToPlayer, &vectorToPlayer);

        if((vectorToPlayer.x > -scale.x * 50.0f && vectorToPlayer.x < scale.x * 50.0f) &&
        vectorToPlayer.y > -10.0f && vectorToPlayer.y < scale.y * 100.0f) {
            if(vectorToPlayer.z >= scale.z * 10.0f && vectorToPlayer.z < scale.z * 60.0f) {
                player->setOutPower(outMagnitude, current.angle.y, FALSE); 
            }
            else if(vectorToPlayer.z < scale.z * -10.0f && vectorToPlayer.z > scale.z * -60.0f) {
                 player->setOutPower(outMagnitude, (current.angle.y + (1 << 16)) - 0x8000, FALSE);
            }
        }
    }
}

/* 80D2FC94-80D2FC9C 0010F4 0008+00 1/1 0/0 0/0 .text            draw__16daObjWaterFall_cFv */
int daObjWaterFall_c::draw() {
    return 1;
}

/* 80D2FC9C-80D2FCD0 0010FC 0034+00 1/1 0/0 0/0 .text            _delete__16daObjWaterFall_cFv */
int daObjWaterFall_c::_delete() {
    dComIfG_resDelete(&mPhase, l_arcName);
    return 1;
}

/* 80D2FCD0-80D2FCF0 001130 0020+00 1/0 0/0 0/0 .text daObjWaterFall_Draw__FP16daObjWaterFall_c */
static int daObjWaterFall_Draw(daObjWaterFall_c* i_this) {
    return i_this->draw();
}

/* 80D2FCF0-80D2FD10 001150 0020+00 1/0 0/0 0/0 .text daObjWaterFall_Execute__FP16daObjWaterFall_c
 */
static int daObjWaterFall_Execute(daObjWaterFall_c* i_this) {
    return i_this->execute();
}

/* 80D2FD10-80D2FD30 001170 0020+00 1/0 0/0 0/0 .text daObjWaterFall_Delete__FP16daObjWaterFall_c
 */
static int daObjWaterFall_Delete(daObjWaterFall_c* i_this) {
    return i_this->_delete();
}

/* 80D2FD30-80D2FD50 001190 0020+00 1/0 0/0 0/0 .text daObjWaterFall_Create__FP10fopAc_ac_c */
static int daObjWaterFall_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjWaterFall_c*>(i_this)->create();
}

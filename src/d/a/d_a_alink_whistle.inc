/**
 * d_a_alink_whistle.inc
 * Player Horse / Hawk Grass Whistle action handling
 */

#include "rel/d/a/obj/d_a_obj_yobikusa/d_a_obj_yobikusa.h"

/* 8011174C-80111770 10C08C 0024+00 1/1 0/0 0/0 .text daAlink_searchWhistle__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchWhistle(fopAc_ac_c* p_actor, void*) {
    if (daAlink_getAlinkActorClass()->getGrassHowlEventActor() == fopAcM_GetName(p_actor)) {
        return p_actor;
    }

    return NULL;
}

/* 80111770-80111784 10C0B0 0014+00 1/1 0/0 0/0 .text daAlink_searchHawk__FP10fopAc_ac_cPv */
static fopAc_ac_c* daAlink_searchHawk(fopAc_ac_c* p_actor, void*) {
    if (fopAcM_GetName(p_actor) == PROC_NPC_TK) {
        return p_actor;
    }

    return NULL;
}

/* 80111784-8011181C 10C0C4 0098+00 1/1 0/0 0/0 .text            setGrassWhistleModel__9daAlink_cFi
 */
void daAlink_c::setGrassWhistleModel(int modelType) {
    static const char* grassWhistleArcName[2] = {
        "J_Tobi",
        "J_Umak",
    };

    JKRHeap* heap = setItemHeap();

    J3DModelData* modeldata = (J3DModelData*)dComIfG_getObjectRes(grassWhistleArcName[modelType],
                                                                  grassWhistleIdx[modelType]);
    mHeldItemModel = mDoExt_J3DModel__create(modeldata, 0x80000, 0x11000084);

    mDoExt_setCurrentHeap(heap);
    mEquipItem = 0x104;
    field_0x2f94 = 2;
}

/* 8011181C-80111894 10C15C 0078+00 1/1 0/0 0/0 .text            setHorseWhistleModel__9daAlink_cFv
 */
void daAlink_c::setHorseWhistleModel() {
    JKRHeap* heap = setItemHeap();

    mHeldItemModel = initModel(loadAramBmd(0x31A, 0x3000), 0);

    mDoExt_setCurrentHeap(heap);
    mEquipItem = HORSE_FLUTE;
    field_0x2f94 = 2;
}

/* 80111894-801119D8 10C1D4 0144+00 2/2 0/0 0/0 .text procGrassWhistleGetInit__9daAlink_cFv */
// matches with literals
#ifdef NONMATCHING
int daAlink_c::procGrassWhistleGetInit() {
    if (mEquipItem != NO_ITEM) {
        return procPreActionUnequipInit(PROC_GRASS_WHISTLE_GET, field_0x27f4);
    }

    commonProcInit(PROC_GRASS_WHISTLE_GET);
    mNormalSpeed = 0.0f;
    current.angle.y = shape_angle.y;
    field_0x2f98 = 4;

    setSingleAnimeParam(ANM_BOTTLE_SWING_DOWN, &daAlinkHIO_bottle_c0::m.mSwingDownAnm);
    field_0x2f92 = 0xFE;
    field_0x280c.setData(field_0x27f4);

    daObjYobikusa_c* yobikusa = (daObjYobikusa_c*)field_0x27f4;
    field_0x300c = yobikusa->getType();
    field_0x300e.x = yobikusa->getPathID();
    field_0x300e.y = yobikusa->isPlayerCorrect();
    field_0x300e.z = yobikusa->shape_angle.y + 0x8000;
    field_0x37c8.set(yobikusa->current.pos.x + cM_ssin(yobikusa->shape_angle.y) * 50.0f,
                     yobikusa->current.pos.y + 50.0f,
                     yobikusa->current.pos.z + cM_scos(yobikusa->shape_angle.y) * 50.0f);
    voiceStart(Z2SE_AL_V_SWING_BOTTLE);
    return 1;
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrassWhistleGetInit() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrassWhistleGetInit__9daAlink_cFv.s"
}
#pragma pop
#endif

/* 801119D8-80111A9C 10C318 00C4+00 1/0 0/0 0/0 .text            procGrassWhistleGet__9daAlink_cFv
 */
int daAlink_c::procGrassWhistleGet() {
    daPy_frameCtrl_c* frameCtrl = mUnderFrameCtrl;
    
    if (frameCtrl->checkAnmEnd()) {
        procGrassWhistleWaitInit(field_0x300c, field_0x300e.x, field_0x300e.y, field_0x300e.z, &field_0x37c8);
    } else if (mEquipItem == NO_ITEM && frameCtrl->getFrame() >= lit_7710) {
        setGrassWhistleModel(field_0x300c);
        
        if (field_0x280c.getActor() != NULL) {
            fopAcM_setCarryNow(field_0x280c.getActor(), 0);
            seStartOnlyReverb(Z2SE_AL_PICKUP_GRASS);
        }
    }

    return 1;
}

/* 80111A9C-80111CA4 10C3DC 0208+00 2/2 0/0 0/0 .text
 * procGrassWhistleWaitInit__9daAlink_cFiiisP4cXyz              */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrassWhistleWaitInit(int param_0, int param_1, int param_2, s16 param_3,
                                             cXyz* param_4) {
    nofralloc
#include "asm/d/a/d_a_alink/procGrassWhistleWaitInit__9daAlink_cFiiisP4cXyz.s"
}
#pragma pop

/* 80111CA4-80111FF0 10C5E4 034C+00 1/0 0/0 0/0 .text            procGrassWhistleWait__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procGrassWhistleWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procGrassWhistleWait__9daAlink_cFv.s"
}
#pragma pop

/* 80111FF0-801120C8 10C930 00D8+00 2/2 0/0 0/0 .text procCoHorseCallWaitInit__9daAlink_cFi */
int daAlink_c::procCoHorseCallWaitInit(int param_0) {
    commonProcInit(PROC_HORSE_CALL_WAIT);

    if (param_0 == 4) {
        field_0x300e.y = 2;
    } else if (param_0 == 1) {
        field_0x300e.y = 0x3D;
    } else {
        field_0x300e.y = 0x10;
    }

    if (i_checkWolf()) {
        setSingleAnimeWolfBaseSpeed(WANM_WAIT, daAlinkHIO_wlMove_c0::m.field_0x70, lit_6109);
    } else {
        setSingleAnimeBaseSpeed(ANM_WAIT, daAlinkHIO_move_c0::m.mWaitAnmSpeed, lit_6109);
    }

    setGrassCancelStatus(0);
    dComIfGp_setPlayerStatus1(0, 0x4000000);
    return 1;
}

/* 801120C8-801121B4 10CA08 00EC+00 1/0 0/0 0/0 .text            procCoHorseCallWait__9daAlink_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procCoHorseCallWait() {
    nofralloc
#include "asm/d/a/d_a_alink/procCoHorseCallWait__9daAlink_cFv.s"
}
#pragma pop

/* 801121B4-80112220 10CAF4 006C+00 1/0 0/0 0/0 .text            procHawkCatchInit__9daAlink_cFv */
int daAlink_c::procHawkCatchInit() {
    if (mProcID == PROC_HAWK_SUBJECT || !commonProcInitNotSameProc(PROC_HAWK_CATCH)) {
        return 0;
    }

    setSingleAnimeBase(ANM_HAWK_CATCH);
    deleteEquipItem(0, 1);
    return 1;
}

/* 80112220-80112278 10CB60 0058+00 1/0 0/0 0/0 .text            procHawkCatch__9daAlink_cFv */
int daAlink_c::procHawkCatch() {
    if (mUnderFrameCtrl[0].checkAnmEnd()) {
        dComIfGp_evmng_cutEnd(field_0x3184);
        procHawkSubjectInit();
    }

    return 1;
}

/* 80112278-80112304 10CBB8 008C+00 2/2 0/0 0/0 .text            procHawkSubjectInit__9daAlink_cFv
 */
int daAlink_c::procHawkSubjectInit() {
    if (!commonProcInitNotSameProc(PROC_HAWK_SUBJECT)) {
        return 0;
    }

    setSingleAnimeBase(ANM_HAWK_WAIT);

    fopAc_ac_c* actor = (fopAc_ac_c*)fopAcIt_Judge((fopAcIt_JudgeFunc)daAlink_searchHawk, NULL);
    if (actor != NULL) {
        field_0x280c.setData(actor);
    }

    field_0x300c = 0;
    mBodyAngle.y = 0;
    deleteEquipItem(0, 1);
    return 1;
}

/* 80112304-8011243C 10CC44 0138+00 1/0 0/0 0/0 .text            procHawkSubject__9daAlink_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm int daAlink_c::procHawkSubject() {
    nofralloc
#include "asm/d/a/d_a_alink/procHawkSubject__9daAlink_cFv.s"
}
#pragma pop
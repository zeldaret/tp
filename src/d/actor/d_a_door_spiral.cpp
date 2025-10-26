//
// Door Spiral
//

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_door_spiral.h"
#include "d/d_door_param2.h"
#include "f_op/f_op_actor.h"

static void* searchSpiralSub(void* i_actor, void* i_data) {
    daSpiral_c* actor1 = (daSpiral_c*)i_actor;
    daSpiral_c* actor2 = (daSpiral_c*)i_data;
    if (actor1 != NULL && fopAcM_IsActor(actor1)) {
        if (fopAcM_GetProfName(actor1) == PROC_SPIRAL_DOOR && actor1 != actor2) {
            if (door_param2_c::getBRoomNo(actor1) == door_param2_c::getBRoomNo(actor2)) {
                return actor1;
            }
        }
    }

    return NULL;
}

char* daSpiral_c::getAlwaysArcName() {
    return getBmdArcName();
}

static char* dzb[2] = {
    "door-stepD.dzb",
    "door-stepU.dzb",
};

char* daSpiral_c::getSpiralDzbName(int idx) {
    return dzb[idx];
}

char* daSpiral_c::getDzb() {
    return "door-dark.dzb";
}

char* daSpiral_c::getBmdArcName() {
    return "K_step";
}

char* daSpiral_c::getEvArcName() {
    return "DoorEvt";
}

static char* bmd[2] = {
    "K_stepd.bmd",
    "K_stepu.bmd",
};

char* daSpiral_c::getBmd(int idx) {
    return bmd[idx];
}

char* daSpiral_c::getBmd2(int idx) {
    static char bmdName;
    if (idx == 0) {
        sprintf(&bmdName, "door-stairSpiralU.bmd");
    } else {
        sprintf(&bmdName, "door-stairSpiralD.bmd");
    }

    return &bmdName;
}

J3DModelData* daSpiral_c::getModelData() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getStageRes(getBmd2(mIdx));
    if (modelData == NULL) {
        modelData = (J3DModelData*)dComIfG_getObjectRes(getBmdArcName(), getBmd(mIdx));
    }

    return modelData;
}

char* daSpiral_c::getStopBmd() {
    return "door-spiralStop.bmd";
}

char* daSpiral_c::getStopBmd2() {
    return "door-stop.bmd";
}

J3DModelData* daSpiral_c::getStopModelData() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getStageRes(getStopBmd2());
    if (modelData == NULL) {
        modelData = (J3DModelData*)dComIfG_getObjectRes(getBmdArcName(), getStopBmd());
    }

    return modelData;
}

char* daSpiral_c::getStopDzb() {
    return "door-spiralStop.dzb";
}

static int CheckCreateHeap(fopAc_ac_c* a_this) {
    daSpiral_c* i_this = (daSpiral_c*)a_this;
    return i_this->CreateHeap();
}

bool daSpiral_c::debugCheckParam() {
    bool rv = false;

    if (!field_0x6d0) {
        u8 fRoomNo = door_param2_c::getFRoomNo(this);
        if (fRoomNo == 63) {
            OS_REPORT_ERROR("螺旋階段：部屋番号指定がありません！\n"); // Spiral staircase: No room number specified!
            rv = true;
        }

        u8 frontOption = door_param2_c::getFrontOption(this);
        if (frontOption == 2) {
            OS_REPORT_ERROR("螺旋階段：鍵オプションは対応していません！\n"); // Spiral staircase: Key option not supported!
            rv = true;
        }

        field_0x6d0 = true;
    }

    return rv;
}

cPhs__Step daSpiral_c::create() {
    if (debugCheckParam()) {
        return cPhs_ERROR_e;
    }

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase1, getAlwaysArcName());
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }

    phase = (cPhs__Step)dComIfG_resLoad(&mPhase3, getEvArcName());
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }

    phase = (cPhs__Step)dComIfG_resLoad(&mPhase2, getBmdArcName());
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }

    fopAcM_SetRoomNo(this, door_param2_c::getFRoomNo(this));

    u8 backOption = door_param2_c::getBackOption(this);
    switch (backOption) {
        case 4:
            mIdx = 0;
            break;
        
        case 5:
            mIdx = 1;
            break;

        default:
            OS_REPORT_ERROR("螺旋階段の裏オプション設定が正しくありません！<%d>\n", backOption); // Spiral staircase back option setting is incorrect! <%d>
            JUT_ASSERT(300, FALSE);
            break;
    }

    if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x7000)) {
        return cPhs_ERROR_e;
    }

    CreateInit();

    return cPhs_COMPLEATE_e;
}

int daSpiral_c::CreateHeap() {
    J3DModelData* modelData = getModelData();
    JUT_ASSERT(338, modelData != NULL);
    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mModel == NULL) {
        return 0;
    }

    field_0x58c = new dBgW();
    if (field_0x58c == NULL) {
        return 0;
    }

    
}

int daSpiral_c::CreateInit() {

};

extern actor_process_profile_definition g_profile_SPIRAL_DOOR = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_SPIRAL_DOOR,       // mProcName
    &g_fpcLf_Method.base,  // sub_method
    0x6b0,                  // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    301,                    // mPriority
    NULL,     // sub_method
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_6_e,      // cullType
};

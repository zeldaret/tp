/**
 * @file d_a_passer_mng.cpp
 * 
*/

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_passer_mng.h"
#include "d/d_com_inf_game.h"
#include "d/d_path.h"
#include "d/d_stage.h"

/* 80D45718-80D45738 000078 0020+00 1/0 0/0 0/0 .text daPasserMng_Execute__FP13daPasserMng_c */
static int daPasserMng_Execute(daPasserMng_c* i_this) {
    return i_this->execute();
}

/* 80D45738-80D4597C 000098 0244+00 1/1 0/0 0/0 .text            execute__13daPasserMng_cFv */
int daPasserMng_c::execute() {
    int time = getTime();
    if ((field_0x596 != 0 || (time >= startTime && time < endTime)) &&
        dayOfWeek == getDayOfWeek() && mTime <= time)
    {
        if (getChildNum() < getMaxNum()) {
            csXyz cStack_20(field_0x596 != 0 ? 0xff : endTime, current.angle.y, 0);
            childProcIds[currentChildIndex] =
                fopAcM_createChild(npcId, fopAcM_GetID(this), getPasserParam(), &current.pos,
                                   fopAcM_GetRoomNo(this), &cStack_20, 0, 0xffffffff, 0);
            currentChildIndex = (currentChildIndex + 1) % getMaxNum();
        }
        mTime = time + intervalTime;
        if (mTime > 60 * 24) {
            mTime -= 60 * 24;
            dayOfWeek = (dayOfWeek + 1) % 7;
        } else if (mTime >= endTime) {
            mTime = startTime;
            dayOfWeek = (dayOfWeek + 1) % 7;
        }
    }
    return 1;
}

/* 80D46C20-80D46C40 000000 0020+00 1/0 0/0 0/0 .rodata          groupA */
static u8 const groupA[32] = {
    0x07, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x04, 0x50, 0x00, 0x00, 0x06, 0x01, 0x00, 0x00, 0x07,
    0x01, 0x00, 0x00, 0x05, 0x01, 0x00, 0x00, 0x1B, 0x01, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x1D,
};

/* 80D46C40-80D46C64 000020 0024+00 1/0 0/0 0/0 .rodata          groupB */
static u8 const groupB[36] = {
    0x08, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x10, 0x10, 0x00, 0x00, 0x11,
    0x11, 0x00, 0x00, 0x12, 0x10, 0x00, 0x00, 0x13, 0x40, 0x00, 0x00, 0x09,
    0x40, 0x00, 0x00, 0x08, 0x50, 0x00, 0x00, 0x0A, 0x01, 0x00, 0x00, 0x0B,
};

/* 80D46C64-80D46C88 000044 0024+00 1/0 0/0 0/0 .rodata          groupC */
static u8 const groupC[36] = {
    0x08, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x01,
    0x50, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00, 0x03, 0x21, 0x00, 0x00, 0x17,
    0x10, 0x00, 0x00, 0x18, 0x01, 0x00, 0x00, 0x19, 0x10, 0x00, 0x00, 0x1A,
};

/* 80D46C88-80D46CA8 000068 0020+00 1/0 0/0 0/0 .rodata          groupD */
static u8 const groupD[32] = {
    0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x14, 0x21, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x16,
    0x11, 0x00, 0x00, 0x0C, 0x50, 0x00, 0x00, 0x0E, 0x40, 0x00, 0x00, 0x0F, 0x01, 0x00, 0x00, 0x0D,
};

/* 80D46CB0-80D46CC0 -00001 0010+00 1/1 0/0 0/0 .data            mGroupTbl__13daPasserMng_c */
daPasserMng_c::Group* daPasserMng_c::mGroupTbl[4] = {
    (Group*)groupA,
    (Group*)groupB,
    (Group*)groupC,
    (Group*)groupD,
};

/* 80D4597C-80D45E14 0002DC 0498+00 3/2 0/0 0/0 .text            getPasserParam__13daPasserMng_cFv
 */
int daPasserMng_c::getPasserParam() {
    u32 param = (getPathID() & 0xff) << 16;
    u8 groupNo = getGroupNo();
    if (groupNo == 0xff || groupNo >= 4) {
        // The passerby group specification is invalid.
        OS_REPORT("\n通行人のグループ指定が不正です！ GroupNo=%d\n\n", groupNo);
    }
    bool groupOK = false;
    if (groupNo != 0xff && groupNo < 4) {
        groupOK = true;
    }
    u32 groupInd;
    if (groupOK) {
        groupInd = groupNo;
    } else {
        groupInd = 0;
    }
    Group* pGroup = mGroupTbl[groupInd];
    int iVar5;
    do {
        iVar5 = cLib_getRndValue(0, (int)pGroup->field_0x00);
    } while (checkOverlapping(pGroup->field_0x04[iVar5] & 0xff, pGroup->field_0x00));
    int uVar3 = pGroup->field_0x04[iVar5];
    param |= uVar3;
    int local_30;
    if (pGroup->field_0x00 <= 6) {
        local_30 = pGroup->field_0x00 - 1;
    } else {
        local_30 = 6;
    }
    field_0x58a[field_0x597] = pGroup->field_0x04[iVar5];
    if (++field_0x597 >= local_30) {
        field_0x597 = 0;
    }
    int luggageParam;
    if (getDetailLevel() == 0) {
        luggageParam = getLuggageParamHigh(pGroup->field_0x04[iVar5] & 0xff);
    } else {
        luggageParam = getLuggageParamLow(pGroup->field_0x04[iVar5] & 0xff);
    }
    param |= luggageParam;
    return param;
}

/* 80D45E14-80D466FC 000774 08E8+00 2/1 0/0 0/0 .text getLuggageParamHigh__13daPasserMng_cFUl */
int daPasserMng_c::getLuggageParamHigh(u32 param_1) {
    int paramLow;

    paramLow = 0;
    switch (param_1) {
    case 0:
    case 1:
        if (cLib_getRndValue(0, 2) != 0) {
            paramLow = 2;
        }
        break;
    case 2:
    case 8:
    case 9:
    case 10:
    case 0xf:
        /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 4)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 1;
                break;
            case 2:
                paramLow = 4;
                break;
            case 3:
                paramLow = 11;
                break;
            }
        } else {
            switch(cLib_getRndValue(0, 3)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 1;
                break;
            case 2:
                paramLow = 4;
                break;
            }
        }
        break;
    case 3:
    case 0xb:
            /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 3)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 4;
                break;
            case 2:
                paramLow = 11;
                break;
            }
        } else {
            switch (cLib_getRndValue(0, 2)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 4;
                break;
            }
        }
        break;
    case 4:
    case 5:
    case 0xc:
    case 0xd:
            /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 4)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 1;
                break;
            case 2:
                paramLow = 4;
                break;
            case 3:
                paramLow = 11;
                break;
            }
        } else {
            switch(cLib_getRndValue(0, 4)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 1;
                break;
            case 2:
                paramLow = 4;
                break;
            case 3:
                paramLow = 9;
                break;
            }
        }
        break;
    case 6:
    case 0xe:
            /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 3)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 1;
                break;
            case 2:
                paramLow = 11;
                break;
            }
        } else {
            switch (cLib_getRndValue(0, 2)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 1;
                break;
            }
        }
        break;
    case 7:
            /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 3)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 4;
                break;
            case 2:
                paramLow = 11;
                break;
            }
        } else {
            switch (cLib_getRndValue(0, 2)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 4;
                break;
            }
        }
        break;
    case 0x10:
    case 0x17:
        /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
        switch(cLib_getRndValue(0, 4)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 8;
                break;
            case 2:
                paramLow = 5;
                break;
            case 3:
                paramLow = 12;
                break;
            }
        } else {
            switch(cLib_getRndValue(0, 4)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 8;
                break;
            case 2:
                paramLow = 5;
                break;
            case 3:
                paramLow = 10;
                break;
            }
        }
        break;
    case 0x11:
    case 0x18:
            /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 4)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 8;
                break;
            case 2:
                paramLow = 5;
                break;
            case 3:
                paramLow = 12;
                break;
            }
        } else {
            switch(cLib_getRndValue(0, 3)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 8;
                break;
            case 2:
                paramLow = 5;
                break;
            }
        }
        break;
    case 0x12:
    case 0x19:
            /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 5)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 8;
                break;
            case 2:
                paramLow = 5;
                break;
            case 3:
                paramLow = 3;
                break;
            case 4:
                paramLow = 12;
                break;
            }
        } else {
            switch(cLib_getRndValue(0, 4)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 8;
                break;
            case 2:
                paramLow = 5;
                break;
            case 3:
                paramLow = 3;
                break;
            }
        }
        break;
    case 0x13:
    case 0x1a:
            /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 3)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 5;
                break;
            case 2:
                paramLow = 12;
                break;
            }
        } else {
            switch (cLib_getRndValue(0, 2)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 5;
                break;
            }
        }
        break;
    case 0x14:
    case 0x1b:
            /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 3)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 5;
                break;
            case 2:
                paramLow = 12;
                break;
            }
        } else {
            switch (cLib_getRndValue(0, 2)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 5;
                break;
            }
        }
        break;
    case 0x15:
    case 0x1c:
            /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 3)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 5;
                break;
            case 2:
                paramLow = 12;
                break;
            }
        } else {
            switch(cLib_getRndValue(0, 3)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 5;
                break;
            case 2:
                paramLow = 10;
                break;
            }
        }
        break;
    case 0x16:
    case 0x1d:
            /* dSv_event_flag_c::F_0281 - Shop - Malo Mart opens in Castle Town */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x119])) {
            switch(cLib_getRndValue(0, 4)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 5;
                break;
            case 2:
                paramLow = 3;
                break;
            case 3:
                paramLow = 12;
                break;
            }
        } else {
            switch(cLib_getRndValue(0, 3)) {
            case 0:
                paramLow = 0;
                break;
            case 1:
                paramLow = 5;
                break;
            case 2:
                paramLow = 3;
                break;
            }
        }
        break;
    default:
        OS_REPORT("%s: Line.%d arg=%d\n", "d_a_passer_mng.cpp", 921, param_1);
        JUT_ASSERT(922, FALSE);
    }
    return paramLow << 8;
}

/* 80D466FC-80D46704 00105C 0008+00 1/0 0/0 0/0 .text daPasserMng_IsDelete__FP13daPasserMng_c */
static int daPasserMng_IsDelete(daPasserMng_c* i_this) {
    return 1;
}

/* 80D46704-80D46748 001064 0044+00 1/0 0/0 0/0 .text daPasserMng_Delete__FP13daPasserMng_c */
static int daPasserMng_Delete(daPasserMng_c* i_this) {
    fopAcM_GetID(i_this);
    i_this->~daPasserMng_c();
    return 1;
}

/* 80D46748-80D46768 0010A8 0020+00 1/0 0/0 0/0 .text            daPasserMng_Create__FP10fopAc_ac_c
 */
static int daPasserMng_Create(fopAc_ac_c* i_this) {
    fopAcM_GetID(i_this);
    return static_cast<daPasserMng_c*>(i_this)->create();
}

/* 80D46768-80D467C0 0010C8 0058+00 1/1 0/0 0/0 .text            create__13daPasserMng_cFv */
int daPasserMng_c::create() {
    fopAcM_ct(this, daPasserMng_c);
    create_init();
    return cPhs_COMPLEATE_e;
}

/* 80D467C0-80D46B9C 001120 03DC+00 1/1 0/0 0/0 .text            create_init__13daPasserMng_cFv */
void daPasserMng_c::create_init() {
    npcId = getDetailLevel() == 0 ? PROC_NPC_PASSER : PROC_NPC_PASSER2;
    mPath = dPath_GetRoomPath(getPathID(), fopAcM_GetHomeRoomNo(this));
    JUT_ASSERT(542, mPath != NULL);
    dPnt* pnt0 = dPath_GetPnt(mPath, 0);
    dPnt* pnt1 = dPath_GetPnt(mPath, 1);
    current.pos.set(pnt0->m_position);
    current.angle.y = cLib_targetAngleY(pnt0->m_position, pnt1->m_position);
    childProcIds = new fpc_ProcID[getMaxNum()];
    currentChildIndex = 0;
    int time = getTime();
    intervalTime = getIntervalTime() * 5;
    mTime = time;
    dayOfWeek = getDayOfWeek();
    if ((u8)getStartTime() != 0xff && (u8)getEndTime() != 0xff) {
        startTime = (getStartTime() / 10) * 60 + (getStartTime() % 10) * 10;
        endTime = (getEndTime() / 10) * 60 + (getEndTime() % 10) * 10;
        if (mTime > endTime) {
            dayOfWeek = (dayOfWeek + 1) % 7;
        }
        if (mTime < startTime || mTime > endTime) {
            mTime = startTime;
        }
        field_0x596 = 0;
    } else {
        field_0x596 = 1;
    }
    for (int i = 0; i < 5; i++) {
        field_0x58a[i] = 0xffff;
    }
    field_0x597 = 0;
    if (field_0x596 != 0 || (startTime < time && endTime > time)) {
        int max;
        if (getMaxNum() < mPath->m_num - 2) {
            max = getMaxNum();
        } else {
            max = mPath->m_num - 2;
        }
        int i;
        int* arr = new int[max];
        int ind = 0;
        while (ind < max) {
            int rnd = cLib_getRndValue(1, mPath->m_num - 2);
            bool bVar1 = true;
            for (int i = 0; i < ind; i++) {
                if (rnd == arr[i]) {
                    bVar1 = false;
                    break;
                }
            }
            if (bVar1) {
                arr[ind] = rnd;
                ind++;
            }
        }
        #ifdef DEBUG
        OS_REPORT("初期ばらまき位置 Path=%d ", getPathID());
        for (int i = 0; i < max; i++) {
            OS_REPORT("%d, ", arr[i]);
        }
        #endif
        OS_REPORT("\n");
        for (i = 0; i < max; i++) {
            dPnt* pnti0 = dPath_GetPnt(mPath, arr[i]);
            dPnt* pnti1 = dPath_GetPnt(mPath, arr[i] + 1);
            cXyz cStack_28(pnti0->m_position);
            s16 sVar11 = cLib_targetAngleY(cStack_28, pnti1->m_position);
            csXyz cStack_30(endTime, sVar11, 0);
            childProcIds[currentChildIndex] = fopAcM_createChild(npcId, fopAcM_GetID(this), getPasserParam(),
                                                       &cStack_28, fopAcM_GetRoomNo(this), &cStack_30, 0,
                                                       -1, 0);
            currentChildIndex = (currentChildIndex + 1) % getMaxNum();
        }
        delete [] arr;
    }
}

/* ############################################################################################## */
/* 80D46DB0-80D46DD0 -00001 0020+00 1/0 0/0 0/0 .data            l_daPasserMng_Method */
static actor_method_class l_daPasserMng_Method = {
    (process_method_func)daPasserMng_Create,
    (process_method_func)daPasserMng_Delete,
    (process_method_func)daPasserMng_Execute,
    (process_method_func)daPasserMng_IsDelete,
};

/* 80D46DD0-80D46E00 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_PASSER_MNG */
extern actor_process_profile_definition g_profile_PASSER_MNG = {
  fpcLy_CURRENT_e,       // mLayerID
  7,                     // mListID
  fpcPi_CURRENT_e,       // mListPrio
  PROC_PASSER_MNG,       // mProcName
  &g_fpcLf_Method.base, // sub_method
  sizeof(daPasserMng_c), // mSize
  0,                     // mSizeOther
  0,                     // mParameters
  &g_fopAc_Method.base,  // sub_method
  405,                   // mPriority
  &l_daPasserMng_Method, // sub_method
  0x00040100,            // mStatus
  fopAc_ACTOR_e,         // mActorType
  fopAc_CULLBOX_0_e,     // cullType
};

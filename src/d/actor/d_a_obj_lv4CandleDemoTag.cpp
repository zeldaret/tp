/**
 * @file d_a_obj_lv4CandleDemoTag.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_lv4CandleDemoTag.h"
#include "d/d_com_inf_game.h"
#include "d/d_path.h"
#include "m_Do/m_Do_hostIO.h"

class dalv4CandleDemoTag_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C5C9EC */ dalv4CandleDemoTag_HIO_c();
    /* 80C5D07C */ virtual ~dalv4CandleDemoTag_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ s16 mEnemyWaitTime;
};

/* 80C5C9EC-80C5CA10 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__24dalv4CandleDemoTag_HIO_cFv
 */
dalv4CandleDemoTag_HIO_c::dalv4CandleDemoTag_HIO_c() {
    mEnemyWaitTime = 60;
}

/* 80C5CA58-80C5CA90 000158 0038+00 2/2 0/0 0/0 .text setBaseMtx__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
}

/* 80C5CA90-80C5CBA4 000190 0114+00 1/1 0/0 0/0 .text            create__20dalv4CandleDemoTag_cFv */
// NONMATCHING - vtables need work
int dalv4CandleDemoTag_c::create() {
    fopAcM_SetupActor(this, dalv4CandleDemoTag_c);

    mPathID = getPathID();

    if (dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this)) == NULL) {
        return 0;
    }

    mSwNG = getSwNG();
    mSwDest = getSwDest();
    fopAcM_offSwitch(this, mSwDest);

    setBaseMtx();

    if (fopAcM_isSwitch(this, getSwOK())) {
        init_modeEnd();
    } else {
        init_modeWatch();
    }

    return cPhs_COMPLEATE_e;
}

/* 80C5CBA4-80C5CBE8 0002A4 0044+00 1/1 0/0 0/0 .text            Execute__20dalv4CandleDemoTag_cFv
 */
int dalv4CandleDemoTag_c::Execute() {
    eventUpdate();
    procMain();
    setBaseMtx();
    return 1;
}

/* 80C5D354-80C5D35C 000014 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static dalv4CandleDemoTag_HIO_c l_HIO;

/* 80C5CBE8-80C5CCA4 0002E8 00BC+00 1/1 0/0 0/0 .text            procMain__20dalv4CandleDemoTag_cFv
 */
void dalv4CandleDemoTag_c::procMain() {
    static dalv4CandleDemoTag_c::procFunc mode_proc[4] = {
        &dalv4CandleDemoTag_c::modeWatch,
        &dalv4CandleDemoTag_c::modeEnemyCreate,
        &dalv4CandleDemoTag_c::modeNG,
        &dalv4CandleDemoTag_c::modeEnd,
    };

    (this->*mode_proc[mMode])();
}

/* 80C5CCA4-80C5CCC0 0003A4 001C+00 2/2 0/0 0/0 .text init_modeWatch__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::init_modeWatch() {
    mEnemyWaitTime = l_HIO.mEnemyWaitTime;
    mMode = 0;
}

/* 80C5CCC0-80C5CDC0 0003C0 0100+00 1/0 0/0 0/0 .text            modeWatch__20dalv4CandleDemoTag_cFv
 */
void dalv4CandleDemoTag_c::modeWatch() {
    mpShutterActor = (daLv4EdShutter_c*)fopAcM_Search(searchShutterAct, this);

    u8 var3;
    if (mpShutterActor == NULL) {
        var3 = 1;
    } else {
        var3 = mpShutterActor->getStatus();
    }

    if (fopAcM_isSwitch(this, mSwNG) && var3 != 0) {
        if (mEnemyWaitTime == 0) {
            if (getEventID() != 0xFF) {
                orderEvent(getEventID(), 0xFF, 1);
            } else {
                eventStart();
            }
        } else {
            mEnemyWaitTime--;
        }
    }

    if (fopAcM_isSwitch(this, getSwOK())) {
        init_modeEnd();
    }
}

/* 80C5CDC0-80C5CE70 0004C0 00B0+00 1/1 0/0 0/0 .text
 * init_modeEnemyCreate__20dalv4CandleDemoTag_cFv               */
void dalv4CandleDemoTag_c::init_modeEnemyCreate() {
    dPath* path_p = dPath_GetRoomPath(mPathID, fopAcM_GetRoomNo(this));

    for (int i = 0; i < path_p->m_num; i++) {
        dPnt* pnt = &path_p->m_points[i];

        cXyz pos;
        pos.x = pnt->m_position.x;
        pos.y = pnt->m_position.y;
        pos.z = pnt->m_position.z;

        fopAcM_create(PROC_E_BS, 0xFFFFFEFF, &pos, fopAcM_GetRoomNo(this), NULL, NULL, -1);
    }

    mMode = 1;
}

/* 80C5CE70-80C5CEB4 000570 0044+00 1/0 0/0 0/0 .text modeEnemyCreate__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::modeEnemyCreate() {
    if (fopAcM_myRoomSearchEnemy(fopAcM_GetRoomNo(this))) {
        init_modeNG();
    }
}

/* 80C5CEB4-80C5CEC0 0005B4 000C+00 1/1 0/0 0/0 .text init_modeNG__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::init_modeNG() {
    mMode = 2;
}

/* 80C5CEC0-80C5CF34 0005C0 0074+00 1/0 0/0 0/0 .text            modeNG__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::modeNG() {
    if (!fopAcM_myRoomSearchEnemy(fopAcM_GetRoomNo(this))) {
        fopAcM_onSwitch(this, mSwDest);
        fopAcM_offSwitch(this, mSwNG);
        init_modeWatch();
    }
}

/* 80C5CF34-80C5CF40 000634 000C+00 2/2 0/0 0/0 .text init_modeEnd__20dalv4CandleDemoTag_cFv */
void dalv4CandleDemoTag_c::init_modeEnd() {
    mMode = 3;
}

/* 80C5CF40-80C5CF78 000640 0038+00 1/0 0/0 0/0 .text            modeEnd__20dalv4CandleDemoTag_cFv
 */
void dalv4CandleDemoTag_c::modeEnd() {
    fopAcM_offSwitch(this, mSwNG);
}

/* 80C5CF78-80C5CF9C 000678 0024+00 2/1 0/0 0/0 .text eventStart__20dalv4CandleDemoTag_cFv */
bool dalv4CandleDemoTag_c::eventStart() {
    init_modeEnemyCreate();
    return true;
}

/* 80C5CF9C-80C5CFEC 00069C 0050+00 1/1 0/0 0/0 .text
 * searchShutterAct__20dalv4CandleDemoTag_cFPvPv                */
void* dalv4CandleDemoTag_c::searchShutterAct(void* param_0, void* param_1) {
    if (param_0 != NULL && fopAcM_IsActor(param_0) &&
        fopAcM_GetProfName(param_0) == PROC_Obj_Lv4EdShutter)
    {
        return param_0;
    }

    return NULL;
}

/* 80C5CFEC-80C5CFF4 0006EC 0008+00 1/1 0/0 0/0 .text            Draw__20dalv4CandleDemoTag_cFv */
int dalv4CandleDemoTag_c::Draw() {
    return 1;
}

/* 80C5CFF4-80C5CFFC 0006F4 0008+00 1/1 0/0 0/0 .text            Delete__20dalv4CandleDemoTag_cFv */
int dalv4CandleDemoTag_c::Delete() {
    return 1;
}

/* 80C5CFFC-80C5D01C 0006FC 0020+00 1/0 0/0 0/0 .text
 * dalv4CandleDemoTag_Draw__FP20dalv4CandleDemoTag_c            */
static int dalv4CandleDemoTag_Draw(dalv4CandleDemoTag_c* i_this) {
    return i_this->Draw();
}

/* 80C5D01C-80C5D03C 00071C 0020+00 1/0 0/0 0/0 .text
 * dalv4CandleDemoTag_Execute__FP20dalv4CandleDemoTag_c         */
static int dalv4CandleDemoTag_Execute(dalv4CandleDemoTag_c* i_this) {
    return i_this->Execute();
}

/* 80C5D03C-80C5D05C 00073C 0020+00 1/0 0/0 0/0 .text
 * dalv4CandleDemoTag_Delete__FP20dalv4CandleDemoTag_c          */
static int dalv4CandleDemoTag_Delete(dalv4CandleDemoTag_c* i_this) {
    return i_this->Delete();
}

/* 80C5D05C-80C5D07C 00075C 0020+00 1/0 0/0 0/0 .text dalv4CandleDemoTag_Create__FP10fopAc_ac_c */
static int dalv4CandleDemoTag_Create(fopAc_ac_c* i_this) {
    return static_cast<dalv4CandleDemoTag_c*>(i_this)->create();
}

/* 80C5D298-80C5D2B8 -00001 0020+00 1/0 0/0 0/0 .data            l_dalv4CandleDemoTag_Method */
static actor_method_class l_dalv4CandleDemoTag_Method = {
    (process_method_func)dalv4CandleDemoTag_Create,
    (process_method_func)dalv4CandleDemoTag_Delete,
    (process_method_func)dalv4CandleDemoTag_Execute,
    NULL,
    (process_method_func)dalv4CandleDemoTag_Draw,
};

/* 80C5D2B8-80C5D2E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Lv4CandleDm */
extern actor_process_profile_definition g_profile_Tag_Lv4CandleDm = {
  fpcLy_CURRENT_e,              // mLayerID
  7,                            // mListID
  fpcPi_CURRENT_e,              // mListPrio
  PROC_Tag_Lv4CandleDm,         // mProcName
  &g_fpcLf_Method.base,        // sub_method
  sizeof(dalv4CandleDemoTag_c), // mSize
  0,                            // mSizeOther
  0,                            // mParameters
  &g_fopAc_Method.base,         // sub_method
  541,                          // mPriority
  &l_dalv4CandleDemoTag_Method, // sub_method
  0x00044000,                   // mStatus
  fopAc_ACTOR_e,                // mActorType
  fopAc_CULLBOX_CUSTOM_e,       // cullType
};

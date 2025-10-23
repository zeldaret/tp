#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_obj_lv4CandleTag.h"

class dalv4CandleTag_HIO_c : public mDoHIO_entry_c {
public:
    /* 80C5D44C */ dalv4CandleTag_HIO_c();
    /* 80C5D9C0 */ virtual ~dalv4CandleTag_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x4 */ u8 mTimer;
};

/* 80C5D44C-80C5D470 0000EC 0024+00 1/1 0/0 0/0 .text            __ct__20dalv4CandleTag_HIO_cFv */
dalv4CandleTag_HIO_c::dalv4CandleTag_HIO_c() {
    mTimer = 60;
}

/* 80C5D4B8-80C5D4F0 000158 0038+00 2/2 0/0 0/0 .text            setBaseMtx__16dalv4CandleTag_cFv */
void dalv4CandleTag_c::setBaseMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
}

/* 80C5D4F0-80C5D5D4 000190 00E4+00 1/1 0/0 0/0 .text            create__16dalv4CandleTag_cFv */
int dalv4CandleTag_c::create() {
    fopAcM_ct(this, dalv4CandleTag_c);

    setBaseMtx();

    mSwTop = getSwTop();
    mSwOK = getSwOK();
    mSwNG = getSwNG();
    mSwTotal = getSwTotal();

    if (fopAcM_isSwitch(this, mSwOK)) {
        init_modeEnd();
    } else {
        init_modeWatch();
    }

    return cPhs_COMPLEATE_e;
}

/* 80C5D5D4-80C5D618 000274 0044+00 1/1 0/0 0/0 .text            Execute__16dalv4CandleTag_cFv */
int dalv4CandleTag_c::Execute() {
    eventUpdate();
    procMain();
    setBaseMtx();
    return 1;
}

/* 80C5DCA4-80C5DCAC 000014 0008+00 2/2 0/0 0/0 .bss             l_HIO */
static dalv4CandleTag_HIO_c l_HIO;

/* 80C5D618-80C5D6D4 0002B8 00BC+00 1/1 0/0 0/0 .text            procMain__16dalv4CandleTag_cFv */
void dalv4CandleTag_c::procMain() {
    static void (dalv4CandleTag_c::*mode_proc[])() = {
        &dalv4CandleTag_c::modeWatch,
        &dalv4CandleTag_c::modeNG,
        &dalv4CandleTag_c::modeNGWait,
        &dalv4CandleTag_c::modeEnd,
    };

    (this->*mode_proc[mMode])();
}

/* 80C5D6D4-80C5D6E0 000374 000C+00 2/2 0/0 0/0 .text init_modeWatch__16dalv4CandleTag_cFv */
void dalv4CandleTag_c::init_modeWatch() {
    mMode = 0;
}

/* 80C5D6E0-80C5D78C 000380 00AC+00 1/0 0/0 0/0 .text            modeWatch__16dalv4CandleTag_cFv */
void dalv4CandleTag_c::modeWatch() {
    if (fopAcM_isSwitch(this, mSwOK)) {
        init_modeEnd();
    } else if (fopAcM_isSwitch(this, mSwNG)) {
        if (getEventID() != 0xFF) {
            orderEvent(getEventID(), 0xFF, 1);
        } else {
            eventStart();
        }
    }
}

/* 80C5D78C-80C5D814 00042C 0088+00 1/1 0/0 0/0 .text            init_modeNG__16dalv4CandleTag_cFv
 */
void dalv4CandleTag_c::init_modeNG() {
    mTimer = l_HIO.mTimer;
    mDoAud_seStart(Z2SE_OBJ_LV4_CNDL_MISS, NULL, 0, 0);
    mMode = 1;
}

/* 80C5D814-80C5D8A0 0004B4 008C+00 1/0 0/0 0/0 .text            modeNG__16dalv4CandleTag_cFv */
void dalv4CandleTag_c::modeNG() {
    if (mTimer != 0) {
        mTimer--;
    } else {
        u8 swbit = mSwTop;
        for (int i = 0; i < mSwTotal; i++) {
            fopAcM_offSwitch(this, swbit);
            swbit++;
        }

        init_modeNGWait();
    }
}

/* 80C5D8A0-80C5D8AC 000540 000C+00 1/1 0/0 0/0 .text init_modeNGWait__16dalv4CandleTag_cFv */
void dalv4CandleTag_c::init_modeNGWait() {
    mMode = 2;
}

/* 80C5D8AC-80C5D8FC 00054C 0050+00 1/0 0/0 0/0 .text            modeNGWait__16dalv4CandleTag_cFv */
void dalv4CandleTag_c::modeNGWait() {
    if (!fopAcM_isSwitch(this, mSwNG)) {
        init_modeWatch();
    }
}

/* 80C5D8FC-80C5D908 00059C 000C+00 2/2 0/0 0/0 .text            init_modeEnd__16dalv4CandleTag_cFv
 */
void dalv4CandleTag_c::init_modeEnd() {
    mMode = 3;
}

/* 80C5D908-80C5D90C 0005A8 0004+00 1/0 0/0 0/0 .text            modeEnd__16dalv4CandleTag_cFv */
void dalv4CandleTag_c::modeEnd() {}

/* 80C5D90C-80C5D930 0005AC 0024+00 2/1 0/0 0/0 .text            eventStart__16dalv4CandleTag_cFv */
bool dalv4CandleTag_c::eventStart() {
    init_modeNG();
    return true;
}

/* 80C5D930-80C5D938 0005D0 0008+00 1/1 0/0 0/0 .text            Draw__16dalv4CandleTag_cFv */
int dalv4CandleTag_c::Draw() {
    return 1;
}

/* 80C5D938-80C5D940 0005D8 0008+00 1/1 0/0 0/0 .text            Delete__16dalv4CandleTag_cFv */
int dalv4CandleTag_c::Delete() {
    return 1;
}

/* 80C5D940-80C5D960 0005E0 0020+00 1/0 0/0 0/0 .text dalv4CandleTag_Draw__FP16dalv4CandleTag_c */
static int dalv4CandleTag_Draw(dalv4CandleTag_c* i_this) {
    return i_this->Draw();
}

/* 80C5D960-80C5D980 000600 0020+00 1/0 0/0 0/0 .text dalv4CandleTag_Execute__FP16dalv4CandleTag_c
 */
static int dalv4CandleTag_Execute(dalv4CandleTag_c* i_this) {
    return i_this->Execute();
}

/* 80C5D980-80C5D9A0 000620 0020+00 1/0 0/0 0/0 .text dalv4CandleTag_Delete__FP16dalv4CandleTag_c
 */
static int dalv4CandleTag_Delete(dalv4CandleTag_c* i_this) {
    return i_this->Delete();
}

/* 80C5D9A0-80C5D9C0 000640 0020+00 1/0 0/0 0/0 .text dalv4CandleTag_Create__FP10fopAc_ac_c */
static int dalv4CandleTag_Create(fopAc_ac_c* i_this) {
    return ((dalv4CandleTag_c*)i_this)->create();
}

/* 80C5DBE4-80C5DC04 -00001 0020+00 1/0 0/0 0/0 .data            l_dalv4CandleTag_Method */
static actor_method_class l_dalv4CandleTag_Method = {
    (process_method_func)dalv4CandleTag_Create,
    (process_method_func)dalv4CandleTag_Delete,
    (process_method_func)dalv4CandleTag_Execute,
    NULL,
    (process_method_func)dalv4CandleTag_Draw,
};

/* 80C5DC04-80C5DC34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Lv4Candle */
extern actor_process_profile_definition g_profile_Tag_Lv4Candle = {
    fpcLy_CURRENT_e,              // mLayerID
    7,                            // mListID
    fpcPi_CURRENT_e,              // mListPrio
    PROC_Tag_Lv4Candle,         // mProcName
    &g_fpcLf_Method.base,        // sub_method
    sizeof(dalv4CandleTag_c), // mSize
    0,                            // mSizeOther
    0,                            // mParameters
    &g_fopAc_Method.base,         // sub_method
    540,                          // mPriority
    &l_dalv4CandleTag_Method, // sub_method
    0x00044000,                   // mStatus
    fopAc_ACTOR_e,                // mActorType
    fopAc_CULLBOX_CUSTOM_e,       // cullType
};

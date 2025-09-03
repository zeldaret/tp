/**
 * @file d_a_myna.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_myna.h"
#include "d/actor/d_a_player.h"
#include "d/d_kankyo.h"
#include "d/d_msg_object.h"
#include "d/actor/d_a_obj_ss_item.h"
#include "d/actor/d_a_tag_myna_light.h"
#include "SSystem/SComponent/c_math.h"

class daMyna_HIO_c : public mDoHIO_entry_c {
public:
    /* 8094A960 */ virtual ~daMyna_HIO_c() {}

    // Must be inlined but defined in .cpp for sinit to match
    inline daMyna_HIO_c();

    void genMessage(JORMContext*);

    /* 0x04 */ f32 field_0x04;  // DAT_8094ba40
    /* 0x08 */ f32 field_0x08;  // DAT_8094ba44
    /* 0x0C */ f32 field_0x0C;  // DAT_8094ba48
    /* 0x10 */ f32 field_0x10;  // DAT_8094ba4c
    /* 0x14 */ f32 field_0x14;  // DAT_8094ba50
    /* 0x18 */ f32 field_0x18;  // DAT_8094ba54
    /* 0x1C */ f32 field_0x1C;  // DAT_8094ba58
    /* 0x20 */ f32 field_0x20;  // DAT_8094ba5c
    /* 0x24 */ s16 field_0x24;  // DAT_8094ba60
    /* 0x26 */ s16 field_0x26;  // DAT_8094ba62
    /* 0x28 */ s16 field_0x28;  // DAT_8094ba64
    /* 0x2A */ s16 field_0x2A;  // DAT_8094ba66
    /* 0x2C */ s16 field_0x2C;  // DAT_8094ba68
    /* 0x2E */ s16 field_0x2E;  // DAT_8094ba6a
    /* 0x30 */ s16 field_0x30;  // DAT_8094ba6c
};

STATIC_ASSERT(sizeof(daMyna_HIO_c) == 0x34);

/* 8094B488-8094B590 000128 0108+00 2/3 0/0 0/0 .data            init_proc */
static daMyna_c::ProcFunc init_proc[] = {
    &daMyna_c::attack_wait_init,
    &daMyna_c::attack_before_talk_init,
    &daMyna_c::attack_fly_init,
    &daMyna_c::attack_init,
    &daMyna_c::attack_after_talk_init,
    &daMyna_c::greet_wait_init,
    &daMyna_c::greet_talk_init,
    &daMyna_c::shopping_wait_init,
    &daMyna_c::shopping_talk_init,
    &daMyna_c::thanks_talk_init,
    &daMyna_c::byebye_talk_init,
    &daMyna_c::turn_on_start_init,
    &daMyna_c::turn_on_init,
    &daMyna_c::turn_on_end1_init,
    &daMyna_c::turn_on_end2_init,
    &daMyna_c::turn_on_end3_init,
    &daMyna_c::wolf_talk_init,
    &daMyna_c::attack_wait2_init,
    &daMyna_c::attack_before_talk2_init,
    &daMyna_c::attack_fly2_init,
    &daMyna_c::attack2_init,
    &daMyna_c::attack2_talk_init,
};

/* 8094B698-8094B7A0 000338 0108+00 2/3 0/0 0/0 .data            move_proc */
static daMyna_c::ProcFunc move_proc[] = {
    &daMyna_c::attack_wait_move,
    &daMyna_c::attack_before_talk_move,
    &daMyna_c::attack_fly_move,
    &daMyna_c::attack_move,
    &daMyna_c::attack_after_talk_move,
    &daMyna_c::greet_wait_move,
    &daMyna_c::greet_talk_move,
    &daMyna_c::shopping_wait_move,
    &daMyna_c::shopping_talk_move,
    &daMyna_c::thanks_talk_move,
    &daMyna_c::byebye_talk_move,
    &daMyna_c::turn_on_start_move,
    &daMyna_c::turn_on_move,
    &daMyna_c::turn_on_end1_move,
    &daMyna_c::turn_on_end2_move,
    &daMyna_c::turn_on_end3_move,
    &daMyna_c::wolf_talk_move,
    &daMyna_c::attack_wait2_move,
    &daMyna_c::attack_before_talk2_move,
    &daMyna_c::attack_fly2_move,
    &daMyna_c::attack2_move,
    &daMyna_c::attack2_talk_move,
};

/* 80945C6C-80945C8C 0000EC 0020+00 1/1 0/0 0/0 .text            createHeapCallBack__FP10fopAc_ac_c
 */
static void createHeapCallBack(fopAc_ac_c* i_this) {
    static_cast<daMyna_c*>(i_this)->createHeap();
}

/* 80945C8C-80945CD8 00010C 004C+00 1/1 0/0 0/0 .text            jntNodeCallBack__FP8J3DJointi */
static int jntNodeCallBack(J3DJoint* i_jnt, int param_1) {
    if (param_1 == 0) {
        if (j3dSys.getModel()->getUserArea() != 0) {
            ((daMyna_c*)j3dSys.getModel()->getUserArea())->jntNodeCB(i_jnt, j3dSys.getModel());
        }
    }
    return 1;
}

/* 8094BA3C-8094BA70 000054 0034+00 15/15 0/0 0/0 .bss             l_HOSTIO */
static daMyna_HIO_c l_HOSTIO;

/* 8094BA70-8094BA98 000088 0028+00 0/2 0/0 0/0 .bss             daMyna_targetActor */
static fopAc_ac_c* daMyna_targetActor[10];

/* 8094BA98-8094BAC0 0000B0 0028+00 0/2 0/0 0/0 .bss             daMyna_subActor */
static fopAc_ac_c* daMyna_subActor[10];

/* 8094BAC0-8094BAC4 0000D8 0004+00 7/7 0/0 0/0 .bss             daMyna_LightActor */
static daTag_MynaLight_c* daMyna_LightActor;

/* 8094BAC4-8094BAC8 0000DC 0004+00 0/2 0/0 0/0 .bss             daMyna_actor_count */
static s32 daMyna_actor_count;

/* 80945CD8-80945D9C 000158 00C4+00 1/1 0/0 0/0 .text            daMyna_searchSSItem__FPvPv */
static void* daMyna_searchSSItem(void* param_0, void* param_1) {
    if (fopAcM_IsActor(param_0) && (fopAcM_GetName(param_0) == PROC_OBJ_SSITEM ||
                                    fopAcM_GetName(param_0) == PROC_OBJ_SSDRINK ||
                                    fopAcM_GetName(param_0) == PROC_TAG_SSDRINK))
    {
        if ((fopAcM_GetParam(param_1) & 0xF0000000) == (fopAcM_GetParam(param_0) & 0xF0000000) &&
            daMyna_actor_count < 10)
        {
            fopAc_ac_c* pfVar4 = static_cast<fopAc_ac_c*>(param_0);
            if (fopAcM_GetName(param_0) == PROC_OBJ_SSITEM) {
                pfVar4 = static_cast<daObj_SSItem_c*>(param_0)->getExchangeItemPtr();
            }
            if (pfVar4 != NULL) {
                daMyna_targetActor[daMyna_actor_count] = pfVar4;
                daMyna_subActor[daMyna_actor_count] = static_cast<fopAc_ac_c*>(param_0);
                daMyna_actor_count++;
            }
        }
    }
    return 0;
}

/* 80945D9C-80945E0C 00021C 0070+00 1/1 0/0 0/0 .text            daMyna_searchLight__FPvPv */
static void* daMyna_searchLight(void* i_mynaLightTagActor, void* param_1) {
    if (fopAcM_IsActor(i_mynaLightTagActor) &&
        fopAcM_GetName(i_mynaLightTagActor) == PROC_TAG_MNLIGHT)
    {
        if ((fopAcM_GetParam(param_1) & 0xF0000000) ==
            (fopAcM_GetParam(i_mynaLightTagActor) & 0xF0000000))
        {
            daMyna_LightActor = static_cast<daTag_MynaLight_c*>(i_mynaLightTagActor);
        }
    }
    return 0;
}

/* 8094BAC8-8094BACC 0000E0 0004+00 8/9 0/0 0/0 .bss             daMyna_evtTagActor0 */
static fopAc_ac_c* daMyna_evtTagActor0;

/* 8094BACC-8094BAD0 0000E4 0004+00 2/2 0/0 0/0 .bss             daMyna_evtTagActor1 */
static fopAc_ac_c* daMyna_evtTagActor1;

/* 80945E0C-80945E80 00028C 0074+00 1/1 0/0 0/0 .text            daMyna_searchEvtTag__FPvPv */
static void* daMyna_searchEvtTag(void* i_evtTagActor, void* param_1) {
    if (fopAcM_IsActor(i_evtTagActor) && fopAcM_GetName(i_evtTagActor) == PROC_TAG_EVT) {
        if (((fopAcM_GetParam(i_evtTagActor) >> 24) & 0xF) == 0) {
            daMyna_evtTagActor0 = static_cast<fopAc_ac_c*>(i_evtTagActor);
        } else if (((fopAcM_GetParam(i_evtTagActor) >> 24) & 0xF) == 1) {
            daMyna_evtTagActor1 = static_cast<fopAc_ac_c*>(i_evtTagActor);
        }
        return 0;
    }
    return 0;
}

/* 8094B1B0-8094B1F0 000000 0040+00 7/7 0/0 0/0 .rodata          mCcDSph__8daMyna_c */
dCcD_SrcSph const daMyna_c::mCcDSph = {
    0, 0x400, 1, 0x1F, 0, 0, 0x79, 0xA, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0.0f, 0.0f, 0.0f, 15.0f,
};

/* 80945E80-80945EC0 000300 0040+00 1/0 0/0 0/0 .text            baseMotion00__8daMyna_cFi */
int daMyna_c::baseMotion00(int param_0) {
    if (param_0 != 0) {
        field_0x916 = 0;
        setAnimeType(1, 0.0f);
    }
    return 1;
}

/* 80945EC0-80945F00 000340 0040+00 1/0 0/0 0/0 .text            baseMotion01__8daMyna_cFi */
int daMyna_c::baseMotion01(int param_0) {
    if (param_0 != 0) {
        field_0x916 = 1;
        setAnimeType(11, 0.0f);
    }
    return 1;
}

/* 80945F00-80945F40 000380 0040+00 1/0 0/0 0/0 .text            baseMotion02__8daMyna_cFi */
int daMyna_c::baseMotion02(int param_0) {
    if (param_0 != 0) {
        field_0x916 = 2;
        setAnimeType(12, 0.0f);
    }
    return 1;
}

/* 80945F40-80945FA0 0003C0 0060+00 1/0 0/0 0/0 .text            baseMotion03__8daMyna_cFi */
int daMyna_c::baseMotion03(int param_0) {
    if (param_0 != 0) {
        field_0x916 = 3;
        setAnimeType(9, 0.0f);
    } else {
        if (field_0x91E != 0) {
            setAnimeType(11, 0.0f);
        }
    }
    return 1;
}

/* 80945FA0-80946000 000420 0060+00 1/0 0/0 0/0 .text            baseMotion04__8daMyna_cFi */
int daMyna_c::baseMotion04(int param_0) {
    if (param_0 != 0) {
        field_0x916 = 4;
        setAnimeType(10, 0.0f);
    } else {
        if (field_0x91E != 0) {
            setAnimeType(12, 0.0f);
        }
    }
    return 1;
}

/* 80946000-80946060 000480 0060+00 1/0 0/0 0/0 .text            baseMotion05__8daMyna_cFi */
int daMyna_c::baseMotion05(int param_0) {
    if (param_0 != 0) {
        field_0x916 = 5;
        setAnimeType(13, 0.0f);
    } else {
        if (field_0x91E != 0) {
            setAnimeType(14, 0.0f);
        }
    }
    return 1;
}

/* 80946060-809460A0 0004E0 0040+00 1/0 0/0 0/0 .text            baseMotion06__8daMyna_cFi */
int daMyna_c::baseMotion06(int param_0) {
    if (param_0 != 0) {
        field_0x916 = 6;
        setAnimeType(14, 0.0f);
    }
    return 1;
}

/* 8094B7A0-8094B7DC -00001 003C+00 2/2 0/0 0/0 .data            l_bckFileNameTBL */
static char* l_bckFileNameTBL[] = {
    "MYNA_hovering.bck", "MYNA_wait_a.bck",    "MYNA_pick_a.bck",    "MYNA_pick_b.bck",
    "MYNA_jump.bck",     "MYNA_sidestepL.bck", "MYNA_sidestepR.bck", "MYNA_lightup.bck",
    "MYNA_attack.bck",   "MYNA_talk_a.bck",    "MYNA_talk_b.bck",    "MYNA_wait_b.bck",
    "MYNA_wait_c.bck",   "MYNA_talk_c.bck",    "MYNA_wait_d.bck",
};

/* 8094B7DC-8094B7E0 -00001 0004+00 2/2 0/0 0/0 .data            l_btpFileNameTBL */
static char* l_btpFileNameTBL[] = {"MYNA.btp"};

/* 8094B7E0-8094B810 000480 0030+00 1/1 0/0 0/0 .data aParam$localstatic3$__ct__12daMyna_HIO_cFv
 */
daMyna_HIO_c::daMyna_HIO_c() {
    // This could probably be cleaned up a bit. Equivalent to:
    /*
    field_0x04 = 1.0f;
    field_0x08 = 1.0f;
    field_0x0C = 0.08f;
    field_0x10 = 0.4f;
    field_0x14 = 30.0f;
    field_0x18 = 45.0f;
    field_0x1C = 42.0f;
    field_0x20 = 2.0f;
    field_0x24 = 75;
    field_0x26 = 4;
    field_0x28 = 32767;
    field_0x2A = 1500;
    field_0x2C = 5;
    field_0x2E = 8192;
    field_0x30 = 30;
    */
    static u8 data_8094B7E0[48] = {
        0x3F, 0x80, 0x00, 0x00, 0x3F, 0x80, 0x00, 0x00, 0x3D, 0xA3, 0xD7, 0x0A,
        0x3E, 0xCC, 0xCC, 0xCD, 0x41, 0xF0, 0x00, 0x00, 0x42, 0x34, 0x00, 0x00,
        0x42, 0x28, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x04,
        0x7F, 0xFF, 0x05, 0xDC, 0x00, 0x05, 0x20, 0x00, 0x00, 0x1E, 0x00, 0x00,
    };
    memcpy(&field_0x04, data_8094B7E0, 0x30);
}

/* 8094B864-8094B8B8 000504 0054+00 1/2 0/0 0/0 .data            mBaseMotionTBL__8daMyna_c */
daMyna_c::BaseMotionFunc daMyna_c::mBaseMotionTBL[] = {
    &daMyna_c::baseMotion00, &daMyna_c::baseMotion01, &daMyna_c::baseMotion02,
    &daMyna_c::baseMotion03, &daMyna_c::baseMotion04, &daMyna_c::baseMotion05,
    &daMyna_c::baseMotion06,
};

/* 809460A0-80946284 000520 01E4+00 1/1 0/0 0/0 .text            create__8daMyna_cFv */
int daMyna_c::create() {
    fopAcM_SetupActor(this, daMyna_c);
    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase, "Npc_myna");
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    } else {
        if (!fopAcM_entrySolidHeap(this, (heapCallbackFunc)&createHeapCallBack, 0x21F0)) {
            return cPhs_ERROR_e;
        } else {
            fopAcM_SetMtx(this, mpMorf->getModel()->getBaseTRMtx());
            mCreature.init(&current.pos, &eyePos, 3, 1);
            initiate();
            setRoomNo();
            execute();
            field_0x844.set(field_0x82C);
            field_0x850.set(field_0x838);
            return phase;
        }
    }
}

/* 809463B8-8094640C 000838 0054+00 1/1 0/0 0/0 .text            destroy__8daMyna_cFv */
int daMyna_c::destroy() {
    dComIfG_resDelete(&mPhase, "Npc_myna");
    if (heap != NULL) {
        mpMorf->stopZelAnime();
    }
    return 1;
}

/* 8094640C-809464CC 00088C 00C0+00 1/1 0/0 0/0 .text            draw__8daMyna_cFv */
int daMyna_c::draw() {
    J3DModel* model = mpMorf->getModel();
    J3DModelData* modelData = model->getModelData();
    g_env_light.settingTevStruct(0, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(model, &tevStr);
    if (cLib_checkBit<u16>(field_0x914, 0x40)) {
        mBtpAnm.entry(modelData);
    }
    fopAcM_setEffectMtx(this, modelData);
    mpMorf->entryDL();
    if (cLib_checkBit<u16>(field_0x914, 0x40)) {
        mBtpAnm.remove(modelData);
    }
    return 1;
}

/* 809464CC-809466D8 00094C 020C+00 2/2 0/0 0/0 .text            execute__8daMyna_cFv */
int daMyna_c::execute() {
    u8 uVar1 = field_0x92C;
    u8 uVar2 = field_0x935;
    bool isTalkNow = dMsgObject_isTalkNowCheck();
    setItemInfo();
    int iVar1 = chkEvent();
    if (daMyna_LightActor == NULL) {
        fpcM_Search(daMyna_searchLight, this);
    }
    setRoomNo();
    attention_info.position.set(current.pos.x, current.pos.y + 40.0f, current.pos.z);
    eyePos.set(attention_info.position);
    if (field_0x926 > 0) {
        field_0x926--;
    }
    if (isTalkNow) {
        talkAnime(mMsgFlow.getMsg());
    } else if (field_0x824 != 0) {
        field_0x824 = 0;
    }
    if (iVar1 != 0) {
        (this->*move_proc[field_0x92C])();
        orderEvent();
    }
    if (!isTalkNow) {
        playDefaultWaitAnime();
        setDefaultWaitAnime(uVar2);
    }
    if (uVar1 != field_0x92C) {
        (this->*init_proc[field_0x92C])();
    }
    if (uVar2 != field_0x935) {
        if (field_0x935 == 1) {
            field_0x924 = cM_rndF(100.0f) + 100.0f;
        }
        animeControl();
    }
    animePlay();
    set_mtx();
    shape_angle = current.angle;
    shape_angle.y = -current.angle.y;
    setCollision();
    checkDead();
    return 1;
}

/* 809466D8-8094686C 000B58 0194+00 1/1 0/0 0/0 .text            createHeap__8daMyna_cFv */
int daMyna_c::createHeap() {
    J3DModelData* modelData =
        static_cast<J3DModelData*>(dComIfG_getObjectRes("Npc_myna", "MYNA.bmd"));
    mpMorf = new mDoExt_McaMorfSO(modelData, NULL, NULL, NULL, -1, 1.0f, 0, -1, &mCreature, 0x80000,
                                  0x11020084);
    if (mpMorf != NULL && mpMorf->getModel() == NULL) {
        mpMorf->stopZelAnime();
        mpMorf = NULL;
    }
    if (mpMorf == NULL) {
        return 0;
    } else {
        for (u16 i = 0; i < modelData->getJointNum(); i++) {
            modelData->getJointNodePointer(i)->setCallBack(jntNodeCallBack);
        }
        field_0x916 = 7;
        field_0x914 = 0;
        field_0x918 = 0;
        field_0x91A = 0;
        field_0x936 = 0;
        J3DAnmTexPattern* anmTexPattern = getTexPtrnAnm(l_btpFileNameTBL[field_0x936]);
        if (anmTexPattern != NULL) {
            setBtpAnm(anmTexPattern, mpMorf->getModel()->getModelData(), 1.0f, 2);
            cLib_onBit<u16>(field_0x914, 0x44);
        }
        return 1;
    }
}

/* 8094686C-809468EC 000CEC 0080+00 1/1 0/0 0/0 .text jntNodeCB__8daMyna_cFP8J3DJointP8J3DModel */
int daMyna_c::jntNodeCB(J3DJoint* i_jnt, J3DModel* i_model) {
    u16 jntNo = i_jnt->getJntNo();
    mDoMtx_stack_c::copy(i_model->getAnmMtx(jntNo));
    i_model->setAnmMtx(jntNo, mDoMtx_stack_c::get());
    cMtx_copy(mDoMtx_stack_c::get(), J3DSys::mCurrentMtx);
    return 1;
}

/* 809468EC-8094692C 000D6C 0040+00 1/0 0/0 0/0 .text            attack_wait_init__8daMyna_cFv */
void daMyna_c::attack_wait_init() {
    setAnimeType(1, 0.0f);
    field_0x92A = 0;
}

/* 8094692C-80946AEC 000DAC 01C0+00 1/0 0/0 0/0 .text            attack_wait_move__8daMyna_cFv */
void daMyna_c::attack_wait_move() {
    if (current.angle.y != home.angle.y) {
        cLib_addCalcAngleS(&current.angle.y, home.angle.y, 4, 32767, 1500);
        cLib_addCalcAngleS(&current.angle.x, home.angle.x, 4, 32767, 1500);
        if (abs(s16(current.angle.y - home.angle.y)) < 128) {
            current.angle = home.angle;
        }
    }
    if (!daPy_py_c::checkNowWolf() && daMyna_evtTagActor0 != NULL) {
        cXyz var1(1.0f, 1.0f, 1.0f);
        if (!dComIfGs_isSaveSwitch(0x3C)) {
            if (chkPlayerInEvtArea(daMyna_evtTagActor0, var1)) {
                if (!isEventFlag(1)) {
                    eventInfo.onCondition(1);
                    fopAcM_orderSpeakEvent(this, 0, 0);
                    if (eventInfo.checkCommandTalk()) {
                        field_0x92C = 1;
                    }
                } else {
                    field_0x92C = 2;
                }
            }
        } else if (field_0x92A < l_HOSTIO.field_0x24) {
            field_0x92A++;
        } else {
            eventInfo.onCondition(1);
            fopAcM_orderSpeakEvent(this, 0, 0);
            if (eventInfo.checkCommandTalk()) {
                field_0x92C = 4;
            }
        }
    }
}

/* 80946AEC-80946B40 000F6C 0054+00 1/0 0/0 0/0 .text attack_before_talk_init__8daMyna_cFv */
void daMyna_c::attack_before_talk_init() {
    mMsgFlow.init(this, field_0x91C, 0, NULL);
    setAnimeType(10, 0.0f);
}

/* 80946B40-80946BB4 000FC0 0074+00 1/0 0/0 0/0 .text attack_before_talk_move__8daMyna_cFv */
void daMyna_c::attack_before_talk_move() {
    if (eventInfo.checkCommandTalk() && mMsgFlow.doFlow(this, NULL, 0) != 0) {
        dComIfGp_event_reset();
        onEventFlag(1);
        field_0x92C = 2;
    }
}

/* 80946BB4-80946BF4 001034 0040+00 1/0 0/0 0/0 .text            attack_fly_init__8daMyna_cFv */
void daMyna_c::attack_fly_init() {
    setAnimeType(0, 0.0f);
    field_0x91A = 0;
}

/* 80946BF4-80946D20 001074 012C+00 1/0 0/0 0/0 .text            attack_fly_move__8daMyna_cFv */
void daMyna_c::attack_fly_move() {
    if (daMyna_evtTagActor0 != NULL) {
        cXyz var1(1.0f, 1.0f, 1.0f);
        fly_body_wave();
        if (field_0x926 > 0 && dComIfGs_isSaveSwitch(0x3C)) {
            field_0x926 = 0;
        }
        if (chkPlayerInEvtArea(daMyna_evtTagActor0, var1) && !daPy_py_c::checkNowWolf() &&
            !dComIfGs_isSaveSwitch(0x3C) && field_0x926 == 0)
        {
            mStatus.Move();
            if (fly_attack_move()) {
                field_0x92C = 3;
            }
        } else if (fly_return_move()) {
            field_0x92C = 0;
        }
    }
}

/* 80946D20-80946D64 0011A0 0044+00 1/0 0/0 0/0 .text            attack_init__8daMyna_cFv */
void daMyna_c::attack_init() {
    setAnimeType(8, 0.0f);
    mSph.OnAtVsPlayerBit();
}

/* 80946D64-80946DD4 0011E4 0070+00 1/0 0/0 0/0 .text            attack_move__8daMyna_cFv */
void daMyna_c::attack_move() {
    mStatus.Move();
    if (field_0x91E != 0) {
        field_0x92C = 2;
    }
    if (mSph.ChkAtHit()) {
        field_0x926 = l_HOSTIO.field_0x30;
        mSph.OffAtVsPlayerBit();
    }
}

/* 80946DD4-80946E08 001254 0034+00 1/0 0/0 0/0 .text            attack_after_talk_init__8daMyna_cFv
 */
void daMyna_c::attack_after_talk_init() {
    mMsgFlow.init(this, field_0x91C, 0, NULL);
}

/* 80946E08-80946E84 001288 007C+00 1/0 0/0 0/0 .text            attack_after_talk_move__8daMyna_cFv
 */
void daMyna_c::attack_after_talk_move() {
    if (eventInfo.checkCommandTalk() && mMsgFlow.doFlow(this, NULL, 0) != 0) {
        dComIfGp_event_reset();
        onEventFlag(2);
        field_0x91C = 0x139;
        field_0x92C = 5;
    }
}

/* 80946E84-80946EB0 001304 002C+00 1/0 0/0 0/0 .text            greet_wait_init__8daMyna_cFv */
void daMyna_c::greet_wait_init() {
    setAnimeType(1, 0.0f);
}

/* 80946EB0-80947030 001330 0180+00 1/0 0/0 0/0 .text            greet_wait_move__8daMyna_cFv */
void daMyna_c::greet_wait_move() {
    if (!daPy_py_c::checkNowWolf()) {
        if (daMyna_evtTagActor0 != NULL) {
            if (chkPlayerInEvtArea(daMyna_evtTagActor0, cXyz(cXyz(1.0f, 1.0f, 1.0f)))) {
                eventInfo.onCondition(1);
                fopAcM_orderSpeakEvent(this, 0, 0);
                if (eventInfo.checkCommandTalk()) {
                    field_0x92C = 6;
                }
            } else {
                if (isEventFlag(0)) {
                    eventInfo.onCondition(1);
                    fopAcM_orderSpeakEvent(this, 0, 0);
                    if (eventInfo.checkCommandTalk()) {
                        field_0x92C = 10;
                    }
                }
            }
        } else {
            if (fopAcM_searchPlayerDistanceXZ(this) < 350.0f) {
                eventInfo.onCondition(1);
                fopAcM_orderSpeakEvent(this, 0, 0);
                if (eventInfo.checkCommandTalk()) {
                    field_0x92C = 6;
                }
            } else {
                if (isEventFlag(0)) {
                    eventInfo.onCondition(1);
                    fopAcM_orderSpeakEvent(this, 0, 0);
                    if (eventInfo.checkCommandTalk()) {
                        field_0x92C = 10;
                    }
                }
            }
        }
    }
}

/* 80947030-8094711C 0014B0 00EC+00 1/0 0/0 0/0 .text            greet_talk_init__8daMyna_cFv */
void daMyna_c::greet_talk_init() {
    dMsgObject_setTotalPayment(0);
    dMsgObject_setTotalPrice(0);
    field_0x922 = dMsgObject_getTotalPayment();
    field_0x920 = dMsgObject_getTotalPrice();
    dMsgObject_getMsgObjectClass()->setNowTotalPrice(0);
    dMsgObject_getMsgObjectClass()->setNowTotalPayment(0);

    switch (field_0x932) {
    case 0:
        field_0x91C = getFlowNodeNum();
        break;
    case 1:
        field_0x91C = getFlowNodeNum() + 1;
        break;
    case 2:
        field_0x91C = getFlowNodeNum() + 2;
        break;
    }

    setAnimeType(9, 0.0f);
    mMsgFlow.init(this, field_0x91C, 0, NULL);
}

/* 8094711C-809471BC 00159C 00A0+00 1/0 0/0 0/0 .text            greet_talk_move__8daMyna_cFv */
void daMyna_c::greet_talk_move() {
    if (eventInfo.checkCommandTalk() && mMsgFlow.doFlow(this, NULL, 0) != 0) {
        dComIfGp_event_reset();
            /* dSv_event_flag_c::F_0802 - Faron Woods - Trill attacks when stealing */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[802])) {
            field_0x937 = 20;
            field_0x92C = 19;
        } else {
            field_0x92C = 7;
        }
    }
}

/* 809471BC-809471E8 00163C 002C+00 1/0 0/0 0/0 .text            shopping_wait_init__8daMyna_cFv */
void daMyna_c::shopping_wait_init() {
    setAnimeType(1, 0.0f);
}

/* 809471E8-809475B4 001668 03CC+00 1/0 0/0 0/0 .text            shopping_wait_move__8daMyna_cFv */
void daMyna_c::shopping_wait_move() {
    if (!daPy_py_c::checkNowWolf()) {
            /* dSv_event_flag_c::F_0802 - Faron Woods - Trill attacks when stealing */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[802])) {
            field_0x92C = 17;
            field_0x937 = 20;
        } else {
            daPy_py_c* player = daPy_getPlayerActorClass();
            bool bVar1 = false;
            s16 nowTotalPrice = dMsgObject_getMsgObjectClass()->getNowTotalPrice();
            if (dMsgObject_getMsgObjectClass()->isPaymentFlag()) {
                eventInfo.onCondition(1);
                fopAcM_orderSpeakEvent(this, 0, 0);
                if (eventInfo.checkCommandTalk()) {
                    field_0x92C = 9;
                    dMsgObject_getMsgObjectClass()->offPaymentFlag();
                }
            } else {
                if (player->getGrabUpEnd()) {
                    for (int i = 0; i < 10; i++) {
                        if (mShopItems[i].mTargetActorID == player->getGrabActorID() &&
                            mShopItems[i].mItemStatus == 2)
                        {
                            dMsgObject_addTotalPrice(mShopItems[i].mValueNum);
                            field_0x931 = i;
                            if (mShopItems[i].mFlowNodeNum != 0xFFFF) {
                                eventInfo.onCondition(1);
                                fopAcM_orderSpeakEvent(this, 0, 0);
                            }
                        }
                    }
                }

                if (field_0x931 != 0xFF) {
                    if (mShopItems[field_0x931].mTargetActorID != player->getGrabActorID() &&
                        mShopItems[field_0x931].mItemStatus == 2)
                    {
                        dMsgObject_addTotalPrice(-mShopItems[field_0x931].mValueNum);
                        field_0x931 = -1;
                    }
                }

                     /* dSv_event_flag_c::F_0203 - Shop - First tried to steal from unnmaned shop (Havent checked donation box) */
                if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[203])
                    && daMyna_evtTagActor1 != NULL)
                {
                    cXyz stack_2c(1.0f, 1.0f, 1.0f);
                    if (chkPlayerInEvtArea(daMyna_evtTagActor1, stack_2c)) {
                        if (isEventFlag(0)) {
                            eventInfo.onCondition(1);
                            fopAcM_orderSpeakEvent(this, 0, 0);
                            bVar1 = true;
                            field_0x933 = 1;
                        } else if (field_0x931 != 0xFF && mShopItems[field_0x931].mItemStatus == 2)
                        {
                            eventInfo.onCondition(1);
                            fopAcM_orderSpeakEvent(this, 0, 0);
                            bVar1 = true;
                            field_0x933 = 1;
                        }
                    }
                }

                if (daMyna_evtTagActor0 != NULL) {
                    cXyz stack_38(1.0f, 1.0f, 1.0f);
                    if (!chkPlayerInEvtArea(daMyna_evtTagActor0, stack_38) && nowTotalPrice > 0) {
                        eventInfo.onCondition(1);
                        fopAcM_orderSpeakEvent(this, 0, 0);
                        bVar1 = true;
                    }
                } else if (fopAcM_searchPlayerDistanceXZ(this) > 450.0f) {
                    if (isEventFlag(0)) {
                        eventInfo.onCondition(1);
                        fopAcM_orderSpeakEvent(this, 0, 0);
                        bVar1 = true;
                    } else if (field_0x931 != 0xFF && mShopItems[field_0x931].mItemStatus == 2) {
                        eventInfo.onCondition(1);
                        fopAcM_orderSpeakEvent(this, 0, 0);
                        bVar1 = true;
                    }
                }

                if (eventInfo.checkCommandTalk()) {
                    if (!bVar1) {
                        field_0x92C = 8;
                    } else {
                        field_0x92C = 10;
                    }
                }
            }
        }
    }
}

/* 809475B4-80947630 001A34 007C+00 1/0 0/0 0/0 .text            shopping_talk_init__8daMyna_cFv */
void daMyna_c::shopping_talk_init() {
    field_0x828 = fopAcM_SearchByID(mShopItems[field_0x931].mTargetActorID);
    field_0x91C = mShopItems[field_0x931].mFlowNodeNum;
    mMsgFlow.init(this, field_0x91C, 0, NULL);
}

/* 80947630-809476A0 001AB0 0070+00 1/0 0/0 0/0 .text            shopping_talk_move__8daMyna_cFv */
void daMyna_c::shopping_talk_move() {
    if (eventInfo.checkCommandTalk() && mMsgFlow.doFlow(this, NULL, 0) != 0) {
        dComIfGp_event_reset();
        field_0x828 = NULL;
        field_0x92C = 7;
    }
}

/* 809476A0-8094772C 001B20 008C+00 1/0 0/0 0/0 .text            thanks_talk_init__8daMyna_cFv */
void daMyna_c::thanks_talk_init() {
    s16 nowTotalPayment = dMsgObject_getMsgObjectClass()->getNowTotalPayment();
    s16 nowTotalPrice = dMsgObject_getMsgObjectClass()->getNowTotalPrice();
    if (nowTotalPayment == nowTotalPrice) {
        field_0x91C = getFlowNodeNum() + 6;
    } else if (nowTotalPayment > nowTotalPrice) {
        field_0x91C = getFlowNodeNum() + 7;
    } else {
        field_0x91C = getFlowNodeNum() + 8;
    }
    mMsgFlow.init(this, field_0x91C, 0, NULL);
}

/* 8094772C-80947794 001BAC 0068+00 1/0 0/0 0/0 .text            thanks_talk_move__8daMyna_cFv */
void daMyna_c::thanks_talk_move() {
    if (eventInfo.checkCommandTalk() && mMsgFlow.doFlow(this, NULL, 0) != 0) {
        dComIfGp_event_reset();
        field_0x92C = 7;
    }
}

/* 80947794-809478D0 001C14 013C+00 1/0 0/0 0/0 .text            byebye_talk_init__8daMyna_cFv */
void daMyna_c::byebye_talk_init() {
    int var1 = dMsgObject_getTotalPayment() - field_0x922;
    if (var1 >= dMsgObject_getTotalPrice() - field_0x920) {
        field_0x932 = 0;
    } else if (var1 > 0) {
        field_0x932 = 1;
    } else {
        field_0x932 = 2;
    }

    switch (field_0x932) {
    case 0:
        field_0x91C = getFlowNodeNum() + 3;
        break;
    case 1:
        field_0x91C = getFlowNodeNum() + 4;
        break;
    case 2:
        field_0x91C = getFlowNodeNum() + 5;
        break;
    }

    if (field_0x933 == 0) {
        field_0x922 = dMsgObject_getTotalPayment();
        field_0x920 = dMsgObject_getTotalPrice();
        dMsgObject_getMsgObjectClass()->setNowTotalPrice(0);
        dMsgObject_getMsgObjectClass()->setNowTotalPayment(0);
        offEventFlag(0);
    }

    mMsgFlow.init(this, field_0x91C, 0, NULL);
}

/* 809478D0-80947A00 001D50 0130+00 1/0 0/0 0/0 .text            byebye_talk_move__8daMyna_cFv */
void daMyna_c::byebye_talk_move() {
    bool bVar1 = true;
    if (eventInfo.checkCommandTalk() && mMsgFlow.doFlow(this, NULL, 0) != 0) {
        if (field_0x933 == 0) {
            if (field_0x931 != 0xFF) {
                mShopItems[field_0x931].mItemStatus = 3;
                field_0x931 = -1;
            }
            for (int i = 0; i < mNumShopItems; i++) {
                if (mShopItems[i].mItemStatus == 2) {
                    bVar1 = false;
                }
            }
        } else {
            field_0x933 = 0;
            bVar1 = false;
        }

        dComIfGp_event_reset();
            /* dSv_event_flag_c::F_0802 - Faron Woods - Trill attacks when stealing */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[802])) {
            field_0x92C = 0x11;
            field_0x937 = 0x14;
        } else if (bVar1) {
            field_0x92C = 7;
        } else {
            field_0x92C = 7;
        }
    }
}

/* 80947A00-80947AA4 001E80 00A4+00 1/0 0/0 0/0 .text            turn_on_start_init__8daMyna_cFv */
void daMyna_c::turn_on_start_init() {
    setAnimeType(4, 0.0f);
    if (daMyna_LightActor->getTurnOnFlag()) {
        mCreature.startCreatureVoice(JAISoundID(Z2SE_MYNA_V_LIGHT_ON), -1);
    } else {
        mCreature.startCreatureVoice(JAISoundID(Z2SE_MYNA_V_LIGHT_OFF), -1);
    }
}

/* 80947AA4-80947CD0 001F24 022C+00 1/0 0/0 0/0 .text            turn_on_start_move__8daMyna_cFv */
void daMyna_c::turn_on_start_move() {
    cXyz stack_28;
    cXyz local_34;
    cXyz local_40;

    local_40.x = daMyna_LightActor->current.pos.x;
    local_40.y = current.pos.y;
    local_40.z = daMyna_LightActor->current.pos.z;

    cXyz local_4c = local_40 - current.pos;

    s16 sVar2 = cM_atan2s(local_4c.x, local_4c.z);
    f32 fVar1 = 0.5f * ((field_0x82C.y - field_0x844.y) + (field_0x838.y - field_0x850.y));

    local_34.x = 0.0f;
    local_34.y = 0.0f;
    local_34.z = l_HOSTIO.field_0x0C * (fVar1 * fVar1);

    cLib_offsetPos(&stack_28, &current.pos, sVar2, &local_34);
    current.pos = stack_28;

    cXyz stack_58 = local_40 - current.pos;

    if (stack_58.abs() < l_HOSTIO.field_0x1C) {
        field_0x92C = 12;
    }
}

/* 80947CD0-80947CFC 002150 002C+00 1/0 0/0 0/0 .text            turn_on_init__8daMyna_cFv */
void daMyna_c::turn_on_init() {
    setAnimeType(7, 0.0f);
}

/* 80947CFC-80947D48 00217C 004C+00 1/0 0/0 0/0 .text            turn_on_move__8daMyna_cFv */
void daMyna_c::turn_on_move() {
    if (field_0x91E != 0) {
        daMyna_LightActor->setTurnOnOffChange();
        field_0x92C = 13;
    }
}

/* 80947D48-80947D74 0021C8 002C+00 1/0 0/0 0/0 .text            turn_on_end1_init__8daMyna_cFv */
void daMyna_c::turn_on_end1_init() {
    setAnimeType(4, 0.0f);
}

/* 80947D74-80947E18 0021F4 00A4+00 1/0 0/0 0/0 .text            turn_on_end1_move__8daMyna_cFv */
void daMyna_c::turn_on_end1_move() {
    cXyz local_18 = home.pos - current.pos;
    s16 sVar2 = cM_atan2s(local_18.x, local_18.z);
    cLib_addCalcAngleS(&current.angle.y, sVar2, l_HOSTIO.field_0x26, l_HOSTIO.field_0x28,
                       l_HOSTIO.field_0x2A);

    if (abs(current.angle.y - sVar2) <= 16) {
        current.angle.y = sVar2;
        field_0x92C = 14;
    }
}

/* 80947E18-80947E50 002298 0038+00 1/0 0/0 0/0 .text            turn_on_end2_init__8daMyna_cFv */
void daMyna_c::turn_on_end2_init() {
    if (field_0x935 != 4) {
        setAnimeType(4, 0.0f);
    }
}

/* 80947E50-80948070 0022D0 0220+00 1/0 0/0 0/0 .text            turn_on_end2_move__8daMyna_cFv */
void daMyna_c::turn_on_end2_move() {
    cXyz stack_24;
    cXyz local_30;
    cXyz local_3c = home.pos - current.pos;

    s16 sVar2 = cM_atan2s(local_3c.x, local_3c.z);
    f32 fVar1 = ((field_0x82C.y - field_0x844.y) + (field_0x838.y - field_0x850.y)) * 0.5f;

    local_30.x = 0.0f;
    local_30.y = 0.0f;
    local_30.z = l_HOSTIO.field_0x0C * (fVar1 * fVar1);

    cLib_offsetPos(&stack_24, &current.pos, sVar2, &local_30);
    current.pos = stack_24;

    cXyz stack_48 = home.pos - current.pos;

    if (stack_48.abs() < l_HOSTIO.field_0x20) {
        current.pos.set(home.pos);
        field_0x92C = 15;
    }
}

/* 80948070-80948074 0024F0 0004+00 1/0 0/0 0/0 .text            turn_on_end3_init__8daMyna_cFv */
void daMyna_c::turn_on_end3_init() {
    /* empty function */
}

/* 80948074-809480E4 0024F4 0070+00 1/0 0/0 0/0 .text            turn_on_end3_move__8daMyna_cFv */
void daMyna_c::turn_on_end3_move() {
    cLib_addCalcAngleS(&current.angle.y, home.angle.y, l_HOSTIO.field_0x26, l_HOSTIO.field_0x28,
                       l_HOSTIO.field_0x2A);

    if (abs(current.angle.y - home.angle.y) <= 16) {
        current.angle.y = home.angle.y;
        field_0x92C = field_0x92D;
    }
}

/* 809480E4-80948118 002564 0034+00 1/0 0/0 0/0 .text            wolf_talk_init__8daMyna_cFv */
void daMyna_c::wolf_talk_init() {
    mMsgFlow.init(this, 0xC9, 0, NULL);
}

/* 80948118-80948174 002598 005C+00 1/0 0/0 0/0 .text            wolf_talk_move__8daMyna_cFv */
void daMyna_c::wolf_talk_move() {
    if (mMsgFlow.doFlow(this, NULL, 0) != 0) {
        dComIfGp_event_reset();
        field_0x92C = field_0x92E;
    }
}

/* 80948174-809481B4 0025F4 0040+00 1/0 0/0 0/0 .text            attack_wait2_init__8daMyna_cFv */
void daMyna_c::attack_wait2_init() {
    setAnimeType(1, 0.0f);
    field_0x92A = 0;
}


/* 809481B4-80948388 002634 01D4+00 1/0 0/0 0/0 .text            attack_wait2_move__8daMyna_cFv */
void daMyna_c::attack_wait2_move() {
    if (daPy_py_c::checkNowWolf()) {
        field_0x92C = 7;
    } else {
        if (current.angle.y != home.angle.y) {
            cLib_addCalcAngleS(&current.angle.y, home.angle.y, 4, 0x7FFF, 0x5DC);
            cLib_addCalcAngleS(&current.angle.x, home.angle.x, 4, 0x7FFF, 0x5DC);
            if (abs(s16(current.angle.y - home.angle.y)) < 128) {
                current.angle = home.angle;
            }
        }

        if (daMyna_evtTagActor0 != NULL) {
            cXyz stack_1c(1.0f, 1.0f, 1.0f);
                /* dSv_event_flag_c::F_0802 - Faron Woods - Trill attacks when stealing */
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[802])) {
                if (chkPlayerInEvtArea(daMyna_evtTagActor0, stack_1c)) {
                    field_0x937 = 20;
                    field_0x92C = 19;
                }
            } else {
                if (field_0x939 == 1) {
                    current.angle = home.angle;
                    eventInfo.onCondition(1);
                    fopAcM_orderSpeakEvent(this, 0, 0);
                    if (eventInfo.checkCommandTalk()) {
                        field_0x92C = 21;
                    }
                } else if (field_0x92A < l_HOSTIO.field_0x24) {
                    field_0x92A++;
                } else {
                    field_0x92C = 7;
                }
            }
        }
    }
}


/* 80948388-809483DC 002808 0054+00 1/0 0/0 0/0 .text attack_before_talk2_init__8daMyna_cFv */
void daMyna_c::attack_before_talk2_init() {
    mMsgFlow.init(this, field_0x91C, 0, NULL);
    setAnimeType(10, 0.0f);
}

/* 809483DC-80948444 00285C 0068+00 1/0 0/0 0/0 .text attack_before_talk2_move__8daMyna_cFv */
void daMyna_c::attack_before_talk2_move() {
    if (eventInfo.checkCommandTalk() && mMsgFlow.doFlow(this, NULL, 0) != 0) {
        dComIfGp_event_reset();
        field_0x92C = 19;
    }
}

/* 80948444-80948484 0028C4 0040+00 1/0 0/0 0/0 .text            attack_fly2_init__8daMyna_cFv */
void daMyna_c::attack_fly2_init() {
    setAnimeType(0, 0.0f);
    field_0x91A = 0;
}

/* 80948484-80948600 002904 017C+00 1/0 0/0 0/0 .text            attack_fly2_move__8daMyna_cFv */
void daMyna_c::attack_fly2_move() {
    if (daMyna_evtTagActor0 != NULL) {
        cXyz stack_2c(1.0f, 1.0f, 1.0f);
        fly_body_wave();

        if (field_0x926 > 0 && field_0x937 == 0) {
            field_0x926 = 0;
        }

        if (dMsgObject_getTotalPayment() > field_0x922) {
            field_0x937 = 0;
            /* dSv_event_flag_c::F_0802 - Faron Woods - Trill attacks when stealing */
            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[802]);
            field_0x939 = 1;
        }

        if (chkPlayerInEvtArea(daMyna_evtTagActor0, stack_2c) && !daPy_py_c::checkNowWolf() &&
            field_0x937 != 0 && field_0x926 == 0)
        {
            mStatus.Move();
            if (fly_attack_move()) {
                field_0x92C = 20;
            }
        } else if (fly_return_move()) {
            if (field_0x937 == 0) {
                /* dSv_event_flag_c::F_0802 - Faron Woods - Trill attacks when stealing */
                dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[802]);
            }
            field_0x92C = 17;
        }
    }
}

/* 80948600-80948644 002A80 0044+00 1/0 0/0 0/0 .text            attack2_init__8daMyna_cFv */
void daMyna_c::attack2_init() {
    setAnimeType(8, 0.0f);
    mSph.OnAtVsPlayerBit();
}

/* 80948644-809486F8 002AC4 00B4+00 1/0 0/0 0/0 .text            attack2_move__8daMyna_cFv */
void daMyna_c::attack2_move() {
    mStatus.Move();
    if (field_0x91E != 0) {
        field_0x92C = 19;
    }

    if (mSph.ChkAtHit()) {
        field_0x926 = l_HOSTIO.field_0x30;
        mSph.OffAtVsPlayerBit();
        if (field_0x937 != 0) {
            field_0x937--;
            if (dComIfGs_getLife() <= 1) {
                /* dSv_event_flag_c::F_0802 - Faron Woods - Trill attacks when stealing */
                dComIfGs_offEventBit(dSv_event_flag_c::saveBitLabels[802]);
                field_0x937 = 0;
            }
        }
    }
}

/* 809486F8-80948734 002B78 003C+00 1/0 0/0 0/0 .text            attack2_talk_init__8daMyna_cFv */
void daMyna_c::attack2_talk_init() {
    field_0x91C = 214;
    mMsgFlow.init(this, field_0x91C, 0, NULL);
}

/* 80948734-809487EC 002BB4 00B8+00 1/0 0/0 0/0 .text            attack2_talk_move__8daMyna_cFv */
void daMyna_c::attack2_talk_move() {
    if (eventInfo.checkCommandTalk() && mMsgFlow.doFlow(this, NULL, 0) != 0) {
        dComIfGp_event_reset();
        field_0x828 = NULL;
        field_0x92C = 7;
        dMsgObject_setTotalPayment(0);
        dMsgObject_setTotalPrice(0);
        field_0x922 = dMsgObject_getTotalPayment();
        field_0x920 = dMsgObject_getTotalPrice();
        dMsgObject_getMsgObjectClass()->setNowTotalPrice(0);
        dMsgObject_getMsgObjectClass()->setNowTotalPayment(0);
        dMsgObject_getMsgObjectClass()->offPaymentFlag();
        field_0x939 = 0;
    }
}

/* 809487EC-80948828 002C6C 003C+00 0/0 0/0 2/2 .text            soldoutItem__8daMyna_cFUi */
void daMyna_c::soldoutItem(fpc_ProcID i_itemId) {
    for (int i = 0; i < mNumShopItems; i++) {
        if (i_itemId == mShopItems[i].mTargetActorID) {
            mShopItems[i].mItemStatus = 3;
        }
    }
}

/* 80948828-80948ADC 002CA8 02B4+00 2/2 0/0 0/0 .text            fly_attack_move__8daMyna_cFv */
bool daMyna_c::fly_attack_move() {
    daPy_py_c* playerActorClass = daPy_getPlayerActorClass();
    cXyz local_28;
    cXyz stack_34;
    cXyz stack_40;
    cXyz stack_4c;
    cXyz stack_58;

    stack_34.set(playerActorClass->getHeadTopPos());
    stack_34.y += l_HOSTIO.field_0x14;
    stack_40.set(field_0x85C);
    stack_4c = current.pos - stack_40;
    local_28 = stack_34 - stack_40;

    f32 fVar4 = JMAFastSqrt(local_28.x * local_28.x + local_28.z * local_28.z);
    s16 sVar1 = -cM_atan2s(local_28.y, fVar4);
    s16 sVar2 = cM_atan2s(local_28.x, local_28.z);
    cLib_addCalcAngleS(&current.angle.y, sVar2, 4, 0x7FFF, 0x5DC);
    cLib_addCalcAngleS(&current.angle.x, sVar1, 4, 0x7FFF, 0x5DC);
    cLib_addCalcPos2(&stack_40, stack_34, 0.5f, 15.0f);
    stack_58 = stack_34 - stack_40;
    current.pos = stack_40 + stack_4c;
    return stack_58.abs() < l_HOSTIO.field_0x18;
}

/* 80948ADC-80948DFC 002F5C 0320+00 2/2 0/0 0/0 .text            fly_return_move__8daMyna_cFv */
bool daMyna_c::fly_return_move() {
    cXyz local_30, stack_3c;
    if (field_0x926 > 0) {
        daPy_py_c* playerActorClass = daPy_getPlayerActorClass();
        stack_3c.set(playerActorClass->getHeadTopPos());

        local_30 = stack_3c - current.pos;
        f32 fVar4 = JMAFastSqrt(local_30.x * local_30.x + local_30.z * local_30.z);
        s16 sVar1 = -cM_atan2s(local_30.y, fVar4);
        s16 sVar2 = cM_atan2s(local_30.x, local_30.z);

        cLib_addCalcAngleS(&current.angle.y, sVar2, 4, 0x7FFF, 0x5DC);
        cLib_addCalcAngleS(&current.angle.x, sVar1, 4, 0x7FFF, 0x5DC);
        cLib_addCalcPos2(&current.pos, home.pos, 0.001f, 100.0f);

    } else {
        cXyz stack_48 = home.pos;
        local_30 = stack_48 - current.pos;
        f32 fVar4 = JMAFastSqrt(local_30.x * local_30.x + local_30.z * local_30.z);
        s16 sVar1 = -cM_atan2s(local_30.y, fVar4);
        s16 sVar2 = cM_atan2s(local_30.x, local_30.z);

        cLib_addCalcAngleS(&current.angle.y, sVar2, 4, 0x7FFF, 0x5DC);
        cLib_addCalcAngleS(&current.angle.x, sVar1, 4, 0x7FFF, 0x5DC);
        cLib_addCalcPos2(&current.pos, stack_48, 0.5f, 25.0f);

        cXyz local_44 = stack_48 - current.pos;
        if (local_44.abs() < 3.0f) {
            current.pos.set(home.pos);
            return true;
        }
    }
    return false;
}

/* 80948DFC-80948E84 00327C 0088+00 2/2 0/0 0/0 .text            fly_body_wave__8daMyna_cFv */
void daMyna_c::fly_body_wave() {
    if (field_0x935 == 0) {
        field_0x91A = field_0x91A + l_HOSTIO.field_0x2E;
        f32 fVar1 = cM_scos(field_0x91A) * l_HOSTIO.field_0x2C;
        current.pos.y += fVar1;
        field_0x85C.y += fVar1;
    }
}

/* 80948E84-80948FAC 003304 0128+00 1/1 0/0 0/0 .text            talkAnime__8daMyna_cFP9msg_class */
void daMyna_c::talkAnime(msg_class* param_0) {
    u32 uVar4 = 0;
    if (param_0 != NULL && this == dComIfGp_event_getTalkPartner()) {
        switch (param_0->mode) {
        case 2:
            field_0x81C = 1;
            break;
        default:
            if (param_0->msg_idx != field_0x824) {
                field_0x81C = 1;
            }
        }

        if (param_0->mode == 6 && field_0x81C != 0) {
            field_0x81C = 0;
            field_0x820 = dComIfGp_getMesgAnimeAttrInfo();
            field_0x824 = param_0->msg_idx;
            uVar4 = 1;
        }
    }

    if (field_0x824 != 0 && field_0x820 >= 0 && field_0x820 < 7 &&
        mBaseMotionTBL[field_0x820] != NULL)
    {
        (this->*mBaseMotionTBL[field_0x820])(uVar4);
    }
}

/* 80948FAC-809490B8 00342C 010C+00 1/1 0/0 0/0 .text            chkEvent__8daMyna_cFv */
int daMyna_c::chkEvent() {
    int retVal = 1;
    if (daPy_py_c::checkNowWolf()) {
        if (!dComIfGp_getEvent().isOrderOK()) {
            retVal = 0;
            if (eventInfo.checkCommandTalk()) {
                if (field_0x92C == 0x10) {
                    (this->*move_proc[field_0x92C])();
                    retVal = 0;
                } else {
                    if (dComIfGp_event_chkTalkXY() == 0 || dComIfGp_evmng_ChkPresentEnd()) {
                        field_0x92E = field_0x92C;
                        field_0x92C = 0x10;
                        retVal = 0;
                    }
                }
                return retVal;
            }
        }
    }
    return retVal;
}

/* 809490B8-80949128 003538 0070+00 2/1 0/0 0/0 .text            orderEvent__8daMyna_cFv */
int daMyna_c::orderEvent() {
    if (daPy_py_c::checkNowWolf()) {
        switch (field_0x92C) {
        case 0:
        case 5:
        case 7:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
            attention_info.flags = 10;
        }
        if (attention_info.flags == 10) {
            attention_info.distances[fopAc_attn_TALK_e] = 0x8B;
            attention_info.distances[fopAc_attn_SPEAK_e] = 0x8B;
            eventInfo.onCondition(1);
        }
    }
    return 1;
}

/* 80949128-80949144 0035A8 001C+00 1/1 0/0 0/0 .text            deleteItem__8daMyna_cFi */
void daMyna_c::deleteItem(int i_itemIndex) {
    mShopItems[i_itemIndex].mTargetActorID = -1;
    mShopItems[i_itemIndex].mItemStatus = 4;
}

// this seems to be missing in the final REL??
/* 80949144-80949190 0035C4 004C+00 0/0 0/0 0/0 .text            deleteItem__8daMyna_cFUi */
void daMyna_c::deleteItem(fpc_ProcID i_itemId) {
    for (int i = 0; i < mNumShopItems; i++) {
        if (i_itemId == mShopItems[i].mTargetActorID) {
            mShopItems[i_itemId].mTargetActorID = -1;
            mShopItems[i_itemId].mItemStatus = 4;
        }
    }
}

/* 80949190-80949408 003610 0278+00 1/1 0/0 0/0 .text            initiate__8daMyna_cFv */
void daMyna_c::initiate() {
    for (int i = 0; i < 10; i++) {
        mShopItems[i].mTargetActorID = -1;
        mShopItems[i].mSubActorID = -1;
        mShopItems[i].mFlowNodeNum = 0;
        mShopItems[i].mValueNum = 0;
        mShopItems[i].mItemStatus = 0;
        mShopItems[i].mItemType = 0xF;
    }
    if (dComIfGs_isSaveSwitch(0x3C)) {
        field_0x91C = 0x139;
        field_0x92C = 5;
    } else {
        field_0x91C = 200;
        field_0x92C = 0;
    }
    field_0x92D = field_0x92C;
    field_0x92E = field_0x92C;
    field_0x920 = 0;
    field_0x922 = 0;

         /* dSv_event_flag_c::F_0802 - Faron Woods - Trill attacks when stealing */
    if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[802])) {
        field_0x932 = 0;
        field_0x938 = 0;
    } else {
        field_0x932 = 2;
        field_0x938 = 1;
    }

    field_0x939 = 0;
    field_0x937 = 0;
    field_0x935 = 1;
    field_0x934 = 1;
    field_0x90C = 0.0f;
    field_0x910 = 0.0f;
    field_0x924 = cM_rndF(200.0f) + 200.0f;
    field_0x933 = 0;
    field_0x908 = -1;
    field_0x91E = 0;
    field_0x92F = 0;
    mNumShopItems = getItemNumMax();
    field_0x931 = -1;
    field_0x828 = NULL;
    field_0x926 = 0;
    field_0x92A = 0;
    field_0x82C.set(0.0f, 0.0f, 0.0f);
    field_0x838.set(0.0f, 0.0f, 0.0f);
    field_0x85C.set(0.0f, 0.0f, 0.0f);
    field_0x844.set(0.0f, 0.0f, 0.0f);
    field_0x850.set(0.0f, 0.0f, 0.0f);
    (this->*init_proc[field_0x92C])();
    field_0x928 = current.angle.y;
    current.angle.x = 0;
    current.angle.z = 0;
    mStatus.Init(100, 0, this);
    mSph.Set(mCcDSph);
    mSph.SetStts(&mStatus);
    mSph.OffAtVsPlayerBit();
    setMcaMorfAnm(getTrnsfrmKeyAnm(l_bckFileNameTBL[1]), 1.0f, 0.0f, 2, 0, -1);
}

/* 80949408-80949544 003888 013C+00 1/1 0/0 0/0 .text            setItemInfo__8daMyna_cFv */
void daMyna_c::setItemInfo() {
    if (daMyna_actor_count != -1 && mNumShopItems > daMyna_actor_count) {
        daMyna_actor_count = 0;
        fpcM_Search(daMyna_searchSSItem, this);
    }
    if (daMyna_evtTagActor0 == NULL) {
        fpcM_Search(daMyna_searchEvtTag, this);
    }
    if (daMyna_actor_count != -1 && mNumShopItems <= daMyna_actor_count) {
        for (int i = 0; i < mNumShopItems; i++) {
            daObj_SSBase_c* subActor = static_cast<daObj_SSBase_c*>(daMyna_subActor[i]);
            subActor->setParentPtr(this);
            mShopItems[i].mTargetActorID = fopAcM_GetID(daMyna_targetActor[i]);
            mShopItems[i].mSubActorID = fopAcM_GetID(daMyna_subActor[i]);
            mShopItems[i].mFlowNodeNum = subActor->getFlowNodeNumber();
            mShopItems[i].mValueNum = subActor->getValueNumber();
            mShopItems[i].mItemType = getItemType(subActor);
            mShopItems[i].mItemStatus = 2;
        }
        daMyna_actor_count = -1;
    }
}

/* 80949544-80949588 0039C4 0044+00 2/2 0/0 0/0 .text            setRoomNo__8daMyna_cFv */
void daMyna_c::setRoomNo() {
    s32 roomId = dComIfG_Bgsp().GetRoomId(mGndChk);
    fopAcM_SetRoomNo(this, roomId);
    mStatus.SetRoomId(roomId);
}

/* 80949588-809495E0 003A08 0058+00 1/1 0/0 0/0 .text            setCollision__8daMyna_cFv */
void daMyna_c::setCollision() {
    mSph.SetC(field_0x85C);
    mSph.SetR(15.0f);
    dComIfG_Ccsp()->Set(&mSph);
}

/* 809495E0-80949744 003A60 0164+00 1/1 0/0 0/0 .text            set_mtx__8daMyna_cFv */
void daMyna_c::set_mtx() {
    J3DModel* model = mpMorf->getModel();
    cXyz local_18(current.pos);
    scale.set(l_HOSTIO.field_0x04, l_HOSTIO.field_0x04, l_HOSTIO.field_0x04);
    mDoMtx_stack_c::transS(local_18);
    mDoMtx_stack_c::ZXYrotM(current.angle);
    mDoMtx_stack_c::scaleM(scale);
    model->setBaseTRMtx(mDoMtx_stack_c::get());
    mpMorf->modelCalc();
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&field_0x82C);
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(4));
    mDoMtx_stack_c::multVecZero(&field_0x838);
    mDoMtx_stack_c::copy(mpMorf->getModel()->getAnmMtx(0x10));
    mDoMtx_stack_c::multVecZero(&field_0x85C);
    field_0x82C -= current.pos;
    field_0x838 -= current.pos;
}

/* 80949744-8094983C 003BC4 00F8+00 1/1 0/0 0/0 .text            animePlay__8daMyna_cFv */
void daMyna_c::animePlay() {
    f32 speed = mpMorf->getPlaySpeed();
    mpMorf->play(0, 0);
    if (checkEndAnm(speed) != 0) {
        field_0x91E += 1;
    }

    if (cLib_checkBit<u16>(field_0x914, 0x40) != 0 && cLib_checkBit<u16>(field_0x914, 4) == 0) {
        mBtpAnm.play();
        if (mBtpAnm.getFrameCtrl()->getAttribute() == 2) {
            if (checkEndAnm(mBtpAnm.getFrameCtrl()) != 0) {
                field_0x918 = cLib_getRndValue(0x3C, 100);
                mBtpAnm.setPlaySpeed(0.0f);
            }
        } else {
            field_0x918 = 0;
        }
        if (cLib_calcTimer(&field_0x918) == 0) {
            mBtpAnm.setPlaySpeed(1.0f);
        }
    }
    cLib_offBit<u16>(field_0x914, 0xF);
}

/* 8094983C-809498B8 003CBC 007C+00 2/2 0/0 0/0 .text
 * setMcaMorfAnm__8daMyna_cFP18J3DAnmTransformKeyffiii          */
int daMyna_c::setMcaMorfAnm(J3DAnmTransformKey* i_anm, f32 i_rate, f32 i_morf, int i_attr,
                            int i_start, int i_end) {
    mpMorf->setAnm(i_anm, i_attr, i_morf, i_rate, i_start, i_end);
    field_0x91E = 0;
    return 1;
}


/* 809498B8-809498F8 003D38 0040+00 2/2 0/0 0/0 .text
 * setBtpAnm__8daMyna_cFP16J3DAnmTexPatternP12J3DModelDatafi    */
void daMyna_c::setBtpAnm(J3DAnmTexPattern* i_btk, J3DModelData* param_1, f32 i_rate,
                         int i_attribute) {
    mBtpAnm.init(&param_1->getMaterialTable(), i_btk, 1, i_attribute, i_rate, 0, -1);
}

/* 809498F8-80949948 003D78 0050+00 2/2 0/0 0/0 .text            getTrnsfrmKeyAnm__8daMyna_cFPc */
J3DAnmTransformKey* daMyna_c::getTrnsfrmKeyAnm(char* i_resName) {
    J3DAnmTransformKey* key;
    if (i_resName != NULL) {
        key = static_cast<J3DAnmTransformKey*>(dComIfG_getObjectRes("Npc_myna", i_resName));
    } else {
        key = NULL;
    }
    return key;
}

/* 80949948-80949998 003DC8 0050+00 2/2 0/0 0/0 .text            getTexPtrnAnm__8daMyna_cFPc */
J3DAnmTexPattern* daMyna_c::getTexPtrnAnm(char* i_resName) {
    J3DAnmTexPattern* pattern;
    if (i_resName != NULL) {
        pattern = static_cast<J3DAnmTexPattern*>(dComIfG_getObjectRes("Npc_myna", i_resName));
    } else {
        pattern = NULL;
    }
    return pattern;
}

/* 80949998-80949A70 003E18 00D8+00 1/1 0/0 0/0 .text            checkEndAnm__8daMyna_cFf */
int daMyna_c::checkEndAnm(f32 param_0) {
    bool retVal;
    switch (mpMorf->getPlayMode()) {
    case 2:
        return mpMorf->isLoop();
    case 0:
    case 1:
        return mpMorf->isStop() && mpMorf->getPlaySpeed() != param_0;
    case 3:
    case 4:
        return mpMorf->isStop() && mpMorf->getPlaySpeed() != param_0;
    default:
        return false;
    }
}

/* 80949A70-80949AD4 003EF0 0064+00 1/1 0/0 0/0 .text checkEndAnm__8daMyna_cFP12J3DFrameCtrl */
int daMyna_c::checkEndAnm(J3DFrameCtrl* param_0) {
    switch (param_0->getAttribute()) {
    case 2:
        return param_0->checkState(2);
    case 0:
    case 1:
        u8 retVal = 1;
        if (param_0->checkState(1) == 0 && param_0->getRate() != 0.0f) {
            retVal = 0;
        }
        return retVal;
    case 3:
    default:
        return 0;
    }
}

/* 80949AD4-80949AE0 003F54 000C+00 1/1 0/0 0/0 .text            getItemNumMax__8daMyna_cFv */
int daMyna_c::getItemNumMax() {
    return (fopAcM_GetParam(this) >> 0x18) & 0xF;
}

/* 80949AE0-80949C0C 003F60 012C+00 1/1 0/0 0/0 .text            getItemType__8daMyna_cFPv */
int daMyna_c::getItemType(void* param_0) {
    int itemType = 0xF;
    u8 uVar1 = fopAcM_GetParam(param_0) & 0xFF;

    if (fopAcM_GetName(param_0) == PROC_OBJ_SSITEM) {
        switch (uVar1) {
        case 0:
            itemType = 1;
            break;
        case 1:
            itemType = 2;
            break;
        case 2:
            itemType = 0;
            break;
        }
    } else if (fopAcM_GetName(param_0) == PROC_OBJ_SSDRINK) {
        switch (uVar1) {
        case 0:
            itemType = 3;
            break;
        case 1:
            itemType = 4;
            break;
        case 2:
            itemType = 5;
            break;
        case 3:
            itemType = 6;
            break;
        case 4:
            itemType = 7;
            break;
        case 5:
            itemType = 8;
            break;
        }
    } else if (fopAcM_GetName(param_0) == PROC_TAG_SSDRINK) {
        switch (uVar1) {
        case 0:
            itemType = 9;
            break;
        case 1:
            itemType = 10;
            break;
        case 2:
            itemType = 11;
            break;
        case 3:
            itemType = 12;
            break;
        case 4:
            itemType = 13;
            break;
        case 5:
            itemType = 14;
            break;
        }
    }

    return itemType;
}

/* 80949C0C-80949C44 00408C 0038+00 3/3 0/0 0/0 .text            getFlowNodeNum__8daMyna_cFv */
u16 daMyna_c::getFlowNodeNum() {
    u16 num = home.angle.x;
    bool bVar1 = false;
    if (num == 0xFFFF || num == 0) {
        bVar1 = true;
    }

    int num2;
    if (!bVar1) {
        num2 = num;
    } else {
        num2 = -1;
    }

    return num2;
}

/* 80949C44-80949D54 0040C4 0110+00 1/1 0/0 0/0 .text            checkDead__8daMyna_cFv */
void daMyna_c::checkDead() {
    for (int i = 0; i < 10; i++) {
        if (mShopItems[i].mItemStatus == 2 && !fopAcM_IsExecuting(mShopItems[i].mTargetActorID)) {
            deleteItem(i);
            onEventFlag(0);
            dMsgObject_addTotalPrice(mShopItems[i].mValueNum);
            fopAcM_delete(mShopItems[i].mSubActorID);
            cXyz var1(1.0f, 1.0f, 1.0f);
            if (daMyna_evtTagActor0 == NULL ||
                (daMyna_evtTagActor0 != NULL && !chkPlayerInEvtArea(daMyna_evtTagActor0, var1)))
            {
                     /* dSv_event_flag_c::F_0203 - Shop - First tried to steal from unnmaned shop (Havent checked donation box) */
                if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[203])) {
                    dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[203]);
                }
            }
        }
    }
}


/* 80949D54-80949EE8 0041D4 0194+00 7/7 0/0 0/0 .text
 * chkPlayerInEvtArea__8daMyna_cFP10fopAc_ac_c4cXyz             */
int daMyna_c::chkPlayerInEvtArea(fopAc_ac_c* param_0, cXyz param_1) {
    int retVal = 0;
    cXyz local_60;
    cXyz local_6c;

    if (param_0 != NULL) {
        mDoMtx_stack_c::YrotS(-param_0->current.angle.y);
        mDoMtx_stack_c::transM(-param_0->current.pos.x, -param_0->current.pos.y,
                               -param_0->current.pos.z);
        mDoMtx_stack_c::multVec(&daPy_getPlayerActorClass()->current.pos, &local_6c);
        f32 fVar1 = fabsf(param_0->scale.x + param_1.x);
        f32 fVar2 = fabsf(param_0->scale.z + param_1.z);
        f32 fVar3 = fabsf(local_6c.x);
        f32 fVar4 = fabsf(local_6c.z);
        local_60 = param_0->current.pos - daPy_getPlayerActorClass()->current.pos;
        if ((fVar3 * fVar3) / (fVar1 * fVar1) + (fVar4 * fVar4) / (fVar2 * fVar2) <= 1.0f &&
            -(param_0->scale.y + param_1.y) < local_60.y &&
            local_60.y < (param_0->scale.y + param_1.y))
        {
            retVal = 1;
        }
    }

    return retVal;
}

/* 80949EE8-8094A054 004368 016C+00 2/1 0/0 0/0 .text            animeControl__8daMyna_cFv */
// NONMATCHING regswap
void daMyna_c::animeControl() {
    f32 rate = 1.0f;
    int attr = J3DFrameCtrl::EMode_LOOP;
    f32 morf = field_0x90C;
    switch (field_0x935) {
    case 1:
        if (field_0x934 == 4) {
            morf = 6.0f;
        }
        break;
    case 2:
        attr = J3DFrameCtrl::EMode_NONE;
        break;
    case 3:
        attr = J3DFrameCtrl::EMode_NONE;
        break;
    case 4:
        rate = l_HOSTIO.field_0x08;
        break;
    case 7:
        attr = J3DFrameCtrl::EMode_NONE;
        morf = 6.0f;
        break;
    case 8:
        attr = J3DFrameCtrl::EMode_NONE;
        break;
    case 13:
        attr = J3DFrameCtrl::EMode_NONE;
        break;
    case 14:
        break;
    }

    J3DAnmTransformKey* anm = getTrnsfrmKeyAnm(l_bckFileNameTBL[field_0x935]);
    setMcaMorfAnm(anm, rate, morf, attr, 0, -1);
    if (cLib_checkBit<u16>((u16)field_0x914, 0x40) == 0) {
        int attribute = 2;
        J3DAnmTexPattern* btp = getTexPtrnAnm(l_btpFileNameTBL[field_0x936]);
        if (btp != NULL) {
            setBtpAnm(btp, mpMorf->getModel()->getModelData(), 1.0f, attribute);
            cLib_onBit<u16>(field_0x914, 0x44);
        }
    }
}

/* 8094A054-8094A098 0044D4 0044+00 24/24 0/0 0/0 .text            setAnimeType__8daMyna_cFUcf */
void daMyna_c::setAnimeType(u8 param_0, f32 param_1) {
    if (param_0 == 13 || param_0 == 1 || (param_0 == 14 && field_0x935 != 13)) {
        param_1 = 6.0f;
    }
    field_0x934 = field_0x935;
    field_0x935 = param_0;
    field_0x90C = param_1;
}


/* 8094A098-8094A608 004518 0570+00 1/1 0/0 0/0 .text            playDefaultWaitAnime__8daMyna_cFv
 */
void daMyna_c::playDefaultWaitAnime() {
    switch (field_0x935) {
    case 2:
    case 3:
        if (field_0x91E != 0) {
            setAnimeType(1, 0.0f);
        }
        break;
    case 6: {
        cXyz local_58;
        cXyz local_64;
        cXyz stack_70;

        local_58.x = daMyna_LightActor->current.pos.x;
        local_58.y = home.pos.y;
        local_58.z = daMyna_LightActor->current.pos.z;

        cXyz stack_7c = local_58 - home.pos;

        s16 sVar42 = cM_atan2s(stack_7c.x, stack_7c.z);
        f32 fVar7 = field_0x910 * stack_7c.abs();
        f32 fVar3 = ((field_0x82C.y - field_0x844.y) + (field_0x838.y - field_0x850.y)) * 0.5f;

        local_64.x = 0.0f;
        local_64.y = 0.0f;
        local_64.z = l_HOSTIO.field_0x10 * (fVar3 * fVar3);

        cLib_offsetPos(&stack_70, &current.pos, sVar42, &local_64);
        current.pos = stack_70;

        cXyz stack_88 = current.pos - home.pos;
        if (stack_88.abs() > fVar7) {
            setAnimeType(1, 6.0f);
        }
        break;
    }
    case 5:
        cXyz local_94;
        cXyz stack_a0;
        cXyz local_ac = home.pos - current.pos;

        s16 sVar4 = cM_atan2s(local_ac.x, local_ac.z);
        f32 fVar2 = ((field_0x82C.y - field_0x844.y) + (field_0x838.y - field_0x850.y)) * 0.5f;

        local_94.x = 0.0f;
        local_94.y = 0.0f;
        local_94.z = l_HOSTIO.field_0x10 * (fVar2 * fVar2);

        cLib_offsetPos(&stack_a0, &current.pos, sVar4, &local_94);
        current.pos = stack_a0;

        cXyz stack_b8 = home.pos - current.pos;

        if (stack_b8.abs() < l_HOSTIO.field_0x20) {
            current.pos.set(home.pos);
            setAnimeType(1, 6.0f);
        }
        break;
    }
}

/* 8094A608-8094A890 004A88 0288+00 1/1 0/0 0/0 .text            setDefaultWaitAnime__8daMyna_cFUc
 */
void daMyna_c::setDefaultWaitAnime(u8 param_0) {
    if (daMyna_LightActor != NULL && field_0x935 == 1 &&
        (field_0x92C == 0 || field_0x92C == 5 || field_0x92C == 7) &&
        daMyna_LightActor->field_0x578 != daMyna_LightActor->mTurnOnFlag)
    {
        field_0x92D = field_0x92C;
        field_0x92C = 11;
    } else {
        if (field_0x935 == param_0) {
            switch (field_0x935) {
            case 1:
                field_0x924--;
                if (field_0x924 <= 0) {
                    switch (int(cM_rndF(100.0f)) % 3) {
                    case 0:
                        setAnimeType(2, 0.0f);
                        break;
                    case 1:
                        setAnimeType(3, 0.0f);
                        break;
                    default:
                        cXyz stack_24 = home.pos - current.pos;
                        if (stack_24.abs() < l_HOSTIO.field_0x20) {
                            field_0x910 = cM_rnd() * 0.25f + 0.25f;
                            setAnimeType(6, 0.0f);
                        } else {
                            setAnimeType(5, 0.0f);
                        }
                    }
                }
            }
        }
    }
}

/* 8094A890-8094A8B0 004D10 0020+00 1/0 0/0 0/0 .text            daMyna_Create__FPv */
static int daMyna_Create(void* i_this) {
    return static_cast<daMyna_c*>(i_this)->create();
}

/* 8094A8B0-8094A8D0 004D30 0020+00 1/0 0/0 0/0 .text            daMyna_Delete__FPv */
static int daMyna_Delete(void* i_this) {
    return static_cast<daMyna_c*>(i_this)->destroy();
}

/* 8094A8D0-8094A8F0 004D50 0020+00 1/0 0/0 0/0 .text            daMyna_Execute__FPv */
static int daMyna_Execute(void* i_this) {
    return static_cast<daMyna_c*>(i_this)->execute();
}

/* 8094A8F0-8094A910 004D70 0020+00 1/0 0/0 0/0 .text            daMyna_Draw__FPv */
static int daMyna_Draw(void* i_this) {
    return static_cast<daMyna_c*>(i_this)->draw();
}

/* 8094A910-8094A918 004D90 0008+00 1/0 0/0 0/0 .text            daMyna_IsDelete__FPv */
static int daMyna_IsDelete(void* i_this) {
    return 1;
}

/* 8094B934-8094B954 -00001 0020+00 1/0 0/0 0/0 .data            daMyna_MethodTable */
static actor_method_class daMyna_MethodTable = {
    (process_method_func)daMyna_Create,  (process_method_func)daMyna_Delete,
    (process_method_func)daMyna_Execute, (process_method_func)daMyna_IsDelete,
    (process_method_func)daMyna_Draw,
};

/* 8094B954-8094B984 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_MYNA */
extern actor_process_profile_definition g_profile_MYNA = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_MYNA,
    &g_fpcLf_Method.base,
    sizeof(daMyna_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x0130,
    &daMyna_MethodTable,
    0x40000,
    0,
    fopAc_CULLBOX_0_e
};

/* 8094BAD0-8094BAD4 0000E8 0004+00 0/0 0/0 0/0 .bss
 * sInstance__40JASGlobalInstance<19JASDefaultBankTable>        */
#pragma push
#pragma force_active on
static u8 data_8094BAD0[4];
#pragma pop

/* 8094BAD4-8094BAD8 0000EC 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14JASAudioThread>             */
#pragma push
#pragma force_active on
static u8 data_8094BAD4[4];
#pragma pop

/* 8094BAD8-8094BADC 0000F0 0004+00 0/0 0/0 0/0 .bss sInstance__27JASGlobalInstance<7Z2SeMgr> */
#pragma push
#pragma force_active on
static u8 data_8094BAD8[4];
#pragma pop

/* 8094BADC-8094BAE0 0000F4 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8Z2SeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8094BADC[4];
#pragma pop

/* 8094BAE0-8094BAE4 0000F8 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SceneMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8094BAE0[4];
#pragma pop

/* 8094BAE4-8094BAE8 0000FC 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2StatusMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8094BAE4[4];
#pragma pop

/* 8094BAE8-8094BAEC 000100 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2DebugSys>
 */
#pragma push
#pragma force_active on
static u8 data_8094BAE8[4];
#pragma pop

/* 8094BAEC-8094BAF0 000104 0004+00 0/0 0/0 0/0 .bss
 * sInstance__36JASGlobalInstance<15JAISoundStarter>            */
#pragma push
#pragma force_active on
static u8 data_8094BAEC[4];
#pragma pop

/* 8094BAF0-8094BAF4 000108 0004+00 0/0 0/0 0/0 .bss
 * sInstance__35JASGlobalInstance<14Z2SoundStarter>             */
#pragma push
#pragma force_active on
static u8 data_8094BAF0[4];
#pragma pop

/* 8094BAF4-8094BAF8 00010C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12Z2SpeechMgr2>               */
#pragma push
#pragma force_active on
static u8 data_8094BAF4[4];
#pragma pop

/* 8094BAF8-8094BAFC 000110 0004+00 0/0 0/0 0/0 .bss sInstance__28JASGlobalInstance<8JAISeMgr> */
#pragma push
#pragma force_active on
static u8 data_8094BAF8[4];
#pragma pop

/* 8094BAFC-8094BB00 000114 0004+00 0/0 0/0 0/0 .bss sInstance__29JASGlobalInstance<9JAISeqMgr> */
#pragma push
#pragma force_active on
static u8 data_8094BAFC[4];
#pragma pop

/* 8094BB00-8094BB04 000118 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAIStreamMgr>               */
#pragma push
#pragma force_active on
static u8 data_8094BB00[4];
#pragma pop

/* 8094BB04-8094BB08 00011C 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2SoundMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8094BB04[4];
#pragma pop

/* 8094BB08-8094BB0C 000120 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAISoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8094BB08[4];
#pragma pop

/* 8094BB0C-8094BB10 000124 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13JAUSoundTable>              */
#pragma push
#pragma force_active on
static u8 data_8094BB0C[4];
#pragma pop

/* 8094BB10-8094BB14 000128 0004+00 0/0 0/0 0/0 .bss
 * sInstance__38JASGlobalInstance<17JAUSoundNameTable>          */
#pragma push
#pragma force_active on
static u8 data_8094BB10[4];
#pragma pop

/* 8094BB14-8094BB18 00012C 0004+00 0/0 0/0 0/0 .bss
 * sInstance__33JASGlobalInstance<12JAUSoundInfo>               */
#pragma push
#pragma force_active on
static u8 data_8094BB14[4];
#pragma pop

/* 8094BB18-8094BB1C 000130 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SoundInfo>
 */
#pragma push
#pragma force_active on
static u8 data_8094BB18[4];
#pragma pop

/* 8094BB1C-8094BB20 000134 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2SoundObjMgr>              */
#pragma push
#pragma force_active on
static u8 data_8094BB1C[4];
#pragma pop

/* 8094BB20-8094BB24 000138 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2Audience>
 */
#pragma push
#pragma force_active on
static u8 data_8094BB20[4];
#pragma pop

/* 8094BB24-8094BB28 00013C 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2FxLineMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8094BB24[4];
#pragma pop

/* 8094BB28-8094BB2C 000140 0004+00 0/0 0/0 0/0 .bss sInstance__31JASGlobalInstance<10Z2EnvSeMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8094BB28[4];
#pragma pop

/* 8094BB2C-8094BB30 000144 0004+00 0/0 0/0 0/0 .bss sInstance__32JASGlobalInstance<11Z2SpeechMgr>
 */
#pragma push
#pragma force_active on
static u8 data_8094BB2C[4];
#pragma pop

/* 8094BB30-8094BB34 000148 0004+00 0/0 0/0 0/0 .bss
 * sInstance__34JASGlobalInstance<13Z2WolfHowlMgr>              */
#pragma push
#pragma force_active on
static u8 data_8094BB30[4];
#pragma pop

/* 8094B24C-8094B24C 00009C 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

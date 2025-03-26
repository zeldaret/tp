#ifndef D_A_NPC_CDN3_H
#define D_A_NPC_CDN3_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_npc_cd2.h"
#include "d/actor/d_a_tag_schedule.h"

/**
 * @ingroup actors-npcs
 * @class daNpcCdn3_c
 * @brief Hylian Adult
 *
 * @details
 *
 */
class daNpcCdn3_c : public daNpcCd2_c {
public:
    typedef void (daNpcCdn3_c::*actionFunc)();
    typedef int (daNpcCdn3_c::*seqFunc)(void*);

    enum Mode_e {
        MODE_WAIT,
        MODE_PATH,
        MODE_TALK,
        MODE_ESCAPSE,
        MODE_FEAR,
        MODE_FEAR2,
        MODE_FIGHT,
        MODE_RELIEF,
        MODE_MAX_e,
    };

    /* 80978DD4 */ void setAction(daNpcCdn3_c::Mode_e);
    /* 80978E18 */ void callInit();
    /* 80978E40 */ void callExecute();
    /* 80978E6C */ void initWait();
    /* 80978ED0 */ void executeWait();
    /* 80979080 */ void initPath();
    /* 80979144 */ void executePath();
    /* 80979A34 */ void initTalk();
    /* 80979B2C */ void executeTalk();
    /* 80979F08 */ void initEscape();
    /* 8097A028 */ void executeEscape();
    /* 8097A398 */ void initFear();
    /* 8097A518 */ void executeFear();
    /* 8097A60C */ void initFear2();
    /* 8097A6AC */ void executeFear2();
    /* 8097A724 */ void initFight();
    /* 8097A7E0 */ void executeFight();
    /* 8097A960 */ void initRelief();
    /* 8097A9E4 */ void executeRelief();
    /* 8097ABDC */ void setAngle();
    /* 8097ABE8 */ void pathMoveF();
    /* 8097AF14 */ int ctrlMsgAnm();
    /* 8097B04C */ bool searchNextScheduleTagSub(fopAc_ac_c*);
    /* 8097B194 */ bool searchFirstScheduleTagSub(fopAc_ac_c*);
    /* 8097B288 */ void checkSchedule();
    /* 8097B38C */ void setSchedule(daTagSchedule_c*);
    /* 8097B5A8 */ inline bool isInShop();
    /* 8097B60C */ bool isChairStyle();
    /* 8097B684 */ bool isNoTurnTalk();
    /* 8097B6D0 */ int waita(void*);
    /* 8097B754 */ int talka(void*);
    /* 8097B7D8 */ int waitwall(void*);
    /* 8097B85C */ int talkwall(void*);
    /* 8097B8E0 */ int talkbwall(void*);
    /* 8097B964 */ int talkb(void*);
    /* 8097B9E8 */ int talkc(void*);
    /* 8097BA6C */ int waitb(void*);
    /* 8097BAF0 */ int sitwaita(void*);
    /* 8097BB74 */ int sittalka(void*);
    /* 8097BBF8 */ int sittalkab(void*);
    /* 8097BC7C */ int sitwaitb(void*);
    /* 8097BD00 */ int sittalkb(void*);
    /* 8097BD84 */ int sittalkbb(void*);
    /* 8097BE08 */ int looka(void*);
    /* 8097BE8C */ int lookb(void*);
    /* 8097BF10 */ int playm(void*);
    /* 8097C070 */ int turnr(void*);
    /* 8097C12C */ int turnl(void*);
    /* 8097C1E8 */ int walka(void*);
    /* 8097C250 */ int walkb(void*);
    /* 8097C2B8 */ int runa(void*);
    /* 8097C320 */ int runb(void*);
    /* 8097C388 */ int browsea(void*);
    /* 8097C40C */ int browseb(void*);
    /* 8097C490 */ int dance(void*);
    /* 8097C5B0 */ int ladytalka(void*);
    /* 8097C634 */ int ladytalkb(void*);
    /* 8097C6B8 */ int normtalka(void*);
    /* 8097C73C */ int normtalkb(void*);
    /* 8097C7C0 */ int sellme(void*);
    /* 8097C844 */ int sing(void*);
    /* 8097C910 */ int create();
    /* 8097CC58 */ void create_init();
    /* 8097D078 */ void setMtx();
    /* 8097D120 */ void lookat();
    /* 8097D684 */ virtual ~daNpcCdn3_c();
    /* 8097D748 */ int execute();
    /* 8097DABC */ void checkTimeSchedule();

    inline int draw();

    int getTimeHour() {
        if (mIsDarkWorld) {
            return dKy_getDarktime_hour();
        } 
        return dKy_getdaytime_hour();
    }

    int getTimeMinute() {
        if (mIsDarkWorld) {
            return dKy_getDarktime_minute();
        } 
        return dKy_getdaytime_minute();
    }

    int getTime() {
        return getTimeHour() * 60 + getTimeMinute();
    }

    int getDayOfWeek() {
        if (mIsDarkWorld) {
            return dKy_getDarktime_week();
        } else {
            return dKy_get_dayofweek();
        }
    }

    void setSpeed(f32* param_1, f32 param_2, f32 param_3, int param_4) {
        f32 target = field_0xb5c * (param_3 * field_0xb5c);
        f32 step = field_0xb5c * (param_2 * field_0xb5c);
        if (param_3 < target) {
            target = param_3;
        }
        cLib_chaseF(param_1, target, step);
    }

    int getGroupID() { return fopAcM_GetParam(this) & 0xff; }
    u8 getPathID() { return fopAcM_GetParam(this) >> 24; }
    int isStop() { return TRUE; }
    int getType() { return subtype & 0x7f; }
    int getSeqNum() { return shape_angle.x & 0x3f; }
    int getFlowNodeNum() { return shape_angle.z; }
    u16 getStartTime() { return (fopAcM_GetParam(this) >> 8) & 0xff; }
    u16 getEndTime() { return (fopAcM_GetParam(this) >> 16) & 0xff; }

    void initParamTime() {
        u16 startTime = getStartTime();
        u16 endTime = getEndTime();
        if (startTime != 0xff && endTime != 0xff) {
            u32 x = (u16)(startTime / 10);
            u32 y = startTime % 10;
            field_0xb8e = ((u16)(y * 10) + (x * 60));
            u32 x2 = (u16)(endTime / 10);
            u32 y2 = endTime % 10;
            field_0xb8e = ((u16)(y2 * 10) + (x2 * 60));
            field_0xb96 = 0;
        } else {
            field_0xb96 = 1;
        }
        field_0xb90 = 30;
    }

    void initTimeSchedule() {
        if (getGroupID() == 0xff) {
            initParamTime();
            if (field_0xb96 == 0) {
                int iVar1 = getTime();
                if (field_0xb8c > iVar1 || field_0xb8e <= iVar1)
                {
                    field_0xb95 = 1;
                }
            }
        } else {
            mTagSched = NULL;
            field_0xb88 = NULL;
        }
    }

    int getObjNum() {
        u8 uVar3 = (shape_angle.x >> 6) & 0xf;
        int rv;
        if (isM_()) {
            switch (uVar3) {
            case 0:
                rv = 0;
                break;
            case 1:
                rv = 1;
                break;
            case 2:
                rv = 2;
                break;
            case 3:
                rv = 4;
                break;
            case 4:
                rv = 6;
                break;
            case 5:
                rv = 0;
                break;
            case 6:
                rv = 0;
                break;
            case 7:
                rv = 9;
                break;
            default:
                rv = 0;
                break;
            }
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[281]) && rv == 9) {
                rv = 0xb;
            }
        } else {
            switch (uVar3) {
            case 0:
                rv = 0;
                break;
            case 1:
                rv = 8;
                break;
            case 2:
                rv = 3;
                break;
            case 3:
                rv = 5;
                break;
            case 4:
                rv = 7;
                break;
            case 5:
                rv = 0;
                break;
            case 6:
                rv = 0;
                break;
            case 7:
                rv = 10;
                break;
            default:
                rv = 0;
                break;
            }
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[281]) && rv == 10) {
                rv = 12;
            }
        }
        return rv;
    }

    void initCollision() {
        mStts.Init(0xd9, 0xff, this);
        mStts.SetRoomId(fopAcM_GetRoomNo(this));
        mCyl.SetStts(&mStts);
        mCyl.Set(m_cylDat);
        mCyl.SetR(Cd2_HIO_cylR(m_type));
        mCyl.SetH(Cd2_HIO_cylH(m_type));
    }

    void setCollision() {
        #ifdef DEBUG
        mCyl.SetR(Cd2_HIO_cylR(m_type));
        mCyl.SetH(Cd2_HIO_cylH(m_type));
        #endif
        mCyl.SetC(current.pos);
        if (!fopAcM_CheckCondition(this, 4)) {
            dComIfG_Ccsp()->Set(&mCyl);
        }
    }

    bool isOrchestra() {
        if (strcmp(dComIfGp_getStartStageName(), "F_SP116") != 0) {
            return 0;
        } else {
            if (mSeqNum == 17 &&
                (getType() == 4 || getType() == 5 || getType() == 6 || getType() == 16))
            {
                return 1;
            } else if (mSeqNum == 37 && getType() == 7) {
                return 1;
            } else {
                return 0;
            }
        }
    }

    int chkEvent() {
        attention_info.flags = 0;
        if (mFlowNodeNum > 0) {
            attention_info.flags = 0xa;
        }
        if (mIsDarkWorld) {
            if (daPy_py_c::checkNowWolfEyeUp()) {
                attention_info.flags |= 0xc00000;
            } else {
                attention_info.flags = 0;
            }
        }
        if (dComIfGp_event_runCheck()) {
            if (eventInfo.checkCommandDemoAccrpt()) {
                return 1;
            }
            if (eventInfo.checkCommandTalk() && mMode != MODE_TALK) {
                setAction(MODE_TALK);
                return 1;
            }
        }
        return 0;
    }

    int orderEvent() {
        if ((!mIsDarkWorld || daPy_py_c::checkNowWolfEyeUp()) && mFlowNodeNum > 0 && ((attention_info.flags & 8) || (attention_info.flags & 2))) {
            eventInfo.i_onCondition(dEvtCnd_CANTALK_e);
        }
        return 1;
    }

    inline bool searchFirstScheduleTag(fopAc_ac_c* param_1);
    inline bool searchNextScheduleTag();

    static actionFunc ActionTable[8][2];
    static seqFunc* m_funcTbl[44];
    static seqFunc m_seq00_funcTbl[2];
    static seqFunc m_seq01_funcTbl[2];
    static seqFunc m_seq02_funcTbl[2];
    static seqFunc m_seq03_funcTbl[2];
    static seqFunc m_seq04_funcTbl[2];
    static seqFunc m_seq05_funcTbl[4];
    static seqFunc m_seq06_funcTbl[4];
    static seqFunc m_seq07_funcTbl[2];
    static seqFunc m_seq08_funcTbl[7];
    static seqFunc m_seq09_funcTbl[2];
    static seqFunc m_seq10_funcTbl[2];
    static seqFunc m_seq11_funcTbl[6];
    static seqFunc m_seq12_funcTbl[2];
    static seqFunc m_seq13_funcTbl[6];
    static seqFunc m_seq14_funcTbl[2];
    static seqFunc m_seq15_funcTbl[2];
    static seqFunc m_seq16_funcTbl[7];
    static seqFunc m_seq17_funcTbl[2];
    static seqFunc m_seq18_funcTbl[2];
    static seqFunc m_seq19_funcTbl[7];
    static seqFunc m_seq20_funcTbl[2];
    static seqFunc m_seq21_funcTbl[2];
    static seqFunc m_seq22_funcTbl[4];
    static seqFunc m_seq23_funcTbl[7];
    static seqFunc m_seq24_funcTbl[5];
    static seqFunc m_seq25_funcTbl[7];
    static seqFunc m_seq26_funcTbl[3];
    static seqFunc m_seq27_funcTbl[2];
    static seqFunc m_seq28_funcTbl[3];
    static seqFunc m_seq29_funcTbl[3];
    static seqFunc m_seq30_funcTbl[6];
    static seqFunc m_seq31_funcTbl[6];
    static seqFunc m_seq32_funcTbl[7];
    static seqFunc m_seq33_funcTbl[7];
    static seqFunc m_seq34_funcTbl[9];
    static seqFunc m_seq35_funcTbl[2];
    static seqFunc m_seq36_funcTbl[4];
    static seqFunc m_seq37_funcTbl[2];
    static seqFunc m_seq38_funcTbl[2];
    static seqFunc m_seq39_funcTbl[2];
    static seqFunc m_seq40_funcTbl[3];
    static seqFunc m_seq41_funcTbl[2];
    static seqFunc m_seq42_funcTbl[2];
    static seqFunc m_seq43_funcTbl[3];

    /* 0xAC8 */ J3DModel* field_0xac8;
    /* 0xACC */ J3DModel* field_0xacc;
    /* 0xAD0 */ PathTrace_c m_path;
    /* 0xAE8 */ daNpcT_ActorMngr_c m_targetAct;
    /* 0xB00 */ dMsgFlow_c mMsgFlow;
    /* 0xB4C */ daNpcCdn3_c::actionFunc* mAction;
    /* 0xB50 */ Mode_e mMode;
    /* 0xB54 */ Mode_e mPrevMode;
    /* 0xB58 */ int mObjNum;
    /* 0xB5C */ f32 field_0xb5c;
    /* 0xB60 */ f32 field_0xb60;
    /* 0xB64 */ f32 field_0xb64;
    /* 0xB68 */ u32 field_0xb68;
    /* 0xB6C */ int mMsgIndex;
    /* 0xB70 */ int mFlowNodeNum;
    /* 0xB74 */ int field_0xb74;
    /* 0xB78 */ int mSeqNum;
    /* 0xB7C */ int field_0xb7c;
    /* 0xB80 */ J3DAnmTransform* field_0xb80;
    /* 0xB84 */ daTagSchedule_c* mTagSched;
    /* 0xB88 */ daTagSchedule_c* field_0xb88;
    /* 0xB8C */ u16 field_0xb8c;
    /* 0xB8C */ u16 field_0xb8e;
    /* 0xB90 */ u16 field_0xb90;
    /* 0xB92 */ s16 field_0xb92;
    /* 0xB94 */ u8 field_0xb94;
    /* 0xB95 */ u8 field_0xb95;
    /* 0xB96 */ u8 field_0xb96;
    /* 0xB97 */ u8 field_0xb97;
    /* 0xB98 */ u8 field_0xb98;
    /* 0xB99 */ u8 field_0xb99;
};

STATIC_ASSERT(sizeof(daNpcCdn3_c) == 0xb9c);


#endif /* D_A_NPC_CDN3_H */

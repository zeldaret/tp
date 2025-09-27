#ifndef D_A_NPC_RAFREL_H
#define D_A_NPC_RAFREL_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcRafrel_c
 * @brief Auru
 *
 * @details
 *
 */
class daNpcRafrel_c : public daNpcF_c {
public:
    /* 80AB962C */ daNpcRafrel_c();
    
    /* 80AB9A40 */ int Create();
    /* 80AB9E3C */ int CreateHeap();
    /* 80ABA380 */ int Delete();
    /* 80ABA3B4 */ int Execute();
    /* 80ABA3D8 */ int Draw();
    /* 80ABA4A8 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80ABA678 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80ABA698 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80ABAB88 */ void reset();
    /* 80ABADC4 */ inline void setWaitAction();
    /* 80ABAFBC */ inline bool isSneaking();
    /* 80ABB014 */ bool wait_type01(void*);
    /* 80ABBBDC */ bool wait_type2(void*);
    /* 80ABBE84 */ bool talk(void*);
    /* 80ABC50C */ bool demo(void*);
    /* 80ABCA40 */ bool leave(void*);
    /* 80ABCD74 */ int EvCut_Introduction(int);
    /* 80ABCE74 */ int EvCut_Meeting(int);
    /* 80ABD124 */ int EvCut_Appear(int);
    /* 80ABD8A0 */ int EvCut_WiretapSponsor(int);
    /* 80ABDB7C */ int EvCut_WiretapEntrant(int);

    /* 80ABE470 */ inline void playMotion();
    /* 80ABEE98 */ inline void lookat();
    inline void playExpression();

    /* 80AB9840 */ virtual ~daNpcRafrel_c();
    /* 80ABDE9C */ virtual inline void setParam();
    /* 80ABE1D0 */ virtual inline BOOL main();
    /* 80ABE9FC */ virtual inline BOOL ctrlBtk();
    /* 80ABEAD8 */ virtual inline void setAttnPos();
    /* 80ABA6E4 */ virtual bool setExpressionAnm(int, bool);
    /* 80ABA8EC */ virtual bool setExpressionBtp(int);
    /* 80ABBBB0 */ virtual void setExpression(int, f32);
    /* 80ABA9CC */ virtual void setMotionAnm(int, f32);
    /* 80ABBB10 */ virtual void setMotion(int, f32, int);
    /* 80ABF074 */ virtual inline BOOL drawDbgInfo();

    int setAction(bool (daNpcRafrel_c::*i_actionFn)(void*)) {
        field_0xe10 = 3;
        if (field_0xde0 != NULL) {
            (this->*field_0xde0)(NULL);
        }
    
        field_0xe10 = 0;
        field_0xde0 = i_actionFn;

        if (field_0xde0 != NULL) {
            (this->*field_0xde0)(NULL);
        }
    
        return 1;
    }

    inline void setLookMode(int i_lookMode, fopAc_ac_c* i_talkPartner);
    inline bool step(s16 i_angY, int param_1, f32 param_2);
    inline void searchActors();
    inline BOOL chkFindPlayer();
    inline void setExpressionTalkAfter();

    s16 getMessageNo() { return (fopAcM_GetParam(this) >> 8) & 0xFFFF; }

    static int (daNpcRafrel_c::*mEvtSeqList[])(int);

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ J3DModel* mpItemModel;
    /* 0xBDC */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBE0 */ daNpcF_Lookat_c field_0xbe0;
    /* 0xC7C */ daNpcF_ActorMngr_c field_0xc7c[4];
    /* 0xC9C */ fopAc_ac_c* field_0xc9c;
    /* 0xCA0 */ u8 field_0xCA0[0xCA4 - 0xCA0];
    /* 0xCA4 */ dCcD_Cyl field_0xca4;
    /* 0xDE0 */ bool (daNpcRafrel_c::*field_0xde0)(void*);
    /* 0xDEC */ request_of_phase_process_class mPhase[2];
    /* 0xE04 */ JPABaseEmitter* field_0xdfc;
    /* 0xE08 */ fpc_ProcID field_0xe00;
    /* 0xE04 */ int field_0xe04;
    /* 0xE08 */ int field_0xe08;
    /* 0xE0C */ s16 field_0xe0c;
    /* 0xE0E */ s16 field_0xe0e;
    /* 0xE10 */ u16 field_0xe10;
    /* 0xE12 */ s16 field_0xe12;
    /* 0xE14 */ u8 field_0xe14;
    /* 0xE15 */ u8 field_0xe15;
    /* 0xE16 */ u8 field_0xe16;
    /* 0xE17 */ u8 mType;
};

STATIC_ASSERT(sizeof(daNpcRafrel_c) == 0xe18);

struct daNpcRafrel_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ u32 field_0x70;
};

class daNpcRafrel_Param_c {
public:
    /* 80ABF974 */ virtual ~daNpcRafrel_Param_c() {}

    static const daNpcRafrel_HIOParam m;
};


#endif /* D_A_NPC_RAFREL_H */

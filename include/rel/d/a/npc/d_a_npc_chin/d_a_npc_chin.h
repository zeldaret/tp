#ifndef D_A_NPC_CHIN_H
#define D_A_NPC_CHIN_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcChin_c
 * @brief Purlo
 *
 * @details
 *
 */
class daNpcChin_c : public fopAc_ac_c {
public:
    class _SpotLight_c {
    public:
        /* 8098BF0C */ void loadModel();
        /* 8098C000 */ void setMtx();
        /* 8098C060 */ void draw(dKy_tevstr_c*);
    };

    /* 8098C104 */ daNpcChin_c();
    /* 8098C2D8 */ ~daNpcChin_c();
    /* 8098C510 */ void Create();
    /* 8098C858 */ void CreateHeap();
    /* 8098CCE4 */ void Delete();
    /* 8098CD18 */ void Execute();
    /* 8098CD74 */ void Draw();
    /* 8098CDE8 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 8098CFB8 */ void createHeapCallBack(fopAc_ac_c*);
    /* 8098CFD8 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 8098D024 */ void setParam();
    /* 8098D0F8 */ void main();
    /* 8098D198 */ void ctrlBtk();
    /* 8098D26C */ void setAttnPos();
    /* 8098D58C */ void setExpressionAnm(int, bool);
    /* 8098D848 */ void setExpressionBtp(int);
    /* 8098D938 */ void setMotionAnm(int, f32);
    /* 8098DB44 */ void setExpression(int, f32);
    /* 8098DB70 */ void setMotion(int, f32, int);
    /* 8098DBB4 */ bool drawDbgInfo();
    /* 8098DBBC */ void reset();
    /* 8098DCD0 */ void playExpression();
    /* 8098E04C */ void playMotion();
    /* 8098E5C4 */ void setAction(bool (daNpcChin_c::*)(void*));
    /* 8098E66C */ void setLookMode(int);
    /* 8098E690 */ void lookat();
    /* 8098E870 */ void step(s16, int, int);
    /* 8098EA00 */ void chkFindPlayer();
    /* 8098EACC */ void setExpressionTalkAfter();
    /* 8098EBE8 */ void wait(void*);
    /* 8098EFE4 */ void talk(void*);
    /* 8098F208 */ void _talk_motion();
    /* 8098F2BC */ void demo(void*);
    /* 8098F414 */ void watch_game(void*);
    /* 8098F758 */ void Event_DT();
    /* 8098FB3C */ void isGameEnd(int&);
    /* 8098FD38 */ void _chkGameClear();
    /* 8098FD5C */ void SphereReset();
    /* 8098FD80 */ void _Evt_GameStart(int);
    /* 8098FE28 */ void _Evt_GameStart_CutInit(int const&);
    /* 8098FF30 */ void _Evt_GameStart_CutMain(int const&);
    /* 8098FFD0 */ void _Evt_GameFailed(int);
    /* 80990078 */ void _Evt_GameFailed_CutInit(int const&);
    /* 80990174 */ void _Evt_GameFailed_CutMain(int const&);
    /* 80990218 */ void _Evt_GameSucceed(int);
    /* 809902C0 */ void _Evt_GameSucceed_CutInit(int const&);
    /* 8099041C */ void _Evt_GameSucceed_CutMain(int const&);
    /* 809905C4 */ void _Evt_SelectGiveUp(int);
    /* 8099066C */ void _Evt_SelectGiveUp_CutInit(int const&);
    /* 8099071C */ void _Evt_SelectGiveUp_CutMain(int const&);
    /* 809907AC */ void _Evt_GameGiveUp(int);
    /* 80990854 */ void _Evt_GameGiveUp_CutInit(int const&);
    /* 80990950 */ void _Evt_GameGiveUp_CutMain(int const&);
    /* 809909F4 */ void _Evt_Appear(int);
    /* 80990A9C */ void _Evt_Appear_CutInit(int const&);
    /* 80990BD8 */ void _Evt_Appear_CutMain(int const&);
    /* 80990C9C */ void _Evt_SpotLight_Off(int);
    /* 80990D44 */ void _Evt_SpotLight_Off_CutInit(int const&);
    /* 80990DDC */ void _Evt_SpotLight_Off_CutMain(int const&);
    /* 80991858 */ void setMtx();

    static u8 mEvtSeqList[96];

private:
    /* 0x568 */ u8 field_0x568[0xe78 - 0x568];
};
STATIC_ASSERT(sizeof(daNpcChin_c) == 0xe78);

class daNpcChin_Param_c {
public:
    /* 8099188C */ ~daNpcChin_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_CHIN_H */

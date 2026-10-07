#ifndef D_A_OBJ_DIGHOLL_H
#define D_A_OBJ_DIGHOLL_H

#include "d/d_com_inf_game.h"

/**
 * @ingroup actors-objects
 * @class daObjDigholl_c
 * @brief Wolf Dig Place (Passage)
 *
 * @details
 *
 */
class daObjDigholl_c : public fopAc_ac_c {
public:
    int create();
    ~daObjDigholl_c();
    int execute();
    int draw();

    void onDigStart() { mDigState = 1; }
    s16 getSceneNum() const { return mSceneNum; }

private:
    /* 0x568 */ u8 mDigState;      // 0: idle, 1: wolf digging, 2: dug through
    /* 0x569 */ u8 mSwitch;        // turned on while digging, restores dug state on reload
    /* 0x56A */ u8 mEnableSwitch;  // 0xFF: no switch required
    /* 0x56B */ u8 mDigEnd;
    /* 0x56C */ s16 mSceneNum;  // exit ID, -1: none
    /* 0x56E */ s16 field_0x56e;
};     // Size: 0x570

#endif /* D_A_OBJ_DIGHOLL_H */

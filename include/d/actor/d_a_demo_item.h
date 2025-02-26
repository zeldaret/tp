#ifndef D_A_DEMO_ITEM_H
#define D_A_DEMO_ITEM_H

#include "f_op/f_op_actor_mng.h"
#include "d/actor/d_a_itembase.h"
#include "d/d_particle.h"

/**
 * @ingroup actors-unsorted
 * @class daDitem_c
 * @brief Cutscene Item
 *
 * @details
 *
 */
class daDitem_c : public daItemBase_c {
public:
    enum Action_e {
        ACTION_START_e,
        ACTION_EVENT_e,
        ACTION_WAIT_LIGHT_END_e,
        ACTION_END_e,
    };

    /* 804DFBD4 */ int CreateInit();
    /* 804DFC98 */ void action();
    /* 804DFD10 */ void actionStart();
    /* 804E00DC */ void actionEvent();
    /* 804E0A50 */ void actionWaitLightEnd();
    /* 804E0B40 */ void actionEnd();
    /* 804E0B60 */ void setInsectEffect();
    /* 804E0C44 */ void followInsectEffect();
    /* 804E0CB0 */ void endInsectEffect();
    /* 804E0D44 */ void onEventReg(int, int);
    /* 804E0DB4 */ void set_pos();
    /* 804E105C */ void anim_control();
    /* 804E1098 */ void initEffectLight();
    /* 804E10D0 */ void settingEffectLight();
    /* 804E111C */ void set_mtx();
    /* 804E1230 */ void draw_WOOD_STICK();

    /* 804E122C */ virtual void setListStart();
    /* 804E11D4 */ virtual void setTevStr();
    /* 804DFBCC */ virtual int __CreateHeap();

    inline int Delete();
    inline int create();
    inline int execute();
    inline int draw();

    void setAction(u8 i_action) { mAction = i_action; }

    u32 chkArgFlag(u8 i_flag) { return field_0x93d & i_flag; }

    void setOffsetPos(cXyz i_pos) { mOffsetPos = i_pos; }
    void setMaxScale(f32 i_scale) { mMaxScale = i_scale; }

private:
    /* 0x92C */ cXyz mOffsetPos;
    /* 0x938 */ f32 mMaxScale;
    /* 0x93C */ u8 field_0x93c;
    /* 0x93D */ u8 field_0x93d;
    /* 0x93E */ u8 field_0x93e;
    /* 0x93F */ u8 mSetLightEff;
    /* 0x940 */ f32 mLightStrength;
    /* 0x944 */ u8 field_0x944[0x948 - 0x944];
    /* 0x948 */ LIGHT_INFLUENCE mLight;
    /* 0x968 */ u8 mAction;
    /* 0x969 */ u8 field_0x969;
    /* 0x96A */ u8 mParticleAlpha;
    /* 0x96C */ dPa_followEcallBack field_0x96c;
    /* 0x980 */ dPa_followEcallBack field_0x980;
    /* 0x994 */ JPABaseEmitter* field_0x994;
    /* 0x998 */ JPABaseEmitter* field_0x998;
    /* 0x99C */ cXyz field_0x99c;
    /* 0x9A8 */ Z2SoundObjSimple mSound;
};

STATIC_ASSERT(sizeof(daDitem_c) == 0x9c8);

namespace daDitem_prm {
inline u8 getFlag(daDitem_c* i_this) {
    return (fopAcM_GetParam(i_this) >> 0x10) & 0xFF;
}

inline u8 getNo(daDitem_c* i_this) {
    return fopAcM_GetParam(i_this) & 0xFF;
}
};

#endif /* D_A_DEMO_ITEM_H */

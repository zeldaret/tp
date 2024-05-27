#ifndef D_A_OBJ_GEYSER_H
#define D_A_OBJ_GEYSER_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjGeyser_c
 * @brief Geyser
 *
 * @details
 *
 */
class daObjGeyser_c : public fopAc_ac_c {
public:
    /* 80BF6F18 */ void initBaseMtx();
    /* 80BF6F38 */ void setBaseMtx();
    /* 80BF6F80 */ void Create();
    /* 80BF70E0 */ void CreateHeap();
    /* 80BF7174 */ void create1st();
    /* 80BF7288 */ void Execute(f32 (**)[3][4]);
    /* 80BF744C */ void action();
    /* 80BF75B8 */ void actionOff2Init();
    /* 80BF75C4 */ void actionOff2();
    /* 80BF7838 */ void actionOnWait2Init();
    /* 80BF787C */ void actionOnWait2();
    /* 80BF7C54 */ void actionOn2Init();
    /* 80BF7CA0 */ void actionOn2();
    /* 80BF8158 */ void actionDisappearInit(u8);
    /* 80BF8178 */ void actionDisappear();
    /* 80BF823C */ void actionOffInit();
    /* 80BF8268 */ void actionOff();
    /* 80BF82D0 */ void actionOnWaitInit();
    /* 80BF8344 */ void actionOnWait();
    /* 80BF83E4 */ void actionOnInit();
    /* 80BF846C */ void actionOn();
    /* 80BF8584 */ void setPntWind();
    /* 80BF863C */ void cutPntWind();
    /* 80BF8660 */ void movePntWind();
    /* 80BF8870 */ void Draw();
    /* 80BF8914 */ void setEmitterPre00();
    /* 80BF89AC */ void setEmitterSrc00Sand();
    /* 80BF89B0 */ void setEmitterSrc01Smk();
    /* 80BF8A54 */ void stopEmitterPre00();
    /* 80BF8A80 */ void stopEmitterSrc00Sand();
    /* 80BF8AAC */ void stopEmitterSrc01Smk();
    /* 80BF8AD8 */ void setEmitterClm00();
    /* 80BF8B70 */ void setEmitterSmk01();
    /* 80BF8C08 */ void setEmitterSmk02();
    /* 80BF8CA0 */ void stopEmitterClm00();
    /* 80BF8CCC */ void stopEmitterSmk01();
    /* 80BF8CF8 */ void stopEmitterSmk02();
    /* 80BF8D24 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x7f0 - 0x568];
};
STATIC_ASSERT(sizeof(daObjGeyser_c) == 0x7f0);


#endif /* D_A_OBJ_GEYSER_H */

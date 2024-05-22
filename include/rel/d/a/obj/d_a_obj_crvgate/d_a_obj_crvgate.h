#ifndef D_A_OBJ_CRVGATE_H
#define D_A_OBJ_CRVGATE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObjCRVGATE_c : public fopAc_ac_c {
public:
    /* 80BD0398 */ void initCcCylinder();
    /* 80BD0500 */ void setCcCylinder();
    /* 80BD069C */ void checkOpen();
    /* 80BD0880 */ void actionStartEvent();
    /* 80BD0978 */ void actionWaitEvent();
    /* 80BD0A64 */ void Demo_Set();
    /* 80BD0B7C */ void SetOpen();
    /* 80BD0B88 */ void actionDemoEvent();
    /* 80BD0D28 */ void event_proc_call();
    /* 80BD0D90 */ void CheckVec();
    /* 80BD0E1C */ void KeyVib();
    /* 80BD0F9C */ void DoorVib();
    /* 80BD10C0 */ void VibStop();
    /* 80BD10D0 */ void CloseVibration();
    /* 80BD1110 */ void CloseAction();
    /* 80BD18E0 */ void OpenAction();
    /* 80BD21E4 */ void HakaiMotion();
    /* 80BD22C8 */ void DoorAction();
    /* 80BD2338 */ void B_CloseAction();
    /* 80BD245C */ void SetB_Close();
    /* 80BD2528 */ void setBaseMtx();
    /* 80BD2670 */ void CreateHeap();
    /* 80BD2758 */ void SetDoor();
    /* 80BD28C0 */ void create();
    /* 80BD2E88 */ void Create();
    /* 80BD2ECC */ void Execute(f32 (**)[3][4]);
    /* 80BD2FB8 */ void Draw();
    /* 80BD3074 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0xde4 - 0x568];
};
STATIC_ASSERT(sizeof(daObjCRVGATE_c) == 0xde4);


#endif /* D_A_OBJ_CRVGATE_H */

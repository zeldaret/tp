#ifndef D_A_OBJ_CBLOCK_H
#define D_A_OBJ_CBLOCK_H

#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"

class dPath;

/**
 * @ingroup actors-objects
 * @class daObjCBlk_c
 * @brief Castle Block?
 *
 * @details
 *
 */
class daObjCBlk_c : public dBgS_MoveBgActor {
public:
    typedef void (daObjCBlk_c::*modeFunc)();

    struct chain_s {
    public:
        /* 80BC5E58 */ ~chain_s();
        /* 80BC5E94 */ chain_s();

        J3DModel* model;
        cXyz position;
    };

    /* 80BC5A0C */ void initBaseMtx();
    /* 80BC5A48 */ void setBaseMtx();
    /* 80BC5ABC */ int Create();
    /* 80BC5CF8 */ int CreateHeap();
    /* 80BC5E98 */ int create();
    /* 80BC6260 */ int Execute(f32 (**)[3][4]);
    /* 80BC6270 */ void initWait();
    /* 80BC627C */ void modeWait();
    /* 80BC6414 */ void initWalk();
    /* 80BC6430 */ void modeWalk();
    /* 80BC65CC */ void getChainBasePos(cXyz*);
    /* 80BC6648 */ void setPower(f32);
    /* 80BC66DC */ BOOL checkWall();
    /* 80BC6868 */ int Draw();
    /* 80BC6870 */ int Delete();

    u8 getArg0() { return fopAcM_GetParamBit(this, 0, 4); }
    u8 getSwNo() { return fopAcM_GetParamBit(this, 16, 8); }
    u8 getPathID() { return fopAcM_GetParamBit(this, 24, 8); }

private:
    /* 0x5A0 */ request_of_phase_process_class phase;
    /* 0x5A8 */ J3DModel* model1;
    /* 0x5AC */ J3DModel* model2;
    /* 0x5B0 */ dCcD_Stts stts;
    /* 0x5EC */ dCcD_Cyl cyl;
    /* 0x728 */ dCcD_Cyl cyls[4];
    /* 0xC18 */ chain_s* chains;
    /* 0xC1C */ u8 field_0xc1c;
    /* 0xC1D */ u8 field_0xc1d;
    /* 0xC1E */ u8 field_0xc1e;
    /* 0xC1F */ u8 field_0xc1f;
    /* 0xC20 */ f32 power;
    /* 0xC24 */ cXyz field_0xc24[7];
    /* 0xC78 */ u8 field_0xc78[0xc9c - 0xc78];
    /* 0xC9C */ dPath* roomPath;
    /* 0xCA0 */ u8 swNo;
    /* 0xCA1 */ u8 arg0;
    /* 0xCA2 */ u8 field_0xca2;
    /* 0xCA3 */ u8 field_0xca3;
    /* 0xCA4 */ s16 walkTimer;
    /* 0xCA6 */ s16 field_0xca6;
};

STATIC_ASSERT(sizeof(daObjCBlk_c) == 0xca8);


#endif /* D_A_OBJ_CBLOCK_H */

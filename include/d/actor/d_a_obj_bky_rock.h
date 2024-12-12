#ifndef D_A_OBJ_BKY_ROCK_H
#define D_A_OBJ_BKY_ROCK_H

#include "d/d_cc_d.h"
#include "d/d_model.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daBkyRock_c
 * @brief Bomb Shack Rock
 *
 * @details
 *
 */
class daBkyRock_c : public fopAc_ac_c, public request_of_phase_process_class {
public:
    struct _pieceData {
    public:
        /* 80BB6914 */ _pieceData() { mMdlObj.mpObj = NULL; }

        /* 0x00 */ dMdl_obj_c mMdlObj;
        /* 0x34 */ Vec position;
        /* 0x40 */ f32 targetX;
        /* 0x44 */ f32 targetZ;
        /* 0x48 */ f32 scale;
        /* 0x4C */ f32 speedY;
        /* 0x50 */ s16 rotationX;
        /* 0x52 */ s16 rotationZ;
        /* 0x54 */ s16 rotationSpeed;
    };

    typedef void (daBkyRock_c::*exeProc)();

    enum Mode {
        MODE_0,
        MODE_1,
        MODE_2,
    };

    /* 80BB6858 */ daBkyRock_c();
    /* 80BB6B5C */ virtual ~daBkyRock_c();
    /* 80BB6C4C */ int create();
    /* 80BB6D60 */ int execute();
    /* 80BB6D84 */ int draw();
    /* 80BB6EB8 */ int Delete();
    /* 80BB6F64 */ void setModelMtx();
    /* 80BB6FD4 */ int createHeap();
    /* 80BB7144 */ void init();
    /* 80BB72FC */ void middleExe();
    /* 80BB7364 */ void exeModeNoDamage();
    /* 80BB7458 */ void exeModeDamage();
    /* 80BB75D8 */ void exeModePiece();
    /* 80BB7690 */ bool chkHitBombArrow();
    /* 80BB776C */ void initChangeModeBefore();
    /* 80BB77FC */ void initChangeModeAfter();
    /* 80BB7818 */ void pieceMove();
    /* 80BB7988 */ void pieceMoveInit();
    /* 80BB7C18 */ void callBombEmt(int, u16 const*);

    u8 getSwBit0() { return fopAcM_GetParamBit(this, 4, 8); }
    u8 getSwBit1() { return fopAcM_GetParamBit(this, 12, 8); }
    s8 getNameNo() { return fopAcM_GetParamBit(this, 0, 4); }

    static dCcD_SrcCyl const s_CcDCyl;
    static exeProc s_exeProc[3];
    
private:
    /* 0x568 */ int mVibrationTimer;
    /* 0x578 */ u8 mMode;
    /* 0x579 */ bool field_0x579;
    /* 0x57A */ bool field_0x57a;
    /* 0x57B */ Mtx mMtx;
    /* 0x5AC */ dBgW* mBgW;
    /* 0x5B0 */ dCcD_Stts mStts;
    /* 0x5EC */ dCcD_Cyl mCyls[2];
    /* 0x864 */ J3DModel* mModels[3];
    /* 0x870 */ _pieceData mPieces[20];
};

//STATIC_ASSERT(sizeof(daBkyRock_c) == 0xf50);


#endif /* D_A_OBJ_BKY_ROCK_H */

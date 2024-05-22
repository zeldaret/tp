#ifndef D_A_OBJ_BKY_ROCK_H
#define D_A_OBJ_BKY_ROCK_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daBkyRock_c : public fopAc_ac_c {
public:
    struct _pieceData {
    public:
        /* 80BB6914 */ _pieceData();
    };

    /* 80BB6858 */ daBkyRock_c();
    /* 80BB6B5C */ ~daBkyRock_c();
    /* 80BB6C4C */ void create();
    /* 80BB6D60 */ void execute();
    /* 80BB6D84 */ void draw();
    /* 80BB6EB8 */ void Delete();
    /* 80BB6F64 */ void setModelMtx();
    /* 80BB6FD4 */ void createHeap();
    /* 80BB7144 */ void init();
    /* 80BB72FC */ void middleExe();
    /* 80BB7364 */ void exeModeNoDamage();
    /* 80BB7458 */ void exeModeDamage();
    /* 80BB75D8 */ void exeModePiece();
    /* 80BB7690 */ void chkHitBombArrow();
    /* 80BB776C */ void initChangeModeBefore();
    /* 80BB77FC */ void initChangeModeAfter();
    /* 80BB7818 */ void pieceMove();
    /* 80BB7988 */ void pieceMoveInit();
    /* 80BB7C18 */ void callBombEmt(int, u16 const*);

    static u8 const s_CcDCyl[68];
    static u8 s_exeProc[36];
    
private:
    /* 0x568 */ u8 field_0x568[0xf50 - 0x568];
};
STATIC_ASSERT(sizeof(daBkyRock_c) == 0xf50);


#endif /* D_A_OBJ_BKY_ROCK_H */

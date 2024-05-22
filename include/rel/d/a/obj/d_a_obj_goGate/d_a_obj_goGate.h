#ifndef D_A_OBJ_GOGATE_H
#define D_A_OBJ_GOGATE_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daGoGate_c : public fopAc_ac_c {
public:
    /* 80BFD724 */ void setBaseMtx();
    /* 80BFD7C0 */ void CreateHeap();
    /* 80BFD82C */ void create();
    /* 80BFD984 */ void Execute(f32 (**)[3][4]);
    /* 80BFD9D4 */ void moveGate();
    /* 80BFDAD8 */ void init_modeWait();
    /* 80BFDAE4 */ void modeWait();
    /* 80BFDAE8 */ void init_modeMoveOpen();
    /* 80BFDAF4 */ void modeMoveOpen();
    /* 80BFDC04 */ void init_modeMoveClose();
    /* 80BFDC10 */ void modeMoveClose();
    /* 80BFDD20 */ void setSe();
    /* 80BFDDDC */ void Draw();
    /* 80BFDE80 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0x5b8 - 0x568];
};
STATIC_ASSERT(sizeof(daGoGate_c) == 0x5b8);

class daGoGate_HIO_c {
public:
    /* 80BFD6AC */ daGoGate_HIO_c();
    /* 80BFDF3C */ ~daGoGate_HIO_c();
};


#endif /* D_A_OBJ_GOGATE_H */

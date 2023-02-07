#ifndef D_A_TAG_SPINNER_H
#define D_A_TAG_SPINNER_H

#include "dolphin/types.h"
#include "dol2asm.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"
#include "rel/d/a/d_a_spinner/d_a_spinner.h"


class daTagSpinner_c : public fopAc_ac_c {
    public:
                
    /* 80D618A4 */ void initBaseMtx();
    /* 80D618C4 */ void setBaseMtx();
    /* 80D6191C */ int Create();
    /* 80D6196C */ int CreateHeap();
    /* 80D61974 */ int create();
    /* 80D61A00 */ int execute();
    /* 80D61AB4 */ int _delete();
    
                   
    /* 0x568 */ f32 field_0x568;
    /* 0x56c */ f32 field_0x56c;
    inline f32 GetR() {return field_0x568;}
};

namespace daTagSpinner_prm {
    u32 getSwNo(daTagSpinner_c* pActor) {return fopAcM_GetParam(pActor);}
}

    


#endif /* D_A_TAG_SPINNER_H */

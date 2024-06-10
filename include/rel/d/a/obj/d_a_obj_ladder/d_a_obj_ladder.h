#ifndef D_A_OBJ_LADDER_H
#define D_A_OBJ_LADDER_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjLadder
 * @brief Ladder
 *
 * @details
 *
 */
class daObjLadder : public fopAc_ac_c {
public:
    class Act_c {
    public:
        struct Prm_e {};

        /* 8058D158 */ void CreateHeap();
        /* 8058D1D8 */ void Create();
        /* 8058D378 */ void Mthd_Create();
        /* 8058D4F0 */ bool Delete();
        /* 8058D4F8 */ void Mthd_Delete();
        /* 8058D544 */ void demo_end_reset();
        /* 8058D5AC */ void mode_wait_init();
        /* 8058D5B8 */ void mode_wait();
        /* 8058D614 */ void mode_demoreq_init();
        /* 8058D628 */ void mode_demoreq();
        /* 8058D6E8 */ void mode_vib_init();
        /* 8058D710 */ void mode_vib();
        /* 8058D7A8 */ void mode_drop_init();
        /* 8058D7EC */ void mode_drop();
        /* 8058D9C0 */ void mode_fell_init();
        /* 8058D9CC */ void mode_fell();
        /* 8058D9D0 */ void set_mtx();
        /* 8058DA64 */ void init_mtx();
        /* 8058DAA0 */ void Execute(f32 (**)[3][4]);
        /* 8058DBB8 */ void Draw();

        static u8 const M_arcname[5 + 3 /* padding */];
        static u8 M_tmp_mtx[48];
    };

private:
    /* 0x568 */ u8 field_0x568[0x620 - 0x568];
};

STATIC_ASSERT(sizeof(daObjLadder) == 0x620);

struct daObj {
public:
    /* 800373C0 */ void posMoveF_stream(fopAc_ac_c*, cXyz const*, cXyz const*, f32, f32);
    template <typename A1>
    void PrmAbstract(/* ... */);
    /* 8058DD14 */ /* daObj::PrmAbstract<daObjLadder::Act_c::Prm_e> */
    void func_8058DD14(void* _this, fopAc_ac_c const*, daObjLadder::Act_c::Prm_e,
                       daObjLadder::Act_c::Prm_e);
};


#endif /* D_A_OBJ_LADDER_H */

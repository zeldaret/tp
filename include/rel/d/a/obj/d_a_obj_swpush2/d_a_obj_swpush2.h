#ifndef D_A_OBJ_SWPUSH2_H
#define D_A_OBJ_SWPUSH2_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObjSwpush2
 * @brief Push Switch 2
 *
 * @details
 *
 */
class daObjSwpush2 : public fopAc_ac_c {
public:
    class Act_c {
    public:
        struct Prm_e {};

        /* 80CFE098 */ void getArcName();
        /* 80CFE0A4 */ void getBmdName();
        /* 80CFE0B4 */ void getDzbName();
        /* 80CFE0C4 */ void getNmlBtkName();
        /* 80CFE0D4 */ void getNmlBrkName();
        /* 80CFE0E4 */ void getOnBtkName();
        /* 80CFE0F4 */ void getRunBpkName();
        /* 80CFE104 */ void getRunBrkName();
        /* 80CFE114 */ void getRunBtkName();
        /* 80CFE124 */ void prmZ_init();
        /* 80CFE154 */ void is_switch2() const;
        /* 80CFE1AC */ void solidHeapCB(fopAc_ac_c*);
        /* 80CFE1D0 */ void create_heap();
        /* 80CFE6D8 */ void create_init();
        /* 80CFE8CC */ void create_res_load();
        /* 80CFE928 */ void Mthd_Create();
        /* 80CFEA3C */ void Mthd_Delete();
        /* 80CFEAB4 */ void set_mtx();
        /* 80CFEB3C */ void init_mtx();
        /* 80CFEB78 */ void rideCB(dBgW*, fopAc_ac_c*, fopAc_ac_c*);
        /* 80CFEBE4 */ void calc_top_pos();
        /* 80CFEC4C */ void set_push_flag();
        /* 80CFEDDC */ void mode_upper_init();
        /* 80CFEDFC */ void mode_upper();
        /* 80CFEF84 */ void mode_u_l_init();
        /* 80CFEF98 */ void mode_u_l();
        /* 80CFF168 */ void mode_lower_init();
        /* 80CFF188 */ void mode_lower();
        /* 80CFF18C */ void mode_l_u();
        /* 80CFF24C */ void demo_non_init();
        /* 80CFF258 */ void demo_non();
        /* 80CFF25C */ void demo_reqPause_init();
        /* 80CFF2B4 */ void demo_reqPause();
        /* 80CFF2EC */ void demo_runPause_init(int);
        /* 80CFF31C */ void demo_runPause();
        /* 80CFF374 */ void demo_stop_puase();
        /* 80CFF3C8 */ void demo_reqSw_init();
        /* 80CFF48C */ void demo_reqSw();
        /* 80CFF500 */ void demo_runSw_init();
        /* 80CFF50C */ void demo_runSw();
        /* 80CFF568 */ void Mthd_Execute();
        /* 80CFF8FC */ void Mthd_Draw();

        static u8 const M_arcname[9 + 3 /* padding */];
        static void* const M_attr[56];
    };

private:
    /* 0x568 */ u8 field_0x568[0x5f4 - 0x568];
};
STATIC_ASSERT(sizeof(daObjSwpush2) == 0x5f4);

struct daObj {
public:
    template <typename A1>
    void PrmAbstract(/* ... */);
    /* 80CFFBD0 */ /* daObj::PrmAbstract<daObjSwpush2::Act_c::Prm_e> */
    void func_80CFFBD0(void* _this, fopAc_ac_c const*, daObjSwpush2::Act_c::Prm_e,
                       daObjSwpush2::Act_c::Prm_e);
};


#endif /* D_A_OBJ_SWPUSH2_H */

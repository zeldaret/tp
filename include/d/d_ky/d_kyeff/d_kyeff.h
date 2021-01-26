#ifndef D_KYEFF_H_
#define D_KYEFF_H_
#include "global.h"
#include "d/d_kankyo/d_kankyo.h"

class dKyeff_c {
public:
    bool execute();
};

bool dKyeff_Execute(dKyeff_c *dKyeff_c_ptr);
bool dKyeff_IsDelete();
bool dKyeff_Delete(dKyeff_c* dKyeff_c_ptr);
u32 dKyeff_Create(kankyo_class* kankyo_class_ptr);

extern u8 lbl_80394F38;
extern f32 lbl_80453E58; //@3804 0.0f
extern f32 lbl_80453E5C; //@3805 1.0f
extern f64 lbl_80453E60; //@3812 4.503601774854144E15f
extern f32 lbl_80453E68; //@3843 0.7f
extern f32 lbl_80453E6C; //@3844 15.0f

extern "C" {
    void dKy_FiveSenses_fullthrottle_dark__Fv(void);
    void dKyw_wether_move__Fv(void);
    void dKyw_wether_move_draw__Fv(void);
}

#endif
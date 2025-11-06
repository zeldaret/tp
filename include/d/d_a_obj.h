#ifndef D_A_D_A_OBJ_H
#define D_A_D_A_OBJ_H

#include "f_op/f_op_actor_mng.h"

class dCcD_GObjInf;
namespace daObj {
void eff_break_tsubo(fopAc_ac_c*, cXyz, int);
void make_eff_break_kotubo(fopAc_ac_c*);
void make_eff_break_kotubo2(fopAc_ac_c*);
void make_eff_break_ootubo(fopAc_ac_c*);
void make_eff_break_gm_kotubo(fopAc_ac_c*);
void make_eff_break_gm_ootubo(fopAc_ac_c*);
void get_wind_spd(fopAc_ac_c*, f32);
void get_path_spd(cBgS_PolyInfo&, f32);
void posMoveF_stream(fopAc_ac_c*, cXyz const*, cXyz const*, f32, f32);
void posMoveF_grade(fopAc_ac_c*, cXyz const*, cXyz const*, f32, f32, cXyz const*, f32, f32,
                    cXyz const*);
void quat_rotBaseY(Quaternion*, cXyz const&);
void HitSeStart(cXyz const*, int, dCcD_GObjInf const*, u32);

template <typename T>
int PrmAbstract(const fopAc_ac_c* i_actor, T i_prmA, T i_prmB) {
    u32 param = fopAcM_GetParam(i_actor);
    return ((1 << i_prmA) - 1) & (param >> i_prmB);
}

class HioVarious_c : public JORReflexible {
public:
    HioVarious_c();
    static void init(JORReflexible*, const char*);
    static void clean(JORReflexible*);
    void genMessage(JORMContext*);

    static HioVarious_c M_hio;

private:
    /* 0x04 */ JORReflexible* field_0x4[16];
    /* 0x44 */ const char* field_0x44[16];
    /* 0x84 */ s8 field_0x84;
};

class HioThrow_c : public JORReflexible {
public:
    HioThrow_c();
    static void init(JORReflexible*, const char*);
    static void clean(JORReflexible*);
    void genMessage(JORMContext*);
    void listen(u32, const JOREvent*);
    void genObjectInfo(const JORGenEvent*);
    void listenNodeEvent(const JORNodeEvent*);
    void listenPropertyEvent(const JORPropertyEvent*);

    static HioThrow_c M_hio;
    static cXyz M_throw_pos_st;
    static cXyz M_throw_pos_now;

private:
    /* 0x04 */ JORReflexible* field_0x4[20];
    /* 0x54 */ const char* field_0x54[20];
    /* 0xA4 */ s8 field_0xa4;
};

class HioField_c : public JORReflexible {
public:
    HioField_c();
    void genMessage(JORMContext*);

    static HioField_c M_hio;

private:
    /* 0x04 */ JORReflexible* field_0x4[16];
    /* 0x44 */ const char* field_0x44[16];
    /* 0x84 */ s8 field_0x84;
};

class HioSpot_c : public JORReflexible {
public:
    HioSpot_c();
    void genMessage(JORMContext*);

    static HioSpot_c M_hio;

private:
    /* 0x04 */ JORReflexible* field_0x4[16];
    /* 0x44 */ const char* field_0x44[16];
    /* 0x84 */ s8 field_0x84;
};

class HioObj_c : public JORReflexible {
public:
    HioObj_c();
    void init();
    void clean();
    void genMessage(JORMContext*);

    static HioObj_c M_hio;
    static const char* M_node_name[4];
    static const JORReflexible* M_node_ptr[4];

private:
    /* 0x4 */ s8 M_no;
};
};  // namespace daObj

#endif /* D_A_D_A_OBJ_H */

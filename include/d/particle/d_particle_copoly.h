#ifndef D_PARTICLE_D_PARTICLE_COPOLY_H
#define D_PARTICLE_D_PARTICLE_COPOLY_H

#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"

class dBgS_Acch;
class dKy_tevstr_c;

class dPaPo_c {
public:
    /* 80050C9C */ void init(dBgS_Acch*, f32, f32);
    /* 80050CC4 */ void checkWaterIn(cXyz*, cXyz const*, dKy_tevstr_c const*, u32, s8, f32, f32);
    /* 80050E7C */ void setEffect(u32*, int, dKy_tevstr_c const*, cXyz const*, u32, u32,
                                  cXyz const*, csXyz const*, s8, u8*, u8*);
    /* 80051008 */ void setEffectCenter(dKy_tevstr_c const*, cXyz const*, u32, u32, cXyz const*,
                                        csXyz const*, cXyz const*, s8, f32, f32);
    /* 8005113C */ void clearID(u32*, u8*);
    /* 80051488 */ void getCenterEffType(int) const;
    /* 80051524 */ void getCenterEmitter(int, int);

    /* 0x00 */ u8 field_0x00[0x28];
    /* 0x28 */ dBgS_Acch* field_0x28;
    /* 0x2C */ float field_0x2c;
    /* 0x30 */ float field_0x30;
    /* 0x34 */ u8 field_0x34;
    /* 0x35 */ u8 field_0x35;
    /* 0x36 */ u8 field_0x36;
    /* 0x37 */ u8 field_0x37;
};

struct dPaPoT_c {
    /* 8005115C */ void setEffectTwo(dKy_tevstr_c const*, cXyz const*, u32, u32, cXyz const*,
                                     cXyz const*, cXyz const*, csXyz const*, cXyz const*, s8, f32,
                                     f32);
    /* 80051294 */ void clearTwoAllID();
    /* 80051470 */ void getRightEffType(int) const;
    /* 8005147C */ void getLeftEffType(int) const;
    /* 80051494 */ void getRightEmitter(int, int);
    /* 800514DC */ void getLeftEmitter(int, int);

    static u8 m_typeTwoData[36];
    static u8 m_emitterTwoData[36];

    u8 field_0x0[0x80];
};

#endif /* D_PARTICLE_D_PARTICLE_COPOLY_H */

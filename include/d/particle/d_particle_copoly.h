#ifndef D_PARTICLE_D_PARTICLE_COPOLY_H
#define D_PARTICLE_D_PARTICLE_COPOLY_H

#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"

class dBgS_Acch;
class dKy_tevstr_c;
class JPABaseEmitter;

class dPaPo_c {
public:
    /* 80050C9C */ void init(dBgS_Acch*, f32, f32);
    /* 80050CC4 */ int checkWaterIn(cXyz*, cXyz const*, dKy_tevstr_c const*, u32, s8, f32, f32);
    /* 80050E7C */ void setEffect(u32*, int, dKy_tevstr_c const*, cXyz const*, u32, u32,
                                  cXyz const*, csXyz const*, s8, u8*, u8*);
    /* 80051008 */ int setEffectCenter(dKy_tevstr_c const*, cXyz const*, u32, u32, cXyz const*,
                                        csXyz const*, cXyz const*, s8, f32, f32);
    /* 8005113C */ void clearID(u32*, u8*);
    /* 80051488 */ u8 getCenterEffType(int) const;
    /* 80051524 */ JPABaseEmitter* getCenterEmitter(int, int);

    void clearCenterID() { clearID(field_0x8[0], &field_0x36); }

    /* 0x00 */ u32 field_0x0[2];
    /* 0x08 */ u32 field_0x8[2][4];
    /* 0x28 */ dBgS_Acch* field_0x28;
    /* 0x2C */ f32 mWaterOffset;
    /* 0x30 */ f32 mRippleOffset;
    /* 0x34 */ u8 mCenterEffType[2];
    /* 0x36 */ u8 field_0x36;
    /* 0x37 */ u8 field_0x37;
};

class dPaPoT_c : public dPaPo_c {
public:
    /* 8005115C */ int setEffectTwo(dKy_tevstr_c const*, cXyz const*, u32, u32, cXyz const*,
                                     cXyz const*, cXyz const*, csXyz const*, cXyz const*, s8, f32,
                                     f32);
    /* 80051294 */ void clearTwoAllID();
    /* 80051470 */ u8 getRightEffType(int) const;
    /* 8005147C */ u8 getLeftEffType(int) const;
    /* 80051494 */ JPABaseEmitter* getRightEmitter(int, int);
    /* 800514DC */ JPABaseEmitter* getLeftEmitter(int, int);

    void clearLeftID() { clearID(mLeftEmitter[0], &field_0x7c); }
    void clearRightID() { clearID(mRightEmitter[0], &field_0x7d); }

    typedef u8 (dPaPoT_c::*effTypeFunc)(int) const;
    typedef JPABaseEmitter* (dPaPoT_c::*emitterFunc)(int, int);

    static effTypeFunc m_typeTwoData[];
    static emitterFunc m_emitterTwoData[];

    /* 0x38 */ u32 mLeftEmitter[2][4];
    /* 0x58 */ u32 mRightEmitter[2][4];
    /* 0x78 */ u8 mLeftEffType[2];
    /* 0x7A */ u8 mRightEffType[2];
    /* 0x7C */ u8 field_0x7c;
    /* 0x7D */ u8 field_0x7d;
};

class dPaPoF_c : public dPaPoT_c {
public:
    /* 800512E8 */ int setEffectFour(dKy_tevstr_c const*, cXyz const*, u32, u32, cXyz const*,
                                      cXyz const*, cXyz const*, cXyz const*, cXyz const*,
                                      csXyz const*, cXyz const*, s8, f32, f32);
    /* 80051424 */ void clearFourAllID();
    /* 8005156C */ u8 getBackRightEffType(int) const;
    /* 80051578 */ u8 getBackLeftEffType(int) const;
    /* 80051584 */ JPABaseEmitter* getBackRightEmitter(int, int);
    /* 800515CC */ JPABaseEmitter* getBackLeftEmitter(int, int);

    void clearBLeftID() { clearID(mBackLeftEmitter[0], &field_0xc4); }
    void clearBRightID() { clearID(mBackRightEmitter[0], &field_0xc5); }

    typedef u8 (dPaPoF_c::*effTypeFunc)(int) const;
    typedef JPABaseEmitter* (dPaPoF_c::*emitterFunc)(int, int);

    static effTypeFunc m_typeFourData[];
    static emitterFunc m_emitterFourData[];

    /* 0x80 */ u32 mBackLeftEmitter[2][4];
    /* 0xA0 */ u32 mBackRightEmitter[2][4];
    /* 0xC0 */ u8 mBackLeftEffType[2];
    /* 0xC2 */ u8 mBackRightEffType[2];
    /* 0xC4 */ u8 field_0xc4;
    /* 0xC5 */ u8 field_0xc5;
};

#endif /* D_PARTICLE_D_PARTICLE_COPOLY_H */

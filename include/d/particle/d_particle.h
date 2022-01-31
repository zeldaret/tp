#ifndef D_PARTICLE_D_PARTICLE_H
#define D_PARTICLE_D_PARTICLE_H

#include "JSystem/JParticle/JPAParticle.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class dPa_levelEcallBack : public JPAEmitterCallBack {
public:
    /* 8004FB18 */ virtual ~dPa_levelEcallBack();
    /* 8004FB8C */ virtual void cleanup();
};

class dPa_hermiteEcallBack_c : public dPa_levelEcallBack {
public:
    /* 8004F6B8 */ void setOldPosP(cXyz const*, cXyz const*);

    /* 8004FCC8 */ virtual ~dPa_hermiteEcallBack_c();
    /* 8004F6C4 */ virtual void executeAfter(JPABaseEmitter*);
    /* 8004FABC */ virtual void setup(JPABaseEmitter*, cXyz const*, csXyz const*, s8);

private:
    /* 0x04 */ f32 mRate;
    /* 0x08 */ int mMaxCnt;
    /* 0x0C */ cXyz* field_0xc;
    /* 0x10 */ cXyz* field_0x10;
    /* 0x14 */ cXyz* field_0x14;
};

class mDoDvdThd_toMainRam_c;
class cBgS_PolyInfo;
class JPAEmitterManager;
struct JPADrawInfo;

class dPa_simpleEcallBack : public JPAEmitterCallBack {
public:
    /* 8004ADF4 */ dPa_simpleEcallBack();
    /* 8004AF98 */ void create(JPAEmitterManager*, u16, u8);
    /* 8004B064 */ void createEmitter(JPAEmitterManager*);
    /* 8004B168 */ void set(cXyz const*, dKy_tevstr_c const*, u8, _GXColor const&, _GXColor const&,
                            int, f32);

    /* 8004FC08 */ virtual ~dPa_simpleEcallBack();
    /* 8004AE1C */ virtual void executeAfter(JPABaseEmitter*);
    /* 8004AF94 */ virtual void draw(JPABaseEmitter*);

    /* 0x04 */ JPABaseEmitter* mEmitter;
    /* 0x08 */ u16 mID;
    /* 0x0A */ u8 field_0xa;
    /* 0x0C */ s16 field_0xc;
    /* 0x10 */ void* mData;
};  // Size: 0x14

class dPa_control_c {
public:
    class level_c {
    public:
        class emitter_c {
        public:
            /* 8004B504 */ void onActive();
            /* 8004B544 */ void entry(u32, u16, JPABaseEmitter*, dPa_levelEcallBack*);
            /* 8004B5AC */ void cleanup();
            /* 8004FBFC */ emitter_c();

        private:
            /* 0x00 */ u32 mId;
            /* 0x04 */ u16 mNameId;
            /* 0x06 */ u8 mStatus;
            /* 0x08 */ JPABaseEmitter* mEmitter;
            /* 0x0C */ dPa_levelEcallBack* mCallback;
            /* 0x10 */ emitter_c* mPre;
            /* 0x14 */ emitter_c* mNext;
        };  // Size: 0x18

        /* 8004B688 */ level_c();
        /* 8004B7A8 */ void execute();
        /* 8004B6F8 */ void execute(dPa_control_c::level_c::emitter_c*);
        /* 8004B808 */ void cleanup();
        /* 8004B874 */ void get(u32);
        /* 8004B8B4 */ void forceOnEventMove(u32);
        /* 8004B8E8 */ void allForceOnEventMove();
        /* 8004B918 */ emitter_c* getEmitter(u32);
        /* 8004B94C */ void entry(u16, JPABaseEmitter*, dPa_levelEcallBack*);
        /* 8004BA40 */ void addTable(dPa_control_c::level_c::emitter_c*);
        /* 8004BA74 */ void cutTable(dPa_control_c::level_c::emitter_c*);

        /* 0x000 */ u32 field_0x0;
        /* 0x004 */ u8 field_0x4;
        /* 0x005 */ u8 field_0x5;
        /* 0x006 */ u8 field_0x6;
        /* 0x008 */ emitter_c mEmitter[0x80];
        /* 0xC08 */
    };

    /* 8004BACC */ dPa_control_c();
    /* 8004BB70 */ void getRM_ID(u16);
    /* 8004BB78 */ void createCommon(void const*);
    /* 8004BCDC */ void createRoomScene();
    /* 8004BDFC */ void readScene(u8, mDoDvdThd_toMainRam_c**);
    /* 8004BEB0 */ void createScene(void const*);
    /* 8004BF3C */ void removeRoomScene(bool);
    /* 8004BFD4 */ void removeScene(bool);
    /* 8004C054 */ void cleanup();
    /* 8004C078 */ void calc3D();
    /* 8004C0EC */ void calc2D();
    /* 8004C134 */ void calcMenu();
    /* 8004C188 */ void draw(JPADrawInfo*, u8);
    /* 8004C218 */ void setHitMark(u16, fopAc_ac_c*, cXyz const*, csXyz const*, cXyz const*, u32);
    /* 8004C838 */ void setWaterRipple(u32*, cBgS_PolyInfo&, cXyz const*, f32, dKy_tevstr_c const*,
                                       cXyz const*, s8);
    /* 8004CA90 */ u32 set(u8, u16, cXyz const*, dKy_tevstr_c const*, csXyz const*, cXyz const*, u8,
                           dPa_levelEcallBack*, s8, _GXColor const*, _GXColor const*, cXyz const*,
                           f32);
    /* 8004D4CC */ u32 set(u32, u8, u16, cXyz const*, dKy_tevstr_c const*, csXyz const*,
                           cXyz const*, u8, dPa_levelEcallBack*, s8, _GXColor const*,
                           _GXColor const*, cXyz const*, f32);
    /* 8004CF90 */ void getPolyColor(cBgS_PolyInfo&, int, _GXColor*, _GXColor*, u8*, f32*);
    /* 8004D6A4 */ u32 setPoly(u32, u16, cBgS_PolyInfo&, cXyz const*, dKy_tevstr_c const*,
                               csXyz const*, cXyz const*, int, dPa_levelEcallBack*, s8,
                               cXyz const*);
    /* 8004D068 */ void setPoly(u16, cBgS_PolyInfo&, cXyz const*, dKy_tevstr_c const*, csXyz const*,
                                cXyz const*, int, dPa_levelEcallBack*, s8, cXyz const*);
    /* 8004D128 */ void newSimple(u16, u8, u32*);
    /* 8004D1B8 */ void setSimple(u16, cXyz const*, dKy_tevstr_c const*, u8, _GXColor const&,
                                  _GXColor const&, int, f32);
    /* 8004D23C */ void getSimple(u16);
    /* 8004D770 */ void setStopContinue(u32);
    /* 8004D7C4 */ void setSimpleFoot(u32, u32*, cBgS_PolyInfo&, cXyz const*, dKy_tevstr_c const*,
                                      int, csXyz const*, cXyz const*, dPa_levelEcallBack*, s8,
                                      cXyz const*);
    /* 8004D988 */ void setCommonPoly(u32*, cBgS_PolyInfo*, cXyz const*, cXyz const*,
                                      dKy_tevstr_c const*, u32, u32, csXyz const*, cXyz const*, s8);

    void forceOnEventMove(u32 param_0) { field_0x210.forceOnEventMove(param_0); }
    level_c::emitter_c* getEmitter(u32 param_0) { return field_0x210.getEmitter(param_0); }
    u32 setNormal(u32 param_0, u16 param_1, const cXyz* param_2, const dKy_tevstr_c* param_3,
                  const csXyz* param_4, const cXyz* param_5, u8 param_6,
                  dPa_levelEcallBack* param_7, s8 param_8, const GXColor* param_9,
                  const GXColor* param_10, const cXyz* param_11, f32 param_12) {
        return set(param_0, 0, param_1, param_2, param_3, param_4, param_5, param_6, param_7,
                   param_8, param_9, param_10, param_11, param_12);
    }

    u32 setNormal(u16 param_1, const cXyz* param_2, const dKy_tevstr_c* param_3,
                  const csXyz* param_4, const cXyz* param_5, u8 param_6,
                  dPa_levelEcallBack* param_7, s8 param_8, const GXColor* param_9,
                  const GXColor* param_10, const cXyz* param_11, f32 param_12) {
        return set(0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8,
                   param_9, param_10, param_11, param_12);
    }

    static u8 mTsubo[64];
    static u8 mLifeBall[24];
    static u8 mWindViewMatrix[48];
    static u8 mEmitterMng[4];
    static u8 mWaterBubblePcallBack[4];
    static u8 mFsenthPcallBack[4];
    static u8 mLight8EcallBack[4];
    static u8 mLight8PcallBack[4];
    static u8 m_b_Light8EcallBack[4];
    static u8 m_b_Light8PcallBack[4];
    static u8 m_d_Light8EcallBack[4];
    static u8 m_d_Light8PcallBack[4];
    static u8 mParticleTracePCB[4 + 4 /* padding */];

private:
    /* 0x000 */ JKRSolidHeap* mHeap;
    /* 0x004 */ JPAResourceManager* mCommonResMng;
    /* 0x008 */ JKRExpHeap* m_resHeap;
    /* 0x00C */ JKRSolidHeap* m_sceneHeap;
    /* 0x010 */ void* m_sceneRes;
    /* 0x014 */ JPAResourceManager* mSceneResMng;
    /* 0x018 */ u8 field_0x18;
    /* 0x019 */ u8 field_0x19;
    /* 0x01C */ dPa_simpleEcallBack field_0x1c[25];
    /* 0x210 */ level_c field_0x210;
};

#endif /* D_PARTICLE_D_PARTICLE_H */

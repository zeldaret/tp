#ifndef D_PARTICLE_D_PARTICLE_H
#define D_PARTICLE_D_PARTICLE_H

#include "JSystem/JParticle/JPAParticle.h"
#include "d/particle/d_particle_name.h"
#include "dolphin/gx/GXStruct.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class JKRExpHeap;
class JKRSolidHeap;

class dPa_levelEcallBack : public JPAEmitterCallBack {
public:
    /* 8004FB18 */ virtual ~dPa_levelEcallBack();
    virtual void setup(JPABaseEmitter*, const cXyz*, const csXyz*, s8) = 0;
    /* 8004FB8C */ virtual void cleanup();
};

class dPa_hermiteEcallBack_c : public dPa_levelEcallBack {
public:
    dPa_hermiteEcallBack_c() {}

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

class dPa_followEcallBack : public dPa_levelEcallBack {
public:
    /* 80049580 */ dPa_followEcallBack(u8, u8);
    /* 80D22230 */ void __defctor();  // compiler generated

    /* 80050200 */ virtual ~dPa_followEcallBack();
    /* 800495BC */ virtual void execute(JPABaseEmitter*);
    /* 800496B0 */ virtual void draw(JPABaseEmitter*);
    /* 800496B4 */ virtual void setup(JPABaseEmitter*, cXyz const*, csXyz const*, s8);
    /* 80050284 */ virtual void cleanup();
    /* 8004974C */ virtual void end();

    void remove() { end(); }
    JPABaseEmitter* getEmitter() { return mpEmitter; }

    /* 0x04 */ JPABaseEmitter* mpEmitter;
    /* 0x08 */ const cXyz* field_0x8;
    /* 0x0C */ const csXyz* field_0xc;
    /* 0x10 */ u8 field_0x10;
    /* 0x11 */ u8 field_0x11;
    /* 0x12 */ u8 field_0x12;
    /* 0x13 */ u8 field_0x13;
};

class dPa_windPcallBack : public JPAParticleCallBack {
public:
    /* 8004FF2C */ virtual ~dPa_windPcallBack();
    /* 8004B4E0 */ virtual void execute(JPABaseEmitter*, JPABaseParticle*);
};

class dPa_wbPcallBack_c : public JPAParticleCallBack {
public:
    /* 8004FECC */ virtual ~dPa_wbPcallBack_c();
    /* 8004DC28 */ virtual void execute(JPABaseEmitter*, JPABaseParticle*);
};

class dPa_setColorEcallBack : public dPa_levelEcallBack {
public:
    dPa_setColorEcallBack(const GXColor& color) { mColor = color; }

    /* 800502E4 */ virtual ~dPa_setColorEcallBack();
    /* 800502B0 */ virtual void draw(JPABaseEmitter*);
    /* 800502E0 */ virtual void setup(JPABaseEmitter*, cXyz const*, csXyz const*, s8);

    /* 0x4 */ GXColor mColor;
};

class dPa_selectTexEcallBack : public dPa_levelEcallBack {
public:
    dPa_selectTexEcallBack(u8 param_0) { field_0x4 = param_0; }

    /* 8004FF8C */ virtual ~dPa_selectTexEcallBack();
    /* 8004ADC4 */ virtual void draw(JPABaseEmitter*);
    /* 80050010 */ virtual void setup(JPABaseEmitter*, cXyz const*, csXyz const*, s8);

    /* 0x4 */ u8 field_0x4;
};

class dPa_particleTracePcallBack_c : public JPAParticleCallBack {
public:
    /* 8004FC68 */ virtual ~dPa_particleTracePcallBack_c();
    /* 8004FAD4 */ virtual void execute(JPABaseEmitter*, JPABaseParticle*);
};

class dPa_modelPcallBack : public JPAParticleCallBack {
public:
    /* 80050038 */ virtual ~dPa_modelPcallBack();
    /* 8004A460 */ virtual void draw(JPABaseEmitter*, JPABaseParticle*);
};

class dPa_modelEcallBack : public dPa_levelEcallBack {
public:
    struct model_c {
        /* 8004A608 */ void set(J3DModelData*, dKy_tevstr_c const&, u8, void*, u8, u8);
        /* 8004A7AC */ void setup();
        /* 8004A88C */ void cleanup();
        /* 8004A8DC */ void draw(f32 (*)[4]);
        /* 8004AB88 */ ~model_c();
        /* 8004FB90 */ model_c();
    };

    dPa_modelEcallBack() { mModel = NULL; }

    /* 8004AB1C */ void create(u8);
    /* 8004ABC4 */ void remove();
    /* 8004AC00 */ static void setModel(JPABaseEmitter*, J3DModelData*, dKy_tevstr_c const&, u8,
                                        void*, u8, u8);
    /* 8004AC90 */ void resetModel(JPABaseEmitter*);
    /* 8004ACC0 */ void setupModel(JPABaseEmitter*);
    /* 8004ACEC */ void drawModel(JPABaseEmitter*, f32 (*)[4]);
    /* 8004AD28 */ void cleanupModel(JPABaseEmitter*);
    /* 8004AD58 */ void getModel(JPABaseEmitter*);
    /* 8004AD90 */ void getRotAxis(JPABaseEmitter*);

    /* 80050378 */ virtual ~dPa_modelEcallBack();
    /* 8004AA34 */ virtual void draw(JPABaseEmitter*);
    /* 80050014 */ virtual void drawAfter(JPABaseEmitter*);
    /* 8004AAA8 */ virtual void setup(JPABaseEmitter*, cXyz const*, csXyz const*, s8);

    static void setModel(JPABaseEmitter* param_0, J3DModelData* param_1,
                         const dKy_tevstr_c& param_2, u8 param_3, J3DAnmTexPattern* param_4,
                         u8 param_5) {
        setModel(param_0, param_1, param_2, param_3, param_4, param_5);
    }

    static dPa_modelEcallBack* getEcallback() { return mEcallback; }

    static dPa_modelEcallBack* mEcallback;
    static u8 mPcallback[4];
    static J3DModel* mModel;
};

class dPa_light8PcallBack : public JPAParticleCallBack {
public:
    /* 8004FE0C */ virtual ~dPa_light8PcallBack();
    /* 8004DD10 */ virtual void execute(JPABaseEmitter*, JPABaseParticle*);
    /* 8004DD1C */ virtual void draw(JPABaseEmitter*, JPABaseParticle*);
};

class dPa_light8EcallBack : public dPa_levelEcallBack {
public:
    /* 8005015C */ virtual ~dPa_light8EcallBack();
    /* 8004A340 */ virtual void draw(JPABaseEmitter*);
    /* 800501E0 */ virtual void drawAfter(JPABaseEmitter*);
    /* 8004979C */ virtual void setup(JPABaseEmitter*, cXyz const*, csXyz const*, s8);
};

class dPa_gen_d_light8PcallBack : public JPAParticleCallBack {
public:
    /* 8004FD4C */ virtual ~dPa_gen_d_light8PcallBack();
    /* 8004DD18 */ virtual void execute(JPABaseEmitter*, JPABaseParticle*);
    /* 8004ED44 */ virtual void draw(JPABaseEmitter*, JPABaseParticle*);
};

class dPa_gen_d_light8EcallBack : public dPa_levelEcallBack {
public:
    /* 800503FC */ virtual ~dPa_gen_d_light8EcallBack();
    /* 8004A388 */ virtual void draw(JPABaseEmitter*);
    /* 80050098 */ virtual void drawAfter(JPABaseEmitter*);
    /* 800497CC */ virtual void setup(JPABaseEmitter*, cXyz const*, csXyz const*, s8);
};

class dPa_gen_b_light8PcallBack : public JPAParticleCallBack {
public:
    /* 8004FDAC */ virtual ~dPa_gen_b_light8PcallBack();
    /* 8004DD14 */ virtual void execute(JPABaseEmitter*, JPABaseParticle*);
    /* 8004E6A8 */ virtual void draw(JPABaseEmitter*, JPABaseParticle*);
};

class dPa_gen_b_light8EcallBack : public dPa_levelEcallBack {
public:
    /* 800500B8 */ virtual ~dPa_gen_b_light8EcallBack();
    /* 8004A364 */ virtual void draw(JPABaseEmitter*);
    /* 8005013C */ virtual void drawAfter(JPABaseEmitter*);
    /* 800497B0 */ virtual void setup(JPABaseEmitter*, cXyz const*, csXyz const*, s8);
};

class dPa_fsenthPcallBack : public JPAParticleCallBack {
public:
    /* 8004FE6C */ virtual ~dPa_fsenthPcallBack();
    /* 8004DCA0 */ virtual void execute(JPABaseEmitter*, JPABaseParticle*);
    /* 8004DD0C */ virtual void draw(JPABaseEmitter*, JPABaseParticle*);
};

class dPa_simpleData_c {
public:
    /* 8004B024 */ ~dPa_simpleData_c();
    /* 8004B060 */ dPa_simpleData_c();

    u8 field_0x0[20];
};

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

            JPABaseEmitter* getEmitter() { return mEmitter; }
            emitter_c* getPre() { return mPre; }
            emitter_c* getNext() { return mNext; }
            void setPre(emitter_c* pre) { mPre = pre; }
            void setNext(emitter_c* next) { mNext = next; }

            u32 getId() { return mId; }
            void clearStatus() { mStatus = 0; }

            void onEventMove() { mStatus |= 2; }
            void offEventMove() { mStatus &= ~2; }
            bool isEventMove() { return mStatus & 2; }

            void offActive() { mStatus &= ~1; }
            bool isActive() { return mStatus & 1; }

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
        /* 8004B874 */ emitter_c* get(u32);
        /* 8004B8B4 */ void forceOnEventMove(u32);
        /* 8004B8E8 */ void allForceOnEventMove();
        /* 8004B918 */ JPABaseEmitter* getEmitter(u32);
        /* 8004B94C */ u32 entry(u16, JPABaseEmitter*, dPa_levelEcallBack*);
        /* 8004BA40 */ void addTable(dPa_control_c::level_c::emitter_c*);
        /* 8004BA74 */ void cutTable(dPa_control_c::level_c::emitter_c*);

        static const int EMITTER_MAX = 0x80;

        /* 0x000 */ u32 field_0x0;
        /* 0x004 */ u8 mFreeNo;
        /* 0x005 */ u8 field_0x5;
        /* 0x006 */ u8 field_0x6;
        /* 0x008 */ emitter_c mEmitter[0x80];
        /* 0xC08 */ emitter_c* mTable[0x100];
    };  // Size: 0x1008

    /* 8004BACC */ dPa_control_c();
    /* 8004BB70 */ static bool getRM_ID(u16);
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
    /* 8004CA90 */ JPABaseEmitter* set(u8, u16, cXyz const*, dKy_tevstr_c const*, csXyz const*, cXyz const*, u8,
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
    /* 8004D7C4 */ u32 setSimpleFoot(u32, u32*, cBgS_PolyInfo&, cXyz const*, dKy_tevstr_c const*,
                                      int, csXyz const*, cXyz const*, dPa_levelEcallBack*, s8,
                                      cXyz const*);
    /* 8004D988 */ void setCommonPoly(u32*, cBgS_PolyInfo*, cXyz const*, cXyz const*,
                                      dKy_tevstr_c const*, u32, u32, csXyz const*, cXyz const*, s8);

    void forceOnEventMove(u32 param_0) { field_0x210.forceOnEventMove(param_0); }
    JPABaseEmitter* getEmitter(u32 param_0) { return field_0x210.getEmitter(param_0); }

    u32 setNormal(u32 param_0, u16 param_1, const cXyz* param_2, const dKy_tevstr_c* param_3,
                  const csXyz* param_4, const cXyz* param_5, u8 param_6,
                  dPa_levelEcallBack* param_7, s8 param_8, const GXColor* param_9,
                  const GXColor* param_10, const cXyz* param_11, f32 param_12) {
        return set(param_0, 0, param_1, param_2, param_3, param_4, param_5, param_6, param_7,
                   param_8, param_9, param_10, param_11, param_12);
    }

    JPABaseEmitter* setNormal(u16 param_1, const cXyz* param_2, const dKy_tevstr_c* param_3,
                              const csXyz* param_4, const cXyz* param_5, u8 param_6,
                              dPa_levelEcallBack* param_7, s8 param_8, const GXColor* param_9,
                              const GXColor* param_10, const cXyz* param_11, f32 param_12) {
        return set(0, param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8,
                   param_9, param_10, param_11, param_12);
    }

    void drawFogPri0_B(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 7); }
    void drawNormalPri0_B(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 5); }
    void drawFogPri0_A(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 6); }
    void drawNormalPri0_A(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 4); }
    void drawFogPri4(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 11); }
    void drawProjection(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 3); }
    void drawFogPri1(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 8); }
    void drawNormal(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 0); }
    void drawFogPri2(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 9); }
    void drawNormalFog(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 1); }
    void drawFogPri3(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 10); }
    void drawNormalP1(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 2); }
    void drawDarkworld(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 12); }
    void drawFogScreen(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 13); }
    void draw2Dgame(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 14); }
    void draw2Dfore(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 15); }
    void draw2Dback(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 16); }
    void draw2DmenuFore(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 17); }
    void draw2DmenuBack(JPADrawInfo* i_drawInfo) { draw(i_drawInfo, 18); }

    JKRExpHeap* getResHeap() { return m_resHeap; }

    void levelAllForceOnEventMove() { field_0x210.allForceOnEventMove(); }

    static void onStatus(u8 status) { mStatus |= status; }
    static void offStatus(u8 status) { mStatus &= ~status; }
    static bool isStatus(u8 status) { return mStatus & status; }

    static dPa_selectTexEcallBack* getTsuboSelectTexEcallBack(int idx) {
        return ((dPa_selectTexEcallBack*)mTsubo) + idx;
    }

    static JPAEmitterManager* getEmitterManager() { return mEmitterMng; }

    static u8 mTsubo[64];
    static u8 mLifeBall[24];
    static Mtx mWindViewMatrix;
    static JPAEmitterManager* mEmitterMng;
    static u8 mWaterBubblePcallBack[4];
    static u8 mFsenthPcallBack[4];
    static u8 mLight8EcallBack[4];
    static u8 mLight8PcallBack[4];
    static u8 m_b_Light8EcallBack[4];
    static u8 m_b_Light8PcallBack[4];
    static u8 m_d_Light8EcallBack[4];
    static u8 m_d_Light8PcallBack[4];
    static u8 mParticleTracePCB[4 + 4 /* padding */];
    static u8 mStatus;

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

#ifndef D_D_DEMO_H
#define D_D_DEMO_H

#include "JSystem/JStudio/JStudio_JAudio2/control.h"
#include "JSystem/JStudio/JStudio_JParticle/object-particle.h"
#include "JSystem/JStudio/JStudio_JStage/object.h"
#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "Z2AudioLib/Z2SoundStarter.h"
#include "f_op/f_op_actor_mng.h"

class J3DModel;
class dDemo_actor_c;
class dDemo_camera_c;
class dDemo_ambient_c;
class dDemo_light_c;
class dDemo_fog_c;
class fopAc_ac_c;
struct jmessage_tControl;

class dDemo_object_c {
public:
    /* 80038F54 */ dDemo_object_c();
    /* 80038F70 */ ~dDemo_object_c();
    /* 80038FC0 */ JStage::TObject* appendActor(fopAc_ac_c*);
    /* 80039088 */ dDemo_actor_c* getActor(u8);
    /* 800390AC */ JStage::TObject* createCamera();
    /* 80039128 */ dDemo_camera_c* getActiveCamera();
    /* 8003913C */ JStage::TObject* createAmbient();
    /* 800391B8 */ JStage::TObject* appendLight();
    /* 80039258 */ JStage::TObject* createFog();
    /* 800392D4 */ void remove();

    /* 0x00 */ u8 mActorNum;
    /* 0x01 */ u8 mLightNum;
    /* 0x04 */ dDemo_actor_c* mpActors[32];
    /* 0x84 */ dDemo_camera_c* mpCamera;
    /* 0x88 */ dDemo_ambient_c* mpAmbient;
    /* 0x8C */ dDemo_light_c* mpLights[8];
    /* 0xAC */ dDemo_fog_c* mpFog;
};

// TODO: made up, figure out what this is
struct dDemo_prm_data {
    /* 0x0 */ u8 field_0x0[0x4 - 0x0];
    /* 0x4 */ s8 field_0x4;
    /* 0x5 */ u8 field_0x5[0x6 - 0x5];
    /* 0x6 */ s8 field_0x6;
    /* 0x7 */ s8 field_0x7;
    /* 0x8 */ u8 field_0x8[0xB - 0x8];
    /* 0xB */ s8 field_0xb;
    /* 0xC */ u8 field_0xc[0xF - 0xC];
    /* 0xF */ s8 field_0xf;
};

class dDemo_prm_c {
public:
    dDemo_prm_c() { mData = NULL; }
    dDemo_prm_data* getData() { return mData; }

    /* 0x0 */ u32 field_0x0;
    /* 0x4 */ dDemo_prm_data* mData;
};

class dDemo_actor_c : public JStage::TActor {
public:
    enum Enable_e {
        ENABLE_TRANS_e = (1 << 1),
        ENABLE_SCALE_e = (1 << 2),
        ENABLE_ROTATE_e = (1 << 3),
        ENABLE_SHAPE_e = (1 << 4),
        ENABLE_ANM_e = (1 << 5),
        ENABLE_ANM_FRAME_e = (1 << 6),
        ENABLE_ANM_TRANSITION_e = (1 << 7),
        ENABLE_TEX_ANM = (1 << 8),
        ENABLE_TEX_ANM_FRAME_e = (1 << 9),
    };

    /* 80038020 */ dDemo_actor_c();
    /* 80038128 */ fopAc_ac_c* getActor();
    /* 8003815C */ void setActor(fopAc_ac_c*);
    /* 8003819C */ f32 getPrm_Morf();
    /* 80038338 */ int getDemoIDData(int*, int*, int*, u16*, u8*);
    
    /* 80038098 */ virtual ~dDemo_actor_c();
    /* 800387EC */ virtual void JSGSetData(u32, void const*, u32);
    /* 8003A05C */ virtual s32 JSGFindNodeID(char const* param_0) const {
        JUT_ASSERT(0, mModel != 0);
        return mModel->getModelData()->getJointName()->getIndex(param_0);
    }
    /* 8003A088 */ virtual bool JSGGetNodeTransformation(u32 param_0, Mtx param_1) const {
        JUT_ASSERT(0, mModel != 0);
        cMtx_copy(mModel->getAnmMtx((u16)param_0), param_1);
        return true;
    }
    /* 8003A0D8 */ virtual void JSGGetTranslation(Vec* o_trans) const {
        *o_trans = mTrans;
    }
    /* 80038920 */ virtual void JSGSetTranslation(Vec const&);
    /* 8003A0F4 */ virtual void JSGGetScaling(Vec* o_scale) const {
        *o_scale = mScale;
    }
    /* 80038980 */ virtual void JSGSetScaling(Vec const&);
    /* 8003A110 */ virtual void JSGGetRotation(Vec* param_0) const {
        param_0->x = mRotate.x * 0.005493164f;
        param_0->y = mRotate.y * 0.005493164f;
        param_0->z = mRotate.z * 0.005493164f;
    }
    /* 800389A8 */ virtual void JSGSetRotation(Vec const&);
    /* 80038A0C */ virtual void JSGSetShape(u32);
    /* 80038A20 */ virtual void JSGSetAnimation(u32);
    /* 80038A40 */ virtual void JSGSetAnimationFrame(f32);
    /* 8003A0C8 */ virtual f32 JSGGetAnimationFrameMax() const {
        return mAnmFrameMax;
    }
    /* 80038A54 */ virtual void JSGSetAnimationTransition(f32);
    /* 80038A68 */ virtual void JSGSetTextureAnimation(u32);
    /* 80038A7C */ virtual void JSGSetTextureAnimationFrame(f32);
    /* 8003A0D0 */ virtual f32 JSGGetTextureAnimationFrameMax() const {
        return mTexAnmFrameMax;
    }

    void setModel(J3DModel* p_model) { mModel = p_model; }
    u8 checkEnable(u16 flag) { return mFlags & flag; }
    void onEnable(u16 flag) { mFlags |= flag; }
    cXyz& getTrans() { return mTrans; }
    cXyz& getScale() { return mScale; }
    csXyz& getRatate() { return mRotate; }
    u32 getAnmId() { return mAnmId; }
    u32 getOldAnmId() { return mOldAnmId; }
    void setOldAnmId(u32 id) { mOldAnmId = id; }
    void setAnmFrameMax(f32 max) { mAnmFrameMax = max; }
    f32 getAnmFrame() { return mAnmFrame; }
    dDemo_prm_c* getPrm() { return &mPrm; }

private:
    /* 0x04 */ u16 mFlags;
    /* 0x08 */ cXyz mTrans;
    /* 0x14 */ cXyz mScale;
    /* 0x20 */ csXyz mRotate;
    /* 0x28 */ u32 mShape;
    /* 0x2C */ u32 mAnmId;
    /* 0x30 */ f32 mAnmFrame;
    /* 0x34 */ f32 mAnmTransition;
    /* 0x38 */ f32 mAnmFrameMax;
    /* 0x3C */ u32 mTexAnm;
    /* 0x40 */ f32 mTexAnmFrame;
    /* 0x44 */ f32 mTexAnmFrameMax;
    /* 0x48 */ J3DModel* mModel;
    /* 0x4C */ dDemo_prm_c mPrm;
    /* 0x54 */ u32 field_0x54;
    /* 0x58 */ fpc_ProcID mActorId;
    /* 0x5C */ u32 mOldAnmId;
    /* 0x60 */ u32 mBtpId;
    /* 0x64 */ u32 mBtkId;
    /* 0x68 */ u32 mBrkId;
};

class dDemo_system_c : public JStage::TSystem {
public:
    dDemo_system_c() { mpObject = NULL; }

    /* 80039AAC */ virtual ~dDemo_system_c();
    /* 80039528 */ virtual int JSGFindObject(JStage::TObject**, char const*,
                                              JStage::TEObject) const;
    
    void setObject(dDemo_object_c* i_object) { mpObject = i_object; }

private:
    /* 0x4 */ dDemo_object_c* mpObject;
};

class dDemo_particle_c : public JStudio_JParticle::TCreateObject {
public:
    dDemo_particle_c(JPAEmitterManager* p_emitMgr, const JStage::TSystem* p_system)
        : JStudio_JParticle::TCreateObject(p_emitMgr, p_system) {}

    /* 80039F9C */ virtual ~dDemo_particle_c();
    /* 80039F1C */ virtual JPABaseEmitter* emitter_create(u32);
};

class dDemo_light_c : public JStage::TLight {
public:
    enum Enable_e {
        ENABLE_LIGHT_TYPE_e = (1 << 0),
        ENABLE_POSITION_e = (1 << 1),
        ENABLE_COLOR_e = (1 << 2),
        ENABLE_DIST_ATTEN_e = (1 << 3),
        ENABLE_ANGLE_ATTEN_e = (1 << 4),
        ENABLE_DIRECTION_e = (1 << 5),
    };

    dDemo_light_c() {
        mFlags = 0;
    }

    /* 80039468 */ virtual ~dDemo_light_c();
    /* 80038E20 */ virtual void JSGSetLightType(JStage::TELight);
    /* 80038E34 */ virtual void JSGSetPosition(Vec const&);
    /* 80038E5C */ virtual void JSGSetColor(GXColor);
    /* 80038E8C */ virtual void JSGSetDistanceAttenuation(f32, f32, GXDistAttnFn);
    /* 80038EA8 */ virtual void JSGSetAngleAttenuation(f32, GXSpotFn);
    /* 80038EC0 */ virtual void JSGSetDirection(Vec const&);

    void onEnable(u8 flag) { mFlags |= flag; }

private:
    /* 0x04 */ u8 mFlags;
    /* 0x08 */ JStage::TELight mLightType;
    /* 0x0C */ GXDistAttnFn mDistAttenFn;
    /* 0x10 */ GXSpotFn mSpotFn;
    /* 0x14 */ cXyz mPosition;
    /* 0x20 */ GXColor mColor;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ cXyz mDirection;
};

class dDemo_fog_c : public JStage::TFog {
public:
    enum Enable_e {
        ENABLE_FOG_FN_e = (1 << 0),
        ENABLE_START_Z_e = (1 << 1),
        ENABLE_END_Z_e = (1 << 2),
        ENABLE_COLOR_e = (1 << 3),
    };

    dDemo_fog_c() {
        mFlags = 0;
    }

    /* 80039408 */ virtual ~dDemo_fog_c();
    /* 80038EE8 */ virtual void JSGSetFogFunction(GXFogType);
    /* 80038EFC */ virtual void JSGSetStartZ(f32);
    /* 80038F10 */ virtual void JSGSetEndZ(f32);
    /* 80038F24 */ virtual void JSGSetColor(GXColor);

    void onEnable(u8 flag) { mFlags |= flag; }

private:
    /* 0x04 */ u8 mFlags;
    /* 0x05 */ u8 mFogType;
    /* 0x08 */ f32 mStartZ;
    /* 0x0C */ f32 mEndZ;
    /* 0x10 */ GXColor mColor;
};

class dDemo_camera_c : public JStage::TCamera {
public:
    enum Enable_e {
        ENABLE_PROJ_NEAR_e = (1 << 0),
        ENABLE_PROJ_FAR_e = (1 << 1),
        ENABLE_PROJ_FOVY_e = (1 << 2),
        ENABLE_PROJ_ASPECT_e = (1 << 3),
        ENABLE_VIEW_POS_e = (1 << 4),
        ENABLE_VIEW_UP_VEC_e = (1 << 5),
        ENABLE_VIEW_TARG_POS_e = (1 << 6),
        ENABLE_VIEW_ROLL_e = (1 << 7),
    };

    dDemo_camera_c() {
        mFlags = 0;
    }

    /* 80039FFC */ virtual ~dDemo_camera_c();
    /* 80038AC4 */ virtual f32 JSGGetProjectionNear() const;
    /* 80038AF8 */ virtual void JSGSetProjectionNear(f32);
    /* 80038B0C */ virtual f32 JSGGetProjectionFar() const;
    /* 80038B40 */ virtual void JSGSetProjectionFar(f32);
    /* 80038B54 */ virtual f32 JSGGetProjectionFovy() const;
    /* 80038B88 */ virtual void JSGSetProjectionFovy(f32);
    /* 80038B9C */ virtual f32 JSGGetProjectionAspect() const;
    /* 80038BD0 */ virtual void JSGSetProjectionAspect(f32);
    /* 80038BE4 */ virtual void JSGGetViewPosition(Vec*) const;
    /* 80038C44 */ virtual void JSGSetViewPosition(Vec const&);
    /* 80038C6C */ virtual void JSGGetViewUpVector(Vec*) const;
    /* 80038CD0 */ virtual void JSGSetViewUpVector(Vec const&);
    /* 80038CF8 */ virtual void JSGGetViewTargetPosition(Vec*) const;
    /* 80038D5C */ virtual void JSGSetViewTargetPosition(Vec const&);
    /* 80038D84 */ virtual f32 JSGGetViewRoll() const;
    /* 80038DDC */ virtual void JSGSetViewRoll(f32);

    void onEnable(u8 flag) { mFlags |= flag; }
    bool checkEnable(u8 flag) { return mFlags & flag; }

    cXyz& getTarget() { return mViewTargetVector; }
    cXyz& getTrans() { return mViewPos; }
    cXyz& getUp() { return mViewUpVector; }
    f32 getFovy() { return mProjFovy; }
    f32 getRoll() { return mViewRoll; }

private:
    /* 0x04 */ u8 mFlags;
    /* 0x08 */ f32 mProjNear;
    /* 0x0C */ f32 mProjFar;
    /* 0x10 */ f32 mProjFovy;
    /* 0x14 */ f32 mProjAspect;
    /* 0x18 */ cXyz mViewPos;
    /* 0x24 */ cXyz mViewUpVector;
    /* 0x30 */ cXyz mViewTargetVector;
    /* 0x3C */ f32 mViewRoll;
};

class dDemo_ambient_c : public JStage::TAmbientLight {
public:
    enum Enable_e {
        ENABLE_COLOR_e = (1 << 0),
    };

    dDemo_ambient_c() {
        mFlags = 0;
    }

    /* 800394C8 */ virtual ~dDemo_ambient_c();
    /* 80038DF0 */ virtual void JSGSetColor(GXColor);

    void onEnable(u8 flag) { mFlags |= flag; }

private:
    /* 0x04 */ u8 mFlags;
    /* 0x05 */ GXColor mColor;
};

namespace {
class jstudio_tCreateObject_message : public JStudio::TCreateObject {
public:
    jstudio_tCreateObject_message() {}

    virtual ~jstudio_tCreateObject_message();
    virtual bool create(JStudio::TObject**, const JStudio::stb::data::TParse_TBlock_object&);
};

class jstudio_tAdaptor_message : public JStudio::TAdaptor_message {
public:
    typedef JStudio::TObject_message ObjectType;

    jstudio_tAdaptor_message() {}

    virtual ~jstudio_tAdaptor_message();
    virtual void adaptor_do_MESSAGE(JStudio::data::TEOperationData, const void*, u32);
};

};  // namespace

class dDemo_c {
public:
    /* 80039678 */ static void create();
    /* 80039910 */ static void remove();
    /* 80039B6C */ static int start(u8 const*, cXyz*, f32);
    /* 80039CF8 */ static void end();
    /* 80039D4C */ static void branch();
    /* 80039DA4 */ static int update();
    /* 80039EDC */ static void setBranchType(u16);
    /* 80039EEC */ static void setBranchId(u16, s16);
    /* 80039F04 */ static void reset();

    static dDemo_actor_c* getActor(u8 param_0) { return m_object->getActor(param_0); }
    static u32 getFrameNoMsg() { return m_frameNoMsg; }
    static s32 getMode() { return m_mode; }
    static u32 getFrame() { return m_frame; }
    static JStudio::stb::TControl* getControl() { return m_control; }
    static bool isStatus(u32 status) { return m_status & status; }
    static void onStatus(u32 status) { m_status |= status; }
    static void offStatus(u32 status) { m_status &= ~status; }
    static void setBranchData(const u8* p_data) { m_branchData = p_data; }
    static s16 getBranchId() { return m_branchId; }
    static s16 getBranchNum() { return m_branchNum; }
    static jmessage_tControl* getMesgControl() { return m_mesgControl; }

    static dDemo_camera_c* getCamera() {
        JUT_ASSERT(0, m_object != 0);
        return m_object->getActiveCamera();
    }

    static s16 m_branchId;
    static s16 m_branchNum;
    static dDemo_system_c* m_system;
    static JStudio::TControl* m_control;
    static JStudio_JStage::TCreateObject* m_stage;
    static JStudio_JAudio2::TCreateObject* m_audio;
    static dDemo_particle_c* m_particle;
    static jstudio_tCreateObject_message* m_message;
    static JStudio::TFactory* m_factory;
    static jmessage_tControl* m_mesgControl;
    static dDemo_object_c* m_object;
    static const u8* m_data;
    static int m_frame;
    static cXyz* m_translation;
    static f32 m_rotationY;
    static u32 m_frameNoMsg;
    static s32 m_mode;
    static u32 m_status;
    static u16 m_branchType;
    static const u8* m_branchData;
};

#endif /* D_D_DEMO_H */

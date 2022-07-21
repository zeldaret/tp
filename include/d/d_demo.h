#ifndef D_D_DEMO_H
#define D_D_DEMO_H

#include "JSystem/JGadget/binary.h"
#include "JSystem/JStage/JSGAmbientLight.h"
#include "JSystem/JStage/JSGCamera.h"
#include "JSystem/JStage/JSGFog.h"
#include "JSystem/JStage/JSGLight.h"
#include "JSystem/JStudio/JStudio/jstudio-object.h"
#include "JSystem/JStudio/JStudio_JParticle/object-particle.h"
#include "JSystem/JStudio/JStudio_JStage/object.h"
#include "JSystem/JStudio/JStudio_JAudio2/control.h"
#include "JSystem/JMessage/control.h"
#include "f_op/f_op_actor.h"

class dDemo_actor_c;
class dDemo_object_c {
public:
    /* 80038F54 */ dDemo_object_c();
    /* 80038F70 */ ~dDemo_object_c();
    /* 80038FC0 */ void appendActor(fopAc_ac_c*);
    /* 80039088 */ static dDemo_actor_c* getActor(u8);
    /* 800390AC */ void createCamera();
    /* 80039128 */ void getActiveCamera();
    /* 8003913C */ void createAmbient();
    /* 800391B8 */ void appendLight();
    /* 80039258 */ void createFog();
    /* 800392D4 */ void remove();
};

class dDemo_actor_c {
public:
    /* 80038020 */ dDemo_actor_c();
    /* 80038098 */ ~dDemo_actor_c();
    /* 80038128 */ void getActor();
    /* 8003815C */ void setActor(fopAc_ac_c*);
    /* 8003819C */ void getPrm_Morf();
    /* 80038338 */ void getDemoIDData(int*, int*, int*, u16*, u8*);
    /* 800387EC */ void JSGSetData(u32, void const*, u32);
    /* 80038920 */ void JSGSetTranslation(Vec const&);
    /* 80038980 */ void JSGSetScaling(Vec const&);
    /* 800389A8 */ void JSGSetRotation(Vec const&);
    /* 80038A0C */ void JSGSetShape(u32);
    /* 80038A20 */ void JSGSetAnimation(u32);
    /* 80038A40 */ void JSGSetAnimationFrame(f32);
    /* 80038A54 */ void JSGSetAnimationTransition(f32);
    /* 80038A68 */ void JSGSetTextureAnimation(u32);
    /* 80038A7C */ void JSGSetTextureAnimationFrame(f32);
    /* 8003A05C */ void JSGFindNodeID(char const*) const;
    /* 8003A088 */ void JSGGetNodeTransformation(u32, f32 (*)[4]) const;
    /* 8003A0C8 */ void JSGGetAnimationFrameMax() const;
    /* 8003A0D0 */ void JSGGetTextureAnimationFrameMax() const;
    /* 8003A0D8 */ void JSGGetTranslation(Vec*) const;
    /* 8003A0F4 */ void JSGGetScaling(Vec*) const;
    /* 8003A110 */ void JSGGetRotation(Vec*) const;
};

class dDemo_system_c : public JStage::TSystem {
public:
    /* 80039AAC */ virtual ~dDemo_system_c();
    /* 80039528 */ virtual bool JSGFindObject(JStage::TObject**, char const*,
                                              JStage::TEObject) const;

private:
    /* 0x4 */ dDemo_object_c* mpObject;
};

class dDemo_particle_c : public JStudio_JParticle::TCreateObject {
public:
    /* 80039F9C */ virtual ~dDemo_particle_c();
    /* 80039F1C */ virtual void emitter_create(u32);
};

class dDemo_light_c : public JStage::TLight {
public:
    /* 80039468 */ virtual ~dDemo_light_c();
    /* 80038E20 */ virtual void JSGSetLightType(JStage::TELight);
    /* 80038E34 */ virtual void JSGSetPosition(Vec const&);
    /* 80038E5C */ virtual void JSGSetColor(GXColor);
    /* 80038E8C */ virtual void JSGSetDistanceAttenuation(f32, f32, GXDistAttnFn);
    /* 80038EA8 */ virtual void JSGSetAngleAttenuation(f32, GXSpotFn);
    /* 80038EC0 */ virtual void JSGSetDirection(Vec const&);

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
    /* 80039408 */ virtual ~dDemo_fog_c();
    /* 80038EE8 */ virtual void JSGSetFogFunction(GXFogType);
    /* 80038EFC */ virtual void JSGSetStartZ(f32);
    /* 80038F10 */ virtual void JSGSetEndZ(f32);
    /* 80038F24 */ virtual void JSGSetColor(GXColor);

private:
    /* 0x04 */ u8 mFlags;
    /* 0x05 */ u8 mFogType;
    /* 0x08 */ f32 mStartZ;
    /* 0x0C */ f32 mEndZ;
    /* 0x10 */ GXColor mColor;
};

class dDemo_camera_c : public JStage::TCamera {
public:
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
    /* 800394C8 */ virtual ~dDemo_ambient_c();
    /* 80038DF0 */ virtual void JSGSetColor(GXColor);

private:
    /* 0x04 */ u8 mFlags;
    /* 0x05 */ GXColor mColor;
};

class dDemo_c {
public:
    /* 80039678 */ static void create();
    /* 80039910 */ void remove();
    /* 80039B6C */ void start(u8 const*, cXyz*, f32);
    /* 80039CF8 */ static void end();
    /* 80039D4C */ void branch();
    /* 80039DA4 */ static void update();
    /* 80039EDC */ void setBranchType(u16);
    /* 80039EEC */ void setBranchId(u16, s16);
    /* 80039F04 */ void reset();

    static dDemo_actor_c* getActor(u8 param_0) { return m_object->getActor(param_0); }
    static u32 getFrameNoMsg() { return m_frameNoMsg; }
    static s32 getMode() { return m_mode; }
    static JStudio::stb::TControl* getControl() { return m_control; }

    static s16 m_branchId;
    static dDemo_system_c* m_system;
    static JStudio::stb::TControl* m_control;
    static JStudio_JStage::TCreateObject* m_stage;
    static JStudio_JAudio2::TCreateObject* m_audio;
    static dDemo_particle_c* m_particle;
    static u8 m_message[4];
    static JStudio::TFactory* m_factory;
    static jmessage_tControl* m_mesgControl;
    static dDemo_object_c* m_object;
    static u8* m_data;
    static int m_frame;
    static cXyz* m_translation;
    static f32 m_rotationY;
    static u32 m_frameNoMsg;
    static s32 m_mode;
    static u32 m_status;
    static u16 m_branchType;
    static u8* m_branchData;
};

#endif /* D_D_DEMO_H */

#ifndef D_D_DEMO_H
#define D_D_DEMO_H

#include "JSystem/JStudio/JStudio/stb.h"
#include "dolphin/types.h"

struct cXyz;
struct Vec;
struct fopAc_ac_c;
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

    static u16 m_branchId[1 + 3 /* padding */];
    static u8 m_system[4];
    static JStudio::stb::TControl* m_control;
    static u8 m_stage[4];
    static u8 m_audio[4];
    static u8 m_particle[4];
    static u8 m_message[4];
    static u8 m_factory[4];
    static u8 m_mesgControl[4];
    static dDemo_object_c* m_object;
    static u8 m_data[4];
    static u8 m_frame[4];
    static u8 m_translation[4];
    static f32 m_rotationY;
    static u32 m_frameNoMsg;
    static s32 m_mode;
    static u8 m_status[4];
    static u8 m_branchType[2 + 2 /* padding */];
    static u8 m_branchData[4];
};

#endif /* D_D_DEMO_H */

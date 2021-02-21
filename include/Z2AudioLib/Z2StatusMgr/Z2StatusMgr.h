#ifndef Z2STATUSMGR_H_
#define Z2STATUSMGR_H_

#include "global.h"
#include "mtx_vec.h"

struct Z2StatusMgr {
    Z2StatusMgr(void);
    void heartGaugeOn(void);
    void processHeartGaugeSound(void);
    void talkIn(void);
    void talkOut(void);
    void menuIn(void);
    void menuOut(void);
    bool isMovieDemo(void);
    void setDemoName(char*);
    void processTime(void);
    bool checkDayTime(void);
    void setEventBit(void*);
    void setCameraPolygonPos(Vec*);
    void setCameraGroupInfo(u8);
    void setCameraInWaterDepth(float);

    //! @todo there are a number of inlines only called from rels: see CHN_debug

    u8 hour;
    u8 minute;
    u8 weekday;
    u8 unk3;
    s16 time;
    u8 padding[2];
    void* event_bit;
    bool is_menu_in;
    u8 padding2[3];
    u32 camera_map_info;
    u32 unk20;
    float underwater_depth;
    float camera_in_water_depth_ratio;
    Vec polygon_position;
    u8 demo_status;
    u8 heart_gauge_on;
    u8 padding3[2];
};

extern "C" {
void __ct__11Z2StatusMgrFv(void);

bool isMovieDemo__11Z2StatusMgrFv(void);
void menuIn__11Z2StatusMgrFv(void);
void menuOut__11Z2StatusMgrFv(void);
void processHeartGaugeSound__11Z2StatusMgrFv(void);
void processTime__11Z2StatusMgrFv(void);
void setCameraGroupInfo__11Z2StatusMgrFUc(u8);
void setCameraPolygonPos__11Z2StatusMgrFP3Vec(Vec*);
void setDemoName__11Z2StatusMgrFPc(char*);
void setEventBit__11Z2StatusMgrFPv(void*);

void Z2SceneMgr_NS_sceneBgmStart(void);
}

extern Z2StatusMgr* lbl_80450B7C;  // Z2StatusMgr sInstance
extern u8 lbl_8039BC88[0x320];     // stringBase0
extern double lbl_80455A28;
extern u32 lbl_803CA508;
extern float lbl_80455A18;  // polygon_position init to 1.0E7
extern float lbl_80455A1C;  // underwater_depth / unk28 init to 0.0
extern float lbl_80455A20;  // processHeartGaugeSound etc
extern float lbl_80455A24;  // processHeartGaugeSound
extern u8 lbl_80451124;     // used in processHeartGaugeSound
extern float lbl_80455A30;
extern float lbl_80455A34;

#endif
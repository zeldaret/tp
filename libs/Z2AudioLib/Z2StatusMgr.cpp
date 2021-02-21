#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"
#include "JSystem/JAudio2/JAISoundParamsMove.h"
#include "Z2AudioLib/Z2Calc/Z2Calc.h"
#include "Z2AudioLib/Z2FxLineMgr/Z2FxLineMgr.h"
#include "Z2AudioLib/Z2SceneMgr/Z2SceneMgr.h"
#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "Z2AudioLib/Z2SeqMgr/Z2SeqMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "msl_c/string.h"

extern u8 lbl_80451360;
extern u8 lbl_80450B80;
extern u8 lbl_80450B60;
extern u8 lbl_80450B40;

Z2StatusMgr::Z2StatusMgr() {
    lbl_80450B7C = this;
    this->hour = 0;
    this->minute = 0;
    this->weekday = 0;
    this->unk3 = 0;
    this->time = 3072;
    this->event_bit = (void*)0;
    this->is_menu_in = false;
    this->camera_map_info = 0;
    float polygon_pos_init = lbl_80455A18;
    this->polygon_position.x = polygon_pos_init;
    this->polygon_position.y = polygon_pos_init;
    this->polygon_position.z = polygon_pos_init;
    float depth_init = lbl_80455A1C;
    this->underwater_depth = depth_init;
    this->camera_in_water_depth_ratio = depth_init;
    this->demo_status = 0;
    this->heart_gauge_on = 0;
}

void Z2StatusMgr::heartGaugeOn(void) {
    this->heart_gauge_on = 2;
}

asm void Z2StatusMgr::processHeartGaugeSound(void) {
    nofralloc
#include "Z2AudioLib/Z2StatusMgr/asm/func_802B5F7C.s"
}

void Z2StatusMgr::talkIn(void) {
    u8 is_demo;

    is_demo = isMovieDemo();
    if (is_demo == false) {
        lbl_80450B84->talkInBgm();
        lbl_80450B88->talkInSe();
    }
}

void Z2StatusMgr::talkOut(void) {
    u8 is_demo;

    is_demo = isMovieDemo();
    if (is_demo == false) {
        lbl_80450B84->talkOutBgm();
        lbl_80450B88->talkOutSe();
    }
}

void Z2StatusMgr::menuIn() {
    lbl_80450B84->menuInBgm();
    lbl_80450B88->menuInSe();

    this->is_menu_in = true;
}

void Z2StatusMgr::menuOut() {
    lbl_80450B84->menuOutBgm();
    lbl_80450B88->talkOutSe();

    this->is_menu_in = false;
}

// right instructions, wrong registers
#ifdef NONMATCHING
bool Z2StatusMgr::isMovieDemo(void) {
    bool uvar2;

    uvar2 = false;
    if (this->demo_status == 2 || this->demo_status == 8 || this->demo_status == 9) {
        uvar2 = true;
    }
    return uvar2;
}
#else
asm bool Z2StatusMgr::isMovieDemo(void) {
    nofralloc
#include "Z2AudioLib/Z2StatusMgr/asm/func_802B61BC.s"
}
#endif

asm void Z2StatusMgr::setDemoName(char*) {
    nofralloc
#include "Z2AudioLib/Z2StatusMgr/asm/func_802B61E8.s"
}

void Z2StatusMgr::processTime(void) {
    u16 temp = this->hour * 256;
    this->time = temp + minute;
}

bool Z2StatusMgr::checkDayTime(void) {
    if (this->hour >= 6 && this->hour < 19) {
        return true;
    } else {
        return false;
    }
}

void Z2StatusMgr::setEventBit(void* event_bit) {
    this->event_bit = event_bit;
}

void Z2StatusMgr::setCameraPolygonPos(Vec* polygon_pos) {
    if (polygon_pos == 0) {
        return;
    } else {
        this->polygon_position.x = polygon_pos->x;
        this->polygon_position.y = polygon_pos->y;
        this->polygon_position.z = polygon_pos->z;
    }
}

void Z2StatusMgr::setCameraGroupInfo(u8 param1) {
    return;
}

asm void Z2StatusMgr::setCameraInWaterDepth(float) {
    nofralloc
#include "Z2AudioLib/Z2StatusMgr/asm/func_802B6788.s"
}
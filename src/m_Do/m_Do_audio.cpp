#include "global.h"
#include "JSystem/JAudio2/JAUClusterSound/JAUClusterSound.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"
#include "m_Do/m_Do_Reset/m_Do_Reset.h"
#include "m_Do/m_Do_main/m_Do_main.h"
#include "Z2AudioLib/Z2AudioLib.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"

void mDoAud_zelAudio_c::reset(void){
    lbl_80450BBA = false;
}


asm void mDoAud_Create(void){
    nofralloc
    #include "m_Do/m_Do_audio/asm/mDoAud_Create.s"
}

void mDoAud_Execute(void) {
    if (lbl_80450BB8 == false) {
        if((int)m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x10 == 0 && (int)m_Do_Reset_NS_mDoRst_NS_mResetData->field_0x11 == 0){
            mDoAud_Create();
        }
    }else{
        lbl_803DBF4C.gframeProcess();
    }
}

void mDoAud_setSceneName(const char *spot,long room,long layer){
    lbl_80451368->sceneMgr.setSceneName((char*)spot, room, layer);
}

bool mDoAud_load1stDynamicWave(){
    lbl_80451368->sceneMgr.load1stDynamicWave();
    return true;
}

void mDoAud_setFadeOutStart(u8 param_1){
    lbl_80451368->sceneMgr.setFadeOutStart((int)param_1);
}

void mDoAud_setFadeInStart(u8 param_1){
    lbl_80451368->sceneMgr.setFadeInStart((int)param_1);
}

void mDoAud_resetProcess(){
    if (lbl_80450BB9 == false) {
        lbl_80451368->resetProcess(0x1e,false);
        lbl_80450BB9 = true;
    }
}


bool mDoAud_resetRecover(void){
    if (lbl_80450BB9){
        bool hasReset = lbl_80451368->hasReset();
        if (hasReset == false){
            return false;
        }
        lbl_80451368->resetRecover();
        lbl_80450BB9 = false;
    }
    return true;
}

extern "C"{
    asm void __sinit_m_Do_audio_cpp(void){
        nofralloc
        #include "m_Do/m_Do_audio/asm/__sinit_m_Do_audio_cpp.s"
    }
}

asm mDoAud_zelAudio_c::~mDoAud_zelAudio_c(){
    nofralloc
    #include "m_Do/m_Do_audio/asm/mDoAud_zelAudio_c_NS_dtor.s"
}


asm Z2AudioMgr::~Z2AudioMgr(void){
    nofralloc
    #include "m_Do/m_Do_audio/asm/Z2AudioMgr_NS_dtor.s"
}

asm JAISoundHandle::~JAISoundHandle(){
    nofralloc
    #include "m_Do/m_Do_audio/asm/JAISoundHandle_NS_dtor.s"
}

asm Z2MultiSeObj::~Z2MultiSeObj() {
    nofralloc
    #include "m_Do/m_Do_audio/asm/Z2MultiSeObj_NS_dtor.s"
}

asm JAISeCategoryMgr::~JAISeCategoryMgr(){
    nofralloc
    #include "m_Do/m_Do_audio/asm/JAISeCategoryMgr_NS_dtor.s"
} 
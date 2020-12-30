#include "m_Do/m_Do_audio/m_Do_audio.h"
#include "Z2AudioLib/Z2AudioMgr/Z2AudioMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "JSystem/JAudio2/JAISoundHandle.h"

void mDoAud_zelAudio_c::reset(void){
    lbl_80450BBA = 0;
}

asm void mDoAud_Create(void){
    nofralloc
    #include "m_Do/m_Do_audio/asm/mDoAud_Create.s"
}

void mDoAud_Execute(void) {
    if (lbl_80450BB8 == 0) {
        if((int)lbl_80450C78->unk_4 == 0 && (int)lbl_80450C78->unk_5 == 0){
            mDoAud_Create();
        }
    }else{
        lbl_803DBF4C.gframeProcess();
    }
}

void mDoAud_setSceneName(const char *spot,long room,long layer){
    mAudioMgrPtr->sceneMgr.setSceneName((char*)spot, room, layer);
}

bool mDoAud_load1stDynamicWave(){
    mAudioMgrPtr->sceneMgr.load1stDynamicWave();
    return true;
}

void mDoAud_setFadeOutStart(u8 param_1){
    mAudioMgrPtr->sceneMgr.setFadeOutStart((int)param_1);
}

void mDoAud_setFadeInStart(u8 param_1){
    mAudioMgrPtr->sceneMgr.setFadeInStart((int)param_1);
}

void mDoAud_resetProcess(void){
    if (lbl_80450BB9 == false) {
        mAudioMgrPtr->resetProcess(0x1e,false);
        lbl_80450BB9 = true;
    }
}


bool mDoAud_resetRecover(void){
    if (lbl_80450BB9){
        bool hasReset = mAudioMgrPtr->hasReset();
        if (hasReset == false){
            return false;
        }
        mAudioMgrPtr->resetRecover();
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
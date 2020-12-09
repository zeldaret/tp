#include "Z2AudioLib/Z2SceneMgr/Z2SceneMgr.h"
#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"

//Missing 2 instructions (beginning and end)
#ifdef NONMATCHING
Z2SceneMgr::Z2SceneMgr(void){
    lbl_80450B80 = this;
    this->field_0x4 = -1;
    this->timer = -1;
    this->BGM_ID = -1;
    this->roomNum = -1;
    this->SeWave_1 = 0;
    this->SeWaveToErase_1 = 0;
    this->SeWave_2 = 0;
    this->SeWaveToErase_2 = 0;
    this->BgmWave_1 = 0;
    this->BgmWaveToErase_1 = 0;
    this->BgmWave_2 = 0;
    this->BgmWaveToErase_2 = 0;
    this->SeWave_3 = 0;
    this->SeWaveToErase_3 = 0;
    this->field_0x18 = 0;
    this->field_0x19 = 0;
    this->field_0x1a = 0;
    this->field_0x1b = 0;
    this->field_0x1d = 0;
    this->field_0x1c = 0;
    this->field_0x1e = false;
    this->field_0x17 = 0;
    return;
}
#else
asm Z2SceneMgr::Z2SceneMgr(void){
    nofralloc
    #include "Z2AudioLib/Z2SceneMgr/asm/func_802B6840.s"
}
#endif


void Z2SceneMgr::setInDarkness(bool param_1){
    this->inDarkness = param_1;
    if (param_1 == false){
        lbl_80450B60->resetFilterAll();
    }
    return;
}


extern float lbl_80455A38;
extern float lbl_80455A3C;

#ifdef NONMATCHING
void Z2SceneMgr::setSceneExist(bool param_1){
    Z2SoundMgr *Z2soundMgrPtr;
    this->field_0x1d = param_1;
    this->timer = 0;
    Z2soundMgrPtr = lbl_80450B60;
    if(param_1==false){
        Z2soundMgrPtr->JAISoundParamsMove->moveVolume(lbl_80455A38,0xb4);
    }
    else{
        this->field_0x1c = 1;
        if (this->SeWave_3 == 0x85) {
            Z2soundMgrPtr->JAISoundParamsMove->moveVolume(lbl_80455A38,0);
        }
        else{
            if (this->SeWave_3 == 0x7f) {
                lbl_80450B88->seMoveVolumeAll(lbl_80455A38,0);
            }else{
                Z2soundMgrPtr->JAISoundParamsMove->moveVolume(lbl_80455A3C,0x21);
            }
        }
    }
    return;
}
#else
asm void Z2SceneMgr::setSceneExist(bool param_1){
    nofralloc
    #include "Z2AudioLib/Z2SceneMgr/asm/func_802B68E0.s"
}
#endif

extern float lbl_80455A40;
extern double lbl_80455A48;

asm void Z2SceneMgr::setFadeOutStart(u8 param_1) {
    nofralloc
    #include "Z2AudioLib/Z2SceneMgr/asm/func_802B697C.s"
}

asm void Z2SceneMgr::setFadeInStart(u8 param_1) {
    nofralloc
    #include "Z2AudioLib/Z2SceneMgr/asm/func_802B6A18.s"
}


extern float lbl_80455A50;
extern char lbl_8039BFA8[]; //probably wrong
extern char* lbl_803CA5C0[]; //array of char*
extern void* lbl_803CA878[]; //switch table (array of void*)
extern void* lbl_803CA844[]; //switch table (array of void*)
extern void* lbl_803CA824[]; //switch table (array of void*)
extern void* lbl_803CA7F4[]; //switch table (array of void*)
extern void* lbl_803CA7BC[]; //switch table (array of void*)
extern void* lbl_803CA784[]; //switch table (array of void*)
extern float lbl_80455A54;
extern float lbl_80455A58;
extern void* lbl_803CA744[]; //switch table (array of void*)
extern void* lbl_803CA704[]; //switch table (array of void*)
extern float lbl_80455A5C;
extern u32 lbl_80450860;
extern float lbl_80455A60;
extern float lbl_80455A64;
extern void* lbl_80450B58; //JAUSoundTable sInstance
extern void* lbl_80450B3C; //Z2EnvSeMgr sInstance



asm void Z2SceneMgr::setSceneName(char* stageName, long roomNum, long layerNum) {
    nofralloc
    #include "Z2AudioLib/Z2SceneMgr/asm/func_802B6AF8.s"
}

JAISoundID::JAISoundID(JAISoundID const &soundIdToSet){
    this->soundId = soundIdToSet.soundId;
    return;
}

#ifdef NONMATCHING //1 Instruction off
void Z2SeqMgr::setFieldBgmPlay(bool param_1) {
    this->unk_1 = (param_1 & 1U) << 2 | this->unk_1 & 0xfb;
}
#else 
asm void Z2SeqMgr::setFieldBgmPlay(bool param_1){
    nofralloc
    #include "Z2AudioLib/Z2SceneMgr/asm/func_802B9968.s"
}
#endif
#include "Z2AudioLib/Z2StatusMgr/Z2StatusMgr.h"
#include "Z2AudioLib/Z2SeqMgr/Z2SeqMgr.h"


asm Z2SeqMgr::Z2SeqMgr(void){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AEEA0.s"
}

asm void Z2SeqMgr::bgmStart(u32,u32,s32){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AF010.s"
}

asm void Z2SeqMgr::bgmStop(u32,s32){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AF408.s"
}

asm void Z2SeqMgr::subBgmStart(u32){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AF49C.s"
}

asm void Z2SeqMgr::subBgmStop(void){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AF884.s"
}

asm void Z2SeqMgr::subBgmStopInner(void){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AF9D0.s"
}

asm void Z2SeqMgr::bgmStreamPrepare(u32){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AFB94.s"
}

asm int Z2SeqMgr::bgmStreamCheckReady(void){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AFDEC.s"
}

asm void Z2SeqMgr::bgmStreamPlay(void){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AFE18.s"
}

asm void Z2SeqMgr::bgmStreamStop(u32){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AFEDC.s"
}

asm void Z2SeqMgr::changeBgmStatus(s32){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802AFF8C.s"
}

asm void Z2SeqMgr::changeSubBgmStatus(s32){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802B1DF4.s"
}

asm void Z2SeqMgr::onVariantBgmJumpEnd(bool){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802B299C.s"
}

asm void Z2SeqMgr::changeFishingBgm(s32){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802B2A88.s"
}

asm void Z2SeqMgr::talkInBgm(void){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802B2CA4.s"
}

asm void Z2SeqMgr::talkOutBgm(void){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802B2D64.s"
}

asm void Z2SeqMgr::menuInBgm(void){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802B2DAC.s"
}

asm void Z2SeqMgr::menuOutBgm(void){
    nofralloc
    #include "Z2AudioLib/Z2SeqMgr/asm/func_802B2DF4.s"
}
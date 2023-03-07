/**
 * d_menu_fishing.cpp
 * Fish Journal
 */

#include "d/menu/d_menu_fishing.h"
#include "dol2asm.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_graphic.h"


//
// Forward References:
//

extern "C" void __ct__15dMenu_Fishing_cFP10JKRExpHeapP9STControlP10CSTControl();
extern "C" void __dt__15dMenu_Fishing_cFv();
extern "C" void _create__15dMenu_Fishing_cFv();
extern "C" void _move__15dMenu_Fishing_cFv();
extern "C" void _draw__15dMenu_Fishing_cFv();
extern "C" void isSync__15dMenu_Fishing_cFv();
extern "C" void init__15dMenu_Fishing_cFv();
extern "C" void _open__15dMenu_Fishing_cFv();
extern "C" void _close__15dMenu_Fishing_cFv();
extern "C" void wait_init__15dMenu_Fishing_cFv();
extern "C" void wait_move__15dMenu_Fishing_cFv();
extern "C" void screenSetBase__15dMenu_Fishing_cFv();
extern "C" void screenSetDoIcon__15dMenu_Fishing_cFv();
extern "C" void setAButtonString__15dMenu_Fishing_cFUs();
extern "C" void setBButtonString__15dMenu_Fishing_cFUs();
extern "C" void getFigure__15dMenu_Fishing_cFi();
extern "C" void setFishParam__15dMenu_Fishing_cFiUsUc();
extern "C" void setHIO__15dMenu_Fishing_cFb();
extern "C" void draw__15dMenu_Fishing_cFv();
extern "C" void __sinit_d_menu_fishing_cpp();
extern "C" extern char const* const d_menu_d_menu_fishing__stringBase0;

//
// External References:
//

extern "C" void mDoExt_setCurrentHeap__FP7JKRHeap();
extern "C" void mDoExt_getMesgFont__Fv();
extern "C" void mDoExt_getSubFont__Fv();
extern "C" void create__24mDoDvdThd_mountArchive_cFPCcUcP7JKRHeap();
extern "C" void getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c();
extern "C" void __ct__12dMsgString_cFv();
extern "C" void __dt__12dMsgString_cFv();
extern "C" void __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap();
extern "C" void paneTrans__8CPaneMgrFff();
extern "C" void dPaneClass_showNullPane__FP9J2DScreen();
extern "C" void show__13CPaneMgrAlphaFv();
extern "C" void hide__13CPaneMgrAlphaFv();
extern "C" void setAlphaRate__13CPaneMgrAlphaFf();
extern "C" void* __nw__FUl();
extern "C" void __dl__FPv();
extern "C" void __ct__9J2DScreenFv();
extern "C" void setPriority__9J2DScreenFPCcUlP10JKRArchive();
extern "C" void draw__9J2DScreenFffPC14J2DGrafContext();
extern "C" void __ct__10J2DPictureFPC7ResTIMG();
extern "C" void getStringPtr__10J2DTextBoxCFv();
extern "C" void setString__10J2DTextBoxFsPCce();
extern "C" void __ptmf_scall();
extern "C" void _savegpr_18();
extern "C" void _savegpr_23();
extern "C" void _savegpr_24();
extern "C" void _savegpr_25();
extern "C" void _savegpr_27();
extern "C" void _savegpr_28();
extern "C" void _savegpr_29();
extern "C" void _restgpr_18();
extern "C" void _restgpr_23();
extern "C" void _restgpr_24();
extern "C" void _restgpr_25();
extern "C" void _restgpr_27();
extern "C" void _restgpr_28();
extern "C" void _restgpr_29();
extern "C" extern void* __vt__12dDlst_base_c[3];
extern "C" u8 m_cpadInfo__8mDoCPd_c[256];

extern "C" extern u8 g_drawHIO[3880];

extern "C" u8 mFader__13mDoGph_gInf_c[4];

//
// Declarations:
//

/* ############################################################################################## */
/* 803BD038-803BD044 01A158 000C+00 1/1 0/0 0/0 .data            cNullVec__6Z2Calc */
SECTION_DATA static u8 cNullVec__6Z2Calc[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803BD044-803BD050 -00001 000C+00 0/1 0/0 0/0 .data            @3790 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3790[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_init__15dMenu_Fishing_cFv,
};
#pragma pop

/* 803BD050-803BD05C 01A170 000C+00 2/3 0/0 0/0 .data            map_init_process */
SECTION_DATA static u8 map_init_process[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803BD05C-803BD068 -00001 000C+00 0/1 0/0 0/0 .data            @3791 */
#pragma push
#pragma force_active on
SECTION_DATA static void* lit_3791[3] = {
    (void*)NULL,
    (void*)0xFFFFFFFF,
    (void*)wait_move__15dMenu_Fishing_cFv,
};
#pragma pop

/* 803BD068-803BD074 01A188 000C+00 1/2 0/0 0/0 .data            map_move_process */
SECTION_DATA static u8 map_move_process[12] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
};

/* 803BD074-803BD090 01A194 0010+0C 2/2 0/0 0/0 .data            __vt__15dMenu_Fishing_c */
SECTION_DATA extern void* __vt__15dMenu_Fishing_c[4 + 3 /* padding */] = {
    (void*)NULL /* RTTI */,
    (void*)NULL,
    (void*)draw__15dMenu_Fishing_cFv,
    (void*)__dt__15dMenu_Fishing_cFv,
    /* padding */
    NULL,
    NULL,
    NULL,
};

/* 801C4D54-801C4D98 1BF694 0044+00 0/0 2/2 0/0 .text
 * __ct__15dMenu_Fishing_cFP10JKRExpHeapP9STControlP10CSTControl */
dMenu_Fishing_c::dMenu_Fishing_c(JKRExpHeap* heap, STControl* stControl, CSTControl* cstControl) {
    mpHeap = heap;
    field_0x8 = 0;
    field_0x14 = 0;
    mpStick = stControl;
    mpCStick = cstControl;
    mStatus = 1;
    field_0x1fb = 0;
    field_0x1f8 = 0;

}

/* 801C4D98-801C504C 1BF6D8 02B4+00 1/0 0/0 0/0 .text            __dt__15dMenu_Fishing_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm dMenu_Fishing_c::~dMenu_Fishing_c() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/__dt__15dMenu_Fishing_cFv.s"
}
#pragma pop 

/* 801C504C-801C50B4 1BF98C 0068+00 1/1 0/0 0/0 .text            _create__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::_create() {
    mpString = new dMsgString_c();
    screenSetBase();
    screenSetDoIcon();
    setHIO(true);
    init();
}

/* 801C50B4-801C514C 1BF9F4 0098+00 0/0 2/2 0/0 .text            _move__15dMenu_Fishing_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::_move() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/_move__15dMenu_Fishing_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80454108-8045410C 002708 0004+00 3/3 0/0 0/0 .sdata2          @3904 */
SECTION_SDATA2 static u8 lit_3904[4] = {
    0x00,
    0x00,
    0x00,
    0x00,
};

/* 8045410C-80454110 00270C 0004+00 1/1 0/0 0/0 .sdata2          @3905 */
SECTION_SDATA2 static f32 lit_3905 = 608.0f;

/* 80454110-80454114 002710 0004+00 1/1 0/0 0/0 .sdata2          @3906 */
SECTION_SDATA2 static f32 lit_3906 = 448.0f;

/* 801C514C-801C5204 1BFA8C 00B8+00 1/1 1/1 0/0 .text            _draw__15dMenu_Fishing_cFv */
#ifdef NONMATCHING
// u8 lit_3904
void dMenu_Fishing_c::_draw() {
    if (field_0x8) {
        J2DGrafContext* pJVar1 = dComIfGp_getCurrentGrafPort();
        mpBlackTex->setAlpha(0xff);
        mpBlackTex->draw(0,0,lit_3905,lit_3906,0,0,0);
        mpScreen->draw(0,0,pJVar1);
        mpIconScreen->draw(0,0,pJVar1);
    }
}
#else
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::_draw() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/_draw__15dMenu_Fishing_cFv.s"
}
#pragma pop
#endif

/* 801C5204-801C522C 1BFB44 0028+00 0/0 2/2 0/0 .text            isSync__15dMenu_Fishing_cFv */
bool dMenu_Fishing_c::isSync() {
    if (field_0x14 && !field_0x14->sync()) {
        return false;
    }
    return true;
}

/* 801C522C-801C52E4 1BFB6C 00B8+00 1/1 0/0 0/0 .text            init__15dMenu_Fishing_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::init() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/init__15dMenu_Fishing_cFv.s"
}
#pragma pop 

/* ############################################################################################## */
/* 80396068-80396068 0226C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80396068 = "/res/Layout/fishres.arc";
#pragma pop

/* 80454114-80454118 002714 0004+00 1/1 0/0 0/0 .sdata2          @4010 */
SECTION_SDATA2 static f32 lit_4010 = 1.0f;

/* 80454118-80454120 002718 0008+00 2/2 0/0 0/0 .sdata2          @4012 */
SECTION_SDATA2 static f64 lit_4012 = 4503601774854144.0 /* cast s32 to float */;

/* 801C52E4-801C5470 1BFC24 018C+00 0/0 2/2 0/0 .text            _open__15dMenu_Fishing_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::_open() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/_open__15dMenu_Fishing_cFv.s"
}
#pragma pop

/* 801C5470-801C556C 1BFDB0 00FC+00 0/0 1/1 0/0 .text            _close__15dMenu_Fishing_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::_close() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/_close__15dMenu_Fishing_cFv.s"
}
#pragma pop

/* 801C556C-801C55A8 1BFEAC 003C+00 1/0 0/0 0/0 .text            wait_init__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::wait_init() {
    setAButtonString(0);
    setBButtonString(0x3f9);
}

/* 801C55A8-801C55D8 1BFEE8 0030+00 1/0 0/0 0/0 .text            wait_move__15dMenu_Fishing_cFv */
void dMenu_Fishing_c::wait_move() {
    if (mDoGph_gInf_c::getFader()->getStatus() == 1 && mDoCPd_c::getTrigB(0)) {
            mStatus = 3;
    }
}

/* ############################################################################################## */
/* 80395D90-80395DC0 0223F0 0030+00 1/1 0/0 0/0 .rodata          fish_n$4060 */
SECTION_RODATA static u8 const fish_n[48] = {
    0x66, 0x69, 0x73, 0x68, 0x5F, 0x6E, 0x5F, 0x36, 0x66, 0x69, 0x73, 0x68, 0x5F, 0x6E, 0x5F, 0x35,
    0x66, 0x69, 0x73, 0x68, 0x5F, 0x6E, 0x5F, 0x33, 0x66, 0x69, 0x73, 0x68, 0x5F, 0x6E, 0x5F, 0x31,
    0x66, 0x69, 0x73, 0x68, 0x5F, 0x6E, 0x5F, 0x32, 0x66, 0x69, 0x73, 0x68, 0x5F, 0x6E, 0x5F, 0x34,
};
COMPILER_STRIP_GATE(0x80395D90, &fish_n);

/* 80395DC0-80395DF0 022420 0030+00 0/1 0/0 0/0 .rodata          fish_p0$4061 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const fish_p0[48] = {
    0x66, 0x69, 0x5F, 0x70, 0x61, 0x5F, 0x36, 0x6E, 0x66, 0x69, 0x5F, 0x70, 0x61, 0x5F, 0x35, 0x6E,
    0x66, 0x69, 0x5F, 0x70, 0x61, 0x5F, 0x33, 0x6E, 0x66, 0x69, 0x5F, 0x70, 0x61, 0x5F, 0x31, 0x6E,
    0x66, 0x69, 0x5F, 0x70, 0x61, 0x5F, 0x32, 0x6E, 0x66, 0x69, 0x5F, 0x70, 0x61, 0x5F, 0x34, 0x6E,
};
COMPILER_STRIP_GATE(0x80395DC0, &fish_p0);
#pragma pop

/* 80395DF0-80395E20 022450 0030+00 0/1 0/0 0/0 .rodata          fish_p1$4062 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const fish_p1[48] = {
    0x66, 0x69, 0x5F, 0x6E, 0x61, 0x5F, 0x36, 0x6E, 0x66, 0x69, 0x5F, 0x6E, 0x61, 0x5F, 0x35, 0x6E,
    0x66, 0x69, 0x5F, 0x6E, 0x61, 0x5F, 0x33, 0x6E, 0x66, 0x69, 0x5F, 0x6E, 0x61, 0x5F, 0x31, 0x6E,
    0x66, 0x69, 0x5F, 0x6E, 0x61, 0x5F, 0x32, 0x6E, 0x66, 0x69, 0x5F, 0x6E, 0x61, 0x5F, 0x34, 0x6E,
};
COMPILER_STRIP_GATE(0x80395DF0, &fish_p1);
#pragma pop

/* 80395E20-80395E50 022480 0030+00 0/1 0/0 0/0 .rodata          fish_p2$4063 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const fish_p2[48] = {
    0x66, 0x69, 0x5F, 0x6C, 0x69, 0x5F, 0x36, 0x6E, 0x66, 0x69, 0x5F, 0x6C, 0x69, 0x5F, 0x35, 0x6E,
    0x66, 0x69, 0x5F, 0x6C, 0x69, 0x5F, 0x33, 0x6E, 0x66, 0x69, 0x5F, 0x6C, 0x69, 0x5F, 0x31, 0x6E,
    0x66, 0x69, 0x5F, 0x6C, 0x69, 0x5F, 0x32, 0x6E, 0x66, 0x69, 0x5F, 0x6C, 0x69, 0x5F, 0x34, 0x6E,
};
COMPILER_STRIP_GATE(0x80395E20, &fish_p2);
#pragma pop

/* 80395E50-80395E80 0224B0 0030+00 0/1 0/0 0/0 .rodata          fish_p3$4064 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const fish_p3[48] = {
    0x62, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x36, 0x6E, 0x62, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x35, 0x6E,
    0x62, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x33, 0x6E, 0x62, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x31, 0x6E,
    0x62, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x32, 0x6E, 0x62, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x34, 0x6E,
};
COMPILER_STRIP_GATE(0x80395E50, &fish_p3);
#pragma pop

/* 80395E80-80395EB0 0224E0 0030+00 0/1 0/0 0/0 .rodata          fish_p4$4065 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const fish_p4[48] = {
    0x72, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x36, 0x6E, 0x72, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x35, 0x6E,
    0x72, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x33, 0x6E, 0x72, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x31, 0x6E,
    0x72, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x32, 0x6E, 0x72, 0x5F, 0x62, 0x6F, 0x78, 0x5F, 0x34, 0x6E,
};
COMPILER_STRIP_GATE(0x80395E80, &fish_p4);
#pragma pop

/* 80395EB0-80395EE0 022510 0030+00 0/1 0/0 0/0 .rodata          fish_p5$4066 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const fish_p5[48] = {
    0x69, 0x6E, 0x66, 0x6F, 0x5F, 0x36, 0x5F, 0x6E, 0x69, 0x6E, 0x66, 0x6F, 0x5F, 0x35, 0x5F, 0x6E,
    0x69, 0x6E, 0x66, 0x6F, 0x5F, 0x33, 0x5F, 0x6E, 0x69, 0x6E, 0x66, 0x6F, 0x5F, 0x31, 0x5F, 0x6E,
    0x69, 0x6E, 0x66, 0x6F, 0x5F, 0x32, 0x5F, 0x6E, 0x69, 0x6E, 0x66, 0x6F, 0x5F, 0x34, 0x5F, 0x6E,
};
COMPILER_STRIP_GATE(0x80395EB0, &fish_p5);
#pragma pop

/* 80395EE0-80395F10 022540 0030+00 0/1 0/0 0/0 .rodata          size_1$4081 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const size_1[48] = {
    0x73, 0x69, 0x7A, 0x65, 0x5F, 0x74, 0x5F, 0x36, 0x73, 0x69, 0x7A, 0x65, 0x5F, 0x74, 0x5F, 0x35,
    0x73, 0x69, 0x7A, 0x65, 0x5F, 0x74, 0x5F, 0x33, 0x73, 0x69, 0x7A, 0x65, 0x5F, 0x74, 0x5F, 0x31,
    0x73, 0x69, 0x7A, 0x65, 0x5F, 0x74, 0x5F, 0x32, 0x73, 0x69, 0x7A, 0x65, 0x5F, 0x74, 0x5F, 0x34,
};
COMPILER_STRIP_GATE(0x80395EE0, &size_1);
#pragma pop

/* 80395F10-80395F40 022570 0030+00 0/1 0/0 0/0 .rodata          size_unit_1$4082 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const size_unit_1[48] = {
    0x00, 0x00, 0x63, 0x6D, 0x5F, 0x74, 0x5F, 0x36, 0x00, 0x00, 0x63, 0x6D, 0x5F, 0x74, 0x5F, 0x35,
    0x00, 0x00, 0x63, 0x6D, 0x5F, 0x74, 0x5F, 0x33, 0x00, 0x00, 0x63, 0x6D, 0x5F, 0x74, 0x5F, 0x31,
    0x00, 0x00, 0x63, 0x6D, 0x5F, 0x74, 0x5F, 0x32, 0x00, 0x00, 0x63, 0x6D, 0x5F, 0x74, 0x5F, 0x34,
};
COMPILER_STRIP_GATE(0x80395F10, &size_unit_1);
#pragma pop

/* 80395F40-80395F70 0225A0 0030+00 0/1 0/0 0/0 .rodata          count_1$4083 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const count_1[48] = {
    0x63, 0x6F, 0x75, 0x6E, 0x74, 0x5F, 0x74, 0x36, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x5F, 0x74, 0x35,
    0x63, 0x6F, 0x75, 0x6E, 0x74, 0x5F, 0x74, 0x33, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x5F, 0x74, 0x31,
    0x63, 0x6F, 0x75, 0x6E, 0x74, 0x5F, 0x74, 0x32, 0x63, 0x6F, 0x75, 0x6E, 0x74, 0x5F, 0x74, 0x34,
};
COMPILER_STRIP_GATE(0x80395F40, &count_1);
#pragma pop

/* 80395F70-80395FA0 0225D0 0030+00 0/1 0/0 0/0 .rodata          count_unit_1$4084 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const count_unit_1[48] = {
    0x00, 0x63, 0x6F, 0x75, 0x5F, 0x74, 0x5F, 0x36, 0x00, 0x63, 0x6F, 0x75, 0x5F, 0x74, 0x5F, 0x35,
    0x00, 0x63, 0x6F, 0x75, 0x5F, 0x74, 0x5F, 0x33, 0x00, 0x63, 0x6F, 0x75, 0x5F, 0x74, 0x5F, 0x31,
    0x00, 0x63, 0x6F, 0x75, 0x5F, 0x74, 0x5F, 0x32, 0x00, 0x63, 0x6F, 0x75, 0x5F, 0x74, 0x5F, 0x34,
};
COMPILER_STRIP_GATE(0x80395F70, &count_unit_1);
#pragma pop

/* 80395FA0-80395FD0 022600 0030+00 0/1 0/0 0/0 .rodata          name_0$4085 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const name_0[48] = {
    0x00, 0x00, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x36, 0x00, 0x00, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x35,
    0x00, 0x00, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x33, 0x00, 0x00, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x31,
    0x00, 0x00, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x32, 0x00, 0x00, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x34,
};
COMPILER_STRIP_GATE(0x80395FA0, &name_0);
#pragma pop

/* 80395FD0-80396000 022630 0030+00 0/1 0/0 0/0 .rodata          fname_0$4086 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const fname_0[48] = {
    0x66, 0x5F, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x36, 0x66, 0x5F, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x35,
    0x66, 0x5F, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x33, 0x66, 0x5F, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x31,
    0x66, 0x5F, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x32, 0x66, 0x5F, 0x6E, 0x61, 0x6D, 0x65, 0x5F, 0x34,
};
COMPILER_STRIP_GATE(0x80395FD0, &fname_0);
#pragma pop

/* 80396000-80396018 022660 0018+00 0/1 0/0 0/0 .rodata          name_id$4087 */
#pragma push
#pragma force_active on
SECTION_RODATA static u8 const name_id[24] = {
    0x00, 0x00, 0x05, 0x9E, 0x00, 0x00, 0x05, 0x9D, 0x00, 0x00, 0x05, 0x9B,
    0x00, 0x00, 0x05, 0x99, 0x00, 0x00, 0x05, 0x9A, 0x00, 0x00, 0x05, 0x9C,
};
COMPILER_STRIP_GATE(0x80396000, &name_id);
#pragma pop

/* 80396068-80396068 0226C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_80396080 = "tt_block8x8.bti";
SECTION_DEAD static char const* const stringBase_80396090 = "zelda_fish_window.blo";
SECTION_DEAD static char const* const stringBase_803960A6 = "";
#pragma pop

/* 801C55D8-801C5D3C 1BFF18 0764+00 1/1 0/0 0/0 .text            screenSetBase__15dMenu_Fishing_cFv
 */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::screenSetBase() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/screenSetBase__15dMenu_Fishing_cFv.s"
}
#pragma pop

/* ############################################################################################## */
/* 80396018-80396040 022678 0028+00 1/1 0/0 0/0 .rodata          text_a_tag$4167 */
SECTION_RODATA static u8 const text_a_tag[40] = {
    0x61, 0x74, 0x65, 0x78, 0x74, 0x31, 0x5F, 0x31, 0x61, 0x74, 0x65, 0x78, 0x74, 0x31,
    0x5F, 0x32, 0x61, 0x74, 0x65, 0x78, 0x74, 0x31, 0x5F, 0x33, 0x61, 0x74, 0x65, 0x78,
    0x74, 0x31, 0x5F, 0x34, 0x61, 0x74, 0x65, 0x78, 0x74, 0x31, 0x5F, 0x35,
};
COMPILER_STRIP_GATE(0x80396018, &text_a_tag);

/* 80396040-80396068 0226A0 0028+00 1/1 0/0 0/0 .rodata          text_b_tag$4168 */
SECTION_RODATA static u8 const text_b_tag[40] = {
    0x62, 0x74, 0x65, 0x78, 0x74, 0x31, 0x5F, 0x31, 0x62, 0x74, 0x65, 0x78, 0x74, 0x31,
    0x5F, 0x32, 0x62, 0x74, 0x65, 0x78, 0x74, 0x31, 0x5F, 0x33, 0x62, 0x74, 0x65, 0x78,
    0x74, 0x31, 0x5F, 0x34, 0x62, 0x74, 0x65, 0x78, 0x74, 0x31, 0x5F, 0x35,
};
COMPILER_STRIP_GATE(0x80396040, &text_b_tag);

/* 80396068-80396068 0226C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_803960A7 = "zelda_collect_soubi_do_icon_parts.blo";
/* @stringBase0 padding */
SECTION_DEAD static char const* const pad_803960CD = "\0\0";
#pragma pop

/* 801C5D3C-801C5EB8 1C067C 017C+00 1/1 0/0 0/0 .text screenSetDoIcon__15dMenu_Fishing_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::screenSetDoIcon() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/screenSetDoIcon__15dMenu_Fishing_cFv.s"
}
#pragma pop

/* 801C5EB8-801C5F68 1C07F8 00B0+00 1/1 0/0 0/0 .text setAButtonString__15dMenu_Fishing_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::setAButtonString(u16 param_0) {
    nofralloc
#include "asm/d/menu/d_menu_fishing/setAButtonString__15dMenu_Fishing_cFUs.s"
}
#pragma pop

/* 801C5F68-801C6018 1C08A8 00B0+00 1/1 0/0 0/0 .text setBButtonString__15dMenu_Fishing_cFUs */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::setBButtonString(u16 param_0) {
    nofralloc
#include "asm/d/menu/d_menu_fishing/setBButtonString__15dMenu_Fishing_cFUs.s"
}
#pragma pop

/* 801C6018-801C605C 1C0958 0044+00 1/1 0/0 0/0 .text            getFigure__15dMenu_Fishing_cFi */
int dMenu_Fishing_c::getFigure(int param_0) {
    
    if (param_0 < 0) {
        param_0 *= -1;
    }
    if (1000 <= param_0) {
        param_0 = 999;
    }
    if (100 <= param_0) {
        return 3;
    }
    return (param_0 >= 10) ? 2 : 1;
}

/* 801C605C-801C6210 1C099C 01B4+00 1/1 0/0 0/0 .text setFishParam__15dMenu_Fishing_cFiUsUc */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::setFishParam(int param_0, u16 param_1, u8 param_2) {
    nofralloc
#include "asm/d/menu/d_menu_fishing/setFishParam__15dMenu_Fishing_cFiUsUc.s"
}
#pragma pop

/* 801C6210-801C659C 1C0B50 038C+00 2/2 0/0 0/0 .text            setHIO__15dMenu_Fishing_cFb */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void dMenu_Fishing_c::setHIO(bool param_0) {
    nofralloc
#include "asm/d/menu/d_menu_fishing/setHIO__15dMenu_Fishing_cFb.s"
}
#pragma pop

/* 801C659C-801C65BC 1C0EDC 0020+00 1/0 0/0 0/0 .text            draw__15dMenu_Fishing_cFv */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
// asm void dMenu_Fishing_c::draw() {
extern "C" asm void draw__15dMenu_Fishing_cFv() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/draw__15dMenu_Fishing_cFv.s"
}
#pragma pop 

/* 801C65BC-801C65F8 1C0EFC 003C+00 0/0 1/0 0/0 .text            __sinit_d_menu_fishing_cpp */
#pragma push
#pragma optimization_level 0
#pragma optimizewithasm off
asm void __sinit_d_menu_fishing_cpp() {
    nofralloc
#include "asm/d/menu/d_menu_fishing/__sinit_d_menu_fishing_cpp.s"
}
#pragma pop

#pragma push
#pragma force_active on
REGISTER_CTORS(0x801C65BC, __sinit_d_menu_fishing_cpp);
#pragma pop

/* 80396068-80396068 0226C8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

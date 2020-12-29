#include "JSystem/JSupport/JSUList/JSUList.h"

extern float lbl_80451D5C;
extern u8 lbl_80379234[0x64];
extern float lbl_80451D58;
extern u8 lbl_803A7270[24];
extern u8 lbl_80430188[16];
extern u8 lbl_80379235[16];
extern char lbl_803739A0[0x310];
extern void* lbl_80451368;
extern u32 lbl_804514E0;
extern u8 lbl_803C3384;
extern u8 lbl_803DD2E8;
extern u8 lbl_803A2EF4;
extern u8 lbl_803A2EE0;
extern u8 lbl_80450B19;
extern u8 lbl_80450588;
extern u8 lbl_804511B8;
extern u8 lbl_80450B20;
extern u8 lbl_80451A00;
extern u8 lbl_80450B1C;
extern u8 lbl_80450B28;
extern u8 lbl_80451A04;
extern u8 lbl_80450B24;
extern u8 lbl_80450B28;
extern u8 lbl_80450B30;
extern u8 lbl_80451A08;
extern u8 lbl_80450B2C;
extern u8 lbl_80450B30;
extern u8 lbl_80451A08;
extern u8 lbl_80450B2C;
extern u8 lbl_80450B2C;
extern u8 lbl_80451A0C;
extern u8 lbl_80451A10;
extern u8 lbl_80450B2C;
extern u8 lbl_80451A18;
extern u8 lbl_80450B2C;
extern u8 lbl_80450B1C;
extern u8 lbl_80450B1C;
extern u8 lbl_80450B24;
extern u8 lbl_80450B24;
extern u8 lbl_803F1BBC;
extern u8 lbl_803F1BBC;
extern u8 lbl_80450C2C;
extern u8 lbl_80450C28;
extern u8 lbl_80450C34;
extern u8 lbl_80450B24;
extern u8 lbl_80450B1C;
extern u8 lbl_80450580;
extern u8 lbl_80450B1A;
extern u8 lbl_803DD2D8;
extern u8 lbl_80450B18;
extern u8 lbl_803D32E0;
extern u8 lbl_80450BBC;
extern u8 lbl_803EAF40[];
extern u8 lbl_80450B34;
extern u8 lbl_80450B00;
extern u8 lbl_80450C80;
extern u8 LOAD_COPYDATE__FPv;
extern u8 __ct__12dSv_memory_cFv;
extern u8 __ct__13dSv_memory2_cFv;
extern u8 lbl_803D3420;
extern u8 lbl_80450B0C;
extern u8 lbl_80450B08;
extern u8 lbl_803DB420;
extern u8 main01__Fv;
extern u8 lbl_803BB598;
extern u8 lbl_803A6F88;
extern u8 lbl_803BB588;
extern u8 lbl_803948B8;
extern u8 lbl_803BB548;
extern u8 lbl_803BB4A8;
extern u8 lbl_804539F8;
extern u8 lbl_804539FC;
extern u8 lbl_803BB498;
extern float lbl_804550E8;
extern float lbl_804550EC;
extern u8 lbl_80450C90;

#define _SDA_BASE_(dummy) 0
#define _SDA2_BASE_(dummy) 0

// func_802CE138
extern void* lbl_803CBF70;  // JKRHeap::__vt

class JKRHeap;
extern JKRHeap* lbl_80451370;  // JKRHeap::sSystemHeap
extern JKRHeap* lbl_80451378;  // JKRHeap::sRootHeap
extern JKRHeap* lbl_80451374;  // JKRHeap::sCurrentHeap
extern void* lbl_8045137C;     // JKRHeap::mErrorHandler

extern bool lbl_804508B0;  // ::*fill*
extern bool lbl_80451380;  // DAT_80451380

// func_802CE378
extern void* lbl_80451384;  // JKRHeap::mCodeStart
extern void* lbl_80451388;  // JKRHeap::mCodeEnd
extern void* lbl_8045138C;  // JKRHeap::mUserRamStart
extern void* lbl_80451390;  // JKRHeap::mUserRamEnd
extern u32 lbl_80451394;    // JKRHeap::mMemorySize

extern u8 lbl_80000000;
extern u32 lbl_80000028;

#define OS_GLOBAL(T, ADDR) *((T*)((void*)ADDR))
#define OS_GLOBAL_ADDR(T, ADDR) ((T*)((void*)ADDR))

// func_802CEB40
extern char lbl_8039CAD8[12];  // "JKRHeap.cpp"

// func_802D147C
extern void* lbl_803CC0F0;  // JKRDisposer::__vt

// func_802C333C
extern u8 lbl_803CB980[0x48];
extern u8 lbl_80451360[8];

// func_802C3464
extern u8 lbl_803CB96C[0x14];
extern u8 lbl_803C9D80[0x18];
extern u32 lbl_80450B74;

// func_802C3500
extern u8 lbl_803CAD10[0x20];

// func_802C3638
extern u32 lbl_80450B44;

// func_80450B88
extern u32 lbl_80455C98;
extern u32 lbl_80455C9C;
extern u8 lbl_80455CA0[8];
extern u8 lbl_80455CA8[8];
extern u8 lbl_80455CB0[8];
extern u8 lbl_80455CB8[8];
extern u32 lbl_80450AE0;

// func_802C3A6C
extern u32 lbl_80455CC0;

// func_802C3AFC
extern u32 lbl_80450B40;

// func_802C3BD4
extern u8 lbl_80455CE0[8];
extern u32 lbl_80455CC4;
extern u32 lbl_80455CC8;
extern u32 lbl_80455CCC;
extern u32 lbl_80455CD0;
extern u32 lbl_80455CD4;
extern u8 lbl_80455CD8[8];

// func_802C3E68
extern u8 lbl_80455D10[8];
extern u32 lbl_80455CE8;
extern u32 lbl_80455CEC;
extern u32 lbl_80455CF0;
extern u32 lbl_80455CF4;
extern u32 lbl_80455CF8;
extern u32 lbl_80455CFC;
extern u32 lbl_80455D00;
extern u32 lbl_80455D04;
extern u32 lbl_80455D08;
extern u32 lbl_80455D0C;

// func_802C4784
extern u32 lbl_80455D18;

// func_802A96F4
extern u32 lbl_80455828;
extern float lbl_8045582C;

// func_802A9814
extern u32 lbl_80455830;
extern u32 lbl_80455834;

// func_802A98D4
extern u32 lbl_80451330;
extern u32 lbl_80451334;

// Z2SoundLib SInstance
struct Z2SceneMgr;
extern Z2SceneMgr* lbl_80450B80;  // Z2SceneMgr sInstance
struct Z2SoundMgr;
extern Z2SoundMgr* lbl_80450B60;  // Z2SoundMgr sInstance
struct Z2SoundObjMgr;
extern Z2SoundObjMgr* lbl_80450B48;  // Z2SoundObjMgr sInstance
struct Z2SpeechMgr2;
extern Z2SpeechMgr2* lbl_80450B70;  // Z2SpeechMgr2 sInstance
extern void* lbl_803CC114;          // JKRThread::__vt

class JKRThreadSwitch;
extern void* lbl_803CC100[5];          // JKRThreadSwitch::__vt
extern u32 lbl_804513B4;               // JKRThreadSwitch::sTotalCount
extern u32 lbl_804513BC;               // DAT_804513bc
extern u32 lbl_804513B8;               // JKRThreadSwitch::sTotalStart
extern JKRThreadSwitch* lbl_804513B0;  // JKRThreadSwitch::sManager
extern void* lbl_804513C0;             // JKRThreadSwitch::mUserPreCallback
extern void* lbl_804513C4;             //  JKRThreadSwitch::mUserPostCallback

extern char lbl_8039CFA8[1];  // 8039cfdc-0x34 "JKRThreadSwitch: currentHeap destroyed.\n"

extern float lbl_80455FC0;   // JKernel::@934 = 100.0
extern float lbl_80455FC4;   // JKernel::@935 = 1000.0
extern double lbl_80455FC8;  // JKernel::@937 = 4.503599627370496E15

class JKRDvdFile;
extern JSUList<JKRDvdFile> lbl_8043436C;  // JKRDvdFile::sDvdList
extern u8 lbl_803CC438;                   // JKRDvdFile::__vt
extern u8 lbl_80434360;                   // JKernel::@657 (global destructor chain)
extern char lbl_8039D260[12];             // "JKRDvdFile.cpp"
extern u8 lbl_803CC328;                   // JKRFile::__vt

class JKRFileLoader;
extern JKRFileLoader* lbl_80451418;          // JKRFileLoader::sCurrentVolume
extern u8 lbl_8039D158;                      // "/"
extern u8 lbl_803CC238;                      // JKRFileCache::__vt
extern JSUList<JKRFileLoader> lbl_80434354;  // JKRFileLoader::sVolumeList
extern u8 lbl_803CC218;                      // JKRArcFinder::__vt
extern u8 lbl_803CC228;                      // JKRFileFinder::__vt
extern u8 lbl_803CC208;                      // JKRDvdFinder::__vt
extern u8 lbl_8039D150;                      // "/"
extern u8 lbl_803CC1C8;                      // JKRFileLoader::__vt
extern u8 lbl_804508C0;                      // "/" JKernel::rootPath$2498
extern u8 lbl_80434348;                      // JKernel::@2182 (global destructor chain)
extern u8 lbl_803D2D18[256];                 // MSL_C.PPCEABI.bare.H::__lower_map
extern u8 lbl_803CC090;                      // JKRAssertHeap::__vt
extern u8 lbl_80451398;                      // JKernel::DBfoundSize
extern u8 lbl_8045139C;                      // JKernel::DBfoundOffset
extern u8 lbl_804513A0;                      // JKernel::DBfoundBlock
extern u8 lbl_804513A4;                      // JKernel::DBnewFreeBlock
extern u8 lbl_804513A8;                      // JKernel::DBnewUsedBlock
extern float lbl_80455F98;                   // JKernel::@1121 = 100.0
extern u8 lbl_803CBFD0;                      // JKRExpHeap::__vt
extern u8 lbl_8039CAF0;                      // ":::cannot alloc memory (0x%x byte).\n"
extern double lbl_80455FA0;                  // JKernel::@1123 = 4.503599627370496E15
extern u8 lbl_803CC030;                      // JKRSolidHeap::__vt
extern double lbl_80455FB8;                  // JKernel::@697 = 4.503599627370496E15
extern u8 lbl_8039CE50;                      // "allocFromHead: cannot alloc memory (0x%x byte).\n"
extern double lbl_80455FB0;                  // JKernel::@695 = 4.503601774854144E15
extern float lbl_80455FA8;                   // JKernel::@693 = 100.0
extern u8 lbl_80451420;                      // JKRArchive::sCurrentDirID
extern u8 lbl_803CC288;                      // JKRArchive::__vt

// d_item
extern float lbl_80452BD8;
extern float lbl_80452BDC;
extern double lbl_80452BE0;
extern u8 lbl_80450D64;
struct unkEvent {  // figure out what this is later
    u8 unk0[0x235];
    u16 unk566;
    u8 unk567[0x439];
};
extern unkEvent lbl_803A7288;
extern u8 lbl_8037B0D0[0x8];

class JKRThread;
extern JSUList<JKRThread> lbl_8043428C;  // JSUList<JKRThread> JKRThread::sThreadList

extern u8 lbl_803CC398;  // JKRDvdArchive::__vt
extern u8 lbl_8039D1B0;  // "JKRDvdArchive.cpp"

extern u8 lbl_803CC2D8;  // JKRMemArchive::__vt
extern u8 lbl_8039D160;  // "JKRMemArchive.cpp"

extern u8 lbl_803CC348;  // JKRAramArchive::__vt
extern u8 lbl_8039D188;  // "JKRAramArchive.cpp"

extern u8 lbl_803CC3E8;  // JKRCompArchive::__vt
extern u8 lbl_8039D220;  // "JKRCompArchive.cpp"

extern u8 lbl_803CC460[32];          // JKRDecomp::sMessageBuffer
extern OSMessageQueue lbl_803CC480;  // JKRDecomp::sMessageQueue
extern u8 lbl_804514B0;              // JKRDecomp::sDecompObject
extern u8 lbl_803CC4A0;              // JKRDecomp::__vt

extern u8 lbl_80434378;  // JKernel::@491 (global destructor chain)
extern u8 lbl_80451428;  // JKernel::szpBuf
extern u8 lbl_8045142C;  // JKernel::szpEnd
extern u8 lbl_80451430;  // JKernel::refBuf
extern u8 lbl_80451434;  // JKernel::refEnd
extern u8 lbl_80451438;  // JKernel::refCurrent
extern u8 lbl_8045143C;  // JKernel::srcOffset
extern u8 lbl_80451440;  // JKernel::transLeft
extern u8 lbl_80451444;  // JKernel::srcLimit
extern u8 lbl_80451448;  // JKernel::srcFile
extern u8 lbl_8045144C;  // JKernel::fileOffset
extern u8 lbl_80451450;  // JKernel::readCount
extern u8 lbl_80451454;  // JKernel::maxDest
extern u8 lbl_8045145C;  // JKernel::tsPtr
extern u8 lbl_80451458;  // DAT_80451458 (init global mutex)
extern u8 lbl_80451460;  // JKernel::tsArea
class JKRDMCommand;
extern JSUList<JKRDMCommand> lbl_80434384;  // JKRDvdRipper::sDvdAsyncList
extern u8 lbl_80434390;                     // JKernel::decompMutex
extern u8 lbl_804508C8;
extern u8 lbl_804508CC;  // JKRDvdRipper::sSZSBufferSize
extern u8 lbl_8039D290;  // "JKRDvdRipper.cpp"

extern u8 lbl_803CC178;  // JKRAramBlock::__vt

extern u8 lbl_803CC168;  // JKRAramHeap::__vt
extern u8 lbl_80434300;  // JKernel::@297 (global destructor chain)
class JKRAramBlock;
extern JSUList<JKRAramBlock> lbl_8043430C;  // JKRAramHeap::sAramList

extern u8 lbl_80434324;  // JKRAramPiece::sAramPieceCommandList
extern u8 lbl_80434330;  // JKRAramPiece::mMutex
extern u8 lbl_8039D0B8;  // "direction = %x\n"
extern u8 lbl_80434318;  // JKernel::@492 (global destructor chain)
extern u8 lbl_803CC138;  // JKRAram::sMessageQueue

extern u8 lbl_80451408;  // JKRAramStream::sAramStreamObject
extern u8 lbl_80451414;  // JKRAramStream::transHeap
extern u8 lbl_8039D120;  // "JKRAramStream.cpp"
extern u8 lbl_8045140C;  // JKRAramStream::transBuffer
extern u8 lbl_80451410;  // JKRAramStream::transSize
extern u8 lbl_803CC1B8;  // JKRAramStream::__vt
extern u8 lbl_803CC198;  // JKRAramStream::sMessageQueue
extern u8 lbl_803CC188;  // JKRAramStream::sMessageBuffer

extern u8 lbl_804508D0;  // DAT_804508d0
extern u8 lbl_80451468;  // JKernel::szpBuf (static?)
extern u8 lbl_8045146C;  // JKernel::szpEnd (static?)
extern u8 lbl_80451470;  // JKernel::refBuf (static?)
extern u8 lbl_80451474;  // JKernel::refEnd (static?)
extern u8 lbl_80451478;  // JKernel::refCurrent (static?)
extern u8 lbl_8045147C;  // JKernel::dmaBuf (static?)
extern u8 lbl_80451480;  // JKernel::dmaEnd (static?)
extern u8 lbl_80451484;  // JKernel::dmaCurrent (static?)
extern u8 lbl_80451488;  // JKernel::srcOffset (static?)
extern u8 lbl_8045148C;  // JKernel::transLeft (static?)
extern u8 lbl_80451490;  // JKernel::srcLimit (static?)
extern u8 lbl_80451494;  // JKernel::srcFile (static?)
extern u8 lbl_80451498;  // JKernel::fileOffset (static?)
extern u8 lbl_8045149C;  // JKernel::readCount (static?)
extern u8 lbl_804514A0;  // JKernel::maxDest (static?)
extern u8 lbl_804514A4;  // DAT_804514a4 (init global mutex)
extern u8 lbl_804514A8;  // JKernel::tsPtr (static?)
extern u8 lbl_804514AC;  // JKernel::tsArea (static?)

extern u8 lbl_804508D4;  // JKRDvdAramRipper::sSZSBufferSize
extern u8 lbl_803CC4B0;  // JSURandomInputStream::__vt
extern u8 lbl_804343A8;  // JKernel::@301 (global destructor chain)
extern u8 lbl_804343B4;  // JKRDvdAramRipper::sDvdAramAsyncList
extern u8 lbl_804343C0;  // JKernel::decompMutex
extern u8 lbl_803CC518;  // JSUFileInputStream::__vt

class JKRAram;
extern JKRAram* lbl_804513C8;  // JKRAram::sAramObject
extern u8 lbl_804513CC;        // JKernel::szpBuf (static?)
extern u8 lbl_804513D0;        // JKernel::szpEnd (static?)
extern u8 lbl_804513D4;        // JKernel::refBuf (static?)
extern u8 lbl_804513D8;        // JKernel::refEnd (static?)
extern u8 lbl_804513DC;        // JKernel::refCurrent (static?)
extern u8 lbl_804513E0;        // JKernel::srcOffset (static?)
extern u8 lbl_804513E4;        // JKernel::transLeft (static?)
extern u8 lbl_804513E8;        // JKernel::srcLimit (static?)
extern u8 lbl_804513EC;        // JKernel::srcAddress (static?)
extern u8 lbl_804513F0;        // JKernel::fileOffset (static?)
extern u8 lbl_804513F4;        // JKernel::readCount (static?)
extern u8 lbl_804513F8;        // JKernel::maxDest (static?)
extern u8 lbl_804513FC;        // DAT_804513fc (init global mutex)
extern u8 lbl_80451400;        // JKernel::tsPtr (static?)
extern u8 lbl_80451404;        // JKernel::tsArea (static?)

extern u8 lbl_803CC158;  // JKRAram::__vt
extern u8 lbl_8039D078;  // "JKRAram.cpp"
extern u8 lbl_804342D0;  // JKernel::@492 (global destructor chain)
extern u8 lbl_803CC138;  // JKRAram::sMessageQueue
extern u8 lbl_804342DC;  // JKRAram::sAramCommandList
extern u8 lbl_804342E8;  // JKernel::decompMutex (static?)
extern u8 lbl_804508B8;  // JKRAram::sSZSBufferSize
extern u8 lbl_803CC128;  // JKRAram::sMessageBuffer

// m_Do_Reset
// func_80015614
#include "JSystem/JUtility/JUTXfb/JUTXfb.h"
extern JUTXfb* lbl_80451550;
extern u8 lbl_80450BB8;
extern char lbl_80374198[16];
// func_8001574C
extern bool lbl_80451501;
extern void* lbl_804514EC;  // JUTGamePad::C3ButtonReset::sCallback
extern u32 lbl_804514F0;    // JUTGamePad::C3ButtonReset::sCallbackArg
extern u32 lbl_803ECF00;

// additional symbols needed for d_alink.cpp
// autogenerated by split.py v0.3 at 2020-12-28 03:48:23.905248
extern u8 lbl_803B2E20;
extern u8 lbl_80452DA8;
extern u8 lbl_80430D3C;
extern u8 lbl_803C35A4;
extern u8 lbl_80452CD4;
extern u8 lbl_80453288;
extern u8 lbl_8038F748;
extern u8 lbl_80452D00;
extern u8 lbl_80453330;
extern u8 lbl_804255D4;
extern u8 lbl_8045324C;
extern u8 lbl_80452E08;
extern u8 lbl_80452EAC;
extern u8 lbl_804532B8;
extern u8 lbl_8038DB40;
extern u8 lbl_80452E10;
extern u8 lbl_8045101E;
extern u8 lbl_80452FB4;
extern u8 lbl_80453254;
extern u8 lbl_80453294;
extern u8 lbl_80452FC8;
extern u8 lbl_804248D0;
extern u8 lbl_804255EC;
extern u8 lbl_8045323C;
extern u8 lbl_80452EE8;
extern u8 lbl_8038F124;
extern u8 lbl_80453368;
extern u8 lbl_803AC31C;
extern u8 lbl_8038EF70;
extern u8 lbl_80452FB0;
extern u8 lbl_80452D7C;
extern u8 lbl_80452F6C;
extern u8 lbl_80453010;
extern u8 lbl_80453190;
extern u8 lbl_80452CA8;
extern u8 lbl_80392094;
extern u8 lbl_8038E6C8;
extern u8 lbl_8038F1A0;
extern u8 lbl_80453068;
extern u8 lbl_8038D768;
extern u8 lbl_8045336C;
extern u8 lbl_80452DF4;
extern u8 lbl_80452F58;
extern u8 lbl_8038E2B0;
extern u8 lbl_80452E68;
extern u8 lbl_80452D78;
extern u8 lbl_80450FD1;
extern u8 lbl_80452EC0;
extern u8 lbl_80452D64;
extern u8 lbl_80452E0C;
extern u8 lbl_8038F29C;
extern u8 lbl_8038F048;
extern u8 lbl_80452D10;
extern u8 lbl_80453060;
extern u8 lbl_80452F1C;
extern u8 lbl_804531A0;
extern u8 lbl_80453134;
extern u8 lbl_8038F46C;
extern u8 lbl_80391D94;
extern u8 lbl_80453138;
extern u8 lbl_80453218;
extern u8 lbl_8038EE28;
extern u8 lbl_80453310;
extern u8 lbl_80453338;
extern u8 lbl_803A86D0;
extern u8 lbl_80452F2C;
extern u8 lbl_80452E8C;
extern u8 lbl_8038F858;
extern u8 lbl_80452FE8;
extern u8 lbl_80452F80;
extern u8 lbl_80452DA0;
extern u8 lbl_8038F0A8;
extern u8 lbl_80452E38;
extern u8 lbl_8038D864;
extern u8 lbl_80452E9C;
extern u8 lbl_80452ED8;
extern u8 lbl_803AF99C;
extern u8 lbl_80452ED0;
extern u8 lbl_80452E28;
extern u8 lbl_80453378;
extern u8 lbl_803A7904;
extern u8 lbl_80453334;
extern u8 lbl_80452E70;
extern u8 lbl_80453018;
extern u8 lbl_80391978;
extern u8 lbl_80453370;
extern u8 lbl_80391734;
extern u8 lbl_8038F7A4;
extern u8 lbl_80453084;
extern u8 lbl_80453284;
extern u8 lbl_80452EC8;
extern u8 lbl_803A83A0;
extern u8 lbl_80452DDC;
extern u8 lbl_803B35C8;
extern u8 lbl_803B2F28;
extern u8 lbl_80453194;
extern u8 lbl_80453154;
extern u8 lbl_8045101C;
extern u8 lbl_80453320;
extern u8 lbl_804532E4;
extern u8 lbl_80451160;
extern u8 lbl_8038E1E0;
extern u8 lbl_80453268;
extern u8 lbl_80452FD0;
extern u8 lbl_80453074;
extern u8 lbl_8038F578;
extern u8 lbl_80450B38;
extern u8 lbl_80452E20;
extern u8 lbl_803B2EC8;
extern u8 lbl_8038DE8C;
extern u8 lbl_8038DF9C;
extern u8 lbl_804531A4;
extern u8 lbl_803914A8;
extern u8 lbl_8045315C;
extern u8 lbl_8038E840;
extern u8 lbl_804532DC;
extern u8 lbl_803A0004;
extern u8 lbl_80450FC4;
extern u8 lbl_80452D20;
extern u8 lbl_80453188;
extern u8 lbl_8045313C;
extern u8 lbl_8045328C;
extern u8 lbl_80450FB9;
extern u8 lbl_80453030;
extern u8 lbl_8045318C;
extern u8 lbl_8038FA90;
extern u8 lbl_8038FB50;
extern u8 lbl_8045339C;
extern u8 lbl_80391BAC;
extern u8 lbl_80453168;
extern u8 lbl_80452F74;
extern u8 lbl_80452D30;
extern u8 lbl_80391D84;
extern u8 lbl_8038FB44;
extern u8 lbl_803790C0;
extern u8 lbl_804256CC;
extern u8 lbl_80452E80;
extern u8 lbl_803B29AC;
extern u8 lbl_80425514;
extern u8 lbl_80452FCC;
extern u8 lbl_80391E18;
extern u8 lbl_80453080;
extern u8 lbl_804532E0;
extern u8 lbl_80453024;
extern u8 lbl_80453258;
extern u8 lbl_80453358;
extern u8 lbl_803919D8;
extern u8 lbl_8038F95C;
extern u8 lbl_80452DCC;
extern u8 lbl_80453300;
extern u8 lbl_80452F54;
extern u8 lbl_8038D82C;
extern u8 lbl_80450FBC;
extern u8 lbl_804532BC;
extern u8 lbl_80453398;
extern u8 lbl_80452F44;
extern u8 lbl_8038F558;
extern u8 lbl_80452D1C;
extern u8 lbl_80453394;
extern u8 lbl_8038D664;
extern u8 lbl_8038D7BC;
extern u8 lbl_80391C30;
extern u8 lbl_80453214;
extern u8 lbl_80452FF0;
extern u8 lbl_803B3580;
extern u8 lbl_80453054;
extern u8 lbl_804532EC;
extern u8 lbl_80452E84;
extern u8 lbl_8045307C;
extern u8 lbl_8038F138;
extern u8 lbl_80452D6C;
extern u8 lbl_80453040;
extern u8 lbl_80452E50;
extern u8 lbl_80391B5C;
extern u8 lbl_80452D44;
extern u8 lbl_803919E4;
extern u8 lbl_80452DC4;
extern u8 lbl_804532A0;
extern u8 lbl_80425508;
extern u8 lbl_80452EB0;
extern u8 lbl_80453260;
extern u8 lbl_80450690;
extern u8 lbl_8038EBFC;
extern u8 lbl_803B2DA0;
extern u8 lbl_80453000;
extern u8 lbl_80452CC8;
extern u8 lbl_803C3540;
extern u8 lbl_80453180;
extern u8 lbl_80452D60;
extern u8 lbl_80452CA0;
extern u8 lbl_80392034;
extern u8 lbl_8038EB50;
extern u8 lbl_80452E00;
extern u8 lbl_804255BC;
extern u8 lbl_8038F5B4;
extern u8 lbl_80391D38;
extern u8 lbl_803919FC;
extern u8 lbl_80452D9C;
extern u8 lbl_803919F0;
extern u8 lbl_803B2798;
extern u8 lbl_80452FBC;
extern u8 lbl_804256AC;
extern u8 lbl_8038E11C;
extern u8 lbl_80391E78;
extern u8 lbl_80452D08;
extern u8 lbl_8045325C;
extern u8 lbl_80453328;
extern u8 lbl_803A7218;
extern u8 lbl_8045304C;
extern u8 lbl_804531B8;
extern u8 lbl_80452CBC;
extern u8 lbl_80452D74;
extern u8 lbl_8038E1B8;
extern u8 lbl_804531D4;
extern u8 lbl_8038FCA8;
extern u8 lbl_80452D4C;
extern u8 lbl_80452CDC;
extern u8 lbl_8038E658;
extern u8 lbl_80453004;
extern u8 lbl_80391960;
extern u8 lbl_804515D0;
extern u8 lbl_80453014;
extern u8 lbl_80452FC0;
extern u8 lbl_80452DD4;
extern u8 lbl_803B2D88;
extern u8 lbl_803F1C48;
extern u8 lbl_80453044;
extern u8 lbl_80453088;
extern u8 lbl_8038E7CC;
extern u8 lbl_80452DC0;
extern u8 lbl_8038FB5C;
extern u8 lbl_8038E49C;
extern u8 lbl_80453230;
extern u8 lbl_80406194;
extern u8 lbl_803A33B8;
extern u8 lbl_80453144;
extern u8 lbl_8038FAC0;
extern u8 lbl_8038DF70;
extern u8 lbl_8045312C;
extern u8 lbl_80452E30;
extern u8 lbl_80452D8C;
extern u8 lbl_80452EFC;
extern u8 lbl_8038EAFC;
extern u8 lbl_80452D48;
extern u8 lbl_8045319C;
extern u8 lbl_80453070;
extern u8 lbl_80452FF4;
extern u8 lbl_80391ECC;
extern u8 lbl_8038F6F4;
extern u8 lbl_8038E610;
extern u8 lbl_80453240;
extern u8 lbl_8038F3B4;
extern u8 lbl_80450CD0;
extern u8 lbl_80453078;
extern u8 lbl_8045338C;
extern u8 lbl_80452D04;
extern u8 lbl_804532C0;
extern u8 lbl_80453008;
extern u8 lbl_80452F39;
extern u8 lbl_80453198;
extern u8 lbl_803918B8;
extern u8 lbl_80452F8C;
extern u8 lbl_80453178;
extern u8 lbl_804532F8;
extern u8 lbl_80452E88;
extern u8 lbl_80452F70;
extern u8 lbl_8038F618;
extern u8 lbl_80453344;
extern u8 lbl_8038DF28;
extern u8 lbl_8038E90C;
extern u8 lbl_80452EA8;
extern u8 lbl_803B2EF8;
extern u8 lbl_803B321C;
extern u8 lbl_80452FE4;
extern u8 lbl_80452E94;
extern u8 lbl_80452F60;
extern u8 lbl_8038D658;
extern u8 lbl_80452EEC;
extern u8 lbl_80453050;
extern u8 lbl_80453224;
extern u8 lbl_8045334C;
extern u8 lbl_8038EA30;
extern u8 lbl_80453038;
extern u8 lbl_8038F23C;
extern u8 lbl_8038E164;
extern u8 lbl_80452F28;
extern u8 lbl_8038FA6C;
extern u8 lbl_80453090;
extern u8 lbl_804531BC;
extern u8 lbl_80450FBA;
extern u8 lbl_80452E40;
extern u8 lbl_80452E7C;
extern u8 lbl_803918C4;
extern u8 lbl_80452DD8;
extern u8 lbl_80452E24;
extern u8 lbl_804256B8;
extern u8 lbl_8039199C;
extern u8 lbl_8045326C;
extern u8 lbl_80452EB4;
extern u8 lbl_804531C0;
extern u8 lbl_80452E34;
extern u8 lbl_80453238;
extern u8 lbl_804532F0;
extern u8 lbl_80453354;
extern u8 lbl_80453244;
extern u8 lbl_80450CD8;
extern u8 lbl_80452DBC;
extern u8 lbl_80452D98;
extern u8 lbl_80450FC0;
extern u8 lbl_8045306C;
extern u8 lbl_8038F3F0;
extern u8 lbl_80450FCC;
extern u8 lbl_80452DC8;
extern u8 lbl_80452EA0;
extern u8 lbl_80453388;
extern u8 lbl_8042CA54;
extern u8 lbl_80452D28;
extern u8 lbl_80452FA4;
extern u8 lbl_803F1D80;
extern u8 lbl_803B2F70;
extern u8 lbl_8038EC48;
extern u8 lbl_8038E01C;
extern u8 lbl_8038F8B4;
extern u8 lbl_803A3354;
extern u8 lbl_80452DE4;
extern u8 lbl_8038D6BC;
extern u8 lbl_8045321C;
extern u8 lbl_8038EB8C;
extern u8 lbl_80452DAC;
extern u8 lbl_80452D84;
extern u8 lbl_80452E3C;
extern u8 lbl_80452F24;
extern u8 lbl_80452D70;
extern u8 lbl_803F1CC4;
extern u8 lbl_80452ECC;
extern u8 lbl_80452D2C;
extern u8 lbl_804532D8;
extern u8 lbl_80452EBC;
extern u8 lbl_80450FBB;
extern u8 lbl_804532CC;
extern u8 lbl_8045308C;
extern u8 lbl_803BA14C;
extern u8 lbl_80391A5C;
extern u8 lbl_80453298;
extern u8 lbl_804530BC;
extern u8 lbl_80450694;
extern u8 lbl_80391F2C;
extern u8 lbl_803A8554;
extern u8 lbl_803B3564;
extern u8 lbl_80452E58;
extern u8 lbl_80453184;
extern u8 lbl_804532A4;
extern u8 lbl_80452DFC;
extern u8 lbl_804533A0;
extern u8 lbl_8038DAEC;
extern u8 lbl_803B2B68;
extern u8 lbl_804531D0;
extern u8 lbl_804256F8;
extern u8 lbl_8045305C;
extern u8 lbl_8042561C;
extern u8 lbl_803A33E4;
extern u8 lbl_8042552C;
extern u8 lbl_80391E48;
extern u8 lbl_80391D44;
extern u8 lbl_804255A4;
extern u8 lbl_80451180;
extern u8 lbl_804532AC;
extern u8 lbl_80452F04;
extern u8 lbl_80391A2C;
extern u8 lbl_8038EFA8;
extern u8 lbl_80452D90;
extern u8 lbl_804532F4;
extern u8 lbl_803AF990;
extern u8 lbl_803AC170;
extern u8 lbl_803B32B8;
extern u8 lbl_8042555C;
extern u8 lbl_8038F7DC;
extern u8 lbl_804532C8;
extern u8 lbl_8039196C;
extern u8 lbl_80453274;
extern u8 lbl_80452E98;
extern u8 lbl_803A8578;
extern u8 lbl_80450FC5;
extern u8 lbl_8038DDB8;
extern u8 lbl_80453220;
extern u8 lbl_80452FB8;
extern u8 lbl_8038EA70;
extern u8 lbl_8038E77C;
extern u8 lbl_80453318;
extern u8 lbl_80452FEC;
extern u8 lbl_80452EB8;
extern u8 lbl_80453118;
extern u8 lbl_8038ED2C;
extern u8 lbl_8045301C;
extern u8 lbl_80453280;
extern u8 lbl_80391E3C;
extern u8 lbl_8039201C;
extern u8 lbl_80452F78;
extern u8 lbl_803AC2E4;
extern u8 lbl_80452E1C;
extern u8 lbl_80452FA0;
extern u8 lbl_80453140;
extern u8 lbl_80452D24;
extern u8 lbl_80452CAC;
extern u8 lbl_80452FE0;
extern u8 lbl_80450FC7;
extern u8 lbl_803CEE60;
extern u8 lbl_80453248;
extern u8 lbl_803B35A0;
extern u8 lbl_8045317C;
extern u8 lbl_803B35EC;
extern u8 lbl_80452E14;
extern u8 lbl_80452EC4;
extern u8 lbl_803A37C0;
extern u8 lbl_80453390;
extern u8 lbl_8038E36C;
extern u8 lbl_80452D54;
extern u8 lbl_80453374;
extern u8 lbl_80452DA4;
extern u8 lbl_80453120;
extern u8 lbl_80453348;
extern u8 lbl_80452E2C;
extern u8 lbl_80391A50;
extern u8 lbl_80452EF4;
extern u8 lbl_80452E48;
extern u8 lbl_80452DE8;
extern u8 lbl_804531B4;
extern u8 lbl_8038F3C4;
extern u8 lbl_80450698;
extern u8 lbl_80453174;
extern u8 lbl_8038DD44;
extern u8 lbl_803C3608;
extern u8 lbl_80452F38;
extern u8 lbl_803A3360;
extern u8 lbl_8038DB84;
extern u8 lbl_8038E210;
extern u8 lbl_80450FC6;
extern u8 lbl_80452F34;
extern u8 lbl_8045302C;
extern u8 lbl_80453350;
extern u8 lbl_80453048;
extern u8 lbl_80453264;
extern u8 lbl_804532C4;
extern u8 lbl_80391E24;
extern u8 lbl_80453250;
extern u8 lbl_80453308;
extern u8 lbl_803A720C;
extern u8 lbl_80452D94;
extern u8 lbl_80452E6C;
extern u8 lbl_8038E454;
extern u8 lbl_80453124;
extern u8 lbl_8038FA54;
extern u8 lbl_803ABFC0;
extern u8 lbl_804532A8;
extern u8 lbl_8038F658;
extern u8 lbl_8038F374;
extern u8 lbl_8045335C;
extern u8 lbl_80452F40;
extern u8 lbl_8042558C;
extern u8 lbl_80452F4C;
extern u8 lbl_80453034;
extern u8 lbl_80391E8C;
extern u8 lbl_8038E714;
extern u8 lbl_803918DC;
extern u8 lbl_80391A14;
extern u8 lbl_804531B0;
extern u8 lbl_8038EF28;
extern u8 lbl_80452F3C;
extern u8 lbl_80391D54;
extern u8 lbl_80453384;
extern u8 lbl_80452F18;
extern u8 lbl_8038D714;
extern u8 lbl_803A8748;
extern u8 lbl_80453380;
extern u8 lbl_80452F90;
extern u8 lbl_8045311C;
extern u8 lbl_80452EA4;
extern u8 lbl_80452F00;
extern u8 lbl_8038D8CC;
extern u8 lbl_803B35B4;
extern u8 lbl_804531A8;
extern u8 lbl_80452FFC;
extern u8 lbl_80452E04;
extern u8 lbl_80452E74;
extern u8 lbl_80452F64;
extern u8 lbl_8038E870;
extern u8 lbl_8038F010;
extern u8 lbl_804532B4;
extern u8 lbl_80452F88;
extern u8 lbl_803B0A28;
extern u8 lbl_803C36D0;
extern u8 lbl_80452D80;
extern u8 lbl_8038E24C;
extern u8 lbl_80453270;
extern u8 lbl_8038E428;
extern u8 lbl_80450FBD;
extern u8 lbl_80452CA4;
extern u8 lbl_80452F5C;
extern u8 lbl_80453360;
extern u8 lbl_8038F9F8;
extern u8 lbl_80452EF0;
extern u8 lbl_80453234;
extern u8 lbl_80391BB8;
extern u8 lbl_80452D0C;
extern u8 lbl_80452F50;
extern u8 lbl_80452F7C;
extern u8 lbl_80452F9C;
extern u8 lbl_8045337C;
extern u8 lbl_804532D0;
extern u8 lbl_803A338C;
extern u8 lbl_80391E30;
extern u8 lbl_80452F68;
extern u8 lbl_80452FC4;
extern u8 lbl_80453160;
extern u8 lbl_8038E1F4;
extern u8 lbl_8038FBBC;
extern u8 lbl_80391EC0;
extern u8 lbl_80450FD0;
extern u8 lbl_80452FD8;
extern u8 lbl_80452D38;
extern u8 lbl_804532D4;
extern u8 lbl_80391954;
extern u8 lbl_80452CD8;
extern u8 lbl_804531CC;
extern u8 lbl_80450E20;
extern u8 lbl_8038E54C;
extern u8 lbl_80453164;
extern u8 lbl_80425634;
extern u8 lbl_803AC050;
extern u8 lbl_8045316C;
extern u8 lbl_80452EF8;
extern u8 lbl_804532E8;
extern u8 lbl_803A382C;
extern u8 lbl_803A357C;
extern u8 lbl_80452D40;
extern u8 lbl_80452E64;
extern u8 lbl_80450DF8;
extern u8 lbl_80452DB4;
extern u8 lbl_80391A08;
extern u8 lbl_803CD97C;
extern u8 lbl_80452EE4;
extern u8 lbl_80452F10;
extern u8 lbl_8038DC9C;
extern u8 lbl_80452F94;
extern u8 lbl_80450608;
extern u8 lbl_80452D58;
extern u8 lbl_8038DE18;
extern u8 lbl_803B3590;
extern u8 lbl_80452F98;
extern u8 lbl_803A3468;
extern u8 lbl_8038E7F4;
extern u8 lbl_80452EE0;
extern u8 lbl_804531C8;
extern u8 lbl_80452FD4;
extern u8 lbl_803B2CEC;
extern u8 lbl_80452DD0;
extern u8 lbl_80452F14;
extern u8 lbl_80452F30;
extern u8 lbl_80452F84;
extern u8 lbl_80453290;
extern u8 lbl_80450620;
extern u8 lbl_80452CD0;
extern u8 lbl_80391B7C;
extern u8 lbl_80452F20;
extern u8 lbl_803B2D94;
extern u8 lbl_8038E068;
extern u8 lbl_8038E4C0;
extern u8 lbl_80452E18;
extern u8 lbl_80453148;
extern u8 lbl_80453064;
extern u8 lbl_804506A4;
extern u8 lbl_80453170;
extern u8 lbl_80425544;
extern u8 lbl_80453364;
extern u8 lbl_80452DF0;
extern u8 lbl_80452CCC;
extern u8 lbl_803B2E80;
extern u8 lbl_80450AE8;
extern u8 lbl_803B22E0;
extern u8 lbl_80453128;
extern u8 lbl_80391984;
extern u8 lbl_80450FB8;
extern u8 lbl_80452CC4;
extern u8 lbl_8045329C;
extern u8 lbl_8045303C;
extern u8 lbl_80452D34;
extern u8 lbl_80391A20;
extern u8 lbl_804531C4;
extern u8 lbl_80452E78;
extern u8 lbl_80453130;
extern u8 lbl_80391990;
extern u8 lbl_803C3728;
extern u8 lbl_8038FA78;
extern u8 lbl_8038E9C0;
extern u8 lbl_80452FF8;
extern u8 lbl_80391010;
extern u8 lbl_803AC310;
extern u8 lbl_804531AC;
extern u8 lbl_80452F48;
extern u8 lbl_80452E90;
extern u8 lbl_803918D0;
extern u8 lbl_80453028;

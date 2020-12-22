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
extern void* lbl_803CBF70; // JKRHeap::__vt

class JKRHeap;
extern JKRHeap* lbl_80451370; // JKRHeap::sSystemHeap
extern JKRHeap* lbl_80451378; // JKRHeap::sRootHeap
extern JKRHeap* lbl_80451374; // JKRHeap::sCurrentHeap
extern void* lbl_8045137C;    // JKRHeap::mErrorHandler

extern bool lbl_804508B0; // ::*fill*
extern bool lbl_80451380; // DAT_80451380

// func_802CE378
extern void* lbl_80451384; // JKRHeap::mCodeStart
extern void* lbl_80451388; // JKRHeap::mCodeEnd
extern void* lbl_8045138C; // JKRHeap::mUserRamStart
extern void* lbl_80451390; // JKRHeap::mUserRamEnd
extern u32 lbl_80451394;   // JKRHeap::mMemorySize

extern u8 lbl_80000000;
extern u32 lbl_80000028;

#define OS_GLOBAL(T, ADDR) *((T*)((void*)ADDR))
#define OS_GLOBAL_ADDR(T, ADDR) ((T*)((void*)ADDR))

// func_802CEB40
extern char lbl_8039CAD8[12]; // "JKRHeap.cpp"

// func_802D147C
extern void* lbl_803CC0F0; // JKRDisposer::__vt

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
extern Z2SceneMgr* lbl_80450B80; // Z2SceneMgr sInstance
struct Z2SoundMgr;
extern Z2SoundMgr* lbl_80450B60; // Z2SoundMgr sInstance
struct Z2SoundObjMgr;
extern Z2SoundObjMgr* lbl_80450B48; // Z2SoundObjMgr sInstance
struct Z2SpeechMgr2;
extern Z2SpeechMgr2* lbl_80450B70; // Z2SpeechMgr2 sInstance
extern void* lbl_803CC114;          // JKRThread::__vt

class JKRThreadSwitch;
extern void* lbl_803CC100[5];         // JKRThreadSwitch::__vt
extern u32 lbl_804513B4;              // JKRThreadSwitch::sTotalCount
extern u32 lbl_804513BC;              // DAT_804513bc
extern u32 lbl_804513B8;              // JKRThreadSwitch::sTotalStart
extern JKRThreadSwitch* lbl_804513B0; // JKRThreadSwitch::sManager
extern void* lbl_804513C0;            // JKRThreadSwitch::mUserPreCallback
extern void* lbl_804513C4;            //  JKRThreadSwitch::mUserPostCallback

extern char lbl_8039CFA8[1]; // 8039cfdc-0x34 "JKRThreadSwitch: currentHeap destroyed.\n"

extern float lbl_80455FC0;  // JKernel::@934 = 100.0
extern float lbl_80455FC4;  // JKernel::@935 = 1000.0
extern double lbl_80455FC8; // JKernel::@937 = 4.503599627370496E15

class JKRDvdFile;
extern JSUList<JKRDvdFile> lbl_8043436C; // JKRDvdFile::sDvdList
extern u8 lbl_803CC438;                  // JKRDvdFile::__vt
extern u8 lbl_80434360;                  // JKernel::@657 (global destructor chain)
extern char lbl_8039D260[12];                  // "JKRDvdFile.cpp"
extern u8 lbl_803CC328;                  // JKRFile::__vt

class JKRFileLoader;
extern JKRFileLoader* lbl_80451418;         // JKRFileLoader::sCurrentVolume
extern u8 lbl_8039D158;                     // "/"
extern u8 lbl_803CC238;                     // JKRFileCache::__vt
extern JSUList<JKRFileLoader> lbl_80434354; // JKRFileLoader::sVolumeList
extern u8 lbl_803CC218;                     // JKRArcFinder::__vt
extern u8 lbl_803CC228;                     // JKRFileFinder::__vt
extern u8 lbl_803CC208;                     // JKRDvdFinder::__vt
extern u8 lbl_8039D150;                     // "/"
extern u8 lbl_803CC1C8;                     // JKRFileLoader::__vt
extern u8 lbl_804508C0;                     // "/" JKernel::rootPath$2498
extern u8 lbl_80434348;                     // JKernel::@2182 (global destructor chain)
extern u8 lbl_803D2D18[256];                // MSL_C.PPCEABI.bare.H::__lower_map
extern u8 lbl_803CC090;                     // JKRAssertHeap::__vt
extern u8 lbl_80451398;                     // JKernel::DBfoundSize
extern u8 lbl_8045139C;                     // JKernel::DBfoundOffset
extern u8 lbl_804513A0;                     // JKernel::DBfoundBlock
extern u8 lbl_804513A4;                     // JKernel::DBnewFreeBlock
extern u8 lbl_804513A8;                     // JKernel::DBnewUsedBlock
extern float lbl_80455F98;                  // JKernel::@1121 = 100.0
extern u8 lbl_803CBFD0;                     // JKRExpHeap::__vt
extern u8 lbl_8039CAF0;                     // ":::cannot alloc memory (0x%x byte).\n"
extern double lbl_80455FA0;                 // JKernel::@1123 = 4.503599627370496E15
extern u8 lbl_803CC030;                     // JKRSolidHeap::__vt
extern double lbl_80455FB8;                 // JKernel::@697 = 4.503599627370496E15
extern u8 lbl_8039CE50;                     // "allocFromHead: cannot alloc memory (0x%x byte).\n"
extern double lbl_80455FB0;                 // JKernel::@695 = 4.503601774854144E15
extern float lbl_80455FA8;                  // JKernel::@693 = 100.0
extern u8 lbl_80451420;                     // JKRArchive::sCurrentDirID
extern u8 lbl_803CC288;                     // JKRArchive::__vt

//d_item
extern float lbl_80452BD8;
extern float lbl_80452BDC;
extern double lbl_80452BE0;
extern u8 lbl_80450D64;
struct unkEvent{  //figure out what this is later
    u8 unk0[0x235];
    u16 unk566;
    u8 unk567[0x439];
};
extern unkEvent lbl_803A7288;
extern u8 lbl_8037B0D0[0x8];

class JKRThread;
extern JSUList<JKRThread> lbl_8043428C;   // JSUList<JKRThread> JKRThread::sThreadList

extern u8 lbl_803CC398; // JKRDvdArchive::__vt
extern u8 lbl_8039D1B0; // "JKRDvdArchive.cpp"

extern u8 lbl_803CC2D8; // JKRMemArchive::__vt
extern u8 lbl_8039D160; // "JKRMemArchive.cpp"

extern u8 lbl_803CC348; // JKRAramArchive::__vt
extern u8 lbl_8039D188; // "JKRAramArchive.cpp"

extern u8 lbl_803CC3E8; // JKRCompArchive::__vt
extern u8 lbl_8039D220; // "JKRCompArchive.cpp"

extern u8 lbl_803CC460[32];         // JKRDecomp::sMessageBuffer
extern OSMessageQueue lbl_803CC480; // JKRDecomp::sMessageQueue
extern u8 lbl_804514B0;             // JKRDecomp::sDecompObject
extern u8 lbl_803CC4A0;             // JKRDecomp::__vt

extern u8 lbl_80434378; // JKernel::@491 (global destructor chain)
extern u8 lbl_80451428; // JKernel::szpBuf
extern u8 lbl_8045142C; // JKernel::szpEnd
extern u8 lbl_80451430; // JKernel::refBuf
extern u8 lbl_80451434; // JKernel::refEnd
extern u8 lbl_80451438; // JKernel::refCurrent
extern u8 lbl_8045143C; // JKernel::srcOffset
extern u8 lbl_80451440; // JKernel::transLeft
extern u8 lbl_80451444; // JKernel::srcLimit
extern u8 lbl_80451448; // JKernel::srcFile
extern u8 lbl_8045144C; // JKernel::fileOffset
extern u8 lbl_80451450; // JKernel::readCount
extern u8 lbl_80451454; // JKernel::maxDest
extern u8 lbl_8045145C; // JKernel::tsPtr
extern u8 lbl_80451458; // DAT_80451458 (init global mutex)
extern u8 lbl_80451460; // JKernel::tsArea
class JKRDMCommand;
extern JSUList<JKRDMCommand> lbl_80434384; // JKRDvdRipper::sDvdAsyncList
extern u8 lbl_80434390;                    // JKernel::decompMutex
extern u8 lbl_804508C8;
extern u8 lbl_804508CC; // JKRDvdRipper::sSZSBufferSize
extern u8 lbl_8039D290; // "JKRDvdRipper.cpp"

extern u8 lbl_803CC178; // JKRAramBlock::__vt

extern u8 lbl_803CC168; // JKRAramHeap::__vt
extern u8 lbl_80434300; // JKernel::@297 (global destructor chain)
class JKRAramBlock;
extern JSUList<JKRAramBlock> lbl_8043430C; // JKRAramHeap::sAramList

extern u8 lbl_80434324; // JKRAramPiece::sAramPieceCommandList
extern u8 lbl_80434330; // JKRAramPiece::mMutex
extern u8 lbl_8039D0B8; // "direction = %x\n"
extern u8 lbl_80434318; // JKernel::@492 (global destructor chain)
extern u8 lbl_803CC138; // JKRAram::sMessageQueue

extern u8 lbl_80451408; // JKRAramStream::sAramStreamObject
extern u8 lbl_80451414; // JKRAramStream::transHeap
extern u8 lbl_8039D120; // "JKRAramStream.cpp"
extern u8 lbl_8045140C; // JKRAramStream::transBuffer
extern u8 lbl_80451410; // JKRAramStream::transSize
extern u8 lbl_803CC1B8; // JKRAramStream::__vt
extern u8 lbl_803CC198; // JKRAramStream::sMessageQueue
extern u8 lbl_803CC188; // JKRAramStream::sMessageBuffer

extern u8 lbl_804508D0; // DAT_804508d0
extern u8 lbl_80451468; // JKernel::szpBuf (static?)
extern u8 lbl_8045146C; // JKernel::szpEnd (static?)
extern u8 lbl_80451470; // JKernel::refBuf (static?)
extern u8 lbl_80451474; // JKernel::refEnd (static?)
extern u8 lbl_80451478; // JKernel::refCurrent (static?)
extern u8 lbl_8045147C; // JKernel::dmaBuf (static?)
extern u8 lbl_80451480; // JKernel::dmaEnd (static?)
extern u8 lbl_80451484; // JKernel::dmaCurrent (static?)
extern u8 lbl_80451488; // JKernel::srcOffset (static?)
extern u8 lbl_8045148C; // JKernel::transLeft (static?)
extern u8 lbl_80451490; // JKernel::srcLimit (static?)
extern u8 lbl_80451494; // JKernel::srcFile (static?)
extern u8 lbl_80451498; // JKernel::fileOffset (static?)
extern u8 lbl_8045149C; // JKernel::readCount (static?)
extern u8 lbl_804514A0; // JKernel::maxDest (static?)
extern u8 lbl_804514A4; // DAT_804514a4 (init global mutex)
extern u8 lbl_804514A8; // JKernel::tsPtr (static?)
extern u8 lbl_804514AC; // JKernel::tsArea (static?)

extern u8 lbl_804508D4; // JKRDvdAramRipper::sSZSBufferSize
extern u8 lbl_803CC4B0; // JSURandomInputStream::__vt
extern u8 lbl_804343A8; // JKernel::@301 (global destructor chain)
extern u8 lbl_804343B4; // JKRDvdAramRipper::sDvdAramAsyncList
extern u8 lbl_804343C0; // JKernel::decompMutex
extern u8 lbl_803CC518; // JSUFileInputStream::__vt

class JKRAram;
extern JKRAram* lbl_804513C8; // JKRAram::sAramObject
extern u8 lbl_804513CC; // JKernel::szpBuf (static?)
extern u8 lbl_804513D0; // JKernel::szpEnd (static?)
extern u8 lbl_804513D4; // JKernel::refBuf (static?)
extern u8 lbl_804513D8; // JKernel::refEnd (static?)
extern u8 lbl_804513DC; // JKernel::refCurrent (static?)
extern u8 lbl_804513E0; // JKernel::srcOffset (static?)
extern u8 lbl_804513E4; // JKernel::transLeft (static?)
extern u8 lbl_804513E8; // JKernel::srcLimit (static?)
extern u8 lbl_804513EC; // JKernel::srcAddress (static?)
extern u8 lbl_804513F0; // JKernel::fileOffset (static?)
extern u8 lbl_804513F4; // JKernel::readCount (static?)
extern u8 lbl_804513F8; // JKernel::maxDest (static?)
extern u8 lbl_804513FC; // DAT_804513fc (init global mutex)
extern u8 lbl_80451400; // JKernel::tsPtr (static?)
extern u8 lbl_80451404; // JKernel::tsArea (static?)

extern u8 lbl_803CC158; // JKRAram::__vt
extern u8 lbl_8039D078; // "JKRAram.cpp"
extern u8 lbl_804342D0; // JKernel::@492 (global destructor chain)
extern u8 lbl_803CC138; // JKRAram::sMessageQueue
extern u8 lbl_804342DC; // JKRAram::sAramCommandList
extern u8 lbl_804342E8; // JKernel::decompMutex (static?)
extern u8 lbl_804508B8; // JKRAram::sSZSBufferSize
extern u8 lbl_803CC128; // JKRAram::sMessageBuffer

// m_Do_Reset
// func_80015614
extern u8 lbl_80450BB8;
extern char lbl_80374198[16];
// func_8001574C
extern bool lbl_80451501;
extern void* lbl_804514EC; // JUTGamePad::C3ButtonReset::sCallback
extern u32 lbl_804514F0; // JUTGamePad::C3ButtonReset::sCallbackArg
extern u32 lbl_803ECF00;

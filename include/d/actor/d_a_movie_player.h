#ifndef D_A_MOVIE_PLAYER_H
#define D_A_MOVIE_PLAYER_H

#include "f_op/f_op_actor.h"
#include "d/d_drawlist.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef u8 THPSample;
typedef s16 THPCoeff;
typedef f32 THPQuantTab[64];

typedef struct _THPHuffmanTab {
    u8 quick[32];
    u8 increment[32];
    u8* Vij;
    s32 maxCode[18];
    s32 valPtr[18];
    u8 Vij1;
    u8 pad[11];
} THPHuffmanTab;

typedef struct _THPComponent {
    u8 quantizationTableSelector;
    u8 DCTableSelector;
    u8 ACTableSelector;
    THPCoeff predDC;
} THPComponent;

typedef struct _THPFileInfo {
    THPQuantTab quantTabs[3];
    THPHuffmanTab huffmanTabs[4];
    THPComponent components[3];
    u16 xPixelSize;
    u16 yPixelSize;
    u16 MCUsPerRow;
    u16 decompressedY;
    u8* c;
    u32 currByte;
    u32 cnt;
    u8 validHuffmanTabs;
    u8 RST;
    u16 nMCU;
    u16 currMCU;
    u8* dLC[3];
} THPFileInfo;

typedef struct THPAudioRecordHeader {
    u32 offsetNextChannel;
    u32 sampleSize;
    s16 lCoef[8][2];
    s16 rCoef[8][2];
    s16 lYn1;
    s16 lYn2;
    s16 rYn1;
    s16 rYn2;
} THPAudioRecordHeader;

typedef struct THPAudioDecodeInfo {
    u8* encodeData;
    u32 offsetNibbles;
    u8 predictor;
    u8 scale;
    s16 yn1;
    s16 yn2;
} THPAudioDecodeInfo;

static u32 THPAudioDecode(s16* audioBuffer, u8* audioFrame, s32 flag);
static s32 __THPAudioGetNewSample(THPAudioDecodeInfo* info);
static void __THPAudioInitialize(THPAudioDecodeInfo* info, u8* ptr);

s32 __THPAudioGetNewSample(THPAudioDecodeInfo*);
void __THPAudioInitialize(THPAudioDecodeInfo*, u8*);

static void __THPSetupBuffers(void);
static u8 __THPReadFrameHeader(void);
static u8 __THPReadScaneHeader(void);
static u8 __THPReadQuantizationTable(void);
static u8 __THPReadHuffmanTableSpecification(void);
static void __THPHuffGenerateSizeTable(void);
static void __THPHuffGenerateCodeTable(void);
static void __THPHuffGenerateDecoderTables(u8 tabIndex);
static void __THPRestartDefinition(void);
static void __THPPrepBitStream(void);
static void __THPDecompressYUV(void* tileY, void* tileU, void* tileV);
static void __THPGQRRestore(void);
static void __THPDecompressiMCURow512x448(void);
static void __THPDecompressiMCURow640x480(void);
static void __THPDecompressiMCURowNxN(void);
static void __THPInverseDCTNoYPos(THPCoeff* in, u32 xPos);
static void __THPHuffDecodeDCTCompY(THPFileInfo* info, THPCoeff* block);
static void __THPHuffDecodeDCTCompU(THPFileInfo* info, THPCoeff* block);
static void __THPHuffDecodeDCTCompV(THPFileInfo* info, THPCoeff* block);

static void __THPInverseDCTY8(THPCoeff* in, u32 xPos);
static void __THPGQRSetup();
static s32 __THPHuffDecodeTab(THPFileInfo* info, THPHuffmanTab* h);

#ifdef __cplusplus
}
#endif

/**
 * @ingroup actors-unsorted
 * @class daMP_c
 * @brief Movie Player
 *
 * @details
 *
 */
class daMP_c : public fopAc_ac_c {
public:
    /* 80031AD0 */ static int daMP_c_THPPlayerPlay();
    /* 80031B24 */ static void daMP_c_THPPlayerPause();
    /* 80031A78 */ static u32 daMP_c_Get_MovieRestFrame();
    /* 80031AA4 */ static void daMP_c_Set_PercentMovieVolume(f32);
    /* 80878BB8 */ int daMP_c_Get_arg_demoNo();
    /* 80878C04 */ int daMP_c_Get_arg_movieNo();
    /* 80878C28 */ int daMP_c_Init();
    /* 80878D64 */ int daMP_c_Finish();
    /* 80878D94 */ int daMP_c_Main();
    /* 80878DD8 */ int daMP_c_Draw();
    /* 80878ED4 */ daMP_c() {}

    /* 80878E60 */ static int daMP_c_Callback_Init(fopAc_ac_c*);
    /* 80878F18 */ static int daMP_c_Callback_Finish(daMP_c*);
    /* 80878F38 */ static int daMP_c_Callback_Main(daMP_c*);
    /* 80878F70 */ static int daMP_c_Callback_Draw(daMP_c*);

    static daMP_c* m_myObj;

private:
    /* 0x568 */ u32 (*mpGetMovieRestFrame)(void);
    /* 0x56C */ void (*mpSetPercentMovieVol)(f32);
    /* 0x570 */ u32 (*mpTHPGetTotalFrame)(void);
    /* 0x574 */ int (*mpTHPPlay)(void);
    /* 0x578 */ void (*mpTHPStop)(void);
    /* 0x57C */ int (*mpTHPPause)(void);
};

STATIC_ASSERT(sizeof(daMP_c) == 0x580);

struct daMP_THPReadBuffer {
    /* 0x00 */ void* m00;
    /* 0x04 */ s32 m04;
};

class daMP_Dlst_base_c : public dDlst_base_c {
public:
    /* 80878FD8 */ daMP_Dlst_base_c() {}

    /* 80878DB8 */ virtual void draw();
};

struct THPVideoInfo {
    /* 0x00 */ u32 field_0x0;
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ u8 field_0x8[0x0C - 0x08];
};

struct THPAudioInfo {
    /* 0x00 */ u8 field_0x0[0xC - 0x0];
    /* 0x0C */ u32 field_0xc;
};

// made up
struct daMP_Player_c {
    /* 0x000 */ DVDFileInfo mFileInfo;
    /* 0x03C */ char* field_0x3c;
    /* 0x040 */ int field_0x40;
    /* 0x044 */ int field_0x44;
    /* 0x048 */ int field_0x48;
    /* 0x04C */ f32 field_0x4c;
    /* 0x050 */ u32 mTotalFrames;
    /* 0x054 */ int field_0x54;
    /* 0x058 */ int field_0x58;
    /* 0x05C */ int field_0x5c;
    /* 0x060 */ int field_0x60;
    /* 0x064 */ int field_0x64;
    /* 0x068 */ u8 field_0x68[0x06C - 0x068];
    struct {
        u32 _0;
        u8 _4;
        u8 _5[0x14 - 0x5];
    } /* 0x06C */ field_0x6c;  // not sure if this is right
    /* 0x080 */ THPVideoInfo mVideoInfo;
    /* 0x08C */ THPAudioInfo mAudioInfo;
    /* 0x09C */ int field_0x9c;
    /* 0x0A0 */ int field_0xa0;
    /* 0x0A4 */ u8 mState;
    /* 0x0A5 */ u8 field_0xa5;
    /* 0x0A6 */ u8 field_0xa6;
    /* 0x0A7 */ u8 field_0xa7;
    /* 0x0A8 */ int field_0xa8;
    /* 0x0AC */ int field_0xac;
    /* 0x0B0 */ int field_0xb0;
    /* 0x0B4 */ int field_0xb4;
    /* 0x0B8 */ int field_0xb8;
    /* 0x0BC */ int field_0xbc;
    /* 0x0C0 */ int field_0xc0;
    /* 0x0C4 */ u8 field_0xC4[0x0C8 - 0x0C4];
    /* 0x0C8 */ s64 field_0xc8;
    /* 0x0D0 */ int field_0xd0;
    /* 0x0D4 */ int field_0xd4;
    /* 0x0D8 */ int field_0xd8;
    /* 0x0DC */ f32 field_0xdc;
    /* 0x0E0 */ f32 field_0xe0;
    /* 0x0E4 */ f32 field_0xe4;
    /* 0x0E8 */ int field_0xe8;
    /* 0x0EC */ int field_0xec;
    /* 0x0F0 */ int field_0xf0;
    /* 0x0F4 */ int field_0xf4;
    /* 0x0F8 */ int field_0xf8;
    /* 0x0FC */ int field_0xfc;
    /* 0x100 */ int field_0x100;
    /* 0x104 */ u8 field_0x104[0x10C - 0x104];
    /* 0x10C */ int field_0x10c;
    /* 0x110 */ u8 field_0x110[0x118 - 0x110];
    /* 0x118 */ int field_0x118;
    /* 0x11C */ u8 field_0x11C[0x124 - 0x11C];
    /* 0x124 */ int field_0x124;
    /* 0x128 */ u8 field_0x128[0x130 - 0x128];
    /* 0x130 */ int field_0x130;
    /* 0x134 */ u8 field_0x134[0x13C - 0x134];
    /* 0x13C */ int field_0x13c;
    /* 0x140 */ u8 field_0x140[0x148 - 0x140];
    /* 0x148 */ int field_0x148;
    /* 0x14C */ u8 field_0x14C[0x154 - 0x14C];
    /* 0x154 */ int field_0x154;
    /* 0x158 */ u8 field_0x158[0x160 - 0x158];
    /* 0x160 */ int field_0x160;
    /* 0x164 */ u8 field_0x164[0x16C - 0x164];
    /* 0x16C */ int field_0x16c;
    /* 0x170 */ u8 field_0x170[0x178 - 0x170];
    /* 0x178 */ int field_0x178;
    /* 0x17C */ int field_0x17c;
    /* 0x180 */ int field_0x180;
    /* 0x184 */ u8 field_0x184[0x1A8 - 0x184];
    /* 0x1A8 */ int field_0x1a8;
    /* 0x1AC */ int field_0x1ac;
    /* 0x1B0 */ int field_0x1b0;
    /* 0x1B4 */ int field_0x1b4;
    /* 0x1B8 */ int field_0x1b8;
    /* 0x1BC */ int field_0x1bc;
    /* 0x1C0 */ int field_0x1c0;
    /* 0x1C4 */ int field_0x1c4;
    /* 0x1C8 */ int field_0x1c8;
};

inline s32 daMP_NEXT_READ_SIZE(daMP_THPReadBuffer* readBuf) {
    return *(s32*)readBuf->m00;
}

void daMP_PrepareReady(int);

#endif /* D_A_MOVIE_PLAYER_H */

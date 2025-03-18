/**
 * @file d_a_movie_player.cpp
 * 
*/

// This TU seems to disable inlining entirely, as there are several weak functions that get inlined
// in other TUs, but not here.
#pragma dont_inline on

#include <stdio.h>
#include <cstring.h>
#include <dolphin.h>
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JAudio2/JASAiCtrl.h"
#include "d/actor/d_a_movie_player.h"
#include "d/d_com_inf_game.h"
#include "dol2asm.h"
#include "Z2AudioLib/Z2Instances.h"
#include "m_Do/m_Do_graphic.h"
#include "f_op/f_op_overlap_mng.h"
#include "SSystem/SComponent/c_API_controller_pad.h"

#ifdef __cplusplus
extern "C" {
#endif

/* 80872758-80872BF0 000078 0498+00 1/1 0/0 0/0 .text            THPAudioDecode */
// NONMATCHING
static u32 THPAudioDecode(s16* audioBuffer, u8* audioFrame, s32 flag) {
    THPAudioRecordHeader* header;
    THPAudioDecodeInfo decInfo;
    u8 *left, *right;
    s16 *decLeftPtr, *decRightPtr;
    s16 yn1, yn2;
    s32 i;
    s32 step;
    s32 sample;
    s64 yn;

    if (audioBuffer == NULL || audioFrame == NULL) {
        return 0;
    }

    header = (THPAudioRecordHeader*)audioFrame;
    left = audioFrame + sizeof(THPAudioRecordHeader);
    right = left + header->offsetNextChannel;

    if (flag == 1) {
        decRightPtr = audioBuffer;
        decLeftPtr = audioBuffer + header->sampleSize;
        step = 1;
    } else {
        decRightPtr = audioBuffer;
        decLeftPtr = audioBuffer + 1;
        step = 2;
    }

    if (header->offsetNextChannel == 0) {
        __THPAudioInitialize(&decInfo, left);

        yn1 = header->lYn1;
        yn2 = header->lYn2;

        for (i = 0; i < header->sampleSize; i++) {
            sample = __THPAudioGetNewSample(&decInfo);
            yn = header->lCoef[decInfo.predictor][1] * yn2;
            yn += header->lCoef[decInfo.predictor][0] * yn1;
            yn += (sample << decInfo.scale) << 11;
            yn <<= 5;

            if (sample > 0x8000) {
                yn += 0x10000;
            } else if ((sample == 0x8000) && ((yn & 0x10000) != 0)) {
                yn += 0x10000;
            }

            yn += 0x8000;

            if (yn > 2147483647LL) {
                yn = 2147483647LL;
            }

            if (yn < -2147483648LL) {
                yn = -2147483648LL;
            }

            *decLeftPtr = (s16)(yn >> 16);
            decLeftPtr += step;
            *decRightPtr = (s16)(yn >> 16);
            decRightPtr += step;
            yn2 = yn1;
            yn1 = (s16)(yn >> 16);
        }
    } else {
        __THPAudioInitialize(&decInfo, left);

        yn1 = header->lYn1;
        yn2 = header->lYn2;

        for (i = 0; i < header->sampleSize; i++) {
            sample = __THPAudioGetNewSample(&decInfo);
            yn = header->lCoef[decInfo.predictor][1] * yn2;
            yn += header->lCoef[decInfo.predictor][0] * yn1;
            yn += (sample << decInfo.scale) << 11;
            yn <<= 5;
            yn += 0x8000;

            if (yn > 2147483647LL) {
                yn = 2147483647LL;
            }

            if (yn < -2147483648LL) {
                yn = -2147483648LL;
            }

            *decLeftPtr = (s16)(yn >> 16);
            decLeftPtr += step;
            yn2 = yn1;
            yn1 = (s16)(yn >> 16);
        }

        __THPAudioInitialize(&decInfo, right);

        yn1 = header->rYn1;
        yn2 = header->rYn2;

        for (i = 0; i < header->sampleSize; i++) {
            sample = __THPAudioGetNewSample(&decInfo);
            yn = header->rCoef[decInfo.predictor][1] * yn2;
            yn += header->rCoef[decInfo.predictor][0] * yn1;
            yn += (sample << decInfo.scale) << 11;
            yn <<= 5;

            yn += 0x8000;

            if (yn > 2147483647LL) {
                yn = 2147483647LL;
            }

            if (yn < -2147483648LL) {
                yn = -2147483648LL;
            }

            *decRightPtr = (s16)(yn >> 16);
            decRightPtr += step;
            yn2 = yn1;
            yn1 = (s16)(yn >> 16);
        }
    }

    return header->sampleSize;
}

/* 80872BF0-80872C80 000510 0090+00 1/1 0/0 0/0 .text            __THPAudioGetNewSample */
static s32 __THPAudioGetNewSample(THPAudioDecodeInfo* info) {
    s32 sample;

    if (!(info->offsetNibbles & 0x0f)) {
        info->predictor = (u8)((*(info->encodeData) & 0x70) >> 4);
        info->scale = (u8)((*(info->encodeData) & 0xF));
        info->encodeData++;
        info->offsetNibbles += 2;
    }

    if (info->offsetNibbles & 0x1) {
        sample = (s32)((*(info->encodeData) & 0xF) << 28) >> 28;
        info->encodeData++;
    } else {
        sample = (s32)((*(info->encodeData) & 0xF0) << 24) >> 28;
    }

    info->offsetNibbles++;
    return sample;
}

/* 80872C80-80872CBC 0005A0 003C+00 1/1 0/0 0/0 .text            __THPAudioInitialize */
static void __THPAudioInitialize(THPAudioDecodeInfo* info, u8* ptr) {
    info->encodeData = ptr;
    info->offsetNibbles = 2;
    info->predictor = (u8)((*(info->encodeData) & 0x70) >> 4);
    info->scale = (u8)((*(info->encodeData) & 0xF));
    info->encodeData++;
}

UNK_BSS(1109);
UNK_BSS(1107);
UNK_BSS(1105);
UNK_BSS(1104);
UNK_BSS(1099);
UNK_BSS(1097);
UNK_BSS(1095);
UNK_BSS(1094);
UNK_BSS(1057);
UNK_BSS(1055);
UNK_BSS(1053);
UNK_BSS(1052);
UNK_BSS(1014);
UNK_BSS(1012);
UNK_BSS(1010);
UNK_BSS(1009);

/* 808795E0-80879A40 000040 0460+00 0/0 0/0 0/0 .bss             THPStatistics */
static u8 THPStatistics[1120] ALIGN_DECL(32);

/* 80879A40-80879A44 0004A0 0004+00 1/2 0/0 0/0 .bss             Ydchuff */
static THPHuffmanTab* Ydchuff;

/* 80879A44-80879A48 0004A4 0004+00 1/2 0/0 0/0 .bss             Udchuff */
static THPHuffmanTab* Udchuff;

/* 80879A48-80879A4C 0004A8 0004+00 1/2 0/0 0/0 .bss             Vdchuff */
static THPHuffmanTab* Vdchuff;

/* 80879A4C-80879A50 0004AC 0004+00 1/2 0/0 0/0 .bss             Yachuff */
static THPHuffmanTab* Yachuff;

/* 80879A50-80879A54 0004B0 0004+00 1/2 0/0 0/0 .bss             Uachuff */
static THPHuffmanTab* Uachuff;

/* 80879A54-80879A60 0004B4 0004+08 1/2 0/0 0/0 .bss             Vachuff */
static THPHuffmanTab* Vachuff;

/* 80879A60-80879B60 0004C0 0100+00 0/2 0/0 0/0 .bss             __THPIDCTWorkspace */
static f32 __THPIDCTWorkspace[64] ALIGN_DECL(32);

/* 80879B60-80879B64 0005C0 0004+00 1/3 0/0 0/0 .bss             __THPHuffmanBits */
static u8* __THPHuffmanBits;

/* 80879B64-80879B68 0005C4 0004+00 2/3 0/0 0/0 .bss             __THPHuffmanSizeTab */
static u8* __THPHuffmanSizeTab;

/* 80879B68-80879B6C 0005C8 0004+00 1/3 0/0 0/0 .bss             __THPHuffmanCodeTab */
static u16* __THPHuffmanCodeTab;

/* 80879B6C-80879B80 0005CC 0004+10 0/5 0/0 0/0 .bss             Gbase */
static THPSample* Gbase;

/* 80879B80-80879B84 0005E0 0004+00 0/5 0/0 0/0 .bss             Gwid */
static u32 Gwid ALIGN_DECL(32);

/* 80879B84-80879B88 0005E4 0004+00 0/5 0/0 0/0 .bss             Gq */
static f32* Gq;

/* 80879B88-80879B94 0005E8 000C+00 0/2 0/0 0/0 .bss             __THPLCWork512 */
static u8* __THPLCWork512[3];

/* 80879B94-80879BA0 0005F4 000C+00 0/3 0/0 0/0 .bss             __THPLCWork640 */
static u8* __THPLCWork640[3];

/* 80879BA0-80879BA4 000600 0004+00 2/2 0/0 0/0 .bss             __THPOldGQR5 */
static u32 __THPOldGQR5;

/* 80879BA4-80879BA8 000604 0004+00 2/2 0/0 0/0 .bss             __THPOldGQR6 */
static u32 __THPOldGQR6;

/* 80879BA8-80879BAC 000608 0004+00 1/3 0/0 0/0 .bss             __THPWorkArea */
static u8* __THPWorkArea;

/* 80879BAC-80879BC4 00060C 0018+00 1/4 0/0 0/0 .bss             __THPMCUBuffer */
static THPCoeff* __THPMCUBuffer[6];

/* 80879BC4-80879BC8 000624 0004+00 5/12 0/0 0/0 .bss             __THPInfo */
static THPFileInfo* __THPInfo;

/* 80879BC8-80879BD0 000628 0004+04 0/2 0/0 0/0 .bss             __THPInitFlag */
static BOOL __THPInitFlag;

/* 80872CBC-80872F00 0005DC 0244+00 1/1 0/0 0/0 .text            THPVideoDecode */
static s32 THPVideoDecode(void* file, void* tileY, void* tileU, void* tileV, void* work) {
    u8 all_done, status;
    s32 errorCode;

    if (!file) {
        goto _err_no_input;
    }

    if (tileY == NULL || tileU == NULL || tileV == NULL) {
        goto _err_no_output;
    }

    if (!work) {
        goto _err_no_work;
    }

    if (!(PPCMfhid2() & 0x10000000)) {
        goto _err_lc_not_enabled;
    }

    if (__THPInitFlag == FALSE) {
        goto _err_not_initialized;
    }

    __THPWorkArea = (u8*)work;
    __THPInfo     = (THPFileInfo*)OSRoundUp32B(__THPWorkArea);
    __THPWorkArea = (u8*)OSRoundUp32B(__THPWorkArea) + sizeof(THPFileInfo);
    DCZeroRange(__THPInfo, sizeof(THPFileInfo));
    __THPInfo->cnt           = 33;
    __THPInfo->decompressedY = 0;
    __THPInfo->c             = (u8*)file;
    all_done                 = FALSE;

    for (;;) {
        if ((*(__THPInfo->c)++) != 255) {
            goto _err_bad_syntax;
        }

        while (*__THPInfo->c == 255) {
            ((__THPInfo->c)++);
        }

        status = (*(__THPInfo->c)++);

        if (status <= 0xD7) {
            if (status == 196) {
                status = __THPReadHuffmanTableSpecification();
                if (status != 0) {
                    goto _err_bad_status;
                }
            }

            else if (status == 192) {
                status = __THPReadFrameHeader();
                if (status != 0) {
                    goto _err_bad_status;
                }
            }

            else {
                goto _err_unsupported_marker;
            }
        }

        else if (0xD8 <= status && status <= 0xDF) {
            if (status == 221) {
                __THPRestartDefinition();
            }

            else if (status == 219) {
                status = __THPReadQuantizationTable();
                if (status != 0) {
                    goto _err_bad_status;
                }
            }

            else if (status == 218) {
                status = __THPReadScaneHeader();
                if (status != 0) {
                    goto _err_bad_status;
                }

                all_done = TRUE;
            } else if (status == 216) {
                // empty but required for match
            } else {
                goto _err_unsupported_marker;
            }
        }

        else if (0xE0 <= status) {
            if ((224 <= status && status <= 239) || status == 254) {
                __THPInfo->c += (__THPInfo->c)[0] << 8 | (__THPInfo->c)[1];
            } else {
                goto _err_unsupported_marker;
            }
        }

        if (all_done) {
            break;
        }
    }

    __THPSetupBuffers();
    __THPDecompressYUV(tileY, tileU, tileV);
    return 0;

_err_no_input:
    errorCode = 25;
    goto _err_exit;

_err_no_output:
    errorCode = 27;
    goto _err_exit;

_err_no_work:
    errorCode = 26;
    goto _err_exit;

_err_unsupported_marker:
    errorCode = 11;
    goto _err_exit;

_err_bad_resource:
    errorCode = 1;
    goto _err_exit;

_err_no_mem:
    errorCode = 6;
    goto _err_exit;

_err_bad_syntax:
    errorCode = 3;
    goto _err_exit;

_err_bad_status:
    errorCode = status;
    goto _err_exit;

_err_lc_not_enabled:
    errorCode = 28;
    goto _err_exit;

_err_not_initialized:
    errorCode = 29;
    goto _err_exit;

_err_exit:
    return errorCode;
}

/* 80872F00-80872F48 000820 0048+00 1/1 0/0 0/0 .text            __THPSetupBuffers */
static void __THPSetupBuffers() {
    u8 i;
    THPCoeff* buffer;

    buffer = (THPCoeff*)OSRoundUp32B(__THPWorkArea);

    for (i = 0; i < 6; i++) {
        __THPMCUBuffer[i] = &buffer[i * 64];
    }
}

/* 80872F48-80873088 000868 0140+00 1/1 0/0 0/0 .text            __THPReadFrameHeader */
static u8 __THPReadFrameHeader() {
    u8 i, utmp8;

    __THPInfo->c += 2;

    utmp8 = (*(__THPInfo->c)++);

    if (utmp8 != 8) {
        return 10;
    }

    __THPInfo->yPixelSize = (u16)((__THPInfo->c)[0] << 8 | (__THPInfo->c)[1]);
    __THPInfo->c += 2;
    __THPInfo->xPixelSize = (u16)((__THPInfo->c)[0] << 8 | (__THPInfo->c)[1]);
    __THPInfo->c += 2;

    utmp8 = (*(__THPInfo->c)++);
    if (utmp8 != 3) {
        return 12;
    }

    for (i = 0; i < 3; i++) {
        utmp8 = (*(__THPInfo->c)++);
        utmp8 = (*(__THPInfo->c)++);
        if ((i == 0 && utmp8 != 0x22) || (i > 0 && utmp8 != 0x11)) {
            return 19;
        }

        __THPInfo->components[i].quantizationTableSelector = (*(__THPInfo->c)++);
    }

    return 0;
}

#define THPROUNDUP(a, b) ((((s32)(a)) + ((s32)(b)-1L)) / ((s32)(b)))

/* 80873088-808731B4 0009A8 012C+00 1/1 0/0 0/0 .text            __THPReadScaneHeader */
static u8 __THPReadScaneHeader() {
    u8 i, utmp8;
    __THPInfo->c += 2;

    utmp8 = (*(__THPInfo->c)++);

    if (utmp8 != 3) {
        return 12;
    }

    for (i = 0; i < 3; i++) {
        utmp8 = (*(__THPInfo->c)++);

        utmp8                                    = (*(__THPInfo->c)++);
        __THPInfo->components[i].DCTableSelector = (u8)(utmp8 >> 4);
        __THPInfo->components[i].ACTableSelector = (u8)(utmp8 & 15);

        if ((__THPInfo->validHuffmanTabs & (1 << ((utmp8 >> 4)))) == 0) {
            return 15;
        }

        if ((__THPInfo->validHuffmanTabs & (1 << ((utmp8 & 15) + 1))) == 0) {
            return 15;
        }
    }

    __THPInfo->c += 3;
    __THPInfo->MCUsPerRow           = (u16)THPROUNDUP(__THPInfo->xPixelSize, 16);
    __THPInfo->components[0].predDC = 0;
    __THPInfo->components[1].predDC = 0;
    __THPInfo->components[2].predDC = 0;
    return 0;
}

/* 80879034-80879084 000000 0050+00 8/8 0/0 0/0 .rodata          __THPJpegNaturalOrder */
static const u8 __THPJpegNaturalOrder[80] = {
    0,  1,  8,  16, 9,  2,  3,  10, 17, 24, 32, 25, 18, 11, 4,  5,  12, 19, 26, 33,
    40, 48, 41, 34, 27, 20, 13, 6,  7,  14, 21, 28, 35, 42, 49, 56, 57, 50, 43, 36,
    29, 22, 15, 23, 30, 37, 44, 51, 58, 59, 52, 45, 38, 31, 39, 46, 53, 60, 61, 54,
    47, 55, 62, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
};

/* 80879084-808790C4 000050 0040+00 1/1 0/0 0/0 .rodata          __THPAANScaleFactor */
static const f64 __THPAANScaleFactor[8] = {
    1.0f, 1.387039845f, 1.306562965f, 1.175875602f, 1.0f, 0.785694958f, 0.541196100f, 0.275899379f,
};

/* 808731B4-80873574 000AD4 03C0+00 1/1 0/0 0/0 .text            __THPReadQuantizationTable */
// NONMATCHING - regalloc
static u8 __THPReadQuantizationTable() {
    f32 q_temp[64];

    u16 length = (u16)((__THPInfo->c)[0] << 8 | (__THPInfo->c)[1]);
    __THPInfo->c += 2;
    length -= 2;

    do {
        u16 i;
        u16 id = (*(__THPInfo->c)++);

        for (i = 0; i < 64; i++) {
            q_temp[__THPJpegNaturalOrder[i]] = (f32)(*(__THPInfo->c)++);
        }

        u16 row;
        u16 col;
        u16 j;
        j = 0;
        for (row = 0; row < 8; row++) {
            for (col = 0; col < 8; col++) {
                __THPInfo->quantTabs[id][j] = (f32)((f64)q_temp[j] * __THPAANScaleFactor[row] * __THPAANScaleFactor[col]);
                j++;
            }
        }

        length -= 65;
    } while (length != 0);

    return 0;
}

/* 80873574-8087375C 000E94 01E8+00 1/1 0/0 0/0 .text            __THPReadHuffmanTableSpecification
 */
static u8 __THPReadHuffmanTableSpecification() {
    u8 t_class, id, i, tab_index;
    u16 length, num_Vij;

    __THPHuffmanSizeTab = __THPWorkArea;
    __THPHuffmanCodeTab = (u16*)((u32)__THPWorkArea + 256 + 1);
    length              = (u16)((__THPInfo->c)[0] << 8 | (__THPInfo->c)[1]);
    __THPInfo->c += 2;
    length -= 2;

    for (;;) {
        i                = (*(__THPInfo->c)++);
        id               = (u8)(i & 15);
        t_class          = (u8)(i >> 4);
        __THPHuffmanBits = __THPInfo->c;
        tab_index        = (u8)((id << 1) + t_class);
        num_Vij          = 0;

        for (i = 0; i < 16; i++) {
            num_Vij += (*(__THPInfo->c)++);
        }

        __THPInfo->huffmanTabs[tab_index].Vij = __THPInfo->c;
        __THPInfo->c += num_Vij;
        __THPHuffGenerateSizeTable();
        __THPHuffGenerateCodeTable();
        __THPHuffGenerateDecoderTables(tab_index);
        __THPInfo->validHuffmanTabs |= 1 << tab_index;
        length -= 17 + num_Vij;

        if (length == 0) {
            break;
        }
    }

    return 0;
}

/* 8087375C-8087383C 00107C 00E0+00 1/1 0/0 0/0 .text            __THPHuffGenerateSizeTable */
static void __THPHuffGenerateSizeTable() {
    s32 p, l, i;
    p = 0;

    for (l = 1; l <= 16; l++) {
        i = (s32)__THPHuffmanBits[l - 1];
        while (i--) {
            __THPHuffmanSizeTab[p++] = (u8)l;
        }
    }

    __THPHuffmanSizeTab[p] = 0;
}

/* 8087383C-808738B0 00115C 0074+00 1/1 0/0 0/0 .text            __THPHuffGenerateCodeTable */
static void __THPHuffGenerateCodeTable() {
    u8 si;
    u16 p, code;

    p    = 0;
    code = 0;
    si   = __THPHuffmanSizeTab[0];

    while (__THPHuffmanSizeTab[p]) {
        while (__THPHuffmanSizeTab[p] == si) {
            __THPHuffmanCodeTab[p++] = code;
            code++;
        }

        code <<= 1;
        si++;
    }
}

/* 808738B0-808739A8 0011D0 00F8+00 1/1 0/0 0/0 .text            __THPHuffGenerateDecoderTables */
static void __THPHuffGenerateDecoderTables(u8 tabIndex) {
    s32 p, l;
    THPHuffmanTab* h;

    p = 0;
    h = &__THPInfo->huffmanTabs[tabIndex];
    for (l = 1; l <= 16; l++) {
        if (__THPHuffmanBits[l - 1]) {
            h->valPtr[l] = p - __THPHuffmanCodeTab[p];
            p += __THPHuffmanBits[l - 1];
            h->maxCode[l] = __THPHuffmanCodeTab[p - 1];
        } else {
            h->maxCode[l] = -1;
            h->valPtr[l]  = -1;
        }
    }

    h->maxCode[17] = 0xfffffL;
}

/* 808739A8-80873A04 0012C8 005C+00 1/1 0/0 0/0 .text            __THPRestartDefinition */
static void __THPRestartDefinition() {
    __THPInfo->RST = TRUE;
    __THPInfo->c += 2;
    __THPInfo->nMCU = (u16)((__THPInfo->c)[0] << 8 | (__THPInfo->c)[1]);
    __THPInfo->c += 2;
    __THPInfo->currMCU = __THPInfo->nMCU;
}

/* 80873A04-80873C44 001324 0240+00 1/1 0/0 0/0 .text            __THPPrepBitStream */
static void __THPPrepBitStream() {
    u32* ptr;
    u32 offset, i, j, k;

    ptr    = (u32*)((u32)__THPInfo->c & 0xFFFFFFFC);
    offset = (u32)__THPInfo->c & 3;

    if (__THPInfo->cnt != 33) {
        __THPInfo->cnt -= (3 - offset) * 8;
    } else {
        __THPInfo->cnt = (offset * 8) + 1;
    }

    __THPInfo->c        = (u8*)ptr;
    __THPInfo->currByte = *ptr;

    for (i = 0; i < 4; i++) {
        if (__THPInfo->validHuffmanTabs & (1 << i)) {
            for (j = 0; j < 32; j++) {
                __THPInfo->huffmanTabs[i].quick[j] = 0xFF;

                for (k = 0; k < 5; k++) {
                    s32 code = (s32)(j >> (5 - k - 1));

                    if (code <= __THPInfo->huffmanTabs[i].maxCode[k + 1]) {
                        __THPInfo->huffmanTabs[i].quick[j]
                            = __THPInfo->huffmanTabs[i].Vij[(s32)(code + __THPInfo->huffmanTabs[i].valPtr[k + 1])];
                        __THPInfo->huffmanTabs[i].increment[j] = (u8)(k + 1);
                        k                                      = 99;
                    } else {
                    }
                }
            }
        }
    }

    {
        s32 YdcTab, UdcTab, VdcTab, YacTab, UacTab, VacTab;

        YdcTab = (__THPInfo->components[0].DCTableSelector << 1);
        UdcTab = (__THPInfo->components[1].DCTableSelector << 1);
        VdcTab = (__THPInfo->components[2].DCTableSelector << 1);

        YacTab = (__THPInfo->components[0].ACTableSelector << 1) + 1;
        UacTab = (__THPInfo->components[1].ACTableSelector << 1) + 1;
        VacTab = (__THPInfo->components[2].ACTableSelector << 1) + 1;

        Ydchuff = &__THPInfo->huffmanTabs[YdcTab];
        Udchuff = &__THPInfo->huffmanTabs[UdcTab];
        Vdchuff = &__THPInfo->huffmanTabs[VdcTab];

        Yachuff = &__THPInfo->huffmanTabs[YacTab];
        Uachuff = &__THPInfo->huffmanTabs[UacTab];
        Vachuff = &__THPInfo->huffmanTabs[VacTab];
    }
}

/* 80873C44-80873D28 001564 00E4+00 1/1 0/0 0/0 .text            __THPDecompressYUV */
static void __THPDecompressYUV(void* tileY, void* tileU, void* tileV) {
    u16 currentY, targetY;
    __THPInfo->dLC[0] = (u8*)tileY;
    __THPInfo->dLC[1] = (u8*)tileU;
    __THPInfo->dLC[2] = (u8*)tileV;

    currentY = __THPInfo->decompressedY;
    targetY  = __THPInfo->yPixelSize;

    __THPGQRSetup();
    __THPPrepBitStream();

    if (__THPInfo->xPixelSize == 512 && targetY == 448) {
        while (currentY < targetY) {
            __THPDecompressiMCURow512x448();
            currentY += 16;
        }
    } else if (__THPInfo->xPixelSize == 640 && targetY == 480) {
        while (currentY < targetY) {
            __THPDecompressiMCURow640x480();
            currentY += 16;
        }
    } else {
        while (currentY < targetY) {
            __THPDecompressiMCURowNxN();
            currentY += 16;
        }
    }

    __THPGQRRestore();
}

/* 80873D28-80873D48 001648 0020+00 1/1 0/0 0/0 .text            __THPGQRRestore */
static void __THPGQRRestore() {
    register u32 tmp1, tmp2;
    tmp1 = __THPOldGQR5;
    tmp2 = __THPOldGQR6;

    // clang-format off
#ifdef __MWERKS__
    asm {
        mtspr   GQR5, tmp1;
        mtspr   GQR6, tmp2;
    }
#endif
    // clang-format on
}

/* 80873D48-80873D7C 001668 0034+00 1/1 0/0 0/0 .text            __THPGQRSetup */
static void __THPGQRSetup() {
    register u32 tmp1, tmp2;

    // clang-format off
#ifdef __MWERKS__
    asm {
        mfspr   tmp1, GQR5;
        mfspr   tmp2, GQR6;
    }
#endif
    // clang-format on

    __THPOldGQR5 = tmp1;
    __THPOldGQR6 = tmp2;

    // clang-format off
#ifdef __MWERKS__
    asm {
        li      r3, 0x0007
        oris    r3, r3, 0x0007
        mtspr   GQR5, r3
        li      r3, 0x3D04
        oris    r3, r3, 0x3D04
        mtspr   GQR6, r3
    }
#endif
    // clang-format on
}

/* 80873D7C-80873FBC 00169C 0240+00 1/1 0/0 0/0 .text            __THPDecompressiMCURow512x448 */
static void __THPDecompressiMCURow512x448() {
    u8 cl_num;
    u32 x_pos;
    THPComponent* comp;

    LCQueueWait(3);

    for (cl_num = 0; cl_num < __THPInfo->MCUsPerRow; cl_num++) {
        __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[0]);
        __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[1]);
        __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[2]);
        __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[3]);
        __THPHuffDecodeDCTCompU(__THPInfo, __THPMCUBuffer[4]);
        __THPHuffDecodeDCTCompV(__THPInfo, __THPMCUBuffer[5]);

        comp  = &__THPInfo->components[0];
        Gbase = __THPLCWork512[0];
        Gwid  = 512;
        Gq    = __THPInfo->quantTabs[comp->quantizationTableSelector];
        x_pos = (u32)(cl_num * 16);
        __THPInverseDCTNoYPos(__THPMCUBuffer[0], x_pos);
        __THPInverseDCTNoYPos(__THPMCUBuffer[1], x_pos + 8);
        __THPInverseDCTY8(__THPMCUBuffer[2], x_pos);
        __THPInverseDCTY8(__THPMCUBuffer[3], x_pos + 8);

        comp  = &__THPInfo->components[1];
        Gbase = __THPLCWork512[1];
        Gwid  = 256;
        Gq    = __THPInfo->quantTabs[comp->quantizationTableSelector];
        x_pos /= 2;
        __THPInverseDCTNoYPos(__THPMCUBuffer[4], x_pos);
        comp  = &__THPInfo->components[2];
        Gbase = __THPLCWork512[2];
        Gq    = __THPInfo->quantTabs[comp->quantizationTableSelector];
        __THPInverseDCTNoYPos(__THPMCUBuffer[5], x_pos);

        if (__THPInfo->RST != 0) {
            if ((--__THPInfo->currMCU) == 0) {
                __THPInfo->currMCU = __THPInfo->nMCU;
                __THPInfo->cnt     = 1 + ((__THPInfo->cnt + 6) & 0xFFFFFFF8);

                if (__THPInfo->cnt > 33) {
                    __THPInfo->cnt = 33;
                }

                __THPInfo->components[0].predDC = 0;
                __THPInfo->components[1].predDC = 0;
                __THPInfo->components[2].predDC = 0;
            }
        }
    }

    LCStoreData(__THPInfo->dLC[0], __THPLCWork512[0], 0x2000);
    LCStoreData(__THPInfo->dLC[1], __THPLCWork512[1], 0x800);
    LCStoreData(__THPInfo->dLC[2], __THPLCWork512[2], 0x800);

    __THPInfo->dLC[0] += 0x2000;
    __THPInfo->dLC[1] += 0x800;
    __THPInfo->dLC[2] += 0x800;
}

/* 80873FBC-8087445C 0018DC 04A0+00 3/3 0/0 0/0 .text            __THPInverseDCTY8 */
static void __THPInverseDCTY8(register THPCoeff* in, register u32 xPos) {
    register f32 *q, *ws;
    register f32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9;
    register f32 tmp10, tmp11, tmp12, tmp13;
    register f32 tmp20, tmp21, tmp22, tmp23;
    register f32 cc4    = 1.414213562F;
    register f32 cc2    = 1.847759065F;
    register f32 cc2c6s = 1.082392200F;
    register f32 cc2c6a = -2.613125930F;
    register f32 bias   = 1024.0F;

    q  = Gq;
    ws = &__THPIDCTWorkspace[0] - 2;

    {
        register u32 itmp0, itmp1, itmp2, itmp3;

        // clang-format off
#ifdef __MWERKS__
        asm {
            li          itmp2, 8
            mtctr       itmp2

        _loopHead0:
            psq_l       tmp10, 0(in), 0, 5
            psq_l       tmp11, 0(q), 0, 0
            lwz         itmp0, 12(in)
            lwz         itmp3, 8(in)
            ps_mul      tmp10, tmp10, tmp11
            lwz         itmp1, 4(in)
            lhz         itmp2, 2(in)
            or          itmp0, itmp0, itmp3

        _loopHead1:
            cmpwi       itmp0, 0
            bne         _regularIDCT
            ps_merge00  tmp0, tmp10, tmp10
            cmpwi       itmp1, 0
            psq_st      tmp0, 8(ws), 0, 0
            bne         _halfIDCT
            psq_st      tmp0, 16(ws), 0, 0
            cmpwi       itmp2, 0
            psq_st      tmp0, 24(ws), 0, 0
            bne         _quarterIDCT
            addi        q, q, 8*sizeof(f32)
            psq_stu     tmp0, 32(ws), 0, 0
            addi        in, in, 8*sizeof(THPCoeff)
            bdnz        _loopHead0
            b           _loopEnd

        _quarterIDCT:
            ps_msub     tmp2, tmp10, cc2, tmp10
            addi        in, in, 8*sizeof(THPCoeff)
            ps_merge00  tmp9, tmp10, tmp10
            addi        q, q, 8*sizeof(f32)
            ps_sub      tmp1, cc2, cc2c6s
            lwz         itmp1, 4(in)
            ps_msub     tmp3, tmp10, cc4, tmp2
            lhz         itmp2, 2(in)
            ps_merge11  tmp5, tmp10, tmp2
            psq_l       tmp11, 0(q), 0, 0
            ps_nmsub    tmp4, tmp10, tmp1, tmp3
            ps_add      tmp7, tmp9, tmp5
            psq_l       tmp10, 0(in), 0, 5
            ps_merge11  tmp6, tmp3, tmp4
            ps_sub      tmp5, tmp9, tmp5
            lwz         itmp0, 12(in)
            ps_add      tmp8, tmp9, tmp6
            lwz         itmp3, 8(in)
            ps_sub      tmp6, tmp9, tmp6
            psq_stu     tmp7, 8(ws), 0, 0
            ps_merge10  tmp6, tmp6, tmp6
            psq_stu     tmp8, 8(ws), 0, 0
            ps_merge10  tmp5, tmp5, tmp5
            or          itmp0, itmp0, itmp3
            psq_stu     tmp6, 8(ws), 0, 0
            ps_mul      tmp10, tmp10, tmp11
            psq_stu     tmp5, 8(ws), 0, 0
            bdnz        _loopHead1
            b           _loopEnd

        _halfIDCT:
            psq_l       tmp1, 4(in), 0, 5
            psq_l       tmp9, 8(q), 0, 0
            addi        in, in, 8*sizeof(THPCoeff)
            ps_mul      tmp1, tmp1, tmp9
            addi        q, q, 8*sizeof(f32)
            ps_sub      tmp3, tmp10, tmp1
            ps_add      tmp2, tmp10, tmp1
            lwz         itmp0, 12(in)
            ps_madd     tmp4, tmp1, cc4, tmp3
            ps_nmsub    tmp5, tmp1, cc4, tmp2
            ps_mul      tmp8, tmp3, cc2
            ps_merge00  tmp4, tmp2, tmp4
            lwz         itmp3, 8(in)
            ps_nmsub    tmp6, tmp1, cc2c6a, tmp8
            ps_merge00  tmp5, tmp5, tmp3
            lwz         itmp1, 4(in)
            ps_sub      tmp6, tmp6, tmp2
            ps_nmsub    tmp7, tmp10, cc2c6s, tmp8
            lhz         itmp2, 2(in)
            ps_merge11  tmp2, tmp2, tmp6
            ps_msub     tmp8, tmp3, cc4, tmp6
            psq_l       tmp10, 0(in), 0, 5
            ps_add      tmp9, tmp4, tmp2
            ps_sub      tmp7, tmp7, tmp8
            psq_l       tmp11, 0(q), 0, 0
            ps_merge11  tmp3, tmp8, tmp7
            ps_sub      tmp4, tmp4, tmp2
            psq_stu     tmp9, 8(ws), 0, 0
            ps_add      tmp0, tmp5, tmp3
            ps_sub      tmp1, tmp5, tmp3
            or          itmp0, itmp0, itmp3
            psq_stu     tmp0, 8(ws), 0, 0
            ps_merge10  tmp1, tmp1, tmp1
            ps_merge10  tmp4, tmp4, tmp4
            psq_stu     tmp1, 8(ws), 0, 0
            ps_mul      tmp10, tmp10, tmp11
            psq_stu     tmp4, 8(ws), 0, 0
            bdnz        _loopHead1
            b           _loopEnd

        _regularIDCT:
            psq_l       tmp9, 4(in), 0, 5
            psq_l       tmp5, 8(q), 0, 0
            ps_mul      tmp9, tmp9, tmp5
            psq_l       tmp2, 8(in), 0, 5
            psq_l       tmp6, 16(q), 0, 0
            ps_merge01  tmp0, tmp10, tmp9
            psq_l       tmp3, 12(in), 0, 5
            ps_merge01  tmp1, tmp9, tmp10
            psq_l       tmp7, 24(q), 0, 0
            addi        in, in, 8*sizeof(THPCoeff)
            ps_madd     tmp4, tmp2, tmp6, tmp0
            ps_nmsub    tmp5, tmp2, tmp6, tmp0
            ps_madd     tmp6, tmp3, tmp7, tmp1
            ps_nmsub    tmp7, tmp3, tmp7, tmp1
            addi        q, q, 8*sizeof(f32)
            ps_add      tmp0, tmp4, tmp6
            ps_sub      tmp3, tmp4, tmp6
            ps_msub     tmp2, tmp7, cc4, tmp6
            lwz         itmp0, 12(in)
            ps_sub      tmp8, tmp7, tmp5
            ps_add      tmp1, tmp5, tmp2
            ps_sub      tmp2, tmp5, tmp2
            ps_mul      tmp8, tmp8, cc2
            lwz         itmp3, 8(in)
            ps_merge00  tmp1, tmp0, tmp1
            ps_nmsub    tmp6, tmp5, cc2c6a, tmp8
            ps_msub     tmp4, tmp7, cc2c6s, tmp8
            lwz         itmp1, 4(in)
            ps_sub      tmp6, tmp6, tmp0
            ps_merge00  tmp2, tmp2, tmp3
            lhz         itmp2, 2(in)
            ps_madd     tmp5, tmp3, cc4, tmp6
            ps_merge11  tmp7, tmp0, tmp6
            psq_l       tmp10, 0(in), 0, 5
            ps_sub      tmp4, tmp4, tmp5
            ps_add      tmp3, tmp1, tmp7
            psq_l       tmp11, 0(q), 0, 0
            ps_merge11  tmp4, tmp5, tmp4
            ps_sub      tmp0, tmp1, tmp7
            ps_mul      tmp10, tmp10, tmp11
            ps_add      tmp5, tmp2, tmp4
            ps_sub      tmp6, tmp2, tmp4
            ps_merge10  tmp5, tmp5, tmp5
            psq_stu     tmp3, 8(ws), 0, 0
            ps_merge10  tmp0, tmp0, tmp0
            psq_stu     tmp6, 8(ws), 0, 0
            psq_stu     tmp5, 8(ws), 0, 0
            or          itmp0, itmp0, itmp3
            psq_stu     tmp0, 8(ws), 0, 0
            bdnz        _loopHead1

        _loopEnd:

        }
#endif
        // clang-format on
    }

    ws = &__THPIDCTWorkspace[0];

    {
        register THPSample* obase = Gbase;
        register u32 wid          = Gwid;

        register u32 itmp0, off0, off1;
        register THPSample *out0, *out1;

        // clang-format off
#ifdef __MWERKS__
        asm {
            psq_l       tmp10, 8*0*sizeof(f32)(ws), 0, 0
            slwi off0, wid, 3;
            psq_l       tmp11, 8*4*sizeof(f32)(ws), 0, 0
            slwi        xPos, xPos, 2
            psq_l       tmp12, 8*2*sizeof(f32)(ws), 0, 0
            slwi        off1, wid, 2
            ps_add      tmp6, tmp10, tmp11
            add         off0, off0, xPos
            psq_l       tmp13, 8*6*sizeof(f32)(ws), 0, 0
            ps_sub      tmp8, tmp10, tmp11
            add         off1, off0, off1
            ps_add      tmp6, tmp6, bias
            li          itmp0, 3
            ps_add      tmp7, tmp12, tmp13
            add         out0, obase, off0
            ps_sub      tmp9, tmp12, tmp13
            ps_add      tmp0, tmp6, tmp7
            add         out1, obase, off1
            ps_add      tmp8, tmp8, bias
            mtctr       itmp0

        _loopHead10:
            psq_l       tmp4, 8*1*sizeof(f32)(ws), 0, 0
            ps_msub     tmp9, tmp9, cc4, tmp7
            psq_l       tmp5, 8*3*sizeof(f32)(ws), 0, 0
            ps_sub      tmp3, tmp6, tmp7
            ps_add      tmp1, tmp8, tmp9
            psq_l       tmp6, 8*5*sizeof(f32)(ws), 0, 0
            ps_sub      tmp2, tmp8, tmp9
            psq_l       tmp7, 8*7*sizeof(f32)(ws), 0, 0
            ps_add      tmp8, tmp6, tmp5
            ps_sub      tmp6, tmp6, tmp5
            addi        ws, ws, 2*sizeof(f32)
            ps_add      tmp9, tmp4, tmp7
            ps_sub      tmp4, tmp4, tmp7
            psq_l       tmp10, 8*0*sizeof(f32)(ws), 0, 0
            ps_add      tmp7, tmp9, tmp8
            ps_sub      tmp5, tmp9, tmp8
            ps_add      tmp8, tmp6, tmp4
            psq_l       tmp11, 8*4*sizeof(f32)(ws), 0, 0
            ps_add      tmp9, tmp0, tmp7
            ps_mul      tmp8, tmp8, cc2
            psq_l       tmp12, 8*2*sizeof(f32)(ws), 0, 0
            ps_sub      tmp23, tmp0, tmp7
            ps_madd     tmp6, tmp6, cc2c6a, tmp8
            psq_l       tmp13, 8*6*sizeof(f32)(ws), 0, 0
            ps_sub      tmp6, tmp6, tmp7
            addi        off0, off0, 2*sizeof(THPSample)
            psq_st      tmp9, 0(out0), 0, 6
            ps_msub     tmp4, tmp4, cc2c6s, tmp8
            ps_add      tmp9, tmp1, tmp6
            ps_msub     tmp5, tmp5, cc4, tmp6
            ps_sub      tmp22, tmp1, tmp6
            psq_st      tmp9, 8(out0), 0, 6
            ps_add      tmp8, tmp2, tmp5
            ps_add      tmp4, tmp4, tmp5
            psq_st      tmp8, 16(out0), 0, 6
            addi        off1, off1, 2*sizeof(THPSample)
            ps_sub      tmp9, tmp3, tmp4
            ps_add      tmp20, tmp3, tmp4
            psq_st      tmp9, 24(out0), 0, 6
            ps_sub      tmp21, tmp2, tmp5
            ps_add      tmp6, tmp10, tmp11
            psq_st      tmp20, 0(out1), 0, 6
            ps_sub      tmp8, tmp10, tmp11
            ps_add      tmp6, tmp6, bias
            psq_st      tmp21, 8(out1), 0, 6
            ps_add      tmp7, tmp12, tmp13
            ps_sub      tmp9, tmp12, tmp13
            psq_st      tmp22, 16(out1), 0, 6
            add         out0, obase, off0
            ps_add      tmp0, tmp6, tmp7
            psq_st      tmp23, 24(out1), 0, 6
            ps_add      tmp8, tmp8, bias
            add         out1, obase, off1

            bdnz        _loopHead10
            psq_l       tmp4, 8*1*sizeof(f32)(ws), 0, 0
            ps_msub     tmp9, tmp9, cc4, tmp7
            psq_l       tmp5, 8*3*sizeof(f32)(ws), 0, 0
            ps_sub      tmp3, tmp6, tmp7
            ps_add      tmp1, tmp8, tmp9
            psq_l       tmp6, 8*5*sizeof(f32)(ws), 0, 0
            ps_sub      tmp2, tmp8, tmp9
            psq_l       tmp7, 8*7*sizeof(f32)(ws), 0, 0
            ps_add      tmp8, tmp6, tmp5
            ps_sub      tmp6, tmp6, tmp5
            ps_add      tmp9, tmp4, tmp7
            ps_sub      tmp4, tmp4, tmp7
            ps_add      tmp7, tmp9, tmp8
            ps_sub      tmp5, tmp9, tmp8
            ps_add      tmp8, tmp6, tmp4
            ps_add      tmp9, tmp0, tmp7
            ps_mul      tmp8, tmp8, cc2
            ps_sub      tmp23, tmp0, tmp7
            ps_madd     tmp6, tmp6, cc2c6a, tmp8
            psq_st      tmp9, 0(out0), 0, 6
            ps_sub      tmp6, tmp6, tmp7
            ps_msub     tmp4, tmp4, cc2c6s, tmp8
            psq_st      tmp23, 24(out1), 0, 6
            ps_add      tmp9, tmp1, tmp6
            ps_msub     tmp5, tmp5, cc4, tmp6
            ps_sub      tmp22, tmp1, tmp6
            psq_st      tmp9, 8(out0), 0, 6
            ps_add      tmp8, tmp2, tmp5
            ps_add      tmp4, tmp4, tmp5
            psq_st      tmp8, 16(out0), 0, 6
            ps_sub      tmp9, tmp3, tmp4
            psq_st      tmp22, 16(out1), 0, 6
            ps_add      tmp20, tmp3, tmp4
            psq_st      tmp9, 24(out0), 0, 6
            ps_sub      tmp21, tmp2, tmp5
            psq_st      tmp20, 0(out1), 0, 6
            psq_st      tmp21, 8(out1), 0, 6

        }
#endif
        // clang-format on
    }
}

/* 8087445C-808748F4 001D7C 0498+00 3/3 0/0 0/0 .text            __THPInverseDCTNoYPos */
static void __THPInverseDCTNoYPos(register THPCoeff* in, register u32 xPos) {
    register f32 *q, *ws;
    register f32 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9;
    register f32 tmp10, tmp11, tmp12, tmp13;
    register f32 tmp20, tmp21, tmp22, tmp23;
    register f32 cc4    = 1.414213562F;
    register f32 cc2    = 1.847759065F;
    register f32 cc2c6s = 1.082392200F;
    register f32 cc2c6a = -2.613125930F;
    register f32 bias   = 1024.0F;
    q                   = Gq;
    ws                  = &__THPIDCTWorkspace[0] - 2;

    {
        register u32 itmp0, itmp1, itmp2, itmp3;
        // clang-format off
#ifdef __MWERKS__
        asm {
            li          itmp2, 8
            mtctr       itmp2

        _loopHead0:
            psq_l       tmp10, 0(in), 0, 5
            psq_l       tmp11, 0(q), 0, 0
            lwz         itmp0, 12(in)
            lwz         itmp3, 8(in)
            ps_mul      tmp10, tmp10, tmp11
            lwz         itmp1, 4(in)
            lhz         itmp2, 2(in)
            or.         itmp0, itmp0, itmp3

        _loopHead1:
            cmpwi       itmp0, 0
            bne         _regularIDCT
            ps_merge00  tmp0, tmp10, tmp10
            cmpwi       itmp1, 0
            psq_st      tmp0, 8(ws), 0, 0
            bne         _halfIDCT
            psq_st      tmp0, 16(ws), 0, 0
            cmpwi       itmp2, 0
            psq_st      tmp0, 24(ws), 0, 0
            bne         _quarterIDCT
            addi        q, q, 8*sizeof(f32)
            psq_stu     tmp0, 32(ws), 0, 0
            addi        in, in, 8*sizeof(THPCoeff)
            bdnz        _loopHead0
            b           _loopEnd

        _quarterIDCT:
            addi        in, in, 8*sizeof(THPCoeff)
            ps_msub     tmp2, tmp10, cc2, tmp10
            addi        q, q, 8*sizeof(f32)
            ps_merge00  tmp9, tmp10, tmp10
            lwz         itmp1, 4(in)
            ps_sub      tmp1, cc2, cc2c6s
            ps_msub     tmp3, tmp10, cc4, tmp2
            lhz         itmp2, 2(in)
            ps_merge11  tmp5, tmp10, tmp2
            psq_l       tmp11, 0(q), 0, 0
            ps_nmsub    tmp4, tmp10, tmp1, tmp3
            ps_add      tmp7, tmp9, tmp5
            psq_l       tmp10, 0(in), 0, 5
            ps_merge11  tmp6, tmp3, tmp4
            ps_sub      tmp5, tmp9, tmp5
            lwz         itmp0, 12(in)
            ps_add      tmp8, tmp9, tmp6
            lwz         itmp3, 8(in)
            ps_sub      tmp6, tmp9, tmp6
            psq_stu     tmp7, 8(ws), 0, 0
            ps_merge10  tmp6, tmp6, tmp6
            psq_stu     tmp8, 8(ws), 0, 0
            ps_merge10  tmp5, tmp5, tmp5
            or          itmp0, itmp0, itmp3
            psq_stu     tmp6, 8(ws), 0, 0
            ps_mul      tmp10, tmp10, tmp11
            psq_stu     tmp5, 8(ws), 0, 0
            bdnz        _loopHead1
            b           _loopEnd

        _halfIDCT:
            psq_l       tmp1, 4(in), 0, 5
            psq_l       tmp9, 8(q), 0, 0
            addi        in, in, 8*sizeof(THPCoeff)
            ps_mul      tmp1, tmp1, tmp9
            addi        q, q, 8*sizeof(f32)
            ps_sub      tmp3, tmp10, tmp1
            ps_add      tmp2, tmp10, tmp1
            lwz         itmp0, 12(in)
            ps_madd     tmp4, tmp1, cc4, tmp3
            ps_nmsub    tmp5, tmp1, cc4, tmp2
            ps_mul      tmp8, tmp3, cc2
            ps_merge00  tmp4, tmp2, tmp4
            lwz         itmp3, 8(in)
            ps_nmsub    tmp6, tmp1, cc2c6a, tmp8
            ps_merge00  tmp5, tmp5, tmp3
            lwz         itmp1, 4(in)
            ps_sub      tmp6, tmp6, tmp2
            ps_nmsub    tmp7, tmp10, cc2c6s, tmp8
            lhz         itmp2, 2(in)
            ps_merge11  tmp2, tmp2, tmp6
            ps_msub     tmp8, tmp3, cc4, tmp6
            psq_l       tmp10, 0(in), 0, 5
            ps_add      tmp9, tmp4, tmp2
            ps_sub      tmp7, tmp7, tmp8
            psq_l       tmp11, 0(q), 0, 0
            ps_merge11  tmp3, tmp8, tmp7
            ps_sub      tmp4, tmp4, tmp2
            psq_stu     tmp9, 8(ws), 0, 0
            ps_add      tmp0, tmp5, tmp3
            ps_sub      tmp1, tmp5, tmp3
            or          itmp0, itmp0, itmp3
            psq_stu     tmp0, 8(ws), 0, 0
            ps_merge10  tmp1, tmp1, tmp1
            ps_merge10  tmp4, tmp4, tmp4
            psq_stu     tmp1, 8(ws), 0, 0
            ps_mul      tmp10, tmp10, tmp11
            psq_stu     tmp4, 8(ws), 0, 0
            bdnz        _loopHead1
            b           _loopEnd

        _regularIDCT:
            psq_l       tmp9, 4(in), 0, 5
            psq_l       tmp5, 8(q), 0, 0
            ps_mul      tmp9, tmp9, tmp5
            psq_l       tmp2, 8(in), 0, 5
            psq_l       tmp6, 16(q), 0, 0
            ps_merge01  tmp0, tmp10, tmp9
            psq_l       tmp3, 12(in), 0, 5
            ps_merge01  tmp1, tmp9, tmp10
            psq_l       tmp7, 24(q), 0, 0
            addi        in, in, 8*sizeof(THPCoeff)
            ps_madd     tmp4, tmp2, tmp6, tmp0
            ps_nmsub    tmp5, tmp2, tmp6, tmp0
            ps_madd     tmp6, tmp3, tmp7, tmp1
            ps_nmsub    tmp7, tmp3, tmp7, tmp1
            addi        q, q, 8*sizeof(f32)
            ps_add      tmp0, tmp4, tmp6
            ps_sub      tmp3, tmp4, tmp6
            ps_msub     tmp2, tmp7, cc4, tmp6
            lwz         itmp0, 12(in)
            ps_sub      tmp8, tmp7, tmp5
            ps_add      tmp1, tmp5, tmp2
            ps_sub      tmp2, tmp5, tmp2
            ps_mul      tmp8, tmp8, cc2
            lwz         itmp3, 8(in)
            ps_merge00  tmp1, tmp0, tmp1
            ps_nmsub    tmp6, tmp5, cc2c6a, tmp8
            ps_msub     tmp4, tmp7, cc2c6s, tmp8
            lwz         itmp1, 4(in)
            ps_sub      tmp6, tmp6, tmp0
            ps_merge00  tmp2, tmp2, tmp3
            lhz         itmp2, 2(in)
            ps_madd     tmp5, tmp3, cc4, tmp6
            ps_merge11  tmp7, tmp0, tmp6
            psq_l       tmp10, 0(in), 0, 5
            ps_sub      tmp4, tmp4, tmp5
            ps_add      tmp3, tmp1, tmp7
            psq_l       tmp11, 0(q), 0, 0
            ps_merge11  tmp4, tmp5, tmp4
            ps_sub      tmp0, tmp1, tmp7
            ps_mul      tmp10, tmp10, tmp11
            ps_add      tmp5, tmp2, tmp4
            ps_sub      tmp6, tmp2, tmp4
            ps_merge10  tmp5, tmp5, tmp5
            psq_stu     tmp3, 8(ws), 0, 0
            ps_merge10  tmp0, tmp0, tmp0
            psq_stu     tmp6, 8(ws), 0, 0
            psq_stu     tmp5, 8(ws), 0, 0
            or          itmp0, itmp0, itmp3
            psq_stu     tmp0, 8(ws), 0, 0
            bdnz        _loopHead1

        _loopEnd:

        }
#endif
        // clang-format on
    }

    ws = &__THPIDCTWorkspace[0];

    {
        register THPSample* obase = Gbase;
        register u32 wid          = Gwid;

        register u32 itmp0, off0, off1;
        register THPSample *out0, *out1;

        // clang-format off
#ifdef __MWERKS__
        asm {
            psq_l       tmp10, 8*0*sizeof(f32)(ws), 0, 0
            slwi        xPos, xPos, 2
            psq_l       tmp11, 8*4*sizeof(f32)(ws), 0, 0
            slwi        off1, wid, 2
            psq_l       tmp12, 8*2*sizeof(f32)(ws), 0, 0
            mr         off0, xPos
            ps_add      tmp6, tmp10, tmp11
            psq_l       tmp13, 8*6*sizeof(f32)(ws), 0, 0
            ps_sub      tmp8, tmp10, tmp11
            add         off1, off0, off1
            ps_add      tmp6, tmp6, bias
            li      itmp0, 3
            ps_add      tmp7, tmp12, tmp13
            add         out0, obase, off0
            ps_sub      tmp9, tmp12, tmp13
            ps_add      tmp0, tmp6, tmp7
            add         out1, obase, off1
            ps_add      tmp8, tmp8, bias
            mtctr   itmp0

        _loopHead10:
            psq_l       tmp4, 8*1*sizeof(f32)(ws), 0, 0
            ps_msub     tmp9, tmp9, cc4, tmp7
            psq_l       tmp5, 8*3*sizeof(f32)(ws), 0, 0
            ps_sub      tmp3, tmp6, tmp7
            ps_add      tmp1, tmp8, tmp9
            psq_l       tmp6, 8*5*sizeof(f32)(ws), 0, 0
            ps_sub      tmp2, tmp8, tmp9
            psq_l       tmp7, 8*7*sizeof(f32)(ws), 0, 0
            ps_add      tmp8, tmp6, tmp5
            ps_sub      tmp6, tmp6, tmp5
            addi        ws, ws, 2*sizeof(f32)
            ps_add      tmp9, tmp4, tmp7
            ps_sub      tmp4, tmp4, tmp7
            psq_l       tmp10, 8*0*sizeof(f32)(ws), 0, 0
            ps_add      tmp7, tmp9, tmp8
            ps_sub      tmp5, tmp9, tmp8
            ps_add      tmp8, tmp6, tmp4
            psq_l       tmp11, 8*4*sizeof(f32)(ws), 0, 0
            ps_add      tmp9, tmp0, tmp7
            ps_mul      tmp8, tmp8, cc2
            psq_l       tmp12, 8*2*sizeof(f32)(ws), 0, 0
            ps_sub      tmp23, tmp0, tmp7
            ps_madd     tmp6, tmp6, cc2c6a, tmp8
            psq_l       tmp13, 8*6*sizeof(f32)(ws), 0, 0
            ps_sub      tmp6, tmp6, tmp7
            addi        off0, off0, 2*sizeof(THPSample)
            psq_st      tmp9, 0(out0), 0, 6
            ps_msub     tmp4, tmp4, cc2c6s, tmp8
            ps_add      tmp9, tmp1, tmp6
            ps_msub     tmp5, tmp5, cc4, tmp6
            ps_sub      tmp22, tmp1, tmp6
            psq_st      tmp9, 8(out0), 0, 6
            ps_add      tmp8, tmp2, tmp5
            ps_add      tmp4, tmp4, tmp5
            psq_st      tmp8, 16(out0), 0, 6
            addi        off1, off1, 2*sizeof(THPSample)
            ps_sub      tmp9, tmp3, tmp4
            ps_add      tmp20, tmp3, tmp4
            psq_st      tmp9, 24(out0), 0, 6
            ps_sub      tmp21, tmp2, tmp5
            ps_add      tmp6, tmp10, tmp11
            psq_st      tmp20, 0(out1), 0, 6
            ps_sub      tmp8, tmp10, tmp11
            ps_add      tmp6, tmp6, bias
            psq_st      tmp21, 8(out1), 0, 6
            ps_add      tmp7, tmp12, tmp13
            ps_sub      tmp9, tmp12, tmp13
            psq_st      tmp22, 16(out1), 0, 6
            add         out0, obase, off0
            ps_add      tmp0, tmp6, tmp7
            psq_st      tmp23, 24(out1), 0, 6
            ps_add      tmp8, tmp8, bias
            add         out1, obase, off1
            bdnz        _loopHead10
            psq_l       tmp4, 8*1*sizeof(f32)(ws), 0, 0
            ps_msub     tmp9, tmp9, cc4, tmp7
            psq_l       tmp5, 8*3*sizeof(f32)(ws), 0, 0
            ps_sub      tmp3, tmp6, tmp7
            ps_add      tmp1, tmp8, tmp9
            psq_l       tmp6, 8*5*sizeof(f32)(ws), 0, 0
            ps_sub      tmp2, tmp8, tmp9
            psq_l       tmp7, 8*7*sizeof(f32)(ws), 0, 0
            ps_add      tmp8, tmp6, tmp5
            ps_sub      tmp6, tmp6, tmp5
            ps_add      tmp9, tmp4, tmp7
            ps_sub      tmp4, tmp4, tmp7
            ps_add      tmp7, tmp9, tmp8
            ps_sub      tmp5, tmp9, tmp8
            ps_add      tmp8, tmp6, tmp4
            ps_add      tmp9, tmp0, tmp7
            ps_mul      tmp8, tmp8, cc2
            ps_sub      tmp23, tmp0, tmp7
            ps_madd     tmp6, tmp6, cc2c6a, tmp8
            psq_st      tmp9, 0(out0), 0, 6
            ps_sub      tmp6, tmp6, tmp7
            ps_msub     tmp4, tmp4, cc2c6s, tmp8
            psq_st      tmp23, 24(out1), 0, 6
            ps_add      tmp9, tmp1, tmp6
            ps_msub     tmp5, tmp5, cc4, tmp6
            ps_sub      tmp22, tmp1, tmp6
            psq_st      tmp9, 8(out0), 0, 6
            ps_add      tmp8, tmp2, tmp5
            ps_add      tmp4, tmp4, tmp5
            psq_st      tmp22, 16(out1), 0, 6
            psq_st      tmp8, 16(out0), 0, 6
            ps_sub      tmp9, tmp3, tmp4
            ps_add      tmp20, tmp3, tmp4
            psq_st      tmp9, 24(out0), 0, 6
            ps_sub      tmp21, tmp2, tmp5
            psq_st      tmp20, 0(out1), 0, 6
            psq_st      tmp21, 8(out1), 0, 6
        }
#endif
        // clang-format on
    }
}

/* 808748F4-80874B38 002214 0244+00 1/1 0/0 0/0 .text            __THPDecompressiMCURow640x480 */
static void __THPDecompressiMCURow640x480() {
    u8 cl_num;
    u32 x_pos;
    THPComponent* comp;

    LCQueueWait(3);

    {
        for (cl_num = 0; cl_num < __THPInfo->MCUsPerRow; cl_num++) {
            THPFileInfo* um = __THPInfo;
            __THPHuffDecodeDCTCompY(um, __THPMCUBuffer[0]);
            __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[1]);
            __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[2]);
            __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[3]);
            __THPHuffDecodeDCTCompU(__THPInfo, __THPMCUBuffer[4]);
            __THPHuffDecodeDCTCompV(__THPInfo, __THPMCUBuffer[5]);

            comp  = &__THPInfo->components[0];
            Gbase = __THPLCWork640[0];
            Gwid  = 640;
            Gq    = __THPInfo->quantTabs[comp->quantizationTableSelector];
            x_pos = (u32)(cl_num * 16);
            __THPInverseDCTNoYPos(__THPMCUBuffer[0], x_pos);
            __THPInverseDCTNoYPos(__THPMCUBuffer[1], x_pos + 8);
            __THPInverseDCTY8(__THPMCUBuffer[2], x_pos);
            __THPInverseDCTY8(__THPMCUBuffer[3], x_pos + 8);

            comp  = &__THPInfo->components[1];
            Gbase = __THPLCWork640[1];
            Gwid  = 320;
            Gq    = __THPInfo->quantTabs[comp->quantizationTableSelector];
            x_pos /= 2;
            __THPInverseDCTNoYPos(__THPMCUBuffer[4], x_pos);

            comp  = &__THPInfo->components[2];
            Gbase = __THPLCWork640[2];
            Gq    = __THPInfo->quantTabs[comp->quantizationTableSelector];
            __THPInverseDCTNoYPos(__THPMCUBuffer[5], x_pos);

            if (__THPInfo->RST != 0) {
                __THPInfo->currMCU--;
                if (__THPInfo->currMCU == 0) {
                    __THPInfo->currMCU = __THPInfo->nMCU;

                    __THPInfo->cnt = 1 + ((__THPInfo->cnt + 6) & 0xFFFFFFF8);

                    if (__THPInfo->cnt > 32) {
                        __THPInfo->cnt = 33;
                    }

                    __THPInfo->components[0].predDC = 0;
                    __THPInfo->components[1].predDC = 0;
                    __THPInfo->components[2].predDC = 0;
                }
            }
        }
    }

    LCStoreData(__THPInfo->dLC[0], __THPLCWork640[0], 0x2800);
    LCStoreData(__THPInfo->dLC[1], __THPLCWork640[1], 0xA00);
    LCStoreData(__THPInfo->dLC[2], __THPLCWork640[2], 0xA00);

    __THPInfo->dLC[0] += 0x2800;
    __THPInfo->dLC[1] += 0xA00;
    __THPInfo->dLC[2] += 0xA00;
}

/* 80874B38-80874D8C 002458 0254+00 1/1 0/0 0/0 .text            __THPDecompressiMCURowNxN */
static void __THPDecompressiMCURowNxN() {
    u8 cl_num;
    u32 x_pos, x;
    THPComponent* comp;

    x = __THPInfo->xPixelSize;

    LCQueueWait(3);

    for (cl_num = 0; cl_num < __THPInfo->MCUsPerRow; cl_num++) {
        __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[0]);
        __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[1]);
        __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[2]);
        __THPHuffDecodeDCTCompY(__THPInfo, __THPMCUBuffer[3]);
        __THPHuffDecodeDCTCompU(__THPInfo, __THPMCUBuffer[4]);
        __THPHuffDecodeDCTCompV(__THPInfo, __THPMCUBuffer[5]);

        comp  = &__THPInfo->components[0];
        Gbase = __THPLCWork640[0];
        Gwid  = x;
        Gq    = __THPInfo->quantTabs[comp->quantizationTableSelector];
        x_pos = (u32)(cl_num * 16);
        __THPInverseDCTNoYPos(__THPMCUBuffer[0], x_pos);
        __THPInverseDCTNoYPos(__THPMCUBuffer[1], x_pos + 8);
        __THPInverseDCTY8(__THPMCUBuffer[2], x_pos);
        __THPInverseDCTY8(__THPMCUBuffer[3], x_pos + 8);

        comp  = &__THPInfo->components[1];
        Gbase = __THPLCWork640[1];
        Gwid  = x / 2;
        Gq    = __THPInfo->quantTabs[comp->quantizationTableSelector];
        x_pos /= 2;
        __THPInverseDCTNoYPos(__THPMCUBuffer[4], x_pos);

        comp  = &__THPInfo->components[2];
        Gbase = __THPLCWork640[2];
        Gq    = __THPInfo->quantTabs[comp->quantizationTableSelector];
        __THPInverseDCTNoYPos(__THPMCUBuffer[5], x_pos);

        if (__THPInfo->RST != 0) {
            __THPInfo->currMCU--;
            if (__THPInfo->currMCU == 0) {
                __THPInfo->currMCU = __THPInfo->nMCU;
                __THPInfo->cnt     = 1 + ((__THPInfo->cnt + 6) & 0xFFFFFFF8);

                if (__THPInfo->cnt > 32) {
                    __THPInfo->cnt = 33;
                }

                __THPInfo->components[0].predDC = 0;
                __THPInfo->components[1].predDC = 0;
                __THPInfo->components[2].predDC = 0;
            }
        }
    }

    LCStoreData(__THPInfo->dLC[0], __THPLCWork640[0], ((4 * sizeof(u8) * 64) * (x / 16)));
    LCStoreData(__THPInfo->dLC[1], __THPLCWork640[1], ((sizeof(u8) * 64) * (x / 16)));
    LCStoreData(__THPInfo->dLC[2], __THPLCWork640[2], ((sizeof(u8) * 64) * (x / 16)));
    __THPInfo->dLC[0] += ((4 * sizeof(u8) * 64) * (x / 16));
    __THPInfo->dLC[1] += ((sizeof(u8) * 64) * (x / 16));
    __THPInfo->dLC[2] += ((sizeof(u8) * 64) * (x / 16));
}

/* 80874D8C-80875198 0026AC 040C+00 3/3 0/0 0/0 .text            __THPHuffDecodeDCTCompY */
static void __THPHuffDecodeDCTCompY(register THPFileInfo* info, THPCoeff* block) {
    {
        register s32 t;
        THPCoeff dc;
        register THPCoeff diff;

        __dcbz((void*)block, 0);
        t = __THPHuffDecodeTab(info, Ydchuff);
        __dcbz((void*)block, 32);
        diff = 0;
        __dcbz((void*)block, 64);

        if (t) {
            {
                register s32 v;
                register u32 cb;
                register u32 cnt;
                register u32 code;
                register u32 tmp;
                register u32 cnt1;
                register u32 tmp1;
                // clang-format off
#ifdef __MWERKS__
                asm {
                        lwz      cnt,info->cnt;
                        subfic   code,cnt,33;
                        lwz      cb,info->currByte;

                        subfc. tmp, code, t;
                        subi     cnt1,cnt,1;

                        bgt      _notEnoughBitsDIFF;
                        add      v,cnt,t;

                        slw      cnt,cb,cnt1;
                        stw      v,info->cnt;
                        subfic   v,t,32;
                        srw      diff,cnt,v;
                }
#endif
                // clang-format on

                // clang-format off
#ifdef __MWERKS__
                asm
                {
                    b _DoneDIFF;
                _notEnoughBitsDIFF:
                    lwz tmp1, info->c;
                    slw v, cb, cnt1;
                    lwzu cb, 4(tmp1);
                    addi tmp, tmp, 1;
                    stw cb, info->currByte;
                    srw cb, cb, code;
                    stw tmp1, info->c;
                    add v, cb, v;
                    stw tmp, info->cnt;
                    subfic tmp, t, 32;
                    srw diff, v, tmp;
                _DoneDIFF:
                }
#endif
                // clang-format on
            }

            if (__cntlzw((u32)diff) > 32 - t) {
                diff += ((0xFFFFFFFF << t) + 1);
            }
        };

        __dcbz((void*)block, 96);
        dc       = (s16)(info->components[0].predDC + diff);
        block[0] = info->components[0].predDC = dc;
    }

    {
        register s32 k;
        register s32 code;
        register u32 cnt;
        register u32 cb;
        register u32 increment;
        register s32 tmp;
        register THPHuffmanTab* h = Yachuff;

        // clang-format off
#ifdef __MWERKS__
        asm
        {
            lwz     cnt, info->cnt;
            addi    increment, h, 32;
            lwz     cb, info->currByte;
        }
#endif
        // clang-format on

        for (k = 1; k < 64; k++)
        {
            register s32 ssss;
            register s32 rrrr;

            // clang-format off
#ifdef __MWERKS__
            asm {
                addi    code, cnt, 4;
                cmpwi   cnt, 28;
                rlwnm   tmp, cb, code, 27, 31;
                bgt     _notEnoughBits;

                lbzx    ssss, h, tmp;
                lbzx    code, increment, tmp;
                cmpwi   ssss, 0xFF;

                beq     _FailedCheckEnoughBits;
                add     cnt, cnt, code;
                b       _DoneDecodeTab;
            }
#endif
            // clang-format on

            {
                register u32 maxcodebase;
                register u32 tmp2;

            _FailedCheckEnoughBits:
                cnt += 5;
                maxcodebase = (u32) & (h->maxCode);
                // clang-format off
#ifdef __MWERKS__
                asm {
                    li          tmp2, sizeof(s32)*(5);
                    li          code, 5;
                    add         maxcodebase, maxcodebase, tmp2;
                  __WHILE_START:
                    cmpwi       cnt, 33;
                    slwi        tmp, tmp, 1

                    beq         _FCEB_faster;
                    rlwnm       ssss, cb, cnt, 31, 31;
                    lwzu        tmp2, 4(maxcodebase);
                    or          tmp, tmp, ssss
                    addi        cnt, cnt, 1;
                    b __WHILE_CHECK;

                  _FCEB_faster:
                    lwz     ssss, info->c;
                    li      cnt, 1;
                    lwzu    cb, 4(ssss);

                    lwzu    tmp2, 4(maxcodebase);

                    stw     ssss, info->c;
                    rlwimi  tmp, cb, 1,31,31;
                    b __FL_WHILE_CHECK;

                  __FL_WHILE_START:
                    slwi    tmp, tmp, 1;

                    rlwnm   ssss, cb, cnt, 31, 31;
                    lwzu    tmp2, 4(maxcodebase);
                    or      tmp, tmp, ssss;

                  __FL_WHILE_CHECK:
                    cmpw    tmp,tmp2
                    addi    cnt, cnt, 1;
                    addi    code, code, 1
                    bgt     __FL_WHILE_START;
                    b _FCEB_Done;

                  __WHILE_CHECK:
                    cmpw    tmp,tmp2
                    addi    code, code, 1
                    bgt     __WHILE_START;
                }
#endif
                // clang-format on
            }
        _FCEB_Done:
            ssss = (h->Vij[(s32)(tmp + h->valPtr[code])]);
            goto _DoneDecodeTab;

        _notEnoughBits:
            // clang-format off
#ifdef __MWERKS__
            asm
            {
                cmpwi   cnt, 33;
                lwz     tmp, info->c;
                beq     _getfullword;

                cmpwi   cnt, 32;
                rlwnm   code, cb, code, 27, 31
                beq     _1bitleft;

                lbzx    ssss, h, code;
                lbzx    rrrr, increment, code;
                cmpwi   ssss, 0xFF;
                add     code, cnt, rrrr;
                beq _FailedCheckNoBits0;

                cmpwi   code, 33;
                bgt     _FailedCheckNoBits1;
            }
#endif
            // clang-format on
            cnt = (u32)code;
            goto _DoneDecodeTab;

        _getfullword : {
            // clang-format off
#ifdef __MWERKS__
            asm
            {
                    lwzu    cb, 4(tmp);
                    rlwinm  code, cb, 5, 27, 31
                    stw     tmp, info->c;
                    lbzx    ssss, h, code;
                    lbzx    tmp, increment, code;
                    cmpwi   ssss, 0xFF
                    addi    cnt, tmp, 1
                    beq     _FailedCheckEnoughbits_Updated;
            }
#endif
            // clang-format on
        }
            goto _DoneDecodeTab;

        _FailedCheckEnoughbits_Updated:
            ssss = 5;
            do {
                // clang-format off
#ifdef __MWERKS__
                asm
                {
                    subfic  tmp, ssss, 31;
                    addi    ssss, ssss, 1;
                    srw     code, cb, tmp;
                }
#endif
                // clang-format on
            } while (code > h->maxCode[ssss]);

            cnt  = (u32)(ssss + 1);
            ssss = (h->Vij[(s32)(code + h->valPtr[ssss])]);

            goto _DoneDecodeTab;

        _1bitleft:
            // clang-format off
#ifdef __MWERKS__
            asm {
                lwzu    cb, 4(tmp);

                stw     tmp, info->c;
                rlwimi  code, cb, 4, 28, 31;
                lbzx    ssss, h, code;
                lbzx    cnt, increment, code
                cmpwi   ssss, 0xFF
                beq     _Read4;

            }
#endif
            // clang-format on

            goto _DoneDecodeTab;

        _Read4 : {
            register u32 maxcodebase = (u32) & (h->maxCode);
            register u32 tmp2;

            // clang-format off
#ifdef __MWERKS__
            asm {
                    li  cnt, sizeof(s32)*5;
                    add     maxcodebase, maxcodebase, cnt;

                    slwi    tmp, code, 32-5;
                    li      cnt,5;
                    rlwimi  tmp, cb, 32-1, 1,31;

                  __DR4_WHILE_START:

                    subfic  ssss, cnt, 31;
                    lwzu    tmp2, 4(maxcodebase);
                    srw     code, tmp, ssss;
                  __DR4_WHILE_CHECK:
                    cmpw    code, tmp2
                    addi    cnt, cnt, 1
                    bgt     __DR4_WHILE_START;

            }
#endif
            // clang-format on
        }
            ssss = (h->Vij[(s32)(code + h->valPtr[cnt])]);
            goto _DoneDecodeTab;

        _FailedCheckNoBits0:
        _FailedCheckNoBits1:
        _REALFAILEDCHECKNOBITS : {
            register u32 mask = 0xFFFFFFFF << (33 - cnt);
            register u32 tmp2;
            register u32 tmp3;
            code = (s32)(cb & (~mask));
            mask = (u32) & (h->maxCode);

            // clang-format off
#ifdef __MWERKS__
            asm {
                    lwz     tmp, info->c;
                    subfic  tmp2, cnt, 33;
                    addi    tmp3, tmp2, 1;
                    slwi    tmp2, tmp2, 2;
                    lwzu    cb, 4(tmp);
                    add     mask,mask, tmp2;
                    stw     tmp, info->c;
                    slwi    code, code, 1;
                    rlwimi  code, cb, 1, 31, 31;
                    lwzu    tmp2, 4(mask);
                    li      cnt, 2;
                    b       __FCNB1_WHILE_CHECK;

                  __FCNB1_WHILE_START:
                    slwi    code, code, 1;

                    addi    tmp3, tmp3, 1;
                    lwzu    tmp2, 4(mask);
                    add     code, code, rrrr;
                    addi    cnt, cnt, 1;

                  __FCNB1_WHILE_CHECK:
                    cmpw    code, tmp2;
                    rlwnm   rrrr, cb, cnt, 31, 31;
                    bgt     __FCNB1_WHILE_START;

            }
#endif
            // clang-format on
            ssss = (h->Vij[(s32)(code + h->valPtr[tmp3])]);
        }

            goto _DoneDecodeTab;

        _DoneDecodeTab:
            // clang-format off
#ifdef __MWERKS__
            asm {
                andi.   rrrr, ssss, 15;
                srawi   ssss, ssss, 4;
                beq     _RECV_SSSS_ZERO;
            }
#endif
            // clang-format on

            {
                k += ssss;
                {
                    register s32 v;
                    register u32 cnt1;
                    register u32 tmp1;
                    // clang-format off
#ifdef __MWERKS__
                    asm
                    {
                        subfic   code,cnt,33;
                        subfc. tmp, code, rrrr;
                        subi     cnt1,cnt,1;
                        bgt      _RECVnotEnoughBits;
                        add      cnt,cnt,rrrr;
                        slw      tmp1,cb,cnt1;
                        subfic   v,rrrr,32;
                        srw      ssss,tmp1,v;
                    }
#endif
                    // clang-format on
                    // clang-format off
#ifdef __MWERKS__
                    asm
                    {
                        b _RECVDone;
                    _RECVnotEnoughBits:
                        lwz tmp1, info->c;
                        slw v, cb, cnt1;
                        lwzu cb, 4(tmp1);
                        addi cnt, tmp, 1;
                        stw tmp1, info->c;
                        srw tmp1, cb, code;

                        add v, tmp1, v;
                        subfic tmp, rrrr, 32;
                        srw ssss, v, tmp;
                    _RECVDone:
                    }
#endif
                    // clang-format on
                }

                if (__cntlzw((u32)ssss) > 32 - rrrr) {
                    ssss += ((0xFFFFFFFF << rrrr) + 1);
                }

                block[__THPJpegNaturalOrder[k]] = (s16)ssss;
#ifdef __MWERKS__
                goto _RECV_END;
#else
                continue;
#endif
            }

            {
            _RECV_SSSS_ZERO:
                if (ssss != 15) {
                    break;
                }

                k += 15;
            };

            // clang-format off
#ifdef __MWERKS__
            asm
            {
              _RECV_END:
            }
#endif
            // clang-format on
        }
        info->cnt      = cnt;
        info->currByte = cb;
    }
}

/* 80875198-80875410 002AB8 0278+00 3/3 0/0 0/0 .text            __THPHuffDecodeTab */
static s32 __THPHuffDecodeTab(register THPFileInfo* info, register THPHuffmanTab* h) {
    register s32 code;
    register u32 cnt;
    register s32 cb;
    register u32 increment;
    register s32 tmp;

    // clang-format off
#ifdef __MWERKS__
    asm
    {
        lwz     cnt, info->cnt;
        addi    increment, h, 32;
        lwz     cb, info->currByte;
        addi    code, cnt, 4;
        cmpwi   cnt, 28;
        rlwnm   tmp, cb, code, 27, 31;
        bgt     _notEnoughBits;
        lbzx    code, h, tmp;
        lbzx    increment, increment, tmp;
        cmpwi   code, 0xFF;
        beq     _FailedCheckEnoughBits;
        add     cnt, cnt, increment;
        stw     cnt, info->cnt;
    }
#endif
    // clang-format on
_done:
    return code;

    {
        register u32 maxcodebase;
        register u32 tmp2;

    _FailedCheckEnoughBits:
        maxcodebase = (u32) & (h->maxCode);
        cnt += 5;

        // clang-format off
#ifdef __MWERKS__
        asm {
            li          tmp2, sizeof(s32)*(5);
            li          code, 5;
            add         maxcodebase, maxcodebase, tmp2;
          __WHILE_START:
            cmpwi       cnt, 33;
            slwi        tmp, tmp, 1

            beq         _FCEB_faster;
            rlwnm       increment, cb, cnt, 31, 31;
            lwzu        tmp2, 4(maxcodebase);
            or          tmp, tmp, increment
            addi        cnt, cnt, 1;
            b __WHILE_CHECK;

          _FCEB_faster:
            lwz     increment, info->c;
            li      cnt, 1;
            lwzu    cb, 4(increment);
            lwzu    tmp2, 4(maxcodebase);

            stw     increment, info->c;
            rlwimi  tmp, cb, 1,31,31;
            stw     cb, info->currByte;
            b __FL_WHILE_CHECK;

          __FL_WHILE_START:
            slwi    tmp, tmp, 1;
            rlwnm   increment, cb, cnt, 31, 31;
            lwzu    tmp2, 4(maxcodebase);
            or      tmp, tmp, increment;

          __FL_WHILE_CHECK:
            cmpw    tmp,tmp2
            addi    cnt, cnt, 1;
            addi        code, code, 1
            bgt     __FL_WHILE_START;
            b _FCEB_Done;

          __WHILE_CHECK:
            cmpw    tmp,tmp2
            addi        code, code, 1
            bgt     __WHILE_START;
        }
#endif
        // clang-format on
    }
_FCEB_Done:
    info->cnt = cnt;
    return (h->Vij[(s32)(tmp + h->valPtr[code])]);

    // clang-format off
#ifdef __MWERKS__
    asm
    {
      _notEnoughBits:
        cmpwi   cnt, 33;
        lwz     tmp, info->c;
        beq     _getfullword; 

        cmpwi   cnt, 32;
        rlwnm   code, cb, code, 27, 31
        beq     _1bitleft;

        lbzx    tmp, h, code;
        lbzx    increment, increment, code;
        cmpwi   tmp, 0xFF;
        add     code, cnt, increment;
        beq _FailedCheckNoBits0;

        cmpwi   code, 33;
        stw     code, info->cnt;
        bgt     _FailedCheckNoBits1;
    }
#endif
    // clang-format on
    return tmp;

    // clang-format off
#ifdef __MWERKS__
    asm    {
      _1bitleft:
        lwzu    cb, 4(tmp);

        stw     tmp, info->c;
        rlwimi  code, cb, 4, 28, 31;
        lbzx    tmp, h, code;
        lbzx    increment, increment, code
        stw     cb, info->currByte;
        cmpwi   tmp, 0xFF
        stw     increment, info->cnt;
        beq     _Read4;

    }
#endif
    // clang-format on
    return tmp;

_Read4 : {
    register u32 maxcodebase = (u32) & (h->maxCode);
    register u32 tmp2;

    // clang-format off
#ifdef __MWERKS__
    asm
    {
            li      cnt, sizeof(s32)*5;
            add     maxcodebase, maxcodebase, cnt;

            slwi    tmp, code, 32-5;
            li      cnt,5;
            rlwimi  tmp, cb, 32-1, 1,31;

          __DR4_WHILE_START:

            subfic  cb, cnt, 31;
            lwzu    tmp2, 4(maxcodebase);
            srw     code, tmp, cb;
          __DR4_WHILE_CHECK:
            cmpw    code, tmp2
            addi    cnt, cnt, 1
            bgt     __DR4_WHILE_START;

    }
#endif
    // clang-format on
}

    info->cnt = cnt;
__CODE_PLUS_VP_CNT:
    return (h->Vij[(s32)(code + h->valPtr[cnt])]);

_getfullword:
    // clang-format off
#ifdef __MWERKS__
    asm
    {
        lwzu    cb, 4(tmp);

        rlwinm  code, cb, 5, 27, 31
        stw     tmp, info->c;
        lbzx    cnt, h, code;
        lbzx    increment, increment, code;
        cmpwi   cnt, 0xFF
        stw     cb, info->currByte;
        addi    increment, increment, 1
        beq     _FailedCheckEnoughbits_Updated;

        stw     increment, info->cnt;
    }
#endif
    // clang-format on
    return (s32)cnt;

_FailedCheckEnoughbits_Updated:

    cnt = 5;
    do {
        // clang-format off
#ifdef __MWERKS__
        asm
        {
            subfic  tmp, cnt, 31;
            addi    cnt, cnt, 1;
            srw     code, cb, tmp;
        }
#endif
        // clang-format on
    } while (code > h->maxCode[cnt]);

    info->cnt = cnt + 1;
    goto __CODE_PLUS_VP_CNT;

_FailedCheckNoBits0:
_FailedCheckNoBits1:

{
    register u32 mask = 0xFFFFFFFF << (33 - cnt);
    register u32 tmp2;

    code = (s32)(cb & (~mask));
    mask = (u32) & (h->maxCode);

    // clang-format off
#ifdef __MWERKS__
    asm
    {
            lwz     tmp, info->c;
            subfic  tmp2, cnt, 33;
            addi    cnt, tmp2, 1;
            slwi    tmp2, tmp2, 2;
            lwzu    cb, 4(tmp);
            add     mask,mask, tmp2;
            stw     tmp, info->c;
            slwi    code, code, 1;
            stw     cb, info->currByte;
            rlwimi  code, cb, 1, 31, 31;
            lwzu    tmp2, 4(mask);
            li      tmp, 2;
            b       __FCNB1_WHILE_CHECK;

          __FCNB1_WHILE_START:
            slwi    code, code, 1;

            addi    cnt, cnt, 1;
            lwzu    tmp2, 4(mask);
            add     code, code, increment;
            addi    tmp, tmp, 1;

          __FCNB1_WHILE_CHECK:
            cmpw    code, tmp2;
            rlwnm   increment, cb, tmp, 31, 31;
            bgt     __FCNB1_WHILE_START;

    }
#endif
    // clang-format on
}

    info->cnt = (u32)tmp;
    return (h->Vij[(s32)(code + h->valPtr[cnt])]);
}

/* 80875410-808755F8 002D30 01E8+00 3/3 0/0 0/0 .text            __THPHuffDecodeDCTCompU */
static void __THPHuffDecodeDCTCompU(register THPFileInfo* info, THPCoeff* block) {
    register s32 t;
    register THPCoeff diff;
    THPCoeff dc;
    register s32 v;
    register u32 cb;
    register u32 cnt;
    register u32 cnt33;
    register u32 tmp;
    register u32 cnt1;
    register u32 tmp1;
    register s32 k;
    register s32 ssss;
    register s32 rrrr;

    __dcbz((void*)block, 0);
    t = __THPHuffDecodeTab(info, Udchuff);
    __dcbz((void*)block, 32);
    diff = 0;
    __dcbz((void*)block, 64);

    if (t) {
        // clang-format off
#ifdef __MWERKS__
        asm
        {
            lwz      cnt,info->cnt;
            subfic   cnt33,cnt,33;
            lwz      cb,info->currByte;
            subfc. tmp, cnt33, t;
            subi     cnt1,cnt,1;
            bgt      _notEnoughBitsDIFF;
            add      v,cnt,t;
            slw      cnt,cb,cnt1;
            stw      v,info->cnt;
            subfic   v,t,32;
            srw      diff,cnt,v;
        }
#endif
        // clang-format on

        // clang-format off
#ifdef __MWERKS__
        asm
        {
            b _DoneDIFF;
        _notEnoughBitsDIFF:
            lwz tmp1, info->c;
            slw v, cb, cnt1;
            lwzu cb, 4(tmp1);
            addi tmp, tmp, 1;
            stw cb, info->currByte;
            srw cb, cb, cnt33;
            stw tmp1, info->c;
            add v, cb, v;
            stw tmp, info->cnt;
            subfic tmp, t, 32;
            srw diff, v, tmp;
        _DoneDIFF:
        }
#endif
        // clang-format on

        if (__cntlzw((u32)diff) > 32 - t) {
            diff += ((0xFFFFFFFF << t) + 1);
        }
    }

    __dcbz((void*)block, 96);
    dc       = (s16)(info->components[1].predDC + diff);
    block[0] = info->components[1].predDC = dc;

    for (k = 1; k < 64; k++) {
        ssss = __THPHuffDecodeTab(info, Uachuff);
        rrrr = ssss >> 4;
        ssss &= 15;

        if (ssss) {
            k += rrrr;
            // clang-format off
#ifdef __MWERKS__
            asm
            {
                lwz      cnt,info->cnt;
                subfic   cnt33,cnt,33;
                lwz      cb,info->currByte;
                subf. tmp, cnt33, ssss;
                subi     cnt1,cnt,1;
                bgt      _notEnoughBits;
                add      v,cnt,ssss;
                slw      cnt,cb,cnt1;
                stw      v,info->cnt;
                subfic   v,ssss,32;
                srw      rrrr,cnt,v;
            }
#endif
            // clang-format on

            // clang-format off
#ifdef __MWERKS__
            asm
            {
                b _Done;
            _notEnoughBits:
                lwz tmp1, info->c;
                slw v, cb, cnt1;
                lwzu cb, 4(tmp1);
                addi tmp, tmp, 1;
                stw cb, info->currByte;
                srw cb, cb, cnt33;
                stw tmp1, info->c;
                add v, cb, v;
                stw tmp, info->cnt;
                subfic tmp, ssss, 32;
                srw rrrr, v, tmp;
            _Done:
            }
#endif
            // clang-format on

            if (__cntlzw((u32)rrrr) > 32 - ssss) {
                rrrr += ((0xFFFFFFFF << ssss) + 1);
            }

            block[__THPJpegNaturalOrder[k]] = (s16)rrrr;
        }

        else {
            if (rrrr != 15)
                break;
            k += 15;
        }
    }
}

/* 808755F8-808757E0 002F18 01E8+00 3/3 0/0 0/0 .text            __THPHuffDecodeDCTCompV */
static void __THPHuffDecodeDCTCompV(register THPFileInfo* info, THPCoeff* block) {
    register s32 t;
    register THPCoeff diff;
    THPCoeff dc;
    register s32 v;
    register u32 cb;
    register u32 cnt;
    register u32 cnt33;
    register u32 tmp;
    register u32 cnt1;
    register u32 tmp1;
    register s32 k;
    register s32 ssss;
    register s32 rrrr;

    __dcbz((void*)block, 0);
    t = __THPHuffDecodeTab(info, Vdchuff);
    __dcbz((void*)block, 32);
    diff = 0;
    __dcbz((void*)block, 64);

    if (t) {
        // clang-format off
#ifdef __MWERKS__
        asm
        {
            lwz      cnt,info->cnt;
            subfic   cnt33,cnt,33;
            lwz      cb,info->currByte;
            subf. tmp, cnt33, t;
            subi     cnt1,cnt,1;
            bgt      _notEnoughBitsDIFF;
            add      v,cnt,t;
            slw      cnt,cb,cnt1;
            stw      v,info->cnt;
            subfic   v,t,32;
            srw      diff,cnt,v;
        }
#endif
        // clang-format on

        // clang-format off
#ifdef __MWERKS__
        asm
        {
            b _DoneDIFF;
        _notEnoughBitsDIFF:
            lwz tmp1, info->c;
            slw v, cb, cnt1;
            lwzu cb, 4(tmp1);
            addi tmp, tmp, 1;
            stw cb, info->currByte;
            srw cb, cb, cnt33;
            stw tmp1, info->c;
            add v, cb, v;
            stw tmp, info->cnt;
            subfic tmp, t, 32;
            srw diff, v, tmp;
        _DoneDIFF:
        }
#endif
        // clang-format on

        if (__cntlzw((u32)diff) > 32 - t) {
            diff += ((0xFFFFFFFF << t) + 1);
        }
    }

    __dcbz((void*)block, 96);

    dc       = (s16)(info->components[2].predDC + diff);
    block[0] = info->components[2].predDC = dc;

    for (k = 1; k < 64; k++) {
        ssss = __THPHuffDecodeTab(info, Vachuff);
        rrrr = ssss >> 4;
        ssss &= 15;

        if (ssss) {
            k += rrrr;

            // clang-format off
#ifdef __MWERKS__
            asm
            {
                lwz      cnt,info->cnt;
                subfic   cnt33,cnt,33;
                lwz      cb,info->currByte;

                subf. tmp, cnt33, ssss;
                subi     cnt1,cnt,1;

                bgt      _notEnoughBits;
                add      v,cnt,ssss;

                slw      cnt,cb,cnt1;
                stw      v,info->cnt;
                subfic   v,ssss,32;
                srw      rrrr,cnt,v;
            }
#endif
            // clang-format on

            // clang-format off
#ifdef __MWERKS__
            asm
            {
                b _Done;
            _notEnoughBits:
                lwz tmp1, info->c;
                slw v, cb, cnt1;
                lwzu cb, 4(tmp1);
                addi tmp, tmp, 1;
                stw cb, info->currByte;
                srw cb, cb, cnt33;
                stw tmp1, info->c;
                add v, cb, v;
                stw tmp, info->cnt;
                subfic tmp, ssss, 32;
                srw rrrr, v, tmp;
            _Done:
            }
#endif
            // clang-format on

            if (__cntlzw((u32)rrrr) > 32 - ssss) {
                rrrr += ((0xFFFFFFFF << ssss) + 1);
            }

            block[__THPJpegNaturalOrder[k]] = (s16)rrrr;
        } else {
            if (rrrr != 15)
                break;
            k += 15;
        }
    }
}

/* 808757E0-8087584C 003100 006C+00 1/1 0/0 0/0 .text            THPInit */
static BOOL THPInit() {
    u8* base;
    base = (u8*)(0xE000 << 16);

    __THPLCWork512[0] = base;
    base += 0x2000;
    __THPLCWork512[1] = base;
    base += 0x800;
    __THPLCWork512[2] = base;
    base += 0x200;

    base              = (u8*)(0xE000 << 16);
    __THPLCWork640[0] = base;
    base += 0x2800;
    __THPLCWork640[1] = base;
    base += 0xA00;
    __THPLCWork640[2] = base;
    base += 0xA00;

    OSInitFastCast();

    __THPInitFlag = TRUE;
    return TRUE;
}

#ifdef __cplusplus
}
#endif

/* 80879BD0-80879DA0 000630 01D0+00 28/29 0/0 0/0 .bss             daMP_ActivePlayer */
static daMP_Player_c daMP_ActivePlayer ALIGN_DECL(16);

/* 80879DA0-80879DA4 000800 0004+00 2/3 0/0 0/0 .bss             daMP_ReadThreadCreated */
static BOOL daMP_ReadThreadCreated;

/* 80879DA4-80879DC4 000804 0020+00 2/3 0/0 0/0 .bss             daMP_FreeReadBufferQueue */
static OSMessageQueue daMP_FreeReadBufferQueue;

/* 80879DC4-80879DE4 000824 0020+00 2/3 0/0 0/0 .bss             daMP_ReadedBufferQueue */
static OSMessageQueue daMP_ReadedBufferQueue;

/* 80875880-808758B4 0031A0 0034+00 2/2 0/0 0/0 .text            daMP_PopReadedBuffer__Fv */
void* daMP_PopReadedBuffer() {
    OSMessage msg;
    OSReceiveMessage(&daMP_ReadedBufferQueue, &msg, 1);
    return msg;
}

/* 808758B4-808758E4 0031D4 0030+00 1/1 0/0 0/0 .text            daMP_PushReadedBuffer__FPv */
void daMP_PushReadedBuffer(void* r3) {
    OSMessage msg = (OSMessage)r3;
    OSSendMessage(&daMP_ReadedBufferQueue, msg, 1);
}

/* 808758E4-80875918 003204 0034+00 1/1 0/0 0/0 .text            daMP_PopFreeReadBuffer__Fv */
daMP_THPReadBuffer* daMP_PopFreeReadBuffer() {
    OSMessage msg;
    OSReceiveMessage(&daMP_FreeReadBufferQueue, &msg, 1);
    return (daMP_THPReadBuffer*)msg;
}

/* 80875918-80875948 003238 0030+00 2/2 0/0 0/0 .text            daMP_PushFreeReadBuffer__FPv */
void daMP_PushFreeReadBuffer(void* r3) {
    OSMessage msg = (OSMessage)r3;
    OSSendMessage(&daMP_FreeReadBufferQueue, msg, 1);
}

/* 80879DE4-80879E04 000844 0020+00 2/3 0/0 0/0 .bss             daMP_ReadedBufferQueue2 */
static OSMessageQueue daMP_ReadedBufferQueue2;

/* 80875948-8087597C 003268 0034+00 1/1 0/0 0/0 .text            daMP_PopReadedBuffer2__Fv */
void* daMP_PopReadedBuffer2() {
    OSMessage msg;
    OSReceiveMessage(&daMP_ReadedBufferQueue2, &msg, 1);
    return msg;
}

/* 8087597C-808759AC 00329C 0030+00 1/1 0/0 0/0 .text            daMP_PushReadedBuffer2__FPv */
void daMP_PushReadedBuffer2(void* r3) {
    OSMessage msg = (OSMessage)r3;
    OSSendMessage(&daMP_ReadedBufferQueue2, msg, 1);
}

/* 80879E04-80879E2C 000864 0028+00 0/1 0/0 0/0 .bss             daMP_FreeReadBufferMessage */
static OSMessage daMP_FreeReadBufferMessage[10];

/* 80879E2C-80879E54 00088C 0028+00 0/1 0/0 0/0 .bss             daMP_ReadedBufferMessage */
static OSMessage daMP_ReadedBufferMessage[10];

/* 80879E54-80879E80 0008B4 0028+04 0/1 0/0 0/0 .bss             daMP_ReadedBufferMessage2 */
static OSMessage daMP_ReadedBufferMessage2[10];

/* 80879E80-8087A198 0008E0 0318+00 3/4 0/0 0/0 .bss             daMP_ReadThread */
static OSThread daMP_ReadThread;

/* 808759AC-808759E4 0032CC 0038+00 1/1 0/0 0/0 .text            daMP_ReadThreadStart__Fv */
void daMP_ReadThreadStart() {
    if (daMP_ReadThreadCreated) {
        OSResumeThread(&daMP_ReadThread);
    }
}

/* 808759E4-80875A28 003304 0044+00 1/1 0/0 0/0 .text            daMP_ReadThreadCancel__Fv */
void daMP_ReadThreadCancel() {
    if (daMP_ReadThreadCreated) {
        OSCancelThread(&daMP_ReadThread);
        daMP_ReadThreadCreated = FALSE;
    }
}

/* 80875A28-80875B0C 003348 00E4+00 1/1 0/0 0/0 .text            daMP_Reader__FPv */
// NONMATCHINIG - regalloc
void daMP_Reader(void*) {
    s32 r28 = 0;
    s32 r30 = daMP_ActivePlayer.field_0xb8;
    s32 r29 = daMP_ActivePlayer.field_0xbc;
    while (true) {
        daMP_THPReadBuffer* readBuf = daMP_PopFreeReadBuffer();
        int readBytes = DVDReadPrio(&daMP_ActivePlayer.mFileInfo, readBuf->m00, r29, r30, 2);
        if (readBytes != r29) {
            if (readBytes == -1) {
                daMP_ActivePlayer.field_0xa8 = -1;
            }
            if (r28 == 0) {
                daMP_PrepareReady(0);
            }
            OSSuspendThread(&daMP_ReadThread);
        }
        readBuf->m04 = r28;
        daMP_PushReadedBuffer(readBuf);
        r30 += r29;
        r29 = daMP_NEXT_READ_SIZE(readBuf);
        u32 r0 = (r28 + daMP_ActivePlayer.field_0xc0) % daMP_ActivePlayer.mTotalFrames;
        if (r0 == daMP_ActivePlayer.mTotalFrames - 1) {
            if (daMP_ActivePlayer.field_0xa6 & 0x01) {
                r30 = daMP_ActivePlayer.field_0x64;
            } else {
                OSSuspendThread(&daMP_ReadThread);
            }
        }
        r28++;
    }
}

/* 8087A198-8087C198 000BF8 2000+00 0/1 0/0 0/0 .bss             daMP_ReadThreadStack */
static u8 daMP_ReadThreadStack[0x2000];

/* 8087C198-8087C1A0 002BF8 0004+04 2/4 0/0 0/0 .bss             daMP_VideoDecodeThreadCreated */
static BOOL daMP_VideoDecodeThreadCreated;

/* 80875B18-80875BC8 003438 00B0+00 1/1 0/0 0/0 .text            daMP_CreateReadThread__Fl */
static BOOL daMP_CreateReadThread(s32 param_0) {
    // NONMATCHING
    if (!OSCreateThread(&daMP_ReadThread, (void*(*)(void*))daMP_Reader, 0, daMP_ReadThreadStack + sizeof(daMP_ReadThreadStack), sizeof(daMP_ReadThreadStack), param_0, 1)) {
        OSReport("Can't create read thread\n");
        return 0;
    }

    OSInitMessageQueue(&daMP_FreeReadBufferQueue, daMP_FreeReadBufferMessage, 10);
    OSInitMessageQueue(&daMP_ReadedBufferQueue, daMP_ReadedBufferMessage, 10);
    OSInitMessageQueue(&daMP_ReadedBufferQueue2, daMP_ReadedBufferMessage2, 10);
    daMP_ReadThreadCreated = TRUE;
    return 1;
}

/* 8087C1A0-8087C4B8 002C00 0318+00 4/5 0/0 0/0 .bss             daMP_VideoDecodeThread */
static OSThread daMP_VideoDecodeThread;

/* 8087C4B8-808E04B8 002F18 64000+00 1/1 0/0 0/0 .bss             daMP_VideoDecodeThreadStack */
static u8 daMP_VideoDecodeThreadStack[0x64000];

/* 808E04B8-808E04D8 066F18 0020+00 2/2 0/0 0/0 .bss             daMP_FreeTextureSetQueue */
static OSMessageQueue daMP_FreeTextureSetQueue;

/* 80875BC8-80875BFC 0034E8 0034+00 1/1 0/0 0/0 .text            daMP_PopFreeTextureSet__Fv */
OSMessage daMP_PopFreeTextureSet() {
    OSMessage msg;
    OSReceiveMessage(&daMP_FreeTextureSetQueue, &msg, 1);
    return msg;
}

/* 80875BFC-80875C2C 00351C 0030+00 2/2 0/0 0/0 .text            daMP_PushFreeTextureSet__FPv */
void daMP_PushFreeTextureSet(void* r3) {
    OSMessage msg = (OSMessage)r3;
    OSSendMessage(&daMP_FreeTextureSetQueue, msg, 0);
}

/* 808E04D8-808E04F8 066F38 0020+00 2/2 0/0 0/0 .bss             daMP_DecodedTextureSetQueue */
static OSMessageQueue daMP_DecodedTextureSetQueue;

/* 80875C2C-80875C70 00354C 0044+00 1/1 0/0 0/0 .text            daMP_PopDecodedTextureSet__Fl */
void* daMP_PopDecodedTextureSet(s32 r3) {
    OSMessage msg;
    if (OSReceiveMessage(&daMP_DecodedTextureSetQueue, &msg, r3) == TRUE) {
        return msg;
    } else {
        return NULL;
    }
}

/* 80875C70-80875CA0 003590 0030+00 1/1 0/0 0/0 .text            daMP_PushDecodedTextureSet__FPv */
void daMP_PushDecodedTextureSet(void* r3) {
    OSMessage msg = (OSMessage)r3;
    OSSendMessage(&daMP_DecodedTextureSetQueue, msg, 1);
}

/* 808E04F8-808E0504 066F58 000C+00 0/0 0/0 0/0 .bss             daMP_FreeTextureSetMessage */
static OSMessage daMP_FreeTextureSetMessage[3];

/* 808E0504-808E0510 066F64 000C+00 0/0 0/0 0/0 .bss             daMP_DecodedTextureSetMessage */
static OSMessage daMP_DecodedTextureSetMessage[3];

/* 808E0510-808E0514 066F70 0004+00 1/1 0/0 0/0 .bss             daMP_First */
static BOOL daMP_First;

/* 80875CA0-80875DD8 0035C0 0138+00 2/2 0/0 0/0 .text daMP_VideoDecode__FP18daMP_THPReadBuffer */
static void daMP_VideoDecode(daMP_THPReadBuffer* param_0) {
    // NONMATCHING
}

/* 80875DD8-80875EA0 0036F8 00C8+00 1/1 0/0 0/0 .text            daMP_VideoDecoder__FPv */
static void daMP_VideoDecoder(void* param_0) {
    // NONMATCHING
}

/* 80875EA0-80875FD4 0037C0 0134+00 1/1 0/0 0/0 .text            daMP_VideoDecoderForOnMemory__FPv
 */
static void daMP_VideoDecoderForOnMemory(void* param_0) {
    // NONMATCHING
}

/* 80875FD4-808760EC 0038F4 0118+00 1/1 0/0 0/0 .text            daMP_CreateVideoDecodeThread__FlPUc
 */
static int daMP_CreateVideoDecodeThread(s32 param_0, u8* param_1) {
    if (param_1 != NULL) {
        if (!OSCreateThread(&daMP_VideoDecodeThread, (void*(*)(void*))daMP_VideoDecoderForOnMemory, param_1, daMP_VideoDecodeThreadStack + sizeof(daMP_VideoDecodeThreadStack), sizeof(daMP_VideoDecodeThreadStack), param_0, 1)) {
            OSReport("Can't create video decode thread\n");
            return 0;
        }
    } else {
        if (!OSCreateThread(&daMP_VideoDecodeThread, (void*(*)(void*))daMP_VideoDecoder, NULL, daMP_VideoDecodeThreadStack + sizeof(daMP_VideoDecodeThreadStack), sizeof(daMP_VideoDecodeThreadStack), param_0, 1)) {
            OSReport("Can't create video decode thread\n");
            return 0;
        }
    }

    OSInitMessageQueue(&daMP_FreeTextureSetQueue, daMP_FreeTextureSetMessage, 3);
    OSInitMessageQueue(&daMP_DecodedTextureSetQueue, daMP_DecodedTextureSetMessage, 3);

    daMP_First = daMP_VideoDecodeThreadCreated = TRUE;
    return 1;
}

/* 808760EC-80876124 003A0C 0038+00 1/1 0/0 0/0 .text            daMP_VideoDecodeThreadStart__Fv */
static void daMP_VideoDecodeThreadStart() {
    if (daMP_VideoDecodeThreadCreated) {
        OSResumeThread(&daMP_VideoDecodeThread);
    }
}

/* 80876124-80876168 003A44 0044+00 1/1 0/0 0/0 .text            daMP_VideoDecodeThreadCancel__Fv */
void daMP_VideoDecodeThreadCancel() {
    if (daMP_VideoDecodeThreadCreated) {
        OSCancelThread(&daMP_VideoDecodeThread);
        daMP_VideoDecodeThreadCreated = FALSE;
    }
}

/* 808E0514-808E0518 066F74 0004+00 2/2 0/0 0/0 .bss             daMP_AudioDecodeThreadCreated */
static BOOL daMP_AudioDecodeThreadCreated;

/* 808E0518-808E0830 066F78 0318+00 3/3 0/0 0/0 .bss             daMP_AudioDecodeThread */
static OSThread daMP_AudioDecodeThread;

/* 808E0830-80944830 067290 64000+00 0/0 0/0 0/0 .bss             daMP_AudioDecodeThreadStack */
static u8 daMP_AudioDecodeThreadStack[0x64000];

/* 80944830-80944850 0CB290 0020+00 2/2 0/0 0/0 .bss             daMP_FreeAudioBufferQueue */
static OSMessageQueue daMP_FreeAudioBufferQueue;

/* 80876168-8087619C 003A88 0034+00 1/1 0/0 0/0 .text            daMP_PopFreeAudioBuffer__Fv */
static OSMessage daMP_PopFreeAudioBuffer() {
    OSMessage msg;
    OSReceiveMessage(&daMP_FreeAudioBufferQueue, &msg, OS_MESSAGE_BLOCK);
    return msg;
}

/* 8087619C-808761CC 003ABC 0030+00 2/2 0/0 0/0 .text            daMP_PushFreeAudioBuffer__FPv */
static void daMP_PushFreeAudioBuffer(void* param_0) {
    OSMessage msg = (OSMessage)param_0;
    OSSendMessage(&daMP_FreeAudioBufferQueue, msg, OS_MESSAGE_NOBLOCK);
}

/* 80944850-80944870 0CB2B0 0020+00 2/2 0/0 0/0 .bss             daMP_DecodedAudioBufferQueue */
static OSMessageQueue daMP_DecodedAudioBufferQueue;

/* 808761CC-80876210 003AEC 0044+00 1/1 0/0 0/0 .text            daMP_PopDecodedAudioBuffer__Fl */
static OSMessage daMP_PopDecodedAudioBuffer(s32 param_0) {
    OSMessage msg;
    if (OSReceiveMessage(&daMP_DecodedAudioBufferQueue, &msg, param_0) == 1) {
        return msg;
    }

    return NULL;
}

/* 80876210-80876240 003B30 0030+00 1/1 0/0 0/0 .text            daMP_PushDecodedAudioBuffer__FPv */
static void daMP_PushDecodedAudioBuffer(void* param_0) {
    OSMessage msg = (OSMessage)param_0;
    OSSendMessage(&daMP_DecodedAudioBufferQueue, msg, OS_MESSAGE_BLOCK);
}

/* 80876240-8087631C 003B60 00DC+00 2/2 0/0 0/0 .text daMP_AudioDecode__FP18daMP_THPReadBuffer */
static void daMP_AudioDecode(daMP_THPReadBuffer* param_0) {
    // NONMATCHING
}

/* 8087631C-80876344 003C3C 0028+00 1/1 0/0 0/0 .text            daMP_AudioDecoder__FPv */
static void daMP_AudioDecoder(void* param_0) {
    while (1) {
        void* var_r31 = daMP_PopReadedBuffer();
        daMP_AudioDecode((daMP_THPReadBuffer*)var_r31);
        daMP_PushReadedBuffer2(var_r31);
    }
}

/* 80876344-808763EC 003C64 00A8+00 1/1 0/0 0/0 .text            daMP_AudioDecoderForOnMemory__FPv
 */
static void daMP_AudioDecoderForOnMemory(void* param_0) {
    // NONMATCHING
}

/* 80944870-8094487C 0CB2D0 000C+00 0/0 0/0 0/0 .bss             daMP_FreeAudioBufferMessage */
static OSMessage daMP_FreeAudioBufferMessage[3];

/* 8094487C-80944888 0CB2DC 000C+00 0/0 0/0 0/0 .bss             daMP_DecodedAudioBufferMessage */
static OSMessage daMP_DecodedAudioBufferMessage[3];

/* 808763EC-808764E8 003D0C 00FC+00 1/1 0/0 0/0 .text            daMP_CreateAudioDecodeThread__FlPUc
 */
static int daMP_CreateAudioDecodeThread(s32 param_0, u8* param_1) {
    if (param_1 != NULL) {
        if (!OSCreateThread(&daMP_AudioDecodeThread, (void*(*)(void*))daMP_AudioDecoderForOnMemory, param_1, daMP_AudioDecodeThreadStack + sizeof(daMP_AudioDecodeThreadStack), sizeof(daMP_AudioDecodeThreadStack), param_0, 1)) {
            return 0;
        }
    } else {
        if (!OSCreateThread(&daMP_AudioDecodeThread, (void*(*)(void*))daMP_AudioDecoder, NULL, daMP_AudioDecodeThreadStack + sizeof(daMP_AudioDecodeThreadStack), sizeof(daMP_AudioDecodeThreadStack), param_0, 1)) {
            OSReport("Can't create audio decode thread\n");
            return 0;
        }
    }

    OSInitMessageQueue(&daMP_FreeAudioBufferQueue, daMP_FreeAudioBufferMessage, 3);
    OSInitMessageQueue(&daMP_DecodedAudioBufferQueue, daMP_DecodedAudioBufferMessage, 3);

    daMP_AudioDecodeThreadCreated = TRUE;
    return 1;
}

/* 808764E8-80876520 003E08 0038+00 1/1 0/0 0/0 .text            daMP_AudioDecodeThreadStart__Fv */
void daMP_AudioDecodeThreadStart() {
    if (daMP_AudioDecodeThreadCreated) {
        OSResumeThread(&daMP_AudioDecodeThread);
    }
}

/* 80876520-80876564 003E40 0044+00 1/1 0/0 0/0 .text            daMP_AudioDecodeThreadCancel__Fv */
void daMP_AudioDecodeThreadCancel() {
    if (daMP_AudioDecodeThreadCreated) {
        OSCancelThread(&daMP_AudioDecodeThread);
        daMP_AudioDecodeThreadCreated = FALSE;
    }
}

/* 80876564-8087667C 003E84 0118+00 1/1 0/0 0/0 .text            daMP_THPGXRestore__Fv */
static void daMP_THPGXRestore() {
    GXSetZMode(GX_ENABLE, GX_ALWAYS, GX_DISABLE);
    GXSetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ZERO, GX_LO_SET);
    GXSetNumTexGens(1);
    GXSetNumChans(0);
    GXSetNumTevStages(1);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
    GXSetTevOp(GX_TEVSTAGE0, GX_REPLACE);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevSwapMode(GX_TEVSTAGE2, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevSwapMode(GX_TEVSTAGE3, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP1, GX_CH_RED, GX_CH_RED, GX_CH_RED, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GX_TEV_SWAP2, GX_CH_GREEN, GX_CH_GREEN, GX_CH_GREEN, GX_CH_ALPHA);
    GXSetTevSwapModeTable(GXTevSwapSel(GX_TEV_SWAP1|GX_TEV_SWAP2), GX_CH_BLUE, GX_CH_BLUE, GX_CH_BLUE, GX_CH_ALPHA);
}

static f32 dummyLiteral() {
    f32 temp = 100.0f;
    temp += 60.0f;
    return temp;
}

/* 8087667C-80876BA8 003F9C 052C+00 1/1 0/0 0/0 .text
 * daMP_THPGXYuv2RgbSetup__FPC16_GXRenderModeObj                */
// NONMATCHING - stack slightly too small
static void daMP_THPGXYuv2RgbSetup(GXRenderModeObj const* param_0) {
    int width = param_0->fbWidth;
    int height = param_0->efbHeight;
    f32 var_f31 = 0.0f;
    Mtx sp50;
    Mtx sp20;

    GXSetPixelFmt(GX_PF_RGB8_Z24, GX_ZC_LINEAR);
    C_MTXOrtho(sp50, var_f31, height - var_f31, 0.0f, width, 0.0f, -1.0f);
    GXSetProjection(sp50, GX_ORTHOGRAPHIC);
    GXSetViewport(0.0f, 0.0f, width, height, 0.0f, 1.0f);
    GXSetScissor(0, 0, width, height);
    MTXIdentity(sp20);
    GXLoadPosMtxImm(sp20, GX_PNMTX0);
    GXSetCurrentMtx(0);
    GXSetZCompLoc(GX_TRUE);
    GXSetZMode(GX_ENABLE, GX_ALWAYS, GX_DISABLE);
    GXSetBlendMode(GX_BM_NONE, GX_BL_ONE, GX_BL_ZERO, GX_LO_CLEAR);
    GXSetAlphaCompare(GX_ALWAYS, 0, GX_AOP_OR, GX_ALWAYS, 0);
    GXSetFog(GX_FOG_NONE, 0.0f, 0.0f, 0.0f, 0.0f, g_clearColor);
    GXSetFogRangeAdj(GX_DISABLE, 0, NULL);
    GXSetCullMode(GX_CULL_NONE);
    GXSetDither(GX_ENABLE);
    GXSetColorUpdate(GX_ENABLE);
    GXSetAlphaUpdate(GX_DISABLE);
    GXSetNumIndStages(0);
    GXSetNumChans(0);
    GXSetNumTexGens(2);
    GXSetTexCoordGen(GX_TEXCOORD0, GX_TG_MTX2x4, GX_TG_TEX0, 60);
    GXSetTexCoordGen(GX_TEXCOORD1, GX_TG_MTX2x4, GX_TG_TEX0, 60);
    GXInvalidateTexAll();
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_TEX0, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT7, GX_VA_POS, GX_CLR_RGBA, GX_RGBA4, 0);
    GXSetVtxAttrFmt(GX_VTXFMT7, GX_VA_TEX0, GX_CLR_RGBA, GX_RGBX8, 0);
    GXSetNumTevStages(4);
    GXSetTevOrder(GX_TEVSTAGE0, GX_TEXCOORD1, GX_TEXMAP1, GX_COLOR_NULL);
    GXSetTevColorIn(GX_TEVSTAGE0, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_C0);
    GXSetTevColorOp(GX_TEVSTAGE0, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE0, GX_CA_ZERO, GX_CA_TEXA, GX_CA_KONST, GX_CA_A0);
    GXSetTevAlphaOp(GX_TEVSTAGE0, GX_TEV_SUB, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
    GXSetTevKColorSel(GX_TEVSTAGE0, GX_TEV_KCSEL_K0);
    GXSetTevKAlphaSel(GX_TEVSTAGE0, GX_TEV_KASEL_K0_A);
    GXSetTevSwapMode(GX_TEVSTAGE0, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevOrder(GX_TEVSTAGE1, GX_TEXCOORD1, GX_TEXMAP2, GX_COLOR_NULL);
    GXSetTevColorIn(GX_TEVSTAGE1, GX_CC_ZERO, GX_CC_TEXC, GX_CC_KONST, GX_CC_CPREV);
    GXSetTevColorOp(GX_TEVSTAGE1, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_2, GX_FALSE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE1, GX_CA_ZERO, GX_CA_TEXA, GX_CA_KONST, GX_CA_APREV);
    GXSetTevAlphaOp(GX_TEVSTAGE1, GX_TEV_SUB, GX_TB_ZERO, GX_CS_SCALE_1, GX_FALSE, GX_TEVPREV);
    GXSetTevKColorSel(GX_TEVSTAGE1, GX_TEV_KCSEL_K1);
    GXSetTevKAlphaSel(GX_TEVSTAGE1, GX_TEV_KASEL_K1_A);
    GXSetTevSwapMode(GX_TEVSTAGE1, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevOrder(GX_TEVSTAGE2, GX_TEXCOORD0, GX_TEXMAP0, GX_COLOR_NULL);
    GXSetTevColorIn(GX_TEVSTAGE2, GX_CC_ZERO, GX_CC_TEXC, GX_CC_ONE, GX_CC_CPREV);
    GXSetTevColorOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE2, GX_CA_TEXA, GX_CA_ZERO, GX_CA_ZERO, GX_CA_APREV);
    GXSetTevAlphaOp(GX_TEVSTAGE2, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevSwapMode(GX_TEVSTAGE2, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevOrder(GX_TEVSTAGE3, GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL);
    GXSetTevColorIn(GX_TEVSTAGE3, GX_CC_APREV, GX_CC_CPREV, GX_CC_KONST, GX_CC_ZERO);
    GXSetTevColorOp(GX_TEVSTAGE3, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevAlphaIn(GX_TEVSTAGE3, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO, GX_CA_ZERO);
    GXSetTevAlphaOp(GX_TEVSTAGE3, GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, GX_TRUE, GX_TEVPREV);
    GXSetTevSwapMode(GX_TEVSTAGE3, GX_TEV_SWAP0, GX_TEV_SWAP0);
    GXSetTevKColorSel(GX_TEVSTAGE3, GX_TEV_KCSEL_K2);

    GXColorS10 spA8 = {-0x5A, 0x00, -0x72, 0x87};
    GXSetTevColorS10(GX_TEVREG0, spA8);

    GXColor spB0 = {0x00, 0x00, 0xE2, 0x58};
    GXSetTevKColor(GX_KCOLOR0, spB0);

    GXColor spB4 = {0xB3, 0x00, 0x00, 0xB6};
    GXSetTevKColor(GX_KCOLOR1, spB4);

    GXColor spB8 = {0xFF, 0x00, 0xFF, 0x80};
    GXSetTevKColor(GX_KCOLOR2, spB8);

    GXSetTevSwapModeTable(GX_TEV_SWAP0, GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA);
}

/* 80876BD0-80876DE4 0044F0 0214+00 1/1 0/0 0/0 .text daMP_THPGXYuv2RgbDraw__FPUcPUcPUcssssss */
static void daMP_THPGXYuv2RgbDraw(u8* param_0, u8* param_1, u8* param_2, s16 param_3,
                                      s16 param_4, s16 param_5, s16 param_6, s16 param_7,
                                      s16 param_8) {
    GXTexObj sp48;
    GXTexObj sp28;
    GXTexObj sp8;

    GXInitTexObj(&sp48, param_0, param_5, param_6, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_FALSE);
    GXInitTexObjLOD(&sp48, GX_NEAR, GX_NEAR, 0.0f, 0.0f, 0.0f, 0, 0, GX_ANISO_1);
    GXLoadTexObj(&sp48, GX_TEXMAP0);

    GXInitTexObj(&sp28, param_1, param_5 >> 1, param_6 >> 1, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_FALSE);
    GXInitTexObjLOD(&sp28, GX_NEAR, GX_NEAR, 0.0f, 0.0f, 0.0f, 0, 0, GX_ANISO_1);
    GXLoadTexObj(&sp28, GX_TEXMAP1);

    GXInitTexObj(&sp8, param_2, param_5 >> 1, param_6 >> 1, GX_TF_I8, GX_CLAMP, GX_CLAMP, GX_FALSE);
    GXInitTexObjLOD(&sp8, GX_NEAR, GX_NEAR, 0.0f, 0.0f, 0.0f, 0, 0, GX_ANISO_1);
    GXLoadTexObj(&sp8, GX_TEXMAP2);

    GXBegin(GX_QUADS, GX_VTXFMT7, 4);
    GXPosition3s16(param_3, param_4, 0);
    GXTexCoord2u16(0, 0);
    GXPosition3s16(param_3 + param_7, param_4, 0);
    GXTexCoord2u16(1, 0);
    GXPosition3s16(param_3 + param_7, param_4 + param_8, 0);
    GXTexCoord2u16(1, 1);
    GXPosition3s16(param_3, param_4 + param_8, 0);
    GXTexCoord2u16(0, 1);
    GXEnd();
}

/* 80879114-80879118 0000E0 0004+00 1/1 0/0 0/0 .rodata          @4894 */
SECTION_RODATA static f32 const lit_4894 = 7.0f / 10.0f;
COMPILER_STRIP_GATE(0x80879114, &lit_4894);

/* 80879434-80879534 000000 0100+00 1/1 0/0 0/0 .data            daMP_VolumeTable */
SECTION_DATA static u16 daMP_VolumeTable[] = {
    0x0000, 0x0002, 0x0008, 0x0012, 0x0020, 0x0032, 0x0049, 0x0063,
    0x0082, 0x00A4, 0x00CB, 0x00F5, 0x0124, 0x0157, 0x018E, 0x01C9,
    0x0208, 0x024B, 0x0292, 0x02DD, 0x032C, 0x037F, 0x03D7, 0x0432,
    0x0492, 0x04F5, 0x055D, 0x05C9, 0x0638, 0x06AC, 0x0724, 0x07A0,
    0x0820, 0x08A4, 0x092C, 0x09B8, 0x0A48, 0x0ADD, 0x0B75, 0x0C12,
    0x0CB2, 0x0D57, 0x0DFF, 0x0EAC, 0x0F5D, 0x1012, 0x10CA, 0x1187,
    0x1248, 0x130D, 0x13D7, 0x14A4, 0x1575, 0x164A, 0x1724, 0x1801,
    0x18E3, 0x19C8, 0x1AB2, 0x1BA0, 0x1C91, 0x1D87, 0x1E81, 0x1F7F,
    0x2081, 0x2187, 0x2291, 0x239F, 0x24B2, 0x25C8, 0x26E2, 0x2801,
    0x2923, 0x2A4A, 0x2B75, 0x2CA3, 0x2DD6, 0x2F0D, 0x3048, 0x3187,
    0x32CA, 0x3411, 0x355C, 0x36AB, 0x37FF, 0x3956, 0x3AB1, 0x3C11,
    0x3D74, 0x3EDC, 0x4048, 0x41B7, 0x432B, 0x44A3, 0x461F, 0x479F,
    0x4923, 0x4AAB, 0x4C37, 0x4DC7, 0x4F5C, 0x50F4, 0x5290, 0x5431,
    0x55D6, 0x577E, 0x592B, 0x5ADC, 0x5C90, 0x5E49, 0x6006, 0x61C7,
    0x638C, 0x6555, 0x6722, 0x68F4, 0x6AC9, 0x6CA2, 0x6E80, 0x7061,
    0x7247, 0x7430, 0x761E, 0x7810, 0x7A06, 0x7C00, 0x7DFE, 0x8000,
};

/* 80876E0C-80877074 00472C 0268+00 1/1 0/0 0/0 .text            daMP_MixAudio__FPsPsUl */
static void daMP_MixAudio(s16* param_0, s16* param_1, u32 param_2) {
    // NONMATCHING
}

/* 80944888-809448A0 0CB2E8 0004+14 3/3 0/0 0/0 .bss             daMP_Initialized */
static BOOL daMP_Initialized;

/* 809448A0-809448E0 0CB300 0040+00 2/2 0/0 0/0 .bss             daMP_WorkBuffer */
static u8 daMP_WorkBuffer[0x40] ALIGN_DECL(32);

/* 809448E0-80944900 0CB340 0020+00 3/3 0/0 0/0 .bss             daMP_PrepareReadyQueue */
static OSMessageQueue daMP_PrepareReadyQueue;

/* 80944900-80944920 0CB360 0020+00 2/2 0/0 0/0 .bss             daMP_UsedTextureSetQueue */
static OSMessageQueue daMP_UsedTextureSetQueue;

/* 80944920-80944924 0CB380 0004+00 1/1 0/0 0/0 .bss             daMP_PrepareReadyMessage */
static OSMessage daMP_PrepareReadyMessage;

/* 80944924-80944930 0CB384 000C+00 0/0 0/0 0/0 .bss             daMP_UsedTextureSetMessage */
static OSMessage daMP_UsedTextureSetMessage[3];

/* 80944930-80944934 0CB390 0004+00 3/3 0/0 0/0 .bss             daMP_OldVIPostCallback */
static VIRetraceCallback daMP_OldVIPostCallback;

/* 80944934-80944938 0CB394 0004+00 1/1 0/0 0/0 .bss             daMP_SoundBufferIndex */
static u32 daMP_SoundBufferIndex;

/* 80944938-8094493C 0CB398 0004+00 0/0 0/0 0/0 .bss             daMP_OldAIDCallback */
static u32 daMP_OldAIDCallback;

/* 8094493C-80944940 0CB39C 0004+00 0/0 0/0 0/0 .bss             daMP_LastAudioBuffer */
static void* daMP_LastAudioBuffer;

/* 80944940-80944944 0CB3A0 0004+00 0/0 0/0 0/0 .bss             daMP_CurAudioBuffer */
static void* daMP_CurAudioBuffer;

/* 80944944-80944960 0CB3A4 0004+18 0/0 0/0 0/0 .bss             daMP_AudioSystem */
static s32 daMP_AudioSystem;

/* 80944960-80945AE0 0CB3C0 1180+00 1/1 0/0 0/0 .bss             daMP_SoundBuffer */
static u8 daMP_SoundBuffer[2][0x8C0] ALIGN_DECL(32);

/* 80877074-8087712C 004994 00B8+00 1/1 0/0 0/0 .text            daMP_audioCallbackWithMSound__Fl */
static s16* daMP_audioCallbackWithMSound(s32 param_0) {
    if (daMP_ActivePlayer.field_0xa0 == 0 || daMP_ActivePlayer.field_0xa5 != 2 || daMP_ActivePlayer.field_0xa7 == 0) {
        return NULL;
    }

    BOOL intr = OSEnableInterrupts();
    daMP_SoundBufferIndex ^= 1;
    daMP_MixAudio((s16*)daMP_SoundBuffer[daMP_SoundBufferIndex], NULL, param_0);
    OSRestoreInterrupts(intr);
    return (s16*)daMP_SoundBuffer[daMP_SoundBufferIndex];
}

/* 8087712C-80877158 004A4C 002C+00 1/1 0/0 0/0 .text            daMP_audioInitWithMSound__Fv */
static void daMP_audioInitWithMSound() {
    JASDriver::registerMixCallback(daMP_audioCallbackWithMSound, MIX_MODE_INTERLEAVE);
}

/* 80877158-80877180 004A78 0028+00 2/2 0/0 0/0 .text            daMP_audioQuitWithMSound__Fv */
static void daMP_audioQuitWithMSound() {
    JASDriver::registerMixCallback(NULL, MIX_MODE_MONO);
}

/* 80877180-808771B0 004AA0 0030+00 1/1 0/0 0/0 .text            daMP_PushUsedTextureSet__FPv */
static void daMP_PushUsedTextureSet(void* param_0) {
    OSMessage msg = (OSMessage)param_0;
    OSSendMessage(&daMP_UsedTextureSetQueue, msg, OS_MESSAGE_NOBLOCK);
}

/* 808771B0-808771F4 004AD0 0044+00 2/2 0/0 0/0 .text            daMP_PopUsedTextureSet__Fv */
static OSMessage daMP_PopUsedTextureSet() {
    OSMessage msg;
    if (OSReceiveMessage(&daMP_DecodedAudioBufferQueue, &msg, OS_MESSAGE_NOBLOCK) == 1) {
        return msg;
    }

    return NULL;
}

/* 808771F4-808772CC 004B14 00D8+00 1/1 0/0 0/0 .text            daMP_THPPlayerInit__Fl */
static int daMP_THPPlayerInit(s32 param_0) {
    // NONMATCHING
    memset(&daMP_ActivePlayer, 0, sizeof(daMP_ActivePlayer));
    LCEnable();

    OSInitMessageQueue(&daMP_UsedTextureSetQueue, daMP_UsedTextureSetMessage, 3);

    if (!THPInit()) {
        return 0;
    }

    BOOL enable = OSDisableInterrupts();
    daMP_AudioSystem = param_0;
    daMP_SoundBufferIndex = 0;
    daMP_LastAudioBuffer = NULL;
    daMP_CurAudioBuffer = NULL;
    daMP_audioInitWithMSound();
    OSRestoreInterrupts(enable);

    if (daMP_AudioSystem == 0) {
        memset(daMP_SoundBuffer, 0, sizeof(daMP_SoundBuffer));
        DCStoreRange(daMP_SoundBuffer, sizeof(daMP_SoundBuffer));
    }

    daMP_Initialized = TRUE;
    return 1;
}

/* 808772CC-8087730C 004BEC 0040+00 1/1 0/0 0/0 .text            daMP_THPPlayerQuit__Fv */
static void daMP_THPPlayerQuit() {
    LCDisable();
    daMP_audioQuitWithMSound();
    daMP_Initialized = FALSE;
    daMP_ActivePlayer.field_0xa8 = 0;
    daMP_ActivePlayer.field_0xac = 0;
}

/* 8087730C-808776EC 004C2C 03E0+00 1/1 0/0 0/0 .text            daMP_THPPlayerOpen__FPCci */
// NONMATCHING - regalloc, some missing instructions
static BOOL daMP_THPPlayerOpen(char const* filename, int param_1) {
    if (!daMP_Initialized) {
        OSReport("You must call daMP_THPPlayerInit before you call this function\n");
        return 0;
    }

    if (daMP_ActivePlayer.field_0xa0 != 0) {
        OSReport("Can't open %s. Because thp file have already opened.\n");
        return 0;
    }

    THPVideoInfo* temp_r29 = &daMP_ActivePlayer.mVideoInfo;
    memset(temp_r29, 0, sizeof(THPVideoInfo));
    memset(&daMP_ActivePlayer.mAudioInfo, 0, sizeof(THPAudioInfo));

    if (!DVDOpen(filename, &daMP_ActivePlayer.mFileInfo)) {
        OSReport("Can't open %s.\n", filename);
        return 0;
    }

    if (DVDReadPrio(&daMP_ActivePlayer.mFileInfo, daMP_WorkBuffer, sizeof(daMP_WorkBuffer), 0, 2) < 0) {
        OSReport("Fail to read the header from THP file.\n");
        DVDClose(&daMP_ActivePlayer.mFileInfo);
        return 0;
    }

    char* temp_r23 = (char*)&daMP_ActivePlayer.field_0x3c;
    memcpy(temp_r23, daMP_WorkBuffer, 0x30);

    if (strcmp(temp_r23, "THP") != 0) {
        OSReport("This file is not THP file.\n");
        DVDClose(&daMP_ActivePlayer.mFileInfo);
        return 0;
    }

    if (daMP_ActivePlayer.field_0x40 != 0x11000) {
        OSReport("invalid version.\n");
        DVDClose(&daMP_ActivePlayer.mFileInfo);
        return 0;
    }

    s32 var_r26 = daMP_ActivePlayer.field_0x5c;

    if (DVDReadPrio(&daMP_ActivePlayer.mFileInfo, daMP_WorkBuffer, 0x20, var_r26, 2) < 0) {
        OSReport("Fail to read the frame component infomation from THP file.\n");
        DVDClose(&daMP_ActivePlayer.mFileInfo);
        return 0;
    }

    memcpy(&daMP_ActivePlayer.field_0x6c, daMP_WorkBuffer, 0x14);
    var_r26 += 0x14;

    daMP_ActivePlayer.field_0xa7 = 0;

    for (int i = 0; i < daMP_ActivePlayer.field_0x6c._0; i++) {
        switch (daMP_ActivePlayer.field_0x6c._4) {
        case 0:
            if (DVDReadPrio(&daMP_ActivePlayer.mFileInfo, daMP_WorkBuffer, 0x20, var_r26, 2) < 0) {
                OSReport("Fail to read the video infomation from THP file.\n");
                DVDClose(&daMP_ActivePlayer.mFileInfo);
                return 0;
            }

            memcpy(temp_r29, daMP_WorkBuffer, sizeof(THPVideoInfo));
            var_r26 += 0xC;
            break;
        case 1:
            if (DVDReadPrio(&daMP_ActivePlayer.mFileInfo, daMP_WorkBuffer, 0x20, var_r26, 2) < 0) {
                OSReport("Fail to read the video infomation from THP file.\n");
                DVDClose(&daMP_ActivePlayer.mFileInfo);
                return 0;
            }

            memcpy(&daMP_ActivePlayer.mAudioInfo, daMP_WorkBuffer, sizeof(THPAudioInfo));
            daMP_ActivePlayer.field_0xa7 = 1;
            var_r26 += 0x10;
            break;
        default:
            OSReport("Unknow frame components.\n");
            return 0;
        }
    }

    daMP_ActivePlayer.field_0xa5 = 0;
    daMP_ActivePlayer.mState = 0;
    daMP_ActivePlayer.field_0xa6 = 0;
    daMP_ActivePlayer.field_0xb0 = param_1;
    daMP_ActivePlayer.field_0xa0 = 1;
    daMP_ActivePlayer.field_0xdc = 127.0f;
    daMP_ActivePlayer.field_0xe0 = 127.0f;
    daMP_ActivePlayer.field_0xe8 = 0;
    return 1;
}

/* 808776EC-80877740 00500C 0054+00 2/2 0/0 0/0 .text            daMP_THPPlayerClose__Fv */
static int daMP_THPPlayerClose() {
    if (daMP_ActivePlayer.field_0xa0 != 0 && daMP_ActivePlayer.mState == 0) {
        daMP_ActivePlayer.field_0xa0 = 0;
        DVDClose(&daMP_ActivePlayer.mFileInfo);
        return 1;
    }

    return 0;
}

/* 80877740-808777F0 005060 00B0+00 1/1 0/0 0/0 .text            daMP_THPPlayerCalcNeedMemory__Fv */
static u32 daMP_THPPlayerCalcNeedMemory() {
    // NONMATCHING
}

/* 808777F0-80877A08 005110 0218+00 1/1 0/0 0/0 .text            daMP_THPPlayerSetBuffer__FPUc */
static void daMP_THPPlayerSetBuffer(u8* param_0) {
    // NONMATCHING
}

/* 80877A08-80877ADC 005328 00D4+00 1/1 0/0 0/0 .text            daMP_InitAllMessageQueue__Fv */
static void daMP_InitAllMessageQueue() {
    // NONMATCHING
}

/* 80877ADC-80877B48 0053FC 006C+00 1/1 0/0 0/0 .text            daMP_ProperTimingForStart__Fv */
static void daMP_ProperTimingForStart() {
    // NONMATCHING
}

/* 80877B48-80877C8C 005468 0144+00 1/1 0/0 0/0 .text daMP_ProperTimingForGettingNextFrame__Fv */
static void daMP_ProperTimingForGettingNextFrame() {
    // NONMATCHING
}

/* 80877C8C-80877F48 0055AC 02BC+00 1/1 0/0 0/0 .text            daMP_PlayControl__FUl */
static void daMP_PlayControl(u32 param_0) {
    // NONMATCHING
}

/* 80877F48-80877F88 005868 0040+00 1/1 0/0 0/0 .text            daMP_WaitUntilPrepare__Fv */
s32 daMP_WaitUntilPrepare() {
    OSMessage msg;
    OSReceiveMessage(&daMP_PrepareReadyQueue, &msg, 1);
    u32 temp = (s32)msg;
    return (-temp | temp) >> 31; // fakematch? should be temp != 0;
}

/* 80877F88-80877FB8 0058A8 0030+00 2/2 0/0 0/0 .text            daMP_PrepareReady__Fi */
void daMP_PrepareReady(int r3) {
    OSMessage msg = (OSMessage)r3;
    OSSendMessage(&daMP_PrepareReadyQueue, msg, 1);
}

/* 8087911C-8087911C 0000E8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */
#pragma push
#pragma force_active on
SECTION_DEAD static char const* const stringBase_808792E2 =
    "This thp file doesn't have the offset data\n";
SECTION_DEAD static char const* const stringBase_8087930E =
    "Fail to read the offset data from THP file.\n";
SECTION_DEAD static char const* const stringBase_8087933B =
    "Specified frame number is over total frame numbe"
    "r\n";
SECTION_DEAD static char const* const stringBase_8087936E =
    "Specified audio track number is invalid\n";
SECTION_DEAD static char const* const stringBase_80879397 =
    "Fail to read all movie data from THP file\n";
#pragma pop

/* 80877FB8-808782A0 0058D8 02E8+00 1/1 0/0 0/0 .text            daMP_THPPlayerPrepare__Flll */
static BOOL daMP_THPPlayerPrepare(s32 param_0, s32 param_1, s32 param_2) {
    // NONMATCHING
}

/* 808782A0-808782E4 005BC0 0044+00 1/1 0/0 0/0 .text            daMP_THPPlayerDrawDone__Fv */
static void daMP_THPPlayerDrawDone() {
    GXDrawDone();

    if (daMP_Initialized) {
        while (1) {
            void* temp_r3 = daMP_PopUsedTextureSet();
            if (temp_r3 == NULL) {
                break;
            }
            daMP_PushFreeTextureSet(temp_r3);
        }
    }
}

/* 808782E4-80878344 005C04 0060+00 1/1 0/0 0/0 .text            daMP_THPPlayerPlay__Fv */
static int daMP_THPPlayerPlay() {
    if (daMP_ActivePlayer.field_0xa0 != 0 && (daMP_ActivePlayer.mState == 1 || daMP_ActivePlayer.mState == 4)) {
        daMP_ActivePlayer.mState = 2;
        daMP_ActivePlayer.field_0xd0 = 0;
        daMP_ActivePlayer.field_0xd4 = 0;
        daMP_ActivePlayer.field_0xc8 = -1;
        return 1;
    }

    return 0;
}

/* 80878344-808783FC 005C64 00B8+00 3/3 0/0 0/0 .text            daMP_THPPlayerStop__Fv */
static void daMP_THPPlayerStop() {
    if (daMP_ActivePlayer.field_0xa0 != 0 && daMP_ActivePlayer.mState != 0) {
        daMP_ActivePlayer.field_0xa5 = 0;
        daMP_ActivePlayer.mState = 0;

        VISetPostRetraceCallback(daMP_OldVIPostCallback);

        if (daMP_ActivePlayer.field_0xb0 == 0) {
            DVDCancel(&daMP_ActivePlayer.mFileInfo.cb);
            daMP_ReadThreadCancel();
        }

        daMP_VideoDecodeThreadCancel();

        if (daMP_ActivePlayer.field_0xa7 != 0) {
            daMP_AudioDecodeThreadCancel();
            daMP_audioQuitWithMSound();
        }

        while (daMP_PopUsedTextureSet() != NULL) {}

        daMP_ActivePlayer.field_0xdc = daMP_ActivePlayer.field_0xe0;
        daMP_ActivePlayer.field_0xe8 = 0.0f;
    }
}

/* 808783FC-80878438 005D1C 003C+00 1/1 0/0 0/0 .text            daMP_THPPlayerPause__Fv */
static int daMP_THPPlayerPause() {
    if (daMP_ActivePlayer.field_0xa0 != 0 && daMP_ActivePlayer.mState == 2) {
        daMP_ActivePlayer.field_0xa5 = 4;
        daMP_ActivePlayer.mState = 4;
        return 1;
    }

    return 0;
}

/* 80878438-80878534 005D58 00FC+00 1/1 0/0 0/0 .text
 * daMP_THPPlayerDrawCurrentFrame__FPC16_GXRenderModeObjUlUlUlUl */
static int daMP_THPPlayerDrawCurrentFrame(_GXRenderModeObj const* param_0, u32 param_1,
                                               u32 param_2, u32 param_3, u32 param_4) {
    // NONMATCHING
}

/* 80878568-808785B0 005E88 0048+00 1/1 0/0 0/0 .text daMP_THPPlayerGetVideoInfo__FP12THPVideoInfo
 */
static int daMP_THPPlayerGetVideoInfo(THPVideoInfo* info) {
    if (daMP_ActivePlayer.field_0xa0 != 0) {
        memcpy(info, &daMP_ActivePlayer.mVideoInfo, sizeof(THPVideoInfo));
        return 1;
    }

    return 0;
}

/* 808785B0-808785F8 005ED0 0048+00 1/1 0/0 0/0 .text daMP_THPPlayerGetAudioInfo__FP12THPAudioInfo
 */
static int daMP_THPPlayerGetAudioInfo(THPAudioInfo* info) {
    if (daMP_ActivePlayer.field_0xa0 != 0) {
        memcpy(info, &daMP_ActivePlayer.mAudioInfo, sizeof(THPAudioInfo));
        return 1;
    }

    return 0;
}

/* 808785F8-8087861C 005F18 0024+00 2/2 0/0 0/0 .text            daMP_THPPlayerGetTotalFrame__Fv */
static u32 daMP_THPPlayerGetTotalFrame() {
    if (daMP_ActivePlayer.field_0xa0 != 0) {
        return daMP_ActivePlayer.mTotalFrames;
    }

    return 0;
}

/* 8087861C-8087862C 005F3C 0010+00 2/2 0/0 0/0 .text            daMP_THPPlayerGetState__Fv */
static int daMP_THPPlayerGetState() {
    return daMP_ActivePlayer.mState;
}

/* 8087862C-80878758 005F4C 012C+00 1/1 0/0 0/0 .text            daMP_THPPlayerSetVolume__Fll */
static void daMP_THPPlayerSetVolume(s32 param_0, s32 param_1) {
    // NONMATCHING
}

/* 80945AE0-80945AEC 0CC540 000C+00 1/1 0/0 0/0 .bss             daMP_videoInfo */
static THPVideoInfo daMP_videoInfo;

/* 80945AEC-80945AFC 0CC54C 0010+00 0/0 0/0 0/0 .bss             daMP_audioInfo */
static THPAudioInfo daMP_audioInfo;

/* 80945AFC-80945B00 0CC55C 0004+00 1/1 0/0 0/0 .bss             daMP_DrawPosX */
static u32 daMP_DrawPosX;

/* 80945B00-80945B04 0CC560 0004+00 1/1 0/0 0/0 .bss             daMP_DrawPosY */
static u32 daMP_DrawPosY;

/* 80945B04-80945B08 0CC564 0004+00 2/2 0/0 0/0 .bss             daMP_buffer */
static void* daMP_buffer;

/* 80878758-808788BC 006078 0164+00 1/1 0/0 0/0 .text            daMP_ActivePlayer_Init__FPCc */
static BOOL daMP_ActivePlayer_Init(char const* moviePath) {
    daMP_THPPlayerInit(0);
    
    if (!daMP_THPPlayerOpen(moviePath, 0)) {
        OSReport("Fail to open the thp file\n");
        JUT_ASSERT(0, 0);
        return 0;
    }

    daMP_THPPlayerGetVideoInfo(&daMP_videoInfo);
    daMP_THPPlayerGetAudioInfo(&daMP_audioInfo);

    u16 var_r31 = JUTVideo::getManager()->getRenderMode()->fbWidth;
    u16 temp_r4 = JUTVideo::getManager()->getRenderMode()->efbHeight;

    daMP_DrawPosX = (var_r31 - daMP_videoInfo.field_0x0) >> 1;
    daMP_DrawPosY = (temp_r4 - daMP_videoInfo.field_0x4) >> 1;

    // "The memory needed for this THP movie is %d bytes\n"
    OS_REPORT("このＴＨＰムービーが必要なメモリは%dバイトです\n", daMP_THPPlayerCalcNeedMemory());

    daMP_buffer = mDoExt_getArchiveHeap()->alloc(daMP_THPPlayerCalcNeedMemory(), 0x20);
    if (daMP_buffer == NULL) {
        OSReport("Can't allocate the memory");
        JUT_ASSERT(0, 0);
        return 0;
    }

    daMP_THPPlayerSetBuffer((u8*)daMP_buffer);

    if (!daMP_THPPlayerPrepare(0, 0, daMP_audioInfo.field_0xc != 1 ? OSGetTick() % daMP_audioInfo.field_0xc : 0)) {
        OSReport("Fail to prepare\n");
        JUT_ASSERT(0, 0);
        return 0;
    }

    return 1;
}

/* 808788D4-80878914 0061F4 0040+00 1/1 0/0 0/0 .text            daMP_ActivePlayer_Finish__Fv */
static void daMP_ActivePlayer_Finish() {
    daMP_THPPlayerStop();
    daMP_THPPlayerClose();
    daMP_THPPlayerQuit();

    if (daMP_buffer != NULL) {
        JKRFree(daMP_buffer);
    }
}

/* 80878938-80878994 006258 005C+00 1/1 0/0 0/0 .text            daMP_ActivePlayer_Main__Fv */
static void daMP_ActivePlayer_Main() {
    if (daMP_THPPlayerGetState() == 5) {
        daMP_THPPlayerStop();
        daMP_THPPlayerClose();

        if (daMP_buffer != NULL) {
            JKRFree(daMP_buffer);
        }

        OSReport("Error happen");
    }
}

/* 80878994-80878A34 0062B4 00A0+00 1/1 0/0 0/0 .text            daMP_ActivePlayer_Draw__Fv */
static void daMP_ActivePlayer_Draw() {
    int var_r31 = daMP_THPPlayerDrawCurrentFrame(JUTVideo::getManager()->getRenderMode(), daMP_DrawPosX, daMP_DrawPosY, daMP_videoInfo.field_0x0, daMP_videoInfo.field_0x4);
    daMP_THPPlayerDrawDone();

    if (!fopOvlpM_IsPeek() && var_r31 > 0 && (cAPICPad_ANY_BUTTON(0) || !daMP_c::daMP_c_Get_MovieRestFrame())) {
        dComIfGp_event_reset();
        daMP_c::daMP_c_Set_PercentMovieVolume(0.0f);
    }
}

/* 80945B08-80945B0C 0CC568 0004+00 5/5 0/0 0/0 .bss             daMP_Fail_alloc */
static BOOL daMP_Fail_alloc;

/* 80878A6C-80878B38 00638C 00CC+00 1/1 0/0 0/0 .text            daMP_Get_MovieRestFrame__Fv */
static u32 daMP_Get_MovieRestFrame() {
    // NONMATCHING
    return 0;
}

/* 80878B38-80878BB8 006458 0080+00 1/1 0/0 0/0 .text            daMP_Set_PercentMovieVolume__Ff */
static void daMP_Set_PercentMovieVolume(f32 param_0) {
    if (!daMP_Fail_alloc) {
        s32 var_r3;
        if (param_0 >= 1.0f) {
            var_r3 = 127;
        } else if (param_0 <= 0.0f) {
            var_r3 = 0;
        } else {
            var_r3 = param_0 / 127.0f;
        }

        daMP_THPPlayerSetVolume(var_r3, 1000);
    }
}

/* 80878BB8-80878BDC 0064D8 0024+00 1/1 0/0 0/0 .text            daMP_c_Get_arg_demoNo__6daMP_cFv */
int daMP_c::daMP_c_Get_arg_demoNo() {
    return (fopAcM_GetParam(this) >> 7) & 0x7F;
}

/* 80878C04-80878C28 006524 0024+00 1/1 0/0 0/0 .text            daMP_c_Get_arg_movieNo__6daMP_cFv
 */
int daMP_c::daMP_c_Get_arg_movieNo() {
    return fopAcM_GetParam(this) & 0x7F;
}

/* 80878C28-80878D10 006548 00E8+00 1/1 0/0 0/0 .text            daMP_c_Init__6daMP_cFv */
int daMP_c::daMP_c_Init() {
    JUT_ASSERT(9469, m_myObj == 0);

    mDoGph_gInf_c::setFrameRate(1);
    daMP_Fail_alloc = FALSE;

    int demoNo = daMP_c_Get_arg_demoNo();
    JUT_ASSERT(9505, 0 <= demoNo && demoNo <= 99);

    int movieNo = daMP_c_Get_arg_movieNo();
    JUT_ASSERT(9507, 0 <= movieNo && movieNo <= 99);

    char path[32];
    sprintf(path, "/Movie/demo_movie%02d_%02d.thp", demoNo, movieNo);

    if (!daMP_ActivePlayer_Init(path)) {
        daMP_Fail_alloc = TRUE;
    }

    mpGetMovieRestFrame = daMP_Get_MovieRestFrame;
    mpSetPercentMovieVol = daMP_Set_PercentMovieVolume;
    mpTHPGetTotalFrame = daMP_THPPlayerGetTotalFrame;
    mpTHPPlay = daMP_THPPlayerPlay;
    mpTHPStop = daMP_THPPlayerStop;
    mpTHPPause = daMP_THPPlayerPause;

    m_myObj = this;
    return cPhs_COMPLEATE_e;
}

/* 80878D64-80878D94 006684 0030+00 1/1 0/0 0/0 .text            daMP_c_Finish__6daMP_cFv */
int daMP_c::daMP_c_Finish() {
    daMP_ActivePlayer_Finish();
    m_myObj = NULL;
    return 1;
}

/* 80878D94-80878DB8 0066B4 0024+00 1/1 0/0 0/0 .text            daMP_c_Main__6daMP_cFv */
int daMP_c::daMP_c_Main() {
    daMP_ActivePlayer_Main();
    return 1;
}

/* 80878DB8-80878DD8 0066D8 0020+00 1/0 0/0 0/0 .text            draw__16daMP_Dlst_base_cFv */
void daMP_Dlst_base_c::draw() {
    daMP_ActivePlayer_Draw();
}

/* 80945B0C-80945B10 0CC56C 0004+00 2/2 0/0 0/0 .bss             daMP_c_Dlst_base */
static daMP_Dlst_base_c daMP_c_Dlst_base;

/* 80878DD8-80878E04 0066F8 002C+00 1/1 0/0 0/0 .text            daMP_c_Draw__6daMP_cFv */
int daMP_c::daMP_c_Draw() {
    dComIfGd_set2DOpa(&daMP_c_Dlst_base);
    return 1;
}

/* 80878E60-80878EC4 006780 0064+00 1/0 0/0 0/0 .text daMP_c_Callback_Init__6daMP_cFP10fopAc_ac_c
 */
int daMP_c::daMP_c_Callback_Init(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, daMP_c);
    return ((daMP_c*)i_this)->daMP_c_Init();
}

/* 80878F18-80878F38 006838 0020+00 1/0 0/0 0/0 .text daMP_c_Callback_Finish__6daMP_cFP6daMP_c */
int daMP_c::daMP_c_Callback_Finish(daMP_c* i_this) {
    return i_this->daMP_c_Finish();
}

/* 80878F38-80878F70 006858 0038+00 1/0 0/0 0/0 .text daMP_c_Callback_Main__6daMP_cFP6daMP_c */
int daMP_c::daMP_c_Callback_Main(daMP_c* i_this) {
    if (daMP_Fail_alloc) {
        return 1;
    }

    return i_this->daMP_c_Main();
}

/* 80878F70-80878FA8 006890 0038+00 1/0 0/0 0/0 .text daMP_c_Callback_Draw__6daMP_cFP6daMP_c */
int daMP_c::daMP_c_Callback_Draw(daMP_c* i_this) {
    if (daMP_Fail_alloc) {
        return 1;
    }

    return i_this->daMP_c_Draw();
}

/* 80878FA8-80878FB0 0068C8 0008+00 1/0 0/0 0/0 .text            daMP_Callback_Dummy__FP6daMP_c */
static int daMP_Callback_Dummy(daMP_c* i_this) {
    return 1;
}

/* 80879534-80879554 -00001 0020+00 1/0 0/0 0/0 .data            daMP_METHODS */
static actor_method_class daMP_METHODS = {
    (process_method_func)daMP_c::daMP_c_Callback_Init,
    (process_method_func)daMP_c::daMP_c_Callback_Finish,
    (process_method_func)daMP_c::daMP_c_Callback_Main,
    (process_method_func)daMP_Callback_Dummy,
    (process_method_func)daMP_c::daMP_c_Callback_Draw,
};

/* 80879554-80879584 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_MOVIE_PLAYER */
extern actor_process_profile_definition g_profile_MOVIE_PLAYER = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_MOVIE_PLAYER,      // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daMP_c),         // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  9,                      // mPriority
  &daMP_METHODS,          // sub_method
  0x0006C000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};

AUDIO_INSTANCES;

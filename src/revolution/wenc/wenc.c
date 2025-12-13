#include <revolution/wenc.h>
#include <string.h>

s32 WENCGetEncodeData(WENCInfo* info, u32 flag, const s16* pcmData, s32 samples, u8* adpcmData) {
    const f64 table[] = {0.89843750, 0.89843750, 0.89843750, 0.89843750,
                         1.19921875, 1.59765625, 2.00000000, 2.39843750};

    u8* dst;
    const s16* src;
    s32 i;
    s32 da;
    s32 l3, l2, l1, l0;
    s32 dlx;
    s32 xnc;
    s32 offset;
    s32 index;
    s32 encodeSize;
    s32 xn;
    s32 dl;
    s32 qn;
    s32 dn;
    s32 dlh;
    s32 dlq;
    u8 by;

    encodeSize = (samples + 1) / 2;
    memset(adpcmData, 0, encodeSize);

    src = pcmData;
    dst = adpcmData;

    if ((flag & WENC_FLAG_USER_INFO) == 0) {
        xn = 0;
        dl = 127;
        qn = 0;
        dn = 0;
        dlh = 0;
        dlq = 0;
    } else {
        xn = info->xn;
        dl = info->dl;
        qn = info->qn;
        dn = info->dn;
        dlh = info->dlh;
        dlq = info->dlq;
    }

    for (i = 0; i < samples; i++) {
        l3 = l2 = l1 = l0 = 0;

        da = *src++;
        if (da < xn) {
            l3 = 1;
        }

        dn = __abs(da - xn);
        if (dn >= dl) {
            l2 = 1;
            dn -= dl;
        }

        dlh = dl / 2;
        if (dn >= dlh) {
            l1 = 1;
            dn -= dlh;
        }

        dlq = dlh / 2;
        if (dn >= dlq) {
            l0 = 1;
            dn -= dlq;
        }

        dlx = dlq / 2;
        qn = (1 - l3 * 2) * (dl * l2 + dlh * l1 + dlq * l0 + dlx);

        if (qn > 0xFFFF) {
            qn = 0xFFFF;
        }
        if (qn < -0x10000) {
            qn = -0x10000;
        }

        xnc = xn + qn;
        if (xnc > 0x7FFF) {
            xnc = 0x7FFF;
        }
        if (xnc < -0x8000) {
            xnc = -0x8000;
        }

        xn = xnc;
        offset = (i & 1) == 0 ? 4 : 0;

        by = l3 * 8 + l2 * 4 + l1 * 2 + l0;
        dst[i / 2] |= by << offset;

        index = l2 * 4 + l1 * 2 + l0;
        dl *= table[index];

        if (dl <= 127) {
            dl = 127;
        }
        if (dl >= 0x6000) {
            dl = 0x6000;
        }
    }

    info->xn = xn;
    info->dl = dl;
    info->qn = qn;
    info->dn = dn;
    info->dlh = dlh;
    info->dlq = dlq;

    return samples;
}

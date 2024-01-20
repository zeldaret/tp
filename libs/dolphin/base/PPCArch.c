#include "dolphin/base/PPCArch.h"
// clang-format off

/* 80339CC0-80339CC8 -00001 0008+00 0/0 0/0 0/0 .text            PPCMfmsr */
asm u32 PPCMfmsr(void) {
	nofralloc
	mfmsr r3
	blr
}

/* 80339CC8-80339CD0 -00001 0008+00 0/0 0/0 0/0 .text            PPCMtmsr */
asm void PPCMtmsr(register u32 newMSR) {
	nofralloc
	mtmsr newMSR
	blr
}

/* 80339CD0-80339CD8 -00001 0008+00 0/0 0/0 0/0 .text            PPCMfhid0 */
asm u32 PPCMfhid0(void) {
	nofralloc
	mfspr r3, HID0
	blr
}

/* 80339CD8-80339CE0 -00001 0008+00 0/0 0/0 0/0 .text            PPCMthid0 */
asm void PPCMthid0(register u32 newHID0) {
	nofralloc
	mtspr HID0, newHID0
	blr
}

/* 80339CE0-80339CE8 -00001 0008+00 0/0 0/0 0/0 .text            PPCMfl2cr */
asm u32 PPCMfl2cr(void) {
	nofralloc
	mfspr r3, L2CR
	blr
}

/* 80339CE8-80339CF0 -00001 0008+00 0/0 0/0 0/0 .text            PPCMtl2cr */
asm void PPCMtl2cr(register u32 newL2cr) {
	nofralloc
	mtspr L2CR, newL2cr
	blr
}

/* 80339CF0-80339CF8 -00001 0008+00 0/0 0/0 0/0 .text            PPCMtdec */
asm void PPCMtdec(register u32 newDec) {
	nofralloc
	mtdec newDec
	blr
}

/* 80339CF8-80339D00 -00001 0008+00 0/0 0/0 0/0 .text            PPCSync */
asm void PPCSync(void) {
	nofralloc
	sc 
	blr
}

/* 80339D00-80339D14 334640 0014+00 0/0 7/7 0/0 .text            PPCHalt */
asm void PPCHalt(void) {
    nofralloc
    sync

_spin:
    nop
    li r3, 0
    nop
    b _spin
}

/* 80339D14-80339D1C -00001 0008+00 0/0 0/0 0/0 .text            PPCMtmmcr0 */
asm void PPCMtmmcr0(register u32 newMmcr0) {
	nofralloc
	mtspr MMCR0, newMmcr0
	blr
}

/* 80339D1C-80339D24 -00001 0008+00 0/0 0/0 0/0 .text            PPCMtmmcr1 */
asm void PPCMtmmcr1(register u32 newMmcr1) {
	nofralloc
	mtspr MMCR1, newMmcr1
	blr
}

/* 80339D24-80339D2C -00001 0008+00 0/0 0/0 0/0 .text            PPCMtpmc1 */
asm void PPCMtpmc1(register u32 newPmc1) {
	nofralloc
	mtspr PMC1, newPmc1
	blr
}

/* 80339D2C-80339D34 -00001 0008+00 0/0 0/0 0/0 .text            PPCMtpmc2 */
asm void PPCMtpmc2(register u32 newPmc2) {
	nofralloc
	mtspr PMC2, newPmc2
	blr
}

/* 80339D34-80339D3C -00001 0008+00 0/0 0/0 0/0 .text            PPCMtpmc3 */
asm void PPCMtpmc3(register u32 newPmc3) {
	nofralloc
	mtspr PMC3, newPmc3
	blr
}

/* 80339D3C-80339D44 -00001 0008+00 0/0 0/0 0/0 .text            PPCMtpmc4 */
asm void PPCMtpmc4(register u32 newPmc4) {
	nofralloc
	mtspr PMC4, newPmc4
	blr
}

/* 80339D44-80339D64 334684 0020+00 0/0 2/2 0/0 .text            PPCMffpscr */
u32 PPCMffpscr(void) {
    union FpscrUnion m;

    asm {
        mffs fp31
        stfd fp31, m.f;
    }

    return m.u.fpscr;
}

/* 80339D64-80339D8C 3346A4 0028+00 0/0 2/2 0/0 .text            PPCMtfpscr */
void PPCMtfpscr(register u32 newFPSCR) {
    union FpscrUnion m;

    asm {
        li    r4, 0
        stw   r4, m.u.fpscr_pad;
        stw   newFPSCR, m.u.fpscr
        lfd   fp31, m.f
        mtfsf 0xff, fp31
    }
}

/* 80339D8C-80339D94 -00001 0008+00 0/0 0/0 0/0 .text            PPCMfhid2 */
asm u32 PPCMfhid2(void) {
	nofralloc
	mfspr r3, HID2
	blr
}

/* 80339D94-80339D9C -00001 0008+00 0/0 0/0 0/0 .text            PPCMthid2 */
asm void PPCMthid2(register u32 newhid2) {
	nofralloc
	mtspr HID2, newhid2
	blr
}

/* 80339D9C-80339DA4 -00001 0008+00 0/0 0/0 0/0 .text            PPCMtwpar */
asm void PPCMtwpar(register u32 newwpar) {
	nofralloc
	mtspr WPAR, newwpar
	blr
}

/* 80339DA4-80339DCC 3346E4 0028+00 0/0 1/1 0/0 .text            PPCDisableSpeculation */
void PPCDisableSpeculation(void) {
    PPCMthid0(PPCMfhid0() | HID0_SPD);
}

/* 80339DCC-80339DD4 -00001 0008+00 0/0 0/0 0/0 .text            PPCSetFpNonIEEEMode */
asm void PPCSetFpNonIEEEMode() {
	nofralloc
	mtfsb1 29
	blr
}
// clang-format on

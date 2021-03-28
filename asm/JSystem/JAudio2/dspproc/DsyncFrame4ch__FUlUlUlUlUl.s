lbl_8029E680:
/* 8029E680  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E684  7C 08 02 A6 */	mflr r0
/* 8029E688  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8029E68C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E690  64 63 82 00 */	oris r3, r3, 0x8200
/* 8029E694  A0 0D 82 48 */	lhz r0, DSP_MIXERLEVEL(r13)
/* 8029E698  90 81 00 0C */	stw r4, 0xc(r1)
/* 8029E69C  38 80 00 05 */	li r4, 5
/* 8029E6A0  7C 60 03 78 */	or r0, r3, r0
/* 8029E6A4  38 61 00 08 */	addi r3, r1, 8
/* 8029E6A8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8029E6AC  38 A0 00 00 */	li r5, 0
/* 8029E6B0  90 01 00 08 */	stw r0, 8(r1)
/* 8029E6B4  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8029E6B8  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8029E6BC  48 00 01 25 */	bl DSPSendCommands2__FPUlUlPFUs_v
/* 8029E6C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E6C4  7C 08 03 A6 */	mtlr r0
/* 8029E6C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E6CC  4E 80 00 20 */	blr 

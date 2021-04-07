lbl_80C39A58:
/* 80C39A58  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C39A5C  7C 08 02 A6 */	mflr r0
/* 80C39A60  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C39A64  39 61 00 30 */	addi r11, r1, 0x30
/* 80C39A68  4B 72 87 71 */	bl _savegpr_28
/* 80C39A6C  7C 7C 1B 78 */	mr r28, r3
/* 80C39A70  7C BE 2B 78 */	mr r30, r5
/* 80C39A74  A3 A4 00 14 */	lhz r29, 0x14(r4)
/* 80C39A78  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80C39A7C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C39A80  1F FD 00 30 */	mulli r31, r29, 0x30
/* 80C39A84  7C 60 FA 14 */	add r3, r0, r31
/* 80C39A88  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C39A8C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C39A90  4B 70 CA 21 */	bl PSMTXCopy
/* 80C39A94  2C 1D 00 01 */	cmpwi r29, 1
/* 80C39A98  40 82 00 4C */	bne lbl_80C39AE4
/* 80C39A9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C39AA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C39AA4  3C 80 80 C4 */	lis r4, lit_3812@ha /* 0x80C3C6C0@ha */
/* 80C39AA8  C0 44 C6 C0 */	lfs f2, lit_3812@l(r4)  /* 0x80C3C6C0@l */
/* 80C39AAC  A8 1C 07 F2 */	lha r0, 0x7f2(r28)
/* 80C39AB0  3C 80 80 C4 */	lis r4, lit_3814@ha /* 0x80C3C6C4@ha */
/* 80C39AB4  C8 24 C6 C4 */	lfd f1, lit_3814@l(r4)  /* 0x80C3C6C4@l */
/* 80C39AB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C39ABC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C39AC0  3C 00 43 30 */	lis r0, 0x4330
/* 80C39AC4  90 01 00 08 */	stw r0, 8(r1)
/* 80C39AC8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C39ACC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C39AD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C39AD4  FC 00 00 1E */	fctiwz f0, f0
/* 80C39AD8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C39ADC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80C39AE0  4B 3D 29 55 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80C39AE4:
/* 80C39AE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C39AE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C39AEC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80C39AF0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80C39AF4  7C 80 FA 14 */	add r4, r0, r31
/* 80C39AF8  4B 70 C9 B9 */	bl PSMTXCopy
/* 80C39AFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C39B00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C39B04  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80C39B08  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80C39B0C  4B 70 C9 A5 */	bl PSMTXCopy
/* 80C39B10  38 60 00 01 */	li r3, 1
/* 80C39B14  39 61 00 30 */	addi r11, r1, 0x30
/* 80C39B18  4B 72 87 0D */	bl _restgpr_28
/* 80C39B1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C39B20  7C 08 03 A6 */	mtlr r0
/* 80C39B24  38 21 00 30 */	addi r1, r1, 0x30
/* 80C39B28  4E 80 00 20 */	blr 

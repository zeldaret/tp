lbl_80CBB0F0:
/* 80CBB0F0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CBB0F4  7C 08 02 A6 */	mflr r0
/* 80CBB0F8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CBB0FC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80CBB100  7C 9F 23 78 */	mr r31, r4
/* 80CBB104  38 63 0C 30 */	addi r3, r3, 0xc30
/* 80CBB108  38 81 00 14 */	addi r4, r1, 0x14
/* 80CBB10C  4B 68 B4 A5 */	bl PSMTXInverse
/* 80CBB110  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CBB114  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CBB118  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CBB11C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CBB120  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CBB124  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CBB128  38 61 00 14 */	addi r3, r1, 0x14
/* 80CBB12C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBB130  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBB134  4B 68 B3 7D */	bl PSMTXCopy
/* 80CBB138  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBB13C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBB140  38 81 00 08 */	addi r4, r1, 8
/* 80CBB144  7C 85 23 78 */	mr r5, r4
/* 80CBB148  4B 68 BC 25 */	bl PSMTXMultVec
/* 80CBB14C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80CBB150  3C 60 80 CC */	lis r3, lit_3897@ha /* 0x80CBC3C4@ha */
/* 80CBB154  C0 03 C3 C4 */	lfs f0, lit_3897@l(r3)  /* 0x80CBC3C4@l */
/* 80CBB158  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBB15C  7C 00 00 26 */	mfcr r0
/* 80CBB160  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 80CBB164  7C 00 00 34 */	cntlzw r0, r0
/* 80CBB168  54 03 D9 7E */	srwi r3, r0, 5
/* 80CBB16C  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80CBB170  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CBB174  7C 08 03 A6 */	mtlr r0
/* 80CBB178  38 21 00 50 */	addi r1, r1, 0x50
/* 80CBB17C  4E 80 00 20 */	blr 

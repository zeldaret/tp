lbl_80CBB180:
/* 80CBB180  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CBB184  7C 08 02 A6 */	mflr r0
/* 80CBB188  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CBB18C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80CBB190  7C 9F 23 78 */	mr r31, r4
/* 80CBB194  38 63 0C 00 */	addi r3, r3, 0xc00
/* 80CBB198  38 81 00 14 */	addi r4, r1, 0x14
/* 80CBB19C  4B 68 B4 15 */	bl PSMTXInverse
/* 80CBB1A0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CBB1A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CBB1A8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CBB1AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CBB1B0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CBB1B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CBB1B8  38 61 00 14 */	addi r3, r1, 0x14
/* 80CBB1BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBB1C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBB1C4  4B 68 B2 ED */	bl PSMTXCopy
/* 80CBB1C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBB1CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBB1D0  38 81 00 08 */	addi r4, r1, 8
/* 80CBB1D4  7C 85 23 78 */	mr r5, r4
/* 80CBB1D8  4B 68 BB 95 */	bl PSMTXMultVec
/* 80CBB1DC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80CBB1E0  3C 60 80 CC */	lis r3, lit_3897@ha /* 0x80CBC3C4@ha */
/* 80CBB1E4  C0 03 C3 C4 */	lfs f0, lit_3897@l(r3)  /* 0x80CBC3C4@l */
/* 80CBB1E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBB1EC  7C 00 00 26 */	mfcr r0
/* 80CBB1F0  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80CBB1F4  7C 00 00 34 */	cntlzw r0, r0
/* 80CBB1F8  54 03 D9 7E */	srwi r3, r0, 5
/* 80CBB1FC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80CBB200  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CBB204  7C 08 03 A6 */	mtlr r0
/* 80CBB208  38 21 00 50 */	addi r1, r1, 0x50
/* 80CBB20C  4E 80 00 20 */	blr 

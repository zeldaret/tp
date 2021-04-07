lbl_80589664:
/* 80589664  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80589668  7C 08 02 A6 */	mflr r0
/* 8058966C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80589670  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80589674  7C 9F 23 78 */	mr r31, r4
/* 80589678  80 63 05 AC */	lwz r3, 0x5ac(r3)
/* 8058967C  38 63 00 24 */	addi r3, r3, 0x24
/* 80589680  38 81 00 14 */	addi r4, r1, 0x14
/* 80589684  4B DB CF 2D */	bl PSMTXInverse
/* 80589688  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8058968C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80589690  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80589694  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80589698  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8058969C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805896A0  38 61 00 14 */	addi r3, r1, 0x14
/* 805896A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805896A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805896AC  4B DB CE 05 */	bl PSMTXCopy
/* 805896B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805896B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805896B8  38 81 00 08 */	addi r4, r1, 8
/* 805896BC  7C 85 23 78 */	mr r5, r4
/* 805896C0  4B DB D6 AD */	bl PSMTXMultVec
/* 805896C4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 805896C8  3C 60 80 59 */	lis r3, lit_3883@ha /* 0x8058ABDC@ha */
/* 805896CC  C0 03 AB DC */	lfs f0, lit_3883@l(r3)  /* 0x8058ABDC@l */
/* 805896D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805896D4  7C 00 00 26 */	mfcr r0
/* 805896D8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 805896DC  7C 00 00 34 */	cntlzw r0, r0
/* 805896E0  54 03 D9 7E */	srwi r3, r0, 5
/* 805896E4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 805896E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805896EC  7C 08 03 A6 */	mtlr r0
/* 805896F0  38 21 00 50 */	addi r1, r1, 0x50
/* 805896F4  4E 80 00 20 */	blr 

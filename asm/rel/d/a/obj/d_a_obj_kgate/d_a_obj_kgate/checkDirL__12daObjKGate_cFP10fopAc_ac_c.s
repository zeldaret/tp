lbl_805895D0:
/* 805895D0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805895D4  7C 08 02 A6 */	mflr r0
/* 805895D8  90 01 00 54 */	stw r0, 0x54(r1)
/* 805895DC  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 805895E0  7C 9F 23 78 */	mr r31, r4
/* 805895E4  80 63 05 A8 */	lwz r3, 0x5a8(r3)
/* 805895E8  38 63 00 24 */	addi r3, r3, 0x24
/* 805895EC  38 81 00 14 */	addi r4, r1, 0x14
/* 805895F0  4B DB CF C1 */	bl PSMTXInverse
/* 805895F4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805895F8  D0 01 00 08 */	stfs f0, 8(r1)
/* 805895FC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80589600  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80589604  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80589608  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8058960C  38 61 00 14 */	addi r3, r1, 0x14
/* 80589610  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80589614  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80589618  4B DB CE 99 */	bl PSMTXCopy
/* 8058961C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80589620  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80589624  38 81 00 08 */	addi r4, r1, 8
/* 80589628  7C 85 23 78 */	mr r5, r4
/* 8058962C  4B DB D7 41 */	bl PSMTXMultVec
/* 80589630  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80589634  3C 60 80 59 */	lis r3, lit_3883@ha /* 0x8058ABDC@ha */
/* 80589638  C0 03 AB DC */	lfs f0, lit_3883@l(r3)  /* 0x8058ABDC@l */
/* 8058963C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80589640  7C 00 00 26 */	mfcr r0
/* 80589644  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 80589648  7C 00 00 34 */	cntlzw r0, r0
/* 8058964C  54 03 D9 7E */	srwi r3, r0, 5
/* 80589650  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80589654  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80589658  7C 08 03 A6 */	mtlr r0
/* 8058965C  38 21 00 50 */	addi r1, r1, 0x50
/* 80589660  4E 80 00 20 */	blr 

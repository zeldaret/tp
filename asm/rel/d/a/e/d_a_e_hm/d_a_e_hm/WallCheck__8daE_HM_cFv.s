lbl_806E25E8:
/* 806E25E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806E25EC  7C 08 02 A6 */	mflr r0
/* 806E25F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806E25F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806E25F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806E25FC  7C 7E 1B 78 */	mr r30, r3
/* 806E2600  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E2604  3B E3 59 20 */	addi r31, r3, lit_3791@l /* 0x806E5920@l */
/* 806E2608  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E260C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806E2610  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 806E2614  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806E2618  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 806E261C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806E2620  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806E2624  4B 92 A7 41 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806E2628  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 806E262C  4B 92 A9 19 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806E2630  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E2634  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E2638  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806E263C  4B 92 9D F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 806E2640  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E2644  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E2648  38 81 00 08 */	addi r4, r1, 8
/* 806E264C  7C 85 23 78 */	mr r5, r4
/* 806E2650  4B C6 47 1D */	bl PSMTXMultVec
/* 806E2654  38 61 00 08 */	addi r3, r1, 8
/* 806E2658  4B 93 B6 65 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 806E265C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 806E2660  C0 23 0C D0 */	lfs f1, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 806E2664  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806E2668  EC 21 00 28 */	fsubs f1, f1, f0
/* 806E266C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 806E2670  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E2674  7C 00 00 26 */	mfcr r0
/* 806E2678  54 03 0F FE */	srwi r3, r0, 0x1f
/* 806E267C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806E2680  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806E2684  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806E2688  7C 08 03 A6 */	mtlr r0
/* 806E268C  38 21 00 20 */	addi r1, r1, 0x20
/* 806E2690  4E 80 00 20 */	blr 

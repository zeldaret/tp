lbl_8058F504:
/* 8058F504  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058F508  7C 08 02 A6 */	mflr r0
/* 8058F50C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058F510  39 61 00 30 */	addi r11, r1, 0x30
/* 8058F514  4B DD 2C C9 */	bl _savegpr_29
/* 8058F518  7C 7D 1B 78 */	mr r29, r3
/* 8058F51C  7C 9F 23 78 */	mr r31, r4
/* 8058F520  3C 60 80 59 */	lis r3, l_magne_scale@ha /* 0x80592848@ha */
/* 8058F524  3B C3 28 48 */	addi r30, r3, l_magne_scale@l /* 0x80592848@l */
/* 8058F528  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8058F52C  D0 04 00 00 */	stfs f0, 0(r4)
/* 8058F530  38 7E 00 64 */	addi r3, r30, 0x64
/* 8058F534  C0 03 00 04 */	lfs f0, 4(r3)
/* 8058F538  D0 04 00 04 */	stfs f0, 4(r4)
/* 8058F53C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8058F540  D0 04 00 08 */	stfs f0, 8(r4)
/* 8058F544  C0 24 00 04 */	lfs f1, 4(r4)
/* 8058F548  88 1D 0A 15 */	lbz r0, 0xa15(r29)
/* 8058F54C  54 00 10 3A */	slwi r0, r0, 2
/* 8058F550  38 7E 00 1C */	addi r3, r30, 0x1c
/* 8058F554  7C 03 04 2E */	lfsx f0, r3, r0
/* 8058F558  EC 01 00 28 */	fsubs f0, f1, f0
/* 8058F55C  D0 04 00 04 */	stfs f0, 4(r4)
/* 8058F560  C0 24 00 04 */	lfs f1, 4(r4)
/* 8058F564  C0 1D 0A 04 */	lfs f0, 0xa04(r29)
/* 8058F568  EC 01 00 2A */	fadds f0, f1, f0
/* 8058F56C  D0 04 00 04 */	stfs f0, 4(r4)
/* 8058F570  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8058F574  4B A7 D7 F1 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8058F578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058F57C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058F580  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8058F584  4B A7 CE B1 */	bl mDoMtx_YrotM__FPA4_fs
/* 8058F588  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058F58C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058F590  A8 9D 09 FE */	lha r4, 0x9fe(r29)
/* 8058F594  A8 1D 0A 30 */	lha r0, 0xa30(r29)
/* 8058F598  7C 04 02 14 */	add r0, r4, r0
/* 8058F59C  7C 04 07 34 */	extsh r4, r0
/* 8058F5A0  4B A7 CE 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 8058F5A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058F5A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058F5AC  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 8058F5B0  A8 1D 0A 38 */	lha r0, 0xa38(r29)
/* 8058F5B4  C8 3E 00 78 */	lfd f1, 0x78(r30)
/* 8058F5B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8058F5BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058F5C0  3C 00 43 30 */	lis r0, 0x4330
/* 8058F5C4  90 01 00 08 */	stw r0, 8(r1)
/* 8058F5C8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058F5CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058F5D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8058F5D4  FC 00 00 1E */	fctiwz f0, f0
/* 8058F5D8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8058F5DC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8058F5E0  4B A7 CE ED */	bl mDoMtx_ZrotM__FPA4_fs
/* 8058F5E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8058F5E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8058F5EC  7F E4 FB 78 */	mr r4, r31
/* 8058F5F0  7F E5 FB 78 */	mr r5, r31
/* 8058F5F4  4B DB 77 79 */	bl PSMTXMultVec
/* 8058F5F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8058F5FC  4B DD 2C 2D */	bl _restgpr_29
/* 8058F600  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058F604  7C 08 03 A6 */	mtlr r0
/* 8058F608  38 21 00 30 */	addi r1, r1, 0x30
/* 8058F60C  4E 80 00 20 */	blr 

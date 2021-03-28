lbl_80D0D4F8:
/* 80D0D4F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0D4FC  7C 08 02 A6 */	mflr r0
/* 80D0D500  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D0D504  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D0D508  7C 7F 1B 78 */	mr r31, r3
/* 80D0D50C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D0D510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D0D514  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D0D518  38 61 00 08 */	addi r3, r1, 8
/* 80D0D51C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D0D520  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D0D524  4B 55 96 10 */	b __mi__4cXyzCFRC3Vec
/* 80D0D528  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D0D52C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D0D530  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D0D534  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D0D538  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D0D53C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D0D540  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D0D544  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0D548  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D0D54C  7C 00 00 D0 */	neg r0, r0
/* 80D0D550  7C 04 07 34 */	extsh r4, r0
/* 80D0D554  4B 2F EE 88 */	b mDoMtx_YrotS__FPA4_fs
/* 80D0D558  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D0D55C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D0D560  38 81 00 14 */	addi r4, r1, 0x14
/* 80D0D564  7C 85 23 78 */	mr r5, r4
/* 80D0D568  4B 63 98 04 */	b PSMTXMultVec
/* 80D0D56C  38 60 00 01 */	li r3, 1
/* 80D0D570  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80D0D574  3C 80 80 D1 */	lis r4, lit_3663@ha
/* 80D0D578  C0 04 E5 F8 */	lfs f0, lit_3663@l(r4)
/* 80D0D57C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0D580  40 81 00 08 */	ble lbl_80D0D588
/* 80D0D584  38 60 00 00 */	li r3, 0
lbl_80D0D588:
/* 80D0D588  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D0D58C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D0D590  7C 08 03 A6 */	mtlr r0
/* 80D0D594  38 21 00 30 */	addi r1, r1, 0x30
/* 80D0D598  4E 80 00 20 */	blr 

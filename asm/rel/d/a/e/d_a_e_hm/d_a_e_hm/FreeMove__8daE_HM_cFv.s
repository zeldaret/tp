lbl_806E34C8:
/* 806E34C8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E34CC  7C 08 02 A6 */	mflr r0
/* 806E34D0  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E34D4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 806E34D8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 806E34DC  7C 7E 1B 78 */	mr r30, r3
/* 806E34E0  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E34E4  3B E3 59 20 */	addi r31, r3, lit_3791@l /* 0x806E5920@l */
/* 806E34E8  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 806E34EC  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E34F0  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 806E34F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E34F8  40 81 00 1C */	ble lbl_806E3514
/* 806E34FC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806E3500  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 806E3504  FC 40 08 90 */	fmr f2, f1
/* 806E3508  C0 7F 00 E0 */	lfs f3, 0xe0(r31)
/* 806E350C  4B B8 C5 31 */	bl cLib_addCalc2__FPffff
/* 806E3510  48 00 00 18 */	b lbl_806E3528
lbl_806E3514:
/* 806E3514  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806E3518  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E351C  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 806E3520  C0 7F 00 E0 */	lfs f3, 0xe0(r31)
/* 806E3524  4B B8 C5 19 */	bl cLib_addCalc2__FPffff
lbl_806E3528:
/* 806E3528  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 806E352C  2C 00 00 02 */	cmpwi r0, 2
/* 806E3530  40 82 00 A8 */	bne lbl_806E35D8
/* 806E3534  7F C3 F3 78 */	mr r3, r30
/* 806E3538  4B FF E3 69 */	bl W_WallCheck__8daE_HM_cFv
/* 806E353C  2C 03 00 00 */	cmpwi r3, 0
/* 806E3540  40 82 01 38 */	bne lbl_806E3678
/* 806E3544  7F C3 F3 78 */	mr r3, r30
/* 806E3548  4B FF E0 15 */	bl W_MoveCheckWall__8daE_HM_cFv
/* 806E354C  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 806E3550  2C 00 00 00 */	cmpwi r0, 0
/* 806E3554  40 82 01 24 */	bne lbl_806E3678
/* 806E3558  38 61 00 14 */	addi r3, r1, 0x14
/* 806E355C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806E3560  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806E3564  4B B8 35 D1 */	bl __mi__4cXyzCFRC3Vec
/* 806E3568  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806E356C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E3570  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806E3574  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E3578  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806E357C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E3580  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 806E3584  4B B8 44 09 */	bl cM_rndFX__Ff
/* 806E3588  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806E358C  EC 00 08 2A */	fadds f0, f0, f1
/* 806E3590  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E3594  C0 3F 00 F4 */	lfs f1, 0xf4(r31)
/* 806E3598  4B B8 43 F5 */	bl cM_rndFX__Ff
/* 806E359C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806E35A0  EC 40 08 2A */	fadds f2, f0, f1
/* 806E35A4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806E35A8  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806E35AC  4B B8 40 C9 */	bl cM_atan2s__Fff
/* 806E35B0  B0 7E 05 B4 */	sth r3, 0x5b4(r30)
/* 806E35B4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806E35B8  4B B8 43 D5 */	bl cM_rndFX__Ff
/* 806E35BC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 806E35C0  EC 00 08 2A */	fadds f0, f0, f1
/* 806E35C4  FC 00 00 1E */	fctiwz f0, f0
/* 806E35C8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806E35CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E35D0  90 1E 05 B8 */	stw r0, 0x5b8(r30)
/* 806E35D4  48 00 00 A4 */	b lbl_806E3678
lbl_806E35D8:
/* 806E35D8  7F C3 F3 78 */	mr r3, r30
/* 806E35DC  4B FF F0 B9 */	bl MoveCheck__8daE_HM_cFv
/* 806E35E0  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 806E35E4  2C 00 00 00 */	cmpwi r0, 0
/* 806E35E8  41 82 00 14 */	beq lbl_806E35FC
/* 806E35EC  7F C3 F3 78 */	mr r3, r30
/* 806E35F0  4B FF EF F9 */	bl WallCheck__8daE_HM_cFv
/* 806E35F4  2C 03 00 00 */	cmpwi r3, 0
/* 806E35F8  41 82 00 80 */	beq lbl_806E3678
lbl_806E35FC:
/* 806E35FC  38 61 00 08 */	addi r3, r1, 8
/* 806E3600  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806E3604  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806E3608  4B B8 35 2D */	bl __mi__4cXyzCFRC3Vec
/* 806E360C  C0 01 00 08 */	lfs f0, 8(r1)
/* 806E3610  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E3614  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806E3618  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E361C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806E3620  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E3624  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806E3628  4B B8 43 65 */	bl cM_rndFX__Ff
/* 806E362C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806E3630  EC 00 08 2A */	fadds f0, f0, f1
/* 806E3634  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E3638  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806E363C  4B B8 43 51 */	bl cM_rndFX__Ff
/* 806E3640  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806E3644  EC 40 08 2A */	fadds f2, f0, f1
/* 806E3648  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806E364C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 806E3650  4B B8 40 25 */	bl cM_atan2s__Fff
/* 806E3654  B0 7E 05 B4 */	sth r3, 0x5b4(r30)
/* 806E3658  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806E365C  4B B8 43 31 */	bl cM_rndFX__Ff
/* 806E3660  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 806E3664  EC 00 08 2A */	fadds f0, f0, f1
/* 806E3668  FC 00 00 1E */	fctiwz f0, f0
/* 806E366C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 806E3670  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E3674  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_806E3678:
/* 806E3678  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 806E367C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 806E3680  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E3684  7C 08 03 A6 */	mtlr r0
/* 806E3688  38 21 00 40 */	addi r1, r1, 0x40
/* 806E368C  4E 80 00 20 */	blr 

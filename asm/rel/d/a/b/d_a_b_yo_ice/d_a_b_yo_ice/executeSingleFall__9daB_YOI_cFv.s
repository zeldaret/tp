lbl_8063B238:
/* 8063B238  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8063B23C  7C 08 02 A6 */	mflr r0
/* 8063B240  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8063B244  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 8063B248  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8063B24C  39 61 00 90 */	addi r11, r1, 0x90
/* 8063B250  4B D2 6F 89 */	bl _savegpr_28
/* 8063B254  7C 7E 1B 78 */	mr r30, r3
/* 8063B258  3C 80 80 64 */	lis r4, lit_3776@ha /* 0x8063DC84@ha */
/* 8063B25C  3B E4 DC 84 */	addi r31, r4, lit_3776@l /* 0x8063DC84@l */
/* 8063B260  80 03 06 98 */	lwz r0, 0x698(r3)
/* 8063B264  28 00 00 0A */	cmplwi r0, 0xa
/* 8063B268  41 81 08 B8 */	bgt lbl_8063BB20
/* 8063B26C  3C 80 80 64 */	lis r4, lit_4385@ha /* 0x8063DF04@ha */
/* 8063B270  38 84 DF 04 */	addi r4, r4, lit_4385@l /* 0x8063DF04@l */
/* 8063B274  54 00 10 3A */	slwi r0, r0, 2
/* 8063B278  7C 04 00 2E */	lwzx r0, r4, r0
/* 8063B27C  7C 09 03 A6 */	mtctr r0
/* 8063B280  4E 80 04 20 */	bctr 
lbl_8063B284:
/* 8063B284  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 8063B288  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063B28C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 8063B290  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 8063B294  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063B298  90 1E 07 70 */	stw r0, 0x770(r30)
/* 8063B29C  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 8063B2A0  60 00 00 01 */	ori r0, r0, 1
/* 8063B2A4  90 1E 07 58 */	stw r0, 0x758(r30)
/* 8063B2A8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8063B2AC  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 8063B2B0  38 80 00 C8 */	li r4, 0xc8
/* 8063B2B4  4B FF F3 75 */	bl setWeight__9daB_YOI_cFUc
/* 8063B2B8  38 00 00 00 */	li r0, 0
/* 8063B2BC  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 8063B2C0  38 00 00 0A */	li r0, 0xa
/* 8063B2C4  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063B2C8  38 00 00 14 */	li r0, 0x14
/* 8063B2CC  90 1E 06 A8 */	stw r0, 0x6a8(r30)
lbl_8063B2D0:
/* 8063B2D0  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 8063B2D4  80 1E 06 90 */	lwz r0, 0x690(r30)
/* 8063B2D8  54 00 10 3A */	slwi r0, r0, 2
/* 8063B2DC  38 7F 00 2C */	addi r3, r31, 0x2c
/* 8063B2E0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8063B2E4  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 8063B2E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8063B2EC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8063B2F0  3C 00 43 30 */	lis r0, 0x4330
/* 8063B2F4  90 01 00 70 */	stw r0, 0x70(r1)
/* 8063B2F8  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8063B2FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8063B300  EC 02 00 32 */	fmuls f0, f2, f0
/* 8063B304  FC 00 00 1E */	fctiwz f0, f0
/* 8063B308  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8063B30C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8063B310  90 1E 06 A4 */	stw r0, 0x6a4(r30)
/* 8063B314  38 61 00 64 */	addi r3, r1, 0x64
/* 8063B318  7F C4 F3 78 */	mr r4, r30
/* 8063B31C  4B FF F8 A5 */	bl getSingleFallPos__9daB_YOI_cFv
/* 8063B320  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8063B324  38 81 00 64 */	addi r4, r1, 0x64
/* 8063B328  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8063B32C  4B C3 56 65 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 8063B330  80 7E 06 A8 */	lwz r3, 0x6a8(r30)
/* 8063B334  80 1E 06 A4 */	lwz r0, 0x6a4(r30)
/* 8063B338  7C 03 02 14 */	add r0, r3, r0
/* 8063B33C  2C 00 00 14 */	cmpwi r0, 0x14
/* 8063B340  41 80 00 54 */	blt lbl_8063B394
/* 8063B344  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063B348  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8063B34C  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063B350  4B C3 53 F1 */	bl cLib_chaseF__FPfff
/* 8063B354  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8063B358  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8063B35C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8063B360  4B C3 53 E1 */	bl cLib_chaseF__FPfff
/* 8063B364  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F7@ha */
/* 8063B368  38 03 02 F7 */	addi r0, r3, 0x02F7 /* 0x000702F7@l */
/* 8063B36C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063B370  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063B374  38 81 00 24 */	addi r4, r1, 0x24
/* 8063B378  38 A0 00 00 */	li r5, 0
/* 8063B37C  38 C0 FF FF */	li r6, -1
/* 8063B380  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063B384  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063B388  7D 89 03 A6 */	mtctr r12
/* 8063B38C  4E 80 04 21 */	bctrl 
/* 8063B390  48 00 00 60 */	b lbl_8063B3F0
lbl_8063B394:
/* 8063B394  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063B398  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8063B39C  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8063B3A0  4B C3 53 A1 */	bl cLib_chaseF__FPfff
/* 8063B3A4  38 7E 06 9E */	addi r3, r30, 0x69e
/* 8063B3A8  38 80 0C 00 */	li r4, 0xc00
/* 8063B3AC  38 A0 01 00 */	li r5, 0x100
/* 8063B3B0  4B C3 57 E1 */	bl cLib_chaseAngleS__FPsss
/* 8063B3B4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8063B3B8  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 8063B3BC  7C 03 02 14 */	add r0, r3, r0
/* 8063B3C0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8063B3C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F8@ha */
/* 8063B3C8  38 03 02 F8 */	addi r0, r3, 0x02F8 /* 0x000702F8@l */
/* 8063B3CC  90 01 00 20 */	stw r0, 0x20(r1)
/* 8063B3D0  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063B3D4  38 81 00 20 */	addi r4, r1, 0x20
/* 8063B3D8  38 A0 00 00 */	li r5, 0
/* 8063B3DC  38 C0 FF FF */	li r6, -1
/* 8063B3E0  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063B3E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063B3E8  7D 89 03 A6 */	mtctr r12
/* 8063B3EC  4E 80 04 21 */	bctrl 
lbl_8063B3F0:
/* 8063B3F0  80 1E 06 A8 */	lwz r0, 0x6a8(r30)
/* 8063B3F4  2C 00 00 00 */	cmpwi r0, 0
/* 8063B3F8  40 82 07 28 */	bne lbl_8063BB20
/* 8063B3FC  80 1E 06 A4 */	lwz r0, 0x6a4(r30)
/* 8063B400  2C 00 00 00 */	cmpwi r0, 0
/* 8063B404  41 82 00 40 */	beq lbl_8063B444
/* 8063B408  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8063B40C  4B C2 C5 81 */	bl cM_rndFX__Ff
/* 8063B410  80 1E 06 A4 */	lwz r0, 0x6a4(r30)
/* 8063B414  C8 5F 00 90 */	lfd f2, 0x90(r31)
/* 8063B418  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8063B41C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8063B420  3C 00 43 30 */	lis r0, 0x4330
/* 8063B424  90 01 00 78 */	stw r0, 0x78(r1)
/* 8063B428  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8063B42C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8063B430  EC 00 08 2A */	fadds f0, f0, f1
/* 8063B434  FC 00 00 1E */	fctiwz f0, f0
/* 8063B438  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8063B43C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8063B440  90 1E 06 A4 */	stw r0, 0x6a4(r30)
lbl_8063B444:
/* 8063B444  38 00 00 01 */	li r0, 1
/* 8063B448  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063B44C  48 00 06 D4 */	b lbl_8063BB20
lbl_8063B450:
/* 8063B450  38 61 00 58 */	addi r3, r1, 0x58
/* 8063B454  7F C4 F3 78 */	mr r4, r30
/* 8063B458  4B FF F7 69 */	bl getSingleFallPos__9daB_YOI_cFv
/* 8063B45C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8063B460  38 81 00 58 */	addi r4, r1, 0x58
/* 8063B464  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8063B468  4B C3 55 29 */	bl cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 8063B46C  80 1E 06 A4 */	lwz r0, 0x6a4(r30)
/* 8063B470  2C 00 00 14 */	cmpwi r0, 0x14
/* 8063B474  41 80 00 54 */	blt lbl_8063B4C8
/* 8063B478  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063B47C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8063B480  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063B484  4B C3 52 BD */	bl cLib_chaseF__FPfff
/* 8063B488  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8063B48C  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8063B490  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8063B494  4B C3 52 AD */	bl cLib_chaseF__FPfff
/* 8063B498  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F7@ha */
/* 8063B49C  38 03 02 F7 */	addi r0, r3, 0x02F7 /* 0x000702F7@l */
/* 8063B4A0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8063B4A4  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063B4A8  38 81 00 1C */	addi r4, r1, 0x1c
/* 8063B4AC  38 A0 00 00 */	li r5, 0
/* 8063B4B0  38 C0 FF FF */	li r6, -1
/* 8063B4B4  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063B4B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063B4BC  7D 89 03 A6 */	mtctr r12
/* 8063B4C0  4E 80 04 21 */	bctrl 
/* 8063B4C4  48 00 06 5C */	b lbl_8063BB20
lbl_8063B4C8:
/* 8063B4C8  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8063B4CC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8063B4D0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8063B4D4  4B C3 52 6D */	bl cLib_chaseF__FPfff
/* 8063B4D8  38 7E 06 9E */	addi r3, r30, 0x69e
/* 8063B4DC  38 80 0C 00 */	li r4, 0xc00
/* 8063B4E0  38 A0 01 00 */	li r5, 0x100
/* 8063B4E4  4B C3 56 AD */	bl cLib_chaseAngleS__FPsss
/* 8063B4E8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8063B4EC  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 8063B4F0  7C 03 02 14 */	add r0, r3, r0
/* 8063B4F4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8063B4F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F8@ha */
/* 8063B4FC  38 03 02 F8 */	addi r0, r3, 0x02F8 /* 0x000702F8@l */
/* 8063B500  90 01 00 18 */	stw r0, 0x18(r1)
/* 8063B504  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063B508  38 81 00 18 */	addi r4, r1, 0x18
/* 8063B50C  38 A0 00 00 */	li r5, 0
/* 8063B510  38 C0 FF FF */	li r6, -1
/* 8063B514  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063B518  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063B51C  7D 89 03 A6 */	mtctr r12
/* 8063B520  4E 80 04 21 */	bctrl 
/* 8063B524  80 1E 06 A4 */	lwz r0, 0x6a4(r30)
/* 8063B528  2C 00 00 00 */	cmpwi r0, 0
/* 8063B52C  40 82 05 F4 */	bne lbl_8063BB20
/* 8063B530  38 00 00 02 */	li r0, 2
/* 8063B534  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063B538  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8063B53C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8063B540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063B544  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063B548  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8063B54C  A8 03 05 6C */	lha r0, 0x56c(r3)
/* 8063B550  7C 00 07 35 */	extsh. r0, r0
/* 8063B554  41 82 00 90 */	beq lbl_8063B5E4
/* 8063B558  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 8063B55C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8063B560  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B564  40 80 00 80 */	bge lbl_8063B5E4
/* 8063B568  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8063B56C  4B C2 C4 21 */	bl cM_rndFX__Ff
/* 8063B570  FC 00 08 1E */	fctiwz f0, f1
/* 8063B574  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8063B578  83 81 00 7C */	lwz r28, 0x7c(r1)
/* 8063B57C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8063B580  4B C2 C3 D5 */	bl cM_rndF__Ff
/* 8063B584  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8063B588  EC 40 08 2A */	fadds f2, f0, f1
/* 8063B58C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8063B590  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8063B594  D0 1E 06 6C */	stfs f0, 0x66c(r30)
/* 8063B598  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8063B59C  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 8063B5A0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8063B5A4  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8063B5A8  C0 3E 06 6C */	lfs f1, 0x66c(r30)
/* 8063B5AC  57 80 04 38 */	rlwinm r0, r28, 0, 0x10, 0x1c
/* 8063B5B0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8063B5B4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8063B5B8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8063B5BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8063B5C0  EC 01 00 2A */	fadds f0, f1, f0
/* 8063B5C4  D0 1E 06 6C */	stfs f0, 0x66c(r30)
/* 8063B5C8  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 8063B5CC  7C 63 02 14 */	add r3, r3, r0
/* 8063B5D0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8063B5D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8063B5D8  EC 01 00 2A */	fadds f0, f1, f0
/* 8063B5DC  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8063B5E0  48 00 00 C4 */	b lbl_8063B6A4
lbl_8063B5E4:
/* 8063B5E4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8063B5E8  D0 1E 06 6C */	stfs f0, 0x66c(r30)
/* 8063B5EC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8063B5F0  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 8063B5F4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8063B5F8  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8063B5FC  83 BD 5D AC */	lwz r29, 0x5dac(r29)
/* 8063B600  C3 FD 05 2C */	lfs f31, 0x52c(r29)
/* 8063B604  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 8063B608  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8063B60C  4C 41 13 82 */	cror 2, 1, 2
/* 8063B610  40 82 00 94 */	bne lbl_8063B6A4
/* 8063B614  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8063B618  EF FF 00 32 */	fmuls f31, f31, f0
/* 8063B61C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8063B620  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8063B624  40 80 00 08 */	bge lbl_8063B62C
/* 8063B628  FF E0 00 90 */	fmr f31, f0
lbl_8063B62C:
/* 8063B62C  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 8063B630  4B C2 C3 5D */	bl cM_rndFX__Ff
/* 8063B634  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8063B638  3C 63 00 01 */	addis r3, r3, 1
/* 8063B63C  38 03 80 00 */	addi r0, r3, -32768
/* 8063B640  C8 5F 00 90 */	lfd f2, 0x90(r31)
/* 8063B644  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8063B648  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8063B64C  3C 00 43 30 */	lis r0, 0x4330
/* 8063B650  90 01 00 78 */	stw r0, 0x78(r1)
/* 8063B654  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8063B658  EC 00 10 28 */	fsubs f0, f0, f2
/* 8063B65C  EC 00 08 2A */	fadds f0, f0, f1
/* 8063B660  FC 00 00 1E */	fctiwz f0, f0
/* 8063B664  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8063B668  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8063B66C  C0 3E 06 6C */	lfs f1, 0x66c(r30)
/* 8063B670  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063B674  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8063B678  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8063B67C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8063B680  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063B684  EC 01 00 2A */	fadds f0, f1, f0
/* 8063B688  D0 1E 06 6C */	stfs f0, 0x66c(r30)
/* 8063B68C  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 8063B690  7C 63 02 14 */	add r3, r3, r0
/* 8063B694  C0 03 00 04 */	lfs f0, 4(r3)
/* 8063B698  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063B69C  EC 01 00 2A */	fadds f0, f1, f0
/* 8063B6A0  D0 1E 06 74 */	stfs f0, 0x674(r30)
lbl_8063B6A4:
/* 8063B6A4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8063B6A8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8063B6AC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8063B6B0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8063B6B4  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8063B6B8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8063B6BC  C0 5E 06 74 */	lfs f2, 0x674(r30)
/* 8063B6C0  C0 1E 06 6C */	lfs f0, 0x66c(r30)
/* 8063B6C4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8063B6C8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8063B6CC  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8063B6D0  38 61 00 34 */	addi r3, r1, 0x34
/* 8063B6D4  38 81 00 40 */	addi r4, r1, 0x40
/* 8063B6D8  4B D0 BC C5 */	bl PSVECSquareDistance
/* 8063B6DC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063B6E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B6E4  40 81 00 58 */	ble lbl_8063B73C
/* 8063B6E8  FC 00 08 34 */	frsqrte f0, f1
/* 8063B6EC  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 8063B6F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8063B6F4  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 8063B6F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8063B6FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8063B700  FC 03 00 28 */	fsub f0, f3, f0
/* 8063B704  FC 02 00 32 */	fmul f0, f2, f0
/* 8063B708  FC 44 00 32 */	fmul f2, f4, f0
/* 8063B70C  FC 00 00 32 */	fmul f0, f0, f0
/* 8063B710  FC 01 00 32 */	fmul f0, f1, f0
/* 8063B714  FC 03 00 28 */	fsub f0, f3, f0
/* 8063B718  FC 02 00 32 */	fmul f0, f2, f0
/* 8063B71C  FC 44 00 32 */	fmul f2, f4, f0
/* 8063B720  FC 00 00 32 */	fmul f0, f0, f0
/* 8063B724  FC 01 00 32 */	fmul f0, f1, f0
/* 8063B728  FC 03 00 28 */	fsub f0, f3, f0
/* 8063B72C  FC 02 00 32 */	fmul f0, f2, f0
/* 8063B730  FC 21 00 32 */	fmul f1, f1, f0
/* 8063B734  FC 20 08 18 */	frsp f1, f1
/* 8063B738  48 00 00 88 */	b lbl_8063B7C0
lbl_8063B73C:
/* 8063B73C  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 8063B740  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B744  40 80 00 10 */	bge lbl_8063B754
/* 8063B748  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8063B74C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8063B750  48 00 00 70 */	b lbl_8063B7C0
lbl_8063B754:
/* 8063B754  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8063B758  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8063B75C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063B760  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063B764  7C 03 00 00 */	cmpw r3, r0
/* 8063B768  41 82 00 14 */	beq lbl_8063B77C
/* 8063B76C  40 80 00 40 */	bge lbl_8063B7AC
/* 8063B770  2C 03 00 00 */	cmpwi r3, 0
/* 8063B774  41 82 00 20 */	beq lbl_8063B794
/* 8063B778  48 00 00 34 */	b lbl_8063B7AC
lbl_8063B77C:
/* 8063B77C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063B780  41 82 00 0C */	beq lbl_8063B78C
/* 8063B784  38 00 00 01 */	li r0, 1
/* 8063B788  48 00 00 28 */	b lbl_8063B7B0
lbl_8063B78C:
/* 8063B78C  38 00 00 02 */	li r0, 2
/* 8063B790  48 00 00 20 */	b lbl_8063B7B0
lbl_8063B794:
/* 8063B794  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063B798  41 82 00 0C */	beq lbl_8063B7A4
/* 8063B79C  38 00 00 05 */	li r0, 5
/* 8063B7A0  48 00 00 10 */	b lbl_8063B7B0
lbl_8063B7A4:
/* 8063B7A4  38 00 00 03 */	li r0, 3
/* 8063B7A8  48 00 00 08 */	b lbl_8063B7B0
lbl_8063B7AC:
/* 8063B7AC  38 00 00 04 */	li r0, 4
lbl_8063B7B0:
/* 8063B7B0  2C 00 00 01 */	cmpwi r0, 1
/* 8063B7B4  40 82 00 0C */	bne lbl_8063B7C0
/* 8063B7B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8063B7BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8063B7C0:
/* 8063B7C0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8063B7C4  EC 01 00 24 */	fdivs f0, f1, f0
/* 8063B7C8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8063B7CC  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 8063B7D0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8063B7D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B7D8  40 81 00 08 */	ble lbl_8063B7E0
/* 8063B7DC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8063B7E0:
/* 8063B7E0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8063B7E4  38 9E 06 6C */	addi r4, r30, 0x66c
/* 8063B7E8  4B C3 54 1D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8063B7EC  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 8063B7F0  48 00 03 30 */	b lbl_8063BB20
lbl_8063B7F4:
/* 8063B7F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F8@ha */
/* 8063B7F8  38 03 02 F8 */	addi r0, r3, 0x02F8 /* 0x000702F8@l */
/* 8063B7FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B800  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063B804  38 81 00 14 */	addi r4, r1, 0x14
/* 8063B808  38 A0 00 00 */	li r5, 0
/* 8063B80C  38 C0 FF FF */	li r6, -1
/* 8063B810  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063B814  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063B818  7D 89 03 A6 */	mtctr r12
/* 8063B81C  4E 80 04 21 */	bctrl 
/* 8063B820  38 7E 06 9E */	addi r3, r30, 0x69e
/* 8063B824  38 80 00 00 */	li r4, 0
/* 8063B828  38 A0 00 20 */	li r5, 0x20
/* 8063B82C  4B C3 53 65 */	bl cLib_chaseAngleS__FPsss
/* 8063B830  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8063B834  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 8063B838  7C 03 02 14 */	add r0, r3, r0
/* 8063B83C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8063B840  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8063B844  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8063B848  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B84C  4C 40 13 82 */	cror 2, 0, 2
/* 8063B850  40 82 02 D0 */	bne lbl_8063BB20
/* 8063B854  38 00 00 04 */	li r0, 4
/* 8063B858  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063B85C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 8063B860  4B C2 C1 2D */	bl cM_rndFX__Ff
/* 8063B864  FC 00 08 1E */	fctiwz f0, f1
/* 8063B868  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8063B86C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8063B870  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8063B874  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8063B878  4B C2 C1 15 */	bl cM_rndFX__Ff
/* 8063B87C  FC 00 08 1E */	fctiwz f0, f1
/* 8063B880  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 8063B884  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8063B888  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8063B88C  38 00 00 0A */	li r0, 0xa
/* 8063B890  90 1E 06 A4 */	stw r0, 0x6a4(r30)
/* 8063B894  48 00 02 8C */	b lbl_8063BB20
lbl_8063B898:
/* 8063B898  38 00 00 01 */	li r0, 1
/* 8063B89C  98 1E 06 AD */	stb r0, 0x6ad(r30)
/* 8063B8A0  38 7E 06 9E */	addi r3, r30, 0x69e
/* 8063B8A4  38 80 00 00 */	li r4, 0
/* 8063B8A8  38 A0 00 20 */	li r5, 0x20
/* 8063B8AC  4B C3 52 E5 */	bl cLib_chaseAngleS__FPsss
/* 8063B8B0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8063B8B4  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 8063B8B8  7C 03 02 14 */	add r0, r3, r0
/* 8063B8BC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8063B8C0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8063B8C4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8063B8C8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8063B8CC  40 80 02 54 */	bge lbl_8063BB20
/* 8063B8D0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8063B8D4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8063B8D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8063B8DC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8063B8E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063B8E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063B8E8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8063B8EC  38 80 00 06 */	li r4, 6
/* 8063B8F0  38 A0 00 1F */	li r5, 0x1f
/* 8063B8F4  38 C1 00 4C */	addi r6, r1, 0x4c
/* 8063B8F8  4B A3 41 2D */	bl StartShock__12dVibration_cFii4cXyz
/* 8063B8FC  7F C3 F3 78 */	mr r3, r30
/* 8063B900  4B FF EF C9 */	bl setLandingEffect__9daB_YOI_cFv
/* 8063B904  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F9@ha */
/* 8063B908  38 03 02 F9 */	addi r0, r3, 0x02F9 /* 0x000702F9@l */
/* 8063B90C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8063B910  38 7E 06 48 */	addi r3, r30, 0x648
/* 8063B914  38 81 00 10 */	addi r4, r1, 0x10
/* 8063B918  38 A0 00 00 */	li r5, 0
/* 8063B91C  38 C0 FF FF */	li r6, -1
/* 8063B920  81 9E 06 58 */	lwz r12, 0x658(r30)
/* 8063B924  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8063B928  7D 89 03 A6 */	mtctr r12
/* 8063B92C  4E 80 04 21 */	bctrl 
/* 8063B930  38 00 00 05 */	li r0, 5
/* 8063B934  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8063B938  48 00 01 E8 */	b lbl_8063BB20
lbl_8063B93C:
/* 8063B93C  38 00 00 01 */	li r0, 1
/* 8063B940  98 1E 06 AD */	stb r0, 0x6ad(r30)
/* 8063B944  38 7E 06 9E */	addi r3, r30, 0x69e
/* 8063B948  38 80 00 00 */	li r4, 0
/* 8063B94C  38 A0 00 20 */	li r5, 0x20
/* 8063B950  4B C3 52 41 */	bl cLib_chaseAngleS__FPsss
/* 8063B954  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8063B958  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 8063B95C  7C 03 02 14 */	add r0, r3, r0
/* 8063B960  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8063B964  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8063B968  A8 9E 06 9C */	lha r4, 0x69c(r30)
/* 8063B96C  38 A0 00 04 */	li r5, 4
/* 8063B970  38 C0 04 00 */	li r6, 0x400
/* 8063B974  38 E0 01 00 */	li r7, 0x100
/* 8063B978  4B C3 4B C9 */	bl cLib_addCalcAngleS__FPsssss
/* 8063B97C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8063B980  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8063B984  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B988  40 80 01 98 */	bge lbl_8063BB20
/* 8063B98C  38 00 00 00 */	li r0, 0
/* 8063B990  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 8063B994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8063B998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8063B99C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8063B9A0  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8063B9A4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8063B9A8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8063B9AC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063B9B0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8063B9B4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8063B9B8  38 61 00 28 */	addi r3, r1, 0x28
/* 8063B9BC  4B D0 B7 7D */	bl PSVECSquareMag
/* 8063B9C0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063B9C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063B9C8  40 81 00 58 */	ble lbl_8063BA20
/* 8063B9CC  FC 00 08 34 */	frsqrte f0, f1
/* 8063B9D0  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 8063B9D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8063B9D8  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 8063B9DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8063B9E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8063B9E4  FC 03 00 28 */	fsub f0, f3, f0
/* 8063B9E8  FC 02 00 32 */	fmul f0, f2, f0
/* 8063B9EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8063B9F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8063B9F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8063B9F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8063B9FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8063BA00  FC 44 00 32 */	fmul f2, f4, f0
/* 8063BA04  FC 00 00 32 */	fmul f0, f0, f0
/* 8063BA08  FC 01 00 32 */	fmul f0, f1, f0
/* 8063BA0C  FC 03 00 28 */	fsub f0, f3, f0
/* 8063BA10  FC 02 00 32 */	fmul f0, f2, f0
/* 8063BA14  FC 21 00 32 */	fmul f1, f1, f0
/* 8063BA18  FC 20 08 18 */	frsp f1, f1
/* 8063BA1C  48 00 00 88 */	b lbl_8063BAA4
lbl_8063BA20:
/* 8063BA20  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 8063BA24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063BA28  40 80 00 10 */	bge lbl_8063BA38
/* 8063BA2C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8063BA30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8063BA34  48 00 00 70 */	b lbl_8063BAA4
lbl_8063BA38:
/* 8063BA38  D0 21 00 08 */	stfs f1, 8(r1)
/* 8063BA3C  80 81 00 08 */	lwz r4, 8(r1)
/* 8063BA40  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063BA44  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063BA48  7C 03 00 00 */	cmpw r3, r0
/* 8063BA4C  41 82 00 14 */	beq lbl_8063BA60
/* 8063BA50  40 80 00 40 */	bge lbl_8063BA90
/* 8063BA54  2C 03 00 00 */	cmpwi r3, 0
/* 8063BA58  41 82 00 20 */	beq lbl_8063BA78
/* 8063BA5C  48 00 00 34 */	b lbl_8063BA90
lbl_8063BA60:
/* 8063BA60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063BA64  41 82 00 0C */	beq lbl_8063BA70
/* 8063BA68  38 00 00 01 */	li r0, 1
/* 8063BA6C  48 00 00 28 */	b lbl_8063BA94
lbl_8063BA70:
/* 8063BA70  38 00 00 02 */	li r0, 2
/* 8063BA74  48 00 00 20 */	b lbl_8063BA94
lbl_8063BA78:
/* 8063BA78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063BA7C  41 82 00 0C */	beq lbl_8063BA88
/* 8063BA80  38 00 00 05 */	li r0, 5
/* 8063BA84  48 00 00 10 */	b lbl_8063BA94
lbl_8063BA88:
/* 8063BA88  38 00 00 03 */	li r0, 3
/* 8063BA8C  48 00 00 08 */	b lbl_8063BA94
lbl_8063BA90:
/* 8063BA90  38 00 00 04 */	li r0, 4
lbl_8063BA94:
/* 8063BA94  2C 00 00 01 */	cmpwi r0, 1
/* 8063BA98  40 82 00 0C */	bne lbl_8063BAA4
/* 8063BA9C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8063BAA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8063BAA4:
/* 8063BAA4  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8063BAA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063BAAC  40 81 00 14 */	ble lbl_8063BAC0
/* 8063BAB0  7F C3 F3 78 */	mr r3, r30
/* 8063BAB4  38 80 00 C8 */	li r4, 0xc8
/* 8063BAB8  4B FF EB 71 */	bl setWeight__9daB_YOI_cFUc
/* 8063BABC  48 00 00 10 */	b lbl_8063BACC
lbl_8063BAC0:
/* 8063BAC0  7F C3 F3 78 */	mr r3, r30
/* 8063BAC4  38 80 00 FE */	li r4, 0xfe
/* 8063BAC8  4B FF EB 61 */	bl setWeight__9daB_YOI_cFUc
lbl_8063BACC:
/* 8063BACC  80 1E 08 AC */	lwz r0, 0x8ac(r30)
/* 8063BAD0  60 00 00 01 */	ori r0, r0, 1
/* 8063BAD4  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 8063BAD8  80 1E 07 70 */	lwz r0, 0x770(r30)
/* 8063BADC  60 00 00 01 */	ori r0, r0, 1
/* 8063BAE0  90 1E 07 70 */	stw r0, 0x770(r30)
/* 8063BAE4  80 1E 07 58 */	lwz r0, 0x758(r30)
/* 8063BAE8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063BAEC  90 1E 07 58 */	stw r0, 0x758(r30)
/* 8063BAF0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063BAF4  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 8063BAF8  80 BE 06 68 */	lwz r5, 0x668(r30)
/* 8063BAFC  A0 85 0F 6C */	lhz r4, 0xf6c(r5)
/* 8063BB00  38 60 00 01 */	li r3, 1
/* 8063BB04  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8063BB08  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8063BB0C  7C 60 00 30 */	slw r0, r3, r0
/* 8063BB10  7C 80 03 78 */	or r0, r4, r0
/* 8063BB14  B0 05 0F 6C */	sth r0, 0xf6c(r5)
/* 8063BB18  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8063BB1C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8063BB20:
/* 8063BB20  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 8063BB24  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 8063BB28  39 61 00 90 */	addi r11, r1, 0x90
/* 8063BB2C  4B D2 66 F9 */	bl _restgpr_28
/* 8063BB30  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8063BB34  7C 08 03 A6 */	mtlr r0
/* 8063BB38  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8063BB3C  4E 80 00 20 */	blr 

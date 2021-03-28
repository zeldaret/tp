lbl_8063C3F0:
/* 8063C3F0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8063C3F4  7C 08 02 A6 */	mflr r0
/* 8063C3F8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8063C3FC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8063C400  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8063C404  39 61 00 60 */	addi r11, r1, 0x60
/* 8063C408  4B D2 5D D4 */	b _savegpr_29
/* 8063C40C  7C 7D 1B 78 */	mr r29, r3
/* 8063C410  3C 60 80 64 */	lis r3, lit_3776@ha
/* 8063C414  3B E3 DC 84 */	addi r31, r3, lit_3776@l
/* 8063C418  38 61 00 18 */	addi r3, r1, 0x18
/* 8063C41C  80 9D 06 68 */	lwz r4, 0x668(r29)
/* 8063C420  48 00 18 35 */	bl getIceCenterPos__8daB_YO_cFv
/* 8063C424  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8063C428  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8063C42C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8063C430  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8063C434  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8063C438  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8063C43C  80 7D 06 68 */	lwz r3, 0x668(r29)
/* 8063C440  C3 E3 0F 4C */	lfs f31, 0xf4c(r3)
/* 8063C444  AB C3 0F 5C */	lha r30, 0xf5c(r3)
/* 8063C448  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8063C44C  2C 00 00 04 */	cmpwi r0, 4
/* 8063C450  41 82 02 E4 */	beq lbl_8063C734
/* 8063C454  40 80 00 14 */	bge lbl_8063C468
/* 8063C458  2C 00 00 00 */	cmpwi r0, 0
/* 8063C45C  41 82 00 18 */	beq lbl_8063C474
/* 8063C460  40 80 00 FC */	bge lbl_8063C55C
/* 8063C464  48 00 02 E8 */	b lbl_8063C74C
lbl_8063C468:
/* 8063C468  2C 00 00 0A */	cmpwi r0, 0xa
/* 8063C46C  41 82 00 18 */	beq lbl_8063C484
/* 8063C470  48 00 02 DC */	b lbl_8063C74C
lbl_8063C474:
/* 8063C474  38 00 00 1E */	li r0, 0x1e
/* 8063C478  90 1D 06 A4 */	stw r0, 0x6a4(r29)
/* 8063C47C  38 00 00 0A */	li r0, 0xa
/* 8063C480  90 1D 06 98 */	stw r0, 0x698(r29)
lbl_8063C484:
/* 8063C484  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8063C488  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8063C48C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8063C490  4B C3 42 B0 */	b cLib_chaseF__FPfff
/* 8063C494  38 7D 06 9E */	addi r3, r29, 0x69e
/* 8063C498  38 80 0C 00 */	li r4, 0xc00
/* 8063C49C  38 A0 01 00 */	li r5, 0x100
/* 8063C4A0  4B C3 46 F0 */	b cLib_chaseAngleS__FPsss
/* 8063C4A4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8063C4A8  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 8063C4AC  7C 03 02 14 */	add r0, r3, r0
/* 8063C4B0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8063C4B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8063C4B8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8063C4BC  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8063C4C0  1C 00 19 99 */	mulli r0, r0, 0x1999
/* 8063C4C4  7C 1E 02 14 */	add r0, r30, r0
/* 8063C4C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063C4CC  7C 64 02 14 */	add r3, r4, r0
/* 8063C4D0  C0 63 00 04 */	lfs f3, 4(r3)
/* 8063C4D4  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8063C4D8  7C 04 04 2E */	lfsx f0, r4, r0
/* 8063C4DC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8063C4E0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063C4E4  EC 01 00 2A */	fadds f0, f1, f0
/* 8063C4E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8063C4EC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8063C4F0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8063C4F4  EC 1F 00 F2 */	fmuls f0, f31, f3
/* 8063C4F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8063C4FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8063C500  38 7D 06 84 */	addi r3, r29, 0x684
/* 8063C504  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8063C508  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8063C50C  4B C3 42 34 */	b cLib_chaseF__FPfff
/* 8063C510  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8063C514  38 81 00 24 */	addi r4, r1, 0x24
/* 8063C518  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8063C51C  C0 5D 06 84 */	lfs f2, 0x684(r29)
/* 8063C520  4B C3 3E 30 */	b cLib_addCalcPosXZ2__FP4cXyzRC4cXyzff
/* 8063C524  80 1D 06 A4 */	lwz r0, 0x6a4(r29)
/* 8063C528  2C 00 00 00 */	cmpwi r0, 0
/* 8063C52C  40 82 02 20 */	bne lbl_8063C74C
/* 8063C530  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063C534  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8063C538  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8063C53C  38 00 00 01 */	li r0, 1
/* 8063C540  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8063C544  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 8063C548  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8063C54C  80 1D 07 58 */	lwz r0, 0x758(r29)
/* 8063C550  60 00 00 01 */	ori r0, r0, 1
/* 8063C554  90 1D 07 58 */	stw r0, 0x758(r29)
/* 8063C558  48 00 01 F4 */	b lbl_8063C74C
lbl_8063C55C:
/* 8063C55C  38 7D 06 9E */	addi r3, r29, 0x69e
/* 8063C560  38 80 00 00 */	li r4, 0
/* 8063C564  38 A0 00 20 */	li r5, 0x20
/* 8063C568  4B C3 46 28 */	b cLib_chaseAngleS__FPsss
/* 8063C56C  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8063C570  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 8063C574  7C 03 02 14 */	add r0, r3, r0
/* 8063C578  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8063C57C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8063C580  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8063C584  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8063C588  1C 00 19 99 */	mulli r0, r0, 0x1999
/* 8063C58C  7C 1E 02 14 */	add r0, r30, r0
/* 8063C590  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063C594  7C 64 02 14 */	add r3, r4, r0
/* 8063C598  C0 63 00 04 */	lfs f3, 4(r3)
/* 8063C59C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8063C5A0  7C 04 04 2E */	lfsx f0, r4, r0
/* 8063C5A4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 8063C5A8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063C5AC  EC 01 00 2A */	fadds f0, f1, f0
/* 8063C5B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8063C5B4  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8063C5B8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8063C5BC  EC 1F 00 F2 */	fmuls f0, f31, f3
/* 8063C5C0  EC 01 00 2A */	fadds f0, f1, f0
/* 8063C5C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8063C5C8  38 7D 06 84 */	addi r3, r29, 0x684
/* 8063C5CC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8063C5D0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8063C5D4  4B C3 41 6C */	b cLib_chaseF__FPfff
/* 8063C5D8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8063C5DC  38 81 00 24 */	addi r4, r1, 0x24
/* 8063C5E0  C0 3D 06 84 */	lfs f1, 0x684(r29)
/* 8063C5E4  4B C3 43 AC */	b cLib_chasePosXZ__FP4cXyzRC4cXyzf
/* 8063C5E8  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8063C5EC  2C 00 00 01 */	cmpwi r0, 1
/* 8063C5F0  40 82 00 4C */	bne lbl_8063C63C
/* 8063C5F4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8063C5F8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8063C5FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C600  4C 40 13 82 */	cror 2, 0, 2
/* 8063C604  40 82 01 48 */	bne lbl_8063C74C
/* 8063C608  38 00 00 02 */	li r0, 2
/* 8063C60C  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8063C610  38 00 00 00 */	li r0, 0
/* 8063C614  B0 1D 06 9C */	sth r0, 0x69c(r29)
/* 8063C618  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8063C61C  4B C2 B3 70 */	b cM_rndFX__Ff
/* 8063C620  FC 00 08 1E */	fctiwz f0, f1
/* 8063C624  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8063C628  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8063C62C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8063C630  38 00 00 0A */	li r0, 0xa
/* 8063C634  90 1D 06 A4 */	stw r0, 0x6a4(r29)
/* 8063C638  48 00 01 14 */	b lbl_8063C74C
lbl_8063C63C:
/* 8063C63C  2C 00 00 02 */	cmpwi r0, 2
/* 8063C640  40 82 00 80 */	bne lbl_8063C6C0
/* 8063C644  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8063C648  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8063C64C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8063C650  40 80 00 FC */	bge lbl_8063C74C
/* 8063C654  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8063C658  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8063C65C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8063C660  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8063C664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063C668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063C66C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8063C670  38 80 00 06 */	li r4, 6
/* 8063C674  38 A0 00 1F */	li r5, 0x1f
/* 8063C678  38 C1 00 0C */	addi r6, r1, 0xc
/* 8063C67C  4B A3 33 A8 */	b StartShock__12dVibration_cFii4cXyz
/* 8063C680  7F A3 EB 78 */	mr r3, r29
/* 8063C684  4B FF E2 45 */	bl setLandingEffect__9daB_YOI_cFv
/* 8063C688  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F9@ha */
/* 8063C68C  38 03 02 F9 */	addi r0, r3, 0x02F9 /* 0x000702F9@l */
/* 8063C690  90 01 00 08 */	stw r0, 8(r1)
/* 8063C694  38 7D 06 48 */	addi r3, r29, 0x648
/* 8063C698  38 81 00 08 */	addi r4, r1, 8
/* 8063C69C  38 A0 00 00 */	li r5, 0
/* 8063C6A0  38 C0 FF FF */	li r6, -1
/* 8063C6A4  81 9D 06 58 */	lwz r12, 0x658(r29)
/* 8063C6A8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8063C6AC  7D 89 03 A6 */	mtctr r12
/* 8063C6B0  4E 80 04 21 */	bctrl 
/* 8063C6B4  38 00 00 03 */	li r0, 3
/* 8063C6B8  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8063C6BC  48 00 00 90 */	b lbl_8063C74C
lbl_8063C6C0:
/* 8063C6C0  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8063C6C4  A8 9D 06 9C */	lha r4, 0x69c(r29)
/* 8063C6C8  38 A0 00 04 */	li r5, 4
/* 8063C6CC  38 C0 04 00 */	li r6, 0x400
/* 8063C6D0  38 E0 01 00 */	li r7, 0x100
/* 8063C6D4  4B C3 3E 6C */	b cLib_addCalcAngleS__FPsssss
/* 8063C6D8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8063C6DC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8063C6E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C6E4  40 80 00 68 */	bge lbl_8063C74C
/* 8063C6E8  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 8063C6EC  A0 85 0F 6C */	lhz r4, 0xf6c(r5)
/* 8063C6F0  38 60 00 01 */	li r3, 1
/* 8063C6F4  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8063C6F8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8063C6FC  7C 60 00 30 */	slw r0, r3, r0
/* 8063C700  7C 80 03 78 */	or r0, r4, r0
/* 8063C704  B0 05 0F 6C */	sth r0, 0xf6c(r5)
/* 8063C708  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063C70C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8063C710  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8063C714  38 00 00 04 */	li r0, 4
/* 8063C718  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8063C71C  38 00 00 00 */	li r0, 0
/* 8063C720  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 8063C724  80 1D 07 58 */	lwz r0, 0x758(r29)
/* 8063C728  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063C72C  90 1D 07 58 */	stw r0, 0x758(r29)
/* 8063C730  48 00 00 1C */	b lbl_8063C74C
lbl_8063C734:
/* 8063C734  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8063C738  A8 9D 06 9C */	lha r4, 0x69c(r29)
/* 8063C73C  38 A0 00 04 */	li r5, 4
/* 8063C740  38 C0 04 00 */	li r6, 0x400
/* 8063C744  38 E0 01 00 */	li r7, 0x100
/* 8063C748  4B C3 3D F8 */	b cLib_addCalcAngleS__FPsssss
lbl_8063C74C:
/* 8063C74C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8063C750  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8063C754  39 61 00 60 */	addi r11, r1, 0x60
/* 8063C758  4B D2 5A D0 */	b _restgpr_29
/* 8063C75C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8063C760  7C 08 03 A6 */	mtlr r0
/* 8063C764  38 21 00 70 */	addi r1, r1, 0x70
/* 8063C768  4E 80 00 20 */	blr 

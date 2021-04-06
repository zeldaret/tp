lbl_8058B4B0:
/* 8058B4B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8058B4B4  7C 08 02 A6 */	mflr r0
/* 8058B4B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8058B4BC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8058B4C0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8058B4C4  39 61 00 30 */	addi r11, r1, 0x30
/* 8058B4C8  4B DD 6D 15 */	bl _savegpr_29
/* 8058B4CC  7C 7F 1B 78 */	mr r31, r3
/* 8058B4D0  7C 9D 23 78 */	mr r29, r4
/* 8058B4D4  3C 60 80 59 */	lis r3, l_bmdidx@ha /* 0x8058C380@ha */
/* 8058B4D8  3B C3 C3 80 */	addi r30, r3, l_bmdidx@l /* 0x8058C380@l */
/* 8058B4DC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8058B4E0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8058B4E4  40 82 00 E8 */	bne lbl_8058B5CC
/* 8058B4E8  38 61 00 08 */	addi r3, r1, 8
/* 8058B4EC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8058B4F0  80 DF 06 18 */	lwz r6, 0x618(r31)
/* 8058B4F4  80 BF 06 14 */	lwz r5, 0x614(r31)
/* 8058B4F8  38 05 FF FF */	addi r0, r5, -1
/* 8058B4FC  1C A0 00 24 */	mulli r5, r0, 0x24
/* 8058B500  38 A5 00 0C */	addi r5, r5, 0xc
/* 8058B504  7C A6 2A 14 */	add r5, r6, r5
/* 8058B508  4B CD B6 2D */	bl __mi__4cXyzCFRC3Vec
/* 8058B50C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8058B510  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8058B514  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8058B518  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8058B51C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8058B520  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8058B524  C3 FE 00 20 */	lfs f31, 0x20(r30)
/* 8058B528  38 7D 04 F8 */	addi r3, r29, 0x4f8
/* 8058B52C  4B DB BC 0D */	bl PSVECSquareMag
/* 8058B530  FC 00 0A 10 */	fabs f0, f1
/* 8058B534  FC 20 00 18 */	frsp f1, f0
/* 8058B538  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 8058B53C  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 8058B540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058B544  7C 00 00 26 */	mfcr r0
/* 8058B548  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 8058B54C  40 82 00 08 */	bne lbl_8058B554
/* 8058B550  C3 FE 00 24 */	lfs f31, 0x24(r30)
lbl_8058B554:
/* 8058B554  FC 20 F8 90 */	fmr f1, f31
/* 8058B558  4B CD C4 35 */	bl cM_rndFX__Ff
/* 8058B55C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8058B560  EC 40 08 2A */	fadds f2, f0, f1
/* 8058B564  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8058B568  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8058B56C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058B570  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8058B574  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 8058B578  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 8058B57C  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8058B580  7C 63 02 14 */	add r3, r3, r0
/* 8058B584  C0 03 FF DC */	lfs f0, -0x24(r3)
/* 8058B588  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058B58C  D0 03 FF DC */	stfs f0, -0x24(r3)
/* 8058B590  FC 20 F8 90 */	fmr f1, f31
/* 8058B594  4B CD C3 F9 */	bl cM_rndFX__Ff
/* 8058B598  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8058B59C  EC 40 08 2A */	fadds f2, f0, f1
/* 8058B5A0  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8058B5A4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8058B5A8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058B5AC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 8058B5B0  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 8058B5B4  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 8058B5B8  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8058B5BC  7C 63 02 14 */	add r3, r3, r0
/* 8058B5C0  C0 03 FF E4 */	lfs f0, -0x1c(r3)
/* 8058B5C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8058B5C8  D0 03 FF E4 */	stfs f0, -0x1c(r3)
lbl_8058B5CC:
/* 8058B5CC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8058B5D0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8058B5D4  39 61 00 30 */	addi r11, r1, 0x30
/* 8058B5D8  4B DD 6C 51 */	bl _restgpr_29
/* 8058B5DC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8058B5E0  7C 08 03 A6 */	mtlr r0
/* 8058B5E4  38 21 00 40 */	addi r1, r1, 0x40
/* 8058B5E8  4E 80 00 20 */	blr 

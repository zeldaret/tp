lbl_8065D17C:
/* 8065D17C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065D180  7C 08 02 A6 */	mflr r0
/* 8065D184  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065D188  39 61 00 20 */	addi r11, r1, 0x20
/* 8065D18C  4B D0 50 50 */	b _savegpr_29
/* 8065D190  7C 7D 1B 78 */	mr r29, r3
/* 8065D194  7C 9E 23 78 */	mr r30, r4
/* 8065D198  3C 80 80 66 */	lis r4, lit_3987@ha
/* 8065D19C  3B E4 2D B0 */	addi r31, r4, lit_3987@l
/* 8065D1A0  4B FF DE 95 */	bl checkBeforeBg__7daCow_cFv
/* 8065D1A4  C0 3D 0C 6C */	lfs f1, 0xc6c(r29)
/* 8065D1A8  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8065D1AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065D1B0  40 80 00 64 */	bge lbl_8065D214
/* 8065D1B4  A8 7D 0C 70 */	lha r3, 0xc70(r29)
/* 8065D1B8  A8 9D 0C 34 */	lha r4, 0xc34(r29)
/* 8065D1BC  4B C1 3C 68 */	b cLib_distanceAngleS__Fss
/* 8065D1C0  7C 64 07 34 */	extsh r4, r3
/* 8065D1C4  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 8065D1C8  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 8065D1CC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8065D1D0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8065D1D4  7C 03 04 2E */	lfsx f0, r3, r0
/* 8065D1D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8065D1DC  FC 00 02 10 */	fabs f0, f0
/* 8065D1E0  FC 40 00 18 */	frsp f2, f0
/* 8065D1E4  C0 3D 0C 6C */	lfs f1, 0xc6c(r29)
/* 8065D1E8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8065D1EC  EC 00 10 2A */	fadds f0, f0, f2
/* 8065D1F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065D1F4  40 80 00 20 */	bge lbl_8065D214
/* 8065D1F8  7F C0 07 34 */	extsh r0, r30
/* 8065D1FC  7C 04 00 00 */	cmpw r4, r0
/* 8065D200  41 80 00 14 */	blt lbl_8065D214
/* 8065D204  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065D208  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8065D20C  38 60 00 01 */	li r3, 1
/* 8065D210  48 00 00 08 */	b lbl_8065D218
lbl_8065D214:
/* 8065D214  38 60 00 00 */	li r3, 0
lbl_8065D218:
/* 8065D218  39 61 00 20 */	addi r11, r1, 0x20
/* 8065D21C  4B D0 50 0C */	b _restgpr_29
/* 8065D220  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065D224  7C 08 03 A6 */	mtlr r0
/* 8065D228  38 21 00 20 */	addi r1, r1, 0x20
/* 8065D22C  4E 80 00 20 */	blr 

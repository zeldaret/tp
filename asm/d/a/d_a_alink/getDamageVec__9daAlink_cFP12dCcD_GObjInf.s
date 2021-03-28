lbl_800D74F4:
/* 800D74F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800D74F8  7C 08 02 A6 */	mflr r0
/* 800D74FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 800D7500  39 61 00 50 */	addi r11, r1, 0x50
/* 800D7504  48 28 AC D9 */	bl _savegpr_29
/* 800D7508  7C 7D 1B 78 */	mr r29, r3
/* 800D750C  7C 9E 23 78 */	mr r30, r4
/* 800D7510  3B FE 00 C8 */	addi r31, r30, 0xc8
/* 800D7514  C0 24 00 D0 */	lfs f1, 0xd0(r4)
/* 800D7518  C0 04 00 C8 */	lfs f0, 0xc8(r4)
/* 800D751C  D0 01 00 08 */	stfs f0, 8(r1)
/* 800D7520  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D7524  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800D7528  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800D752C  38 61 00 08 */	addi r3, r1, 8
/* 800D7530  48 26 FC 09 */	bl PSVECSquareMag
/* 800D7534  80 1D 05 84 */	lwz r0, 0x584(r29)
/* 800D7538  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800D753C  41 82 00 54 */	beq lbl_800D7590
/* 800D7540  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800D7544  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800D7548  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800D754C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D7550  7C 64 02 14 */	add r3, r4, r0
/* 800D7554  C0 63 00 04 */	lfs f3, 4(r3)
/* 800D7558  7C 04 04 2E */	lfsx f0, r4, r0
/* 800D755C  C0 42 93 9C */	lfs f2, lit_9053(r2)
/* 800D7560  EC 22 00 32 */	fmuls f1, f2, f0
/* 800D7564  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800D7568  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D756C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800D7570  EC 02 00 F2 */	fmuls f0, f2, f3
/* 800D7574  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800D7578  D0 3E 00 C8 */	stfs f1, 0xc8(r30)
/* 800D757C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800D7580  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 800D7584  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800D7588  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 800D758C  48 00 01 10 */	b lbl_800D769C
lbl_800D7590:
/* 800D7590  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800D7594  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D7598  40 80 01 04 */	bge lbl_800D769C
/* 800D759C  38 7E 00 9C */	addi r3, r30, 0x9c
/* 800D75A0  4B FA C0 E9 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800D75A4  28 03 00 00 */	cmplwi r3, 0
/* 800D75A8  41 82 00 3C */	beq lbl_800D75E4
/* 800D75AC  38 7E 00 9C */	addi r3, r30, 0x9c
/* 800D75B0  4B FA C0 D9 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800D75B4  7C 65 1B 78 */	mr r5, r3
/* 800D75B8  38 61 00 20 */	addi r3, r1, 0x20
/* 800D75BC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 800D75C0  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 800D75C4  48 18 F5 71 */	bl __mi__4cXyzCFRC3Vec
/* 800D75C8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800D75CC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800D75D0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800D75D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800D75D8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800D75DC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800D75E0  48 00 00 2C */	b lbl_800D760C
lbl_800D75E4:
/* 800D75E4  38 61 00 14 */	addi r3, r1, 0x14
/* 800D75E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 800D75EC  38 BE 00 D4 */	addi r5, r30, 0xd4
/* 800D75F0  48 18 F5 45 */	bl __mi__4cXyzCFRC3Vec
/* 800D75F4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800D75F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800D75FC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800D7600  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800D7604  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800D7608  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_800D760C:
/* 800D760C  38 61 00 2C */	addi r3, r1, 0x2c
/* 800D7610  48 26 FB 29 */	bl PSVECSquareMag
/* 800D7614  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800D7618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D761C  40 80 00 40 */	bge lbl_800D765C
/* 800D7620  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800D7624  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D7628  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800D762C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800D7630  7C 03 04 2E */	lfsx f0, r3, r0
/* 800D7634  C0 22 93 9C */	lfs f1, lit_9053(r2)
/* 800D7638  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D763C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800D7640  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D7644  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800D7648  7C 63 02 14 */	add r3, r3, r0
/* 800D764C  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D7650  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D7654  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800D7658  48 00 00 2C */	b lbl_800D7684
lbl_800D765C:
/* 800D765C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D7660  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D7664  40 81 00 0C */	ble lbl_800D7670
/* 800D7668  FC 00 08 34 */	frsqrte f0, f1
/* 800D766C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_800D7670:
/* 800D7670  38 61 00 2C */	addi r3, r1, 0x2c
/* 800D7674  7C 64 1B 78 */	mr r4, r3
/* 800D7678  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800D767C  EC 20 08 24 */	fdivs f1, f0, f1
/* 800D7680  48 26 FA 59 */	bl PSVECScale
lbl_800D7684:
/* 800D7684  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800D7688  D0 1E 00 C8 */	stfs f0, 0xc8(r30)
/* 800D768C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800D7690  D0 1E 00 CC */	stfs f0, 0xcc(r30)
/* 800D7694  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800D7698  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
lbl_800D769C:
/* 800D769C  7F A3 EB 78 */	mr r3, r29
/* 800D76A0  7F E4 FB 78 */	mr r4, r31
/* 800D76A4  48 00 AD D9 */	bl multVecMagneBootInvMtx__9daAlink_cFP4cXyz
/* 800D76A8  7F E3 FB 78 */	mr r3, r31
/* 800D76AC  39 61 00 50 */	addi r11, r1, 0x50
/* 800D76B0  48 28 AB 79 */	bl _restgpr_29
/* 800D76B4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800D76B8  7C 08 03 A6 */	mtlr r0
/* 800D76BC  38 21 00 50 */	addi r1, r1, 0x50
/* 800D76C0  4E 80 00 20 */	blr 

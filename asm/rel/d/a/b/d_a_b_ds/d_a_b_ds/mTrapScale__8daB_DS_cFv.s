lbl_805CC6F4:
/* 805CC6F4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CC6F8  7C 08 02 A6 */	mflr r0
/* 805CC6FC  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CC700  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805CC704  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805CC708  39 61 00 20 */	addi r11, r1, 0x20
/* 805CC70C  4B D9 5A CC */	b _savegpr_28
/* 805CC710  7C 7C 1B 78 */	mr r28, r3
/* 805CC714  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805CC718  3B C3 CA 54 */	addi r30, r3, lit_3932@l
/* 805CC71C  C3 FE 00 08 */	lfs f31, 8(r30)
/* 805CC720  88 1C 08 52 */	lbz r0, 0x852(r28)
/* 805CC724  28 00 00 00 */	cmplwi r0, 0
/* 805CC728  41 82 00 0C */	beq lbl_805CC734
/* 805CC72C  C3 FE 00 78 */	lfs f31, 0x78(r30)
/* 805CC730  48 00 00 10 */	b lbl_805CC740
lbl_805CC734:
/* 805CC734  80 1C 2D 78 */	lwz r0, 0x2d78(r28)
/* 805CC738  28 00 00 00 */	cmplwi r0, 0
/* 805CC73C  41 82 00 B0 */	beq lbl_805CC7EC
lbl_805CC740:
/* 805CC740  3B A0 00 00 */	li r29, 0
/* 805CC744  3B E0 00 00 */	li r31, 0
lbl_805CC748:
/* 805CC748  38 1F 2D 78 */	addi r0, r31, 0x2d78
/* 805CC74C  7C 7C 00 2E */	lwzx r3, r28, r0
/* 805CC750  38 81 00 08 */	addi r4, r1, 8
/* 805CC754  4B A4 D2 68 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805CC758  2C 03 00 00 */	cmpwi r3, 0
/* 805CC75C  41 82 00 80 */	beq lbl_805CC7DC
/* 805CC760  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC764  28 03 00 00 */	cmplwi r3, 0
/* 805CC768  41 82 00 74 */	beq lbl_805CC7DC
/* 805CC76C  38 63 04 EC */	addi r3, r3, 0x4ec
/* 805CC770  FC 20 F8 90 */	fmr f1, f31
/* 805CC774  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 805CC778  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 805CC77C  4B CA 32 C0 */	b cLib_addCalc2__FPffff
/* 805CC780  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC784  38 63 04 F0 */	addi r3, r3, 0x4f0
/* 805CC788  FC 20 F8 90 */	fmr f1, f31
/* 805CC78C  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 805CC790  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 805CC794  4B CA 32 A8 */	b cLib_addCalc2__FPffff
/* 805CC798  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC79C  38 63 04 F4 */	addi r3, r3, 0x4f4
/* 805CC7A0  FC 20 F8 90 */	fmr f1, f31
/* 805CC7A4  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 805CC7A8  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 805CC7AC  4B CA 32 90 */	b cLib_addCalc2__FPffff
/* 805CC7B0  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC7B4  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 805CC7B8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 805CC7BC  FC 00 02 10 */	fabs f0, f0
/* 805CC7C0  FC 20 00 18 */	frsp f1, f0
/* 805CC7C4  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 805CC7C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CC7CC  40 80 00 10 */	bge lbl_805CC7DC
/* 805CC7D0  D3 E3 04 EC */	stfs f31, 0x4ec(r3)
/* 805CC7D4  D3 E3 04 F0 */	stfs f31, 0x4f0(r3)
/* 805CC7D8  D3 E3 04 F4 */	stfs f31, 0x4f4(r3)
lbl_805CC7DC:
/* 805CC7DC  3B BD 00 01 */	addi r29, r29, 1
/* 805CC7E0  2C 1D 00 14 */	cmpwi r29, 0x14
/* 805CC7E4  3B FF 00 04 */	addi r31, r31, 4
/* 805CC7E8  41 80 FF 60 */	blt lbl_805CC748
lbl_805CC7EC:
/* 805CC7EC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805CC7F0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805CC7F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805CC7F8  4B D9 5A 2C */	b _restgpr_28
/* 805CC7FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CC800  7C 08 03 A6 */	mtlr r0
/* 805CC804  38 21 00 30 */	addi r1, r1, 0x30
/* 805CC808  4E 80 00 20 */	blr 

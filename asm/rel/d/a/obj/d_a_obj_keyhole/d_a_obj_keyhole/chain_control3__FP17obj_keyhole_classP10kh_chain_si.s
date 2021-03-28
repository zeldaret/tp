lbl_80C41C84:
/* 80C41C84  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C41C88  7C 08 02 A6 */	mflr r0
/* 80C41C8C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C41C90  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C41C94  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C41C98  39 61 00 50 */	addi r11, r1, 0x50
/* 80C41C9C  4B 72 05 3C */	b _savegpr_28
/* 80C41CA0  7C 7C 1B 78 */	mr r28, r3
/* 80C41CA4  7C 9D 23 78 */	mr r29, r4
/* 80C41CA8  38 61 00 14 */	addi r3, r1, 0x14
/* 80C41CAC  38 9D 00 58 */	addi r4, r29, 0x58
/* 80C41CB0  38 BD 00 40 */	addi r5, r29, 0x40
/* 80C41CB4  4B 62 4E 80 */	b __mi__4cXyzCFRC3Vec
/* 80C41CB8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C41CBC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C41CC0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C41CC4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C41CC8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C41CCC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C41CD0  3B DD 00 58 */	addi r30, r29, 0x58
/* 80C41CD4  3B A0 00 00 */	li r29, 0
/* 80C41CD8  3C 60 80 C4 */	lis r3, lit_3928@ha
/* 80C41CDC  CB E3 3A 0C */	lfd f31, lit_3928@l(r3)
/* 80C41CE0  3F E0 43 30 */	lis r31, 0x4330
/* 80C41CE4  48 00 00 5C */	b lbl_80C41D40
lbl_80C41CE8:
/* 80C41CE8  38 61 00 08 */	addi r3, r1, 8
/* 80C41CEC  38 81 00 20 */	addi r4, r1, 0x20
/* 80C41CF0  38 A5 FF FF */	addi r5, r5, -1
/* 80C41CF4  7C 1D 28 50 */	subf r0, r29, r5
/* 80C41CF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C41CFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C41D00  93 E1 00 30 */	stw r31, 0x30(r1)
/* 80C41D04  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80C41D08  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80C41D0C  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80C41D10  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C41D14  93 E1 00 38 */	stw r31, 0x38(r1)
/* 80C41D18  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80C41D1C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80C41D20  EC 21 00 24 */	fdivs f1, f1, f0
/* 80C41D24  4B 62 4E 60 */	b __ml__4cXyzCFf
/* 80C41D28  7F C3 F3 78 */	mr r3, r30
/* 80C41D2C  38 81 00 08 */	addi r4, r1, 8
/* 80C41D30  7F C5 F3 78 */	mr r5, r30
/* 80C41D34  4B 70 53 80 */	b PSVECSubtract
/* 80C41D38  3B BD 00 01 */	addi r29, r29, 1
/* 80C41D3C  3B DE 00 0C */	addi r30, r30, 0xc
lbl_80C41D40:
/* 80C41D40  80 BC 05 7C */	lwz r5, 0x57c(r28)
/* 80C41D44  7C 1D 28 00 */	cmpw r29, r5
/* 80C41D48  41 80 FF A0 */	blt lbl_80C41CE8
/* 80C41D4C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C41D50  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C41D54  39 61 00 50 */	addi r11, r1, 0x50
/* 80C41D58  4B 72 04 CC */	b _restgpr_28
/* 80C41D5C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C41D60  7C 08 03 A6 */	mtlr r0
/* 80C41D64  38 21 00 60 */	addi r1, r1, 0x60
/* 80C41D68  4E 80 00 20 */	blr 

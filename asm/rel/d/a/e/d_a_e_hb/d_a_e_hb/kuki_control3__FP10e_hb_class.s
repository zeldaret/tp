lbl_804FEA6C:
/* 804FEA6C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804FEA70  7C 08 02 A6 */	mflr r0
/* 804FEA74  90 01 00 74 */	stw r0, 0x74(r1)
/* 804FEA78  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804FEA7C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804FEA80  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 804FEA84  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 804FEA88  39 61 00 50 */	addi r11, r1, 0x50
/* 804FEA8C  4B E6 37 51 */	bl _savegpr_29
/* 804FEA90  7C 7D 1B 78 */	mr r29, r3
/* 804FEA94  38 61 00 14 */	addi r3, r1, 0x14
/* 804FEA98  38 9D 06 A0 */	addi r4, r29, 0x6a0
/* 804FEA9C  38 BD 04 A8 */	addi r5, r29, 0x4a8
/* 804FEAA0  4B D6 80 95 */	bl __mi__4cXyzCFRC3Vec
/* 804FEAA4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804FEAA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804FEAAC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804FEAB0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804FEAB4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804FEAB8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804FEABC  3B DD 06 A0 */	addi r30, r29, 0x6a0
/* 804FEAC0  3B A0 00 00 */	li r29, 0
/* 804FEAC4  3C 60 80 50 */	lis r3, lit_4212@ha /* 0x80500B9C@ha */
/* 804FEAC8  CB C3 0B 9C */	lfd f30, lit_4212@l(r3)  /* 0x80500B9C@l */
/* 804FEACC  3F E0 43 30 */	lis r31, 0x4330
/* 804FEAD0  3C 60 80 50 */	lis r3, lit_4725@ha /* 0x80500BE4@ha */
/* 804FEAD4  C3 E3 0B E4 */	lfs f31, lit_4725@l(r3)  /* 0x80500BE4@l */
lbl_804FEAD8:
/* 804FEAD8  38 61 00 08 */	addi r3, r1, 8
/* 804FEADC  38 81 00 20 */	addi r4, r1, 0x20
/* 804FEAE0  20 1D 00 0C */	subfic r0, r29, 0xc
/* 804FEAE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804FEAE8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804FEAEC  93 E1 00 30 */	stw r31, 0x30(r1)
/* 804FEAF0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804FEAF4  EC 00 F0 28 */	fsubs f0, f0, f30
/* 804FEAF8  EC 20 F8 24 */	fdivs f1, f0, f31
/* 804FEAFC  4B D6 80 89 */	bl __ml__4cXyzCFf
/* 804FEB00  7F C3 F3 78 */	mr r3, r30
/* 804FEB04  38 81 00 08 */	addi r4, r1, 8
/* 804FEB08  7F C5 F3 78 */	mr r5, r30
/* 804FEB0C  4B E4 85 A9 */	bl PSVECSubtract
/* 804FEB10  3B BD 00 01 */	addi r29, r29, 1
/* 804FEB14  2C 1D 00 0C */	cmpwi r29, 0xc
/* 804FEB18  3B DE 00 0C */	addi r30, r30, 0xc
/* 804FEB1C  41 80 FF BC */	blt lbl_804FEAD8
/* 804FEB20  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804FEB24  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804FEB28  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 804FEB2C  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 804FEB30  39 61 00 50 */	addi r11, r1, 0x50
/* 804FEB34  4B E6 36 F5 */	bl _restgpr_29
/* 804FEB38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804FEB3C  7C 08 03 A6 */	mtlr r0
/* 804FEB40  38 21 00 70 */	addi r1, r1, 0x70
/* 804FEB44  4E 80 00 20 */	blr 

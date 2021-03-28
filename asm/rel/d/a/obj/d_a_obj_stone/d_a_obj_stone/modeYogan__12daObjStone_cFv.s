lbl_80CEBE84:
/* 80CEBE84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CEBE88  7C 08 02 A6 */	mflr r0
/* 80CEBE8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CEBE90  39 61 00 20 */	addi r11, r1, 0x20
/* 80CEBE94  4B 67 63 48 */	b _savegpr_29
/* 80CEBE98  7C 7D 1B 78 */	mr r29, r3
/* 80CEBE9C  C0 43 07 40 */	lfs f2, 0x740(r3)
/* 80CEBEA0  3C 80 80 CF */	lis r4, lit_5074@ha
/* 80CEBEA4  C0 24 CC 18 */	lfs f1, lit_5074@l(r4)
/* 80CEBEA8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CEBEAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80CEBEB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CEBEB4  7C 00 00 26 */	mfcr r0
/* 80CEBEB8  54 1E 17 FE */	rlwinm r30, r0, 2, 0x1f, 0x1f
/* 80CEBEBC  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80CEBEC0  54 1F CF FE */	rlwinm r31, r0, 0x19, 0x1f, 0x1f
/* 80CEBEC4  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80CEBEC8  3C 80 80 CF */	lis r4, lit_5075@ha
/* 80CEBECC  C0 04 CC 1C */	lfs f0, lit_5075@l(r4)
/* 80CEBED0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CEBED4  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80CEBED8  38 80 00 00 */	li r4, 0
/* 80CEBEDC  4B 32 E7 F0 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CEBEE0  28 1E 00 00 */	cmplwi r30, 0
/* 80CEBEE4  40 82 00 0C */	bne lbl_80CEBEF0
/* 80CEBEE8  28 1F 00 00 */	cmplwi r31, 0
/* 80CEBEEC  41 82 00 0C */	beq lbl_80CEBEF8
lbl_80CEBEF0:
/* 80CEBEF0  7F A3 EB 78 */	mr r3, r29
/* 80CEBEF4  4B 32 DD 88 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80CEBEF8:
/* 80CEBEF8  80 7D 09 0C */	lwz r3, 0x90c(r29)
/* 80CEBEFC  38 03 00 01 */	addi r0, r3, 1
/* 80CEBF00  90 1D 09 0C */	stw r0, 0x90c(r29)
/* 80CEBF04  39 61 00 20 */	addi r11, r1, 0x20
/* 80CEBF08  4B 67 63 20 */	b _restgpr_29
/* 80CEBF0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CEBF10  7C 08 03 A6 */	mtlr r0
/* 80CEBF14  38 21 00 20 */	addi r1, r1, 0x20
/* 80CEBF18  4E 80 00 20 */	blr 

lbl_806C9150:
/* 806C9150  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C9154  7C 08 02 A6 */	mflr r0
/* 806C9158  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C915C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C9160  7C 7F 1B 78 */	mr r31, r3
/* 806C9164  A8 03 0B 8E */	lha r0, 0xb8e(r3)
/* 806C9168  2C 00 00 00 */	cmpwi r0, 0
/* 806C916C  40 82 00 98 */	bne lbl_806C9204
/* 806C9170  7C 84 07 34 */	extsh r4, r4
/* 806C9174  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806C9178  38 63 D3 68 */	addi r3, r3, l_HIO@l
/* 806C917C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 806C9180  FC 00 00 1E */	fctiwz f0, f0
/* 806C9184  D8 01 00 08 */	stfd f0, 8(r1)
/* 806C9188  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806C918C  7C 00 07 34 */	extsh r0, r0
/* 806C9190  7C 04 00 00 */	cmpw r4, r0
/* 806C9194  41 81 00 0C */	bgt lbl_806C91A0
/* 806C9198  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 806C919C  41 82 00 68 */	beq lbl_806C9204
lbl_806C91A0:
/* 806C91A0  7F E3 FB 78 */	mr r3, r31
/* 806C91A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806C91A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806C91AC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806C91B0  4B 95 17 B4 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806C91B4  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806C91B8  38 63 D3 68 */	addi r3, r3, l_HIO@l
/* 806C91BC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806C91C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C91C4  40 80 00 0C */	bge lbl_806C91D0
/* 806C91C8  38 60 00 00 */	li r3, 0
/* 806C91CC  48 00 00 3C */	b lbl_806C9208
lbl_806C91D0:
/* 806C91D0  38 00 00 00 */	li r0, 0
/* 806C91D4  3C 60 80 6D */	lis r3, target_count@ha
/* 806C91D8  90 03 D3 9C */	stw r0, target_count@l(r3)
/* 806C91DC  3C 60 80 6D */	lis r3, s_ge_attack2__FPvPv@ha
/* 806C91E0  38 63 80 68 */	addi r3, r3, s_ge_attack2__FPvPv@l
/* 806C91E4  7F E4 FB 78 */	mr r4, r31
/* 806C91E8  4B 95 81 50 */	b fpcEx_Search__FPFPvPv_PvPv
/* 806C91EC  3C 60 80 6D */	lis r3, target_count@ha
/* 806C91F0  80 03 D3 9C */	lwz r0, target_count@l(r3)
/* 806C91F4  2C 00 00 00 */	cmpwi r0, 0
/* 806C91F8  40 82 00 0C */	bne lbl_806C9204
/* 806C91FC  38 60 00 01 */	li r3, 1
/* 806C9200  48 00 00 08 */	b lbl_806C9208
lbl_806C9204:
/* 806C9204  38 60 00 00 */	li r3, 0
lbl_806C9208:
/* 806C9208  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806C920C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C9210  7C 08 03 A6 */	mtlr r0
/* 806C9214  38 21 00 20 */	addi r1, r1, 0x20
/* 806C9218  4E 80 00 20 */	blr 

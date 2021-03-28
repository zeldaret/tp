lbl_80215DA8:
/* 80215DA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80215DAC  7C 08 02 A6 */	mflr r0
/* 80215DB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80215DB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80215DB8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80215DBC  38 64 01 14 */	addi r3, r4, 0x114
/* 80215DC0  88 84 4E 0C */	lbz r4, 0x4e0c(r4)
/* 80215DC4  4B E1 E5 7D */	bl getLightDropNum__16dSv_light_drop_cCFUc
/* 80215DC8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80215DCC  C8 22 AE C0 */	lfd f1, lit_6293(r2)
/* 80215DD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80215DD4  3C 80 43 30 */	lis r4, 0x4330
/* 80215DD8  90 81 00 08 */	stw r4, 8(r1)
/* 80215DDC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80215DE0  EC 40 08 28 */	fsubs f2, f0, f1
/* 80215DE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80215DE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80215DEC  88 03 5E A1 */	lbz r0, 0x5ea1(r3)
/* 80215DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80215DF4  90 81 00 10 */	stw r4, 0x10(r1)
/* 80215DF8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80215DFC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80215E00  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80215E04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80215E08  4C 40 13 82 */	cror 2, 0, 2
/* 80215E0C  40 82 00 0C */	bne lbl_80215E18
/* 80215E10  FC 20 00 90 */	fmr f1, f0
/* 80215E14  48 00 00 1C */	b lbl_80215E30
lbl_80215E18:
/* 80215E18  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80215E1C  4C 41 13 82 */	cror 2, 1, 2
/* 80215E20  40 82 00 0C */	bne lbl_80215E2C
/* 80215E24  C0 22 AE 84 */	lfs f1, lit_4183(r2)
/* 80215E28  48 00 00 08 */	b lbl_80215E30
lbl_80215E2C:
/* 80215E2C  EC 22 08 24 */	fdivs f1, f2, f1
lbl_80215E30:
/* 80215E30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80215E34  7C 08 03 A6 */	mtlr r0
/* 80215E38  38 21 00 20 */	addi r1, r1, 0x20
/* 80215E3C  4E 80 00 20 */	blr 

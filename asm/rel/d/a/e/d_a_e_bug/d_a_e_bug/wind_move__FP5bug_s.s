lbl_80695DE8:
/* 80695DE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80695DEC  7C 08 02 A6 */	mflr r0
/* 80695DF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80695DF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80695DF8  4B CC C3 E4 */	b _savegpr_29
/* 80695DFC  7C 7D 1B 78 */	mr r29, r3
/* 80695E00  3C 60 80 69 */	lis r3, lit_3829@ha
/* 80695E04  3B E3 7C A0 */	addi r31, r3, lit_3829@l
/* 80695E08  88 1D 00 52 */	lbz r0, 0x52(r29)
/* 80695E0C  7C 00 07 74 */	extsb r0, r0
/* 80695E10  1C 00 E9 00 */	mulli r0, r0, -5888
/* 80695E14  7C 1E 07 34 */	extsh r30, r0
/* 80695E18  A8 7D 00 3C */	lha r3, 0x3c(r29)
/* 80695E1C  38 03 F3 00 */	addi r0, r3, -3328
/* 80695E20  B0 1D 00 3C */	sth r0, 0x3c(r29)
/* 80695E24  A8 7D 00 3E */	lha r3, 0x3e(r29)
/* 80695E28  38 03 07 00 */	addi r0, r3, 0x700
/* 80695E2C  B0 1D 00 3E */	sth r0, 0x3e(r29)
/* 80695E30  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80695E34  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 80695E38  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80695E3C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80695E40  7C 03 04 2E */	lfsx f0, r3, r0
/* 80695E44  EC 01 00 32 */	fmuls f0, f1, f0
/* 80695E48  D0 1D 00 30 */	stfs f0, 0x30(r29)
/* 80695E4C  7C 63 02 14 */	add r3, r3, r0
/* 80695E50  C0 03 00 04 */	lfs f0, 4(r3)
/* 80695E54  EC 01 00 32 */	fmuls f0, f1, f0
/* 80695E58  D0 1D 00 38 */	stfs f0, 0x38(r29)
/* 80695E5C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80695E60  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80695E64  38 7D 00 18 */	addi r3, r29, 0x18
/* 80695E68  38 9D 00 30 */	addi r4, r29, 0x30
/* 80695E6C  7C 65 1B 78 */	mr r5, r3
/* 80695E70  4B CB 12 20 */	b PSVECAdd
/* 80695E74  88 1D 00 54 */	lbz r0, 0x54(r29)
/* 80695E78  28 00 00 00 */	cmplwi r0, 0
/* 80695E7C  41 82 00 18 */	beq lbl_80695E94
/* 80695E80  7F A3 EB 78 */	mr r3, r29
/* 80695E84  38 80 00 01 */	li r4, 1
/* 80695E88  4B FF EE 41 */	bl simple_bg_check__FP5bug_si
/* 80695E8C  2C 03 00 00 */	cmpwi r3, 0
/* 80695E90  41 82 00 24 */	beq lbl_80695EB4
lbl_80695E94:
/* 80695E94  38 00 00 01 */	li r0, 1
/* 80695E98  98 1D 00 50 */	stb r0, 0x50(r29)
/* 80695E9C  B3 DD 00 3E */	sth r30, 0x3e(r29)
/* 80695EA0  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80695EA4  4B BD 1A B0 */	b cM_rndF__Ff
/* 80695EA8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80695EAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80695EB0  D0 1D 00 24 */	stfs f0, 0x24(r29)
lbl_80695EB4:
/* 80695EB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80695EB8  4B CC C3 70 */	b _restgpr_29
/* 80695EBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80695EC0  7C 08 03 A6 */	mtlr r0
/* 80695EC4  38 21 00 20 */	addi r1, r1, 0x20
/* 80695EC8  4E 80 00 20 */	blr 

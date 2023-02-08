lbl_8068B938:
/* 8068B938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8068B93C  7C 08 02 A6 */	mflr r0
/* 8068B940  90 01 00 24 */	stw r0, 0x24(r1)
/* 8068B944  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8068B948  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8068B94C  7C 7E 1B 78 */	mr r30, r3
/* 8068B950  3C 80 80 69 */	lis r4, lit_3903@ha /* 0x8068D7EC@ha */
/* 8068B954  3B E4 D7 EC */	addi r31, r4, lit_3903@l /* 0x8068D7EC@l */
/* 8068B958  A8 03 06 70 */	lha r0, 0x670(r3)
/* 8068B95C  2C 00 00 01 */	cmpwi r0, 1
/* 8068B960  41 82 00 44 */	beq lbl_8068B9A4
/* 8068B964  40 80 00 74 */	bge lbl_8068B9D8
/* 8068B968  2C 00 00 00 */	cmpwi r0, 0
/* 8068B96C  40 80 00 08 */	bge lbl_8068B974
/* 8068B970  48 00 00 68 */	b lbl_8068B9D8
lbl_8068B974:
/* 8068B974  38 80 00 04 */	li r4, 4
/* 8068B978  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8068B97C  38 A0 00 00 */	li r5, 0
/* 8068B980  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8068B984  4B FF EC B1 */	bl anm_init__FP10e_bi_classifUcf
/* 8068B988  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 8068B98C  D0 1E 06 60 */	stfs f0, 0x660(r30)
/* 8068B990  38 00 00 01 */	li r0, 1
/* 8068B994  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8068B998  38 00 00 0A */	li r0, 0xa
/* 8068B99C  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 8068B9A0  48 00 00 38 */	b lbl_8068B9D8
lbl_8068B9A4:
/* 8068B9A4  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 8068B9A8  2C 00 00 00 */	cmpwi r0, 0
/* 8068B9AC  40 82 00 2C */	bne lbl_8068B9D8
/* 8068B9B0  C0 3E 06 60 */	lfs f1, 0x660(r30)
/* 8068B9B4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8068B9B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8068B9BC  D0 1E 06 60 */	stfs f0, 0x660(r30)
/* 8068B9C0  C0 3E 06 60 */	lfs f1, 0x660(r30)
/* 8068B9C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068B9C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068B9CC  40 80 00 0C */	bge lbl_8068B9D8
/* 8068B9D0  4B 98 E2 AD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8068B9D4  48 00 00 3C */	b lbl_8068BA10
lbl_8068B9D8:
/* 8068B9D8  C0 1E 06 60 */	lfs f0, 0x660(r30)
/* 8068B9DC  FC 00 00 1E */	fctiwz f0, f0
/* 8068B9E0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8068B9E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8068B9E8  7C 00 07 34 */	extsh r0, r0
/* 8068B9EC  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 8068B9F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8068B9F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068B9F8  3C 00 43 30 */	lis r0, 0x4330
/* 8068B9FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8068BA00  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8068BA04  EC 00 08 28 */	fsubs f0, f0, f1
/* 8068BA08  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8068BA0C  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_8068BA10:
/* 8068BA10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8068BA14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8068BA18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8068BA1C  7C 08 03 A6 */	mtlr r0
/* 8068BA20  38 21 00 20 */	addi r1, r1, 0x20
/* 8068BA24  4E 80 00 20 */	blr 

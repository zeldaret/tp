lbl_805BC8B4:
/* 805BC8B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BC8B8  7C 08 02 A6 */	mflr r0
/* 805BC8BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BC8C0  3C 80 80 5C */	lis r4, lit_3800@ha
/* 805BC8C4  38 C4 6C 74 */	addi r6, r4, lit_3800@l
/* 805BC8C8  80 83 07 10 */	lwz r4, 0x710(r3)
/* 805BC8CC  38 04 FF D1 */	addi r0, r4, -47
/* 805BC8D0  28 00 00 15 */	cmplwi r0, 0x15
/* 805BC8D4  41 81 01 2C */	bgt lbl_805BCA00
/* 805BC8D8  3C 80 80 5C */	lis r4, lit_4662@ha
/* 805BC8DC  38 84 76 48 */	addi r4, r4, lit_4662@l
/* 805BC8E0  54 00 10 3A */	slwi r0, r0, 2
/* 805BC8E4  7C 04 00 2E */	lwzx r0, r4, r0
/* 805BC8E8  7C 09 03 A6 */	mtctr r0
/* 805BC8EC  4E 80 04 20 */	bctr 
lbl_805BC8F0:
/* 805BC8F0  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 805BC8F4  38 A0 00 01 */	li r5, 1
/* 805BC8F8  88 04 00 11 */	lbz r0, 0x11(r4)
/* 805BC8FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BC900  40 82 00 18 */	bne lbl_805BC918
/* 805BC904  C0 26 00 30 */	lfs f1, 0x30(r6)
/* 805BC908  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805BC90C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BC910  41 82 00 08 */	beq lbl_805BC918
/* 805BC914  38 A0 00 00 */	li r5, 0
lbl_805BC918:
/* 805BC918  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 805BC91C  41 82 00 E4 */	beq lbl_805BCA00
/* 805BC920  38 80 00 44 */	li r4, 0x44
/* 805BC924  38 A0 00 00 */	li r5, 0
/* 805BC928  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 805BC92C  C0 46 00 34 */	lfs f2, 0x34(r6)
/* 805BC930  4B FF EA D9 */	bl setBck__8daB_DR_cFiUcff
/* 805BC934  48 00 00 CC */	b lbl_805BCA00
lbl_805BC938:
/* 805BC938  38 80 00 44 */	li r4, 0x44
/* 805BC93C  38 A0 00 00 */	li r5, 0
/* 805BC940  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 805BC944  C0 46 00 34 */	lfs f2, 0x34(r6)
/* 805BC948  4B FF EA C1 */	bl setBck__8daB_DR_cFiUcff
/* 805BC94C  48 00 00 B4 */	b lbl_805BCA00
lbl_805BC950:
/* 805BC950  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 805BC954  A8 04 00 14 */	lha r0, 0x14(r4)
/* 805BC958  C8 26 03 58 */	lfd f1, 0x358(r6)
/* 805BC95C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805BC960  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BC964  3C 00 43 30 */	lis r0, 0x4330
/* 805BC968  90 01 00 08 */	stw r0, 8(r1)
/* 805BC96C  C8 01 00 08 */	lfd f0, 8(r1)
/* 805BC970  EC 20 08 28 */	fsubs f1, f0, f1
/* 805BC974  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805BC978  FC 00 00 1E */	fctiwz f0, f0
/* 805BC97C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805BC980  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805BC984  C0 46 00 34 */	lfs f2, 0x34(r6)
/* 805BC988  EC 01 10 28 */	fsubs f0, f1, f2
/* 805BC98C  FC 00 00 1E */	fctiwz f0, f0
/* 805BC990  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805BC994  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BC998  7C 04 00 00 */	cmpw r4, r0
/* 805BC99C  41 80 00 64 */	blt lbl_805BCA00
/* 805BC9A0  38 80 00 44 */	li r4, 0x44
/* 805BC9A4  38 A0 00 00 */	li r5, 0
/* 805BC9A8  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 805BC9AC  4B FF EA 5D */	bl setBck__8daB_DR_cFiUcff
/* 805BC9B0  48 00 00 50 */	b lbl_805BCA00
lbl_805BC9B4:
/* 805BC9B4  80 83 05 B4 */	lwz r4, 0x5b4(r3)
/* 805BC9B8  38 A0 00 01 */	li r5, 1
/* 805BC9BC  88 04 00 11 */	lbz r0, 0x11(r4)
/* 805BC9C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805BC9C4  40 82 00 18 */	bne lbl_805BC9DC
/* 805BC9C8  C0 26 00 30 */	lfs f1, 0x30(r6)
/* 805BC9CC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805BC9D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805BC9D4  41 82 00 08 */	beq lbl_805BC9DC
/* 805BC9D8  38 A0 00 00 */	li r5, 0
lbl_805BC9DC:
/* 805BC9DC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 805BC9E0  41 82 00 20 */	beq lbl_805BCA00
/* 805BC9E4  38 00 00 00 */	li r0, 0
/* 805BC9E8  98 03 07 D8 */	stb r0, 0x7d8(r3)
/* 805BC9EC  38 80 00 45 */	li r4, 0x45
/* 805BC9F0  38 A0 00 02 */	li r5, 2
/* 805BC9F4  C0 26 00 50 */	lfs f1, 0x50(r6)
/* 805BC9F8  C0 46 00 34 */	lfs f2, 0x34(r6)
/* 805BC9FC  4B FF EA 0D */	bl setBck__8daB_DR_cFiUcff
lbl_805BCA00:
/* 805BCA00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BCA04  7C 08 03 A6 */	mtlr r0
/* 805BCA08  38 21 00 20 */	addi r1, r1, 0x20
/* 805BCA0C  4E 80 00 20 */	blr 

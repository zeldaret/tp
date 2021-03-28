lbl_80131AFC:
/* 80131AFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80131B00  7C 08 02 A6 */	mflr r0
/* 80131B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80131B08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80131B0C  7C 7F 1B 78 */	mr r31, r3
/* 80131B10  2C 04 00 00 */	cmpwi r4, 0
/* 80131B14  41 82 00 1C */	beq lbl_80131B30
/* 80131B18  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80131B1C  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 80131B20  D0 1F 2B 98 */	stfs f0, 0x2b98(r31)
/* 80131B24  38 00 00 00 */	li r0, 0
/* 80131B28  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80131B2C  48 00 00 C0 */	b lbl_80131BEC
lbl_80131B30:
/* 80131B30  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 80131B34  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 80131B38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80131B3C  40 81 00 08 */	ble lbl_80131B44
/* 80131B40  D0 1F 34 78 */	stfs f0, 0x3478(r31)
lbl_80131B44:
/* 80131B44  38 7F 34 78 */	addi r3, r31, 0x3478
/* 80131B48  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 80131B4C  C0 42 92 A4 */	lfs f2, lit_6021(r2)
/* 80131B50  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 80131B54  FC 80 10 90 */	fmr f4, f2
/* 80131B58  48 13 DE 25 */	bl cLib_addCalc__FPfffff
/* 80131B5C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80131B60  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80131B64  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 80131B68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80131B6C  7C 63 02 14 */	add r3, r3, r0
/* 80131B70  C0 63 00 04 */	lfs f3, 4(r3)
/* 80131B74  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 80131B78  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 80131B7C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80131B80  EC 03 00 28 */	fsubs f0, f3, f0
/* 80131B84  EC 01 00 32 */	fmuls f0, f1, f0
/* 80131B88  EC 02 00 32 */	fmuls f0, f2, f0
/* 80131B8C  D0 1F 2B 98 */	stfs f0, 0x2b98(r31)
/* 80131B90  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 80131B94  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 80131B98  EC 61 00 28 */	fsubs f3, f1, f0
/* 80131B9C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80131BA0  40 81 00 08 */	ble lbl_80131BA8
/* 80131BA4  FC 60 00 90 */	fmr f3, f0
lbl_80131BA8:
/* 80131BA8  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 80131BAC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80131BB0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80131BB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80131BB8  3C 00 43 30 */	lis r0, 0x4330
/* 80131BBC  90 01 00 08 */	stw r0, 8(r1)
/* 80131BC0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80131BC4  EC 40 08 28 */	fsubs f2, f0, f1
/* 80131BC8  C0 22 97 78 */	lfs f1, lit_47725(r2)
/* 80131BCC  C0 02 97 7C */	lfs f0, lit_47726(r2)
/* 80131BD0  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80131BD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80131BD8  EC 02 00 2A */	fadds f0, f2, f0
/* 80131BDC  FC 00 00 1E */	fctiwz f0, f0
/* 80131BE0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80131BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80131BE8  B0 1F 30 08 */	sth r0, 0x3008(r31)
lbl_80131BEC:
/* 80131BEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80131BF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80131BF4  7C 08 03 A6 */	mtlr r0
/* 80131BF8  38 21 00 20 */	addi r1, r1, 0x20
/* 80131BFC  4E 80 00 20 */	blr 

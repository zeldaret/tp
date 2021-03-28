lbl_8021A9C8:
/* 8021A9C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021A9CC  7C 08 02 A6 */	mflr r0
/* 8021A9D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021A9D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021A9D8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021A9DC  7C 9E 23 78 */	mr r30, r4
/* 8021A9E0  7C BF 2B 78 */	mr r31, r5
/* 8021A9E4  7F C3 F3 78 */	mr r3, r30
/* 8021A9E8  48 03 AE 41 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021A9EC  A8 7E 00 16 */	lha r3, 0x16(r30)
/* 8021A9F0  7C 64 1B 78 */	mr r4, r3
/* 8021A9F4  7F E0 07 34 */	extsh r0, r31
/* 8021A9F8  7C 03 00 00 */	cmpw r3, r0
/* 8021A9FC  40 81 00 08 */	ble lbl_8021AA04
/* 8021AA00  7F E4 FB 78 */	mr r4, r31
lbl_8021AA04:
/* 8021AA04  7C 80 07 35 */	extsh. r0, r4
/* 8021AA08  41 81 00 28 */	bgt lbl_8021AA30
/* 8021AA0C  7F C3 F3 78 */	mr r3, r30
/* 8021AA10  48 03 AE 19 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021AA14  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021AA18  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8021AA1C  41 82 00 70 */	beq lbl_8021AA8C
/* 8021AA20  7F C3 F3 78 */	mr r3, r30
/* 8021AA24  FC 20 00 90 */	fmr f1, f0
/* 8021AA28  48 03 AD A9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8021AA2C  48 00 00 60 */	b lbl_8021AA8C
lbl_8021AA30:
/* 8021AA30  38 84 FF FF */	addi r4, r4, -1
/* 8021AA34  7C 80 07 35 */	extsh. r0, r4
/* 8021AA38  40 80 00 08 */	bge lbl_8021AA40
/* 8021AA3C  38 80 00 00 */	li r4, 0
lbl_8021AA40:
/* 8021AA40  B0 9E 00 16 */	sth r4, 0x16(r30)
/* 8021AA44  7F C3 F3 78 */	mr r3, r30
/* 8021AA48  7C 80 07 34 */	extsh r0, r4
/* 8021AA4C  C8 62 AE A0 */	lfd f3, lit_4925(r2)
/* 8021AA50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8021AA54  90 01 00 0C */	stw r0, 0xc(r1)
/* 8021AA58  3C 80 43 30 */	lis r4, 0x4330
/* 8021AA5C  90 81 00 08 */	stw r4, 8(r1)
/* 8021AA60  C8 01 00 08 */	lfd f0, 8(r1)
/* 8021AA64  EC 40 18 28 */	fsubs f2, f0, f3
/* 8021AA68  7F E0 07 34 */	extsh r0, r31
/* 8021AA6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8021AA70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021AA74  90 81 00 10 */	stw r4, 0x10(r1)
/* 8021AA78  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8021AA7C  EC 00 18 28 */	fsubs f0, f0, f3
/* 8021AA80  EC 02 00 24 */	fdivs f0, f2, f0
/* 8021AA84  EC 21 00 32 */	fmuls f1, f1, f0
/* 8021AA88  48 03 AD 49 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8021AA8C:
/* 8021AA8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021AA90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021AA94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021AA98  7C 08 03 A6 */	mtlr r0
/* 8021AA9C  38 21 00 20 */	addi r1, r1, 0x20
/* 8021AAA0  4E 80 00 20 */	blr 

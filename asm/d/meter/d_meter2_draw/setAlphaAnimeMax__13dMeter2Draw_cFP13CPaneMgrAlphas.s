lbl_8021AAA4:
/* 8021AAA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021AAA8  7C 08 02 A6 */	mflr r0
/* 8021AAAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021AAB0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8021AAB4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8021AAB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021AABC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021AAC0  7C 9E 23 78 */	mr r30, r4
/* 8021AAC4  7C BF 2B 78 */	mr r31, r5
/* 8021AAC8  7F C3 F3 78 */	mr r3, r30
/* 8021AACC  48 03 AD 5D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021AAD0  FF E0 08 90 */	fmr f31, f1
/* 8021AAD4  A8 9E 00 16 */	lha r4, 0x16(r30)
/* 8021AAD8  7F E3 07 34 */	extsh r3, r31
/* 8021AADC  7C 04 18 00 */	cmpw r4, r3
/* 8021AAE0  41 80 00 24 */	blt lbl_8021AB04
/* 8021AAE4  7F C3 F3 78 */	mr r3, r30
/* 8021AAE8  48 03 AD 41 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021AAEC  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 8021AAF0  41 82 00 74 */	beq lbl_8021AB64
/* 8021AAF4  7F C3 F3 78 */	mr r3, r30
/* 8021AAF8  FC 20 F8 90 */	fmr f1, f31
/* 8021AAFC  48 03 AC D5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8021AB00  48 00 00 64 */	b lbl_8021AB64
lbl_8021AB04:
/* 8021AB04  38 84 00 01 */	addi r4, r4, 1
/* 8021AB08  7C 80 07 34 */	extsh r0, r4
/* 8021AB0C  7C 00 18 00 */	cmpw r0, r3
/* 8021AB10  40 81 00 08 */	ble lbl_8021AB18
/* 8021AB14  7F E4 FB 78 */	mr r4, r31
lbl_8021AB18:
/* 8021AB18  B0 9E 00 16 */	sth r4, 0x16(r30)
/* 8021AB1C  7F C3 F3 78 */	mr r3, r30
/* 8021AB20  7C 80 07 34 */	extsh r0, r4
/* 8021AB24  C8 42 AE A0 */	lfd f2, lit_4925(r2)
/* 8021AB28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8021AB2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8021AB30  3C 80 43 30 */	lis r4, 0x4330
/* 8021AB34  90 81 00 08 */	stw r4, 8(r1)
/* 8021AB38  C8 01 00 08 */	lfd f0, 8(r1)
/* 8021AB3C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8021AB40  7F E0 07 34 */	extsh r0, r31
/* 8021AB44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8021AB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021AB4C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8021AB50  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8021AB54  EC 00 10 28 */	fsubs f0, f0, f2
/* 8021AB58  EC 01 00 24 */	fdivs f0, f1, f0
/* 8021AB5C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8021AB60  48 03 AC 71 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_8021AB64:
/* 8021AB64  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8021AB68  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8021AB6C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021AB70  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021AB74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021AB78  7C 08 03 A6 */	mtlr r0
/* 8021AB7C  38 21 00 30 */	addi r1, r1, 0x30
/* 8021AB80  4E 80 00 20 */	blr 

lbl_8051BD4C:
/* 8051BD4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8051BD50  7C 08 02 A6 */	mflr r0
/* 8051BD54  90 01 00 44 */	stw r0, 0x44(r1)
/* 8051BD58  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8051BD5C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8051BD60  39 61 00 30 */	addi r11, r1, 0x30
/* 8051BD64  4B E4 64 71 */	bl _savegpr_27
/* 8051BD68  7C 7B 1B 78 */	mr r27, r3
/* 8051BD6C  3C 60 80 52 */	lis r3, lit_3999@ha /* 0x80523028@ha */
/* 8051BD70  3B E3 30 28 */	addi r31, r3, lit_3999@l /* 0x80523028@l */
/* 8051BD74  A8 9B 00 00 */	lha r4, 0(r27)
/* 8051BD78  54 83 06 FE */	clrlwi r3, r4, 0x1b
/* 8051BD7C  7C 7E 1B 78 */	mr r30, r3
/* 8051BD80  54 80 DE FE */	rlwinm r0, r4, 0x1b, 0x1b, 0x1f
/* 8051BD84  7C 1D 07 34 */	extsh r29, r0
/* 8051BD88  54 80 B6 FE */	rlwinm r0, r4, 0x16, 0x1b, 0x1f
/* 8051BD8C  7C 1C 07 34 */	extsh r28, r0
/* 8051BD90  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 8051BD94  C0 5F 01 1C */	lfs f2, 0x11c(r31)
/* 8051BD98  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051BD9C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8051BDA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8051BDA4  3C 00 43 30 */	lis r0, 0x4330
/* 8051BDA8  90 01 00 08 */	stw r0, 8(r1)
/* 8051BDAC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8051BDB0  EC 20 08 28 */	fsubs f1, f0, f1
/* 8051BDB4  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 8051BDB8  EC 01 00 24 */	fdivs f0, f1, f0
/* 8051BDBC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8051BDC0  EF E3 00 2A */	fadds f31, f3, f0
/* 8051BDC4  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 8051BDC8  4B D4 BB 8D */	bl cM_rndF__Ff
/* 8051BDCC  EF FF 00 72 */	fmuls f31, f31, f1
/* 8051BDD0  7F C0 07 34 */	extsh r0, r30
/* 8051BDD4  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8051BDD8  41 82 00 4C */	beq lbl_8051BE24
/* 8051BDDC  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051BDE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8051BDE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8051BDE8  3C 00 43 30 */	lis r0, 0x4330
/* 8051BDEC  90 01 00 08 */	stw r0, 8(r1)
/* 8051BDF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8051BDF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051BDF8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8051BDFC  FC 00 00 1E */	fctiwz f0, f0
/* 8051BE00  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8051BE04  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 8051BE08  7F C0 07 35 */	extsh. r0, r30
/* 8051BE0C  40 80 00 08 */	bge lbl_8051BE14
/* 8051BE10  3B C0 00 00 */	li r30, 0
lbl_8051BE14:
/* 8051BE14  7F C0 07 34 */	extsh r0, r30
/* 8051BE18  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8051BE1C  40 81 00 08 */	ble lbl_8051BE24
/* 8051BE20  3B C0 00 1F */	li r30, 0x1f
lbl_8051BE24:
/* 8051BE24  2C 1D 00 1F */	cmpwi r29, 0x1f
/* 8051BE28  41 82 00 4C */	beq lbl_8051BE74
/* 8051BE2C  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051BE30  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 8051BE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BE38  3C 00 43 30 */	lis r0, 0x4330
/* 8051BE3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8051BE40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8051BE44  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051BE48  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8051BE4C  FC 00 00 1E */	fctiwz f0, f0
/* 8051BE50  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051BE54  83 A1 00 0C */	lwz r29, 0xc(r1)
/* 8051BE58  7F A0 07 35 */	extsh. r0, r29
/* 8051BE5C  40 80 00 08 */	bge lbl_8051BE64
/* 8051BE60  3B A0 00 00 */	li r29, 0
lbl_8051BE64:
/* 8051BE64  7F A0 07 34 */	extsh r0, r29
/* 8051BE68  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8051BE6C  40 81 00 08 */	ble lbl_8051BE74
/* 8051BE70  3B A0 00 1F */	li r29, 0x1f
lbl_8051BE74:
/* 8051BE74  2C 1C 00 1F */	cmpwi r28, 0x1f
/* 8051BE78  41 82 00 4C */	beq lbl_8051BEC4
/* 8051BE7C  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8051BE80  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 8051BE84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BE88  3C 00 43 30 */	lis r0, 0x4330
/* 8051BE8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8051BE90  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8051BE94  EC 00 08 28 */	fsubs f0, f0, f1
/* 8051BE98  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8051BE9C  FC 00 00 1E */	fctiwz f0, f0
/* 8051BEA0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8051BEA4  83 81 00 0C */	lwz r28, 0xc(r1)
/* 8051BEA8  7F 80 07 35 */	extsh. r0, r28
/* 8051BEAC  40 80 00 08 */	bge lbl_8051BEB4
/* 8051BEB0  3B 80 00 00 */	li r28, 0
lbl_8051BEB4:
/* 8051BEB4  7F 80 07 34 */	extsh r0, r28
/* 8051BEB8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8051BEBC  40 81 00 08 */	ble lbl_8051BEC4
/* 8051BEC0  3B 80 00 1F */	li r28, 0x1f
lbl_8051BEC4:
/* 8051BEC4  7F A0 EB 78 */	mr r0, r29
/* 8051BEC8  53 80 2D B4 */	rlwimi r0, r28, 5, 0x16, 0x1a
/* 8051BECC  7C 03 07 34 */	extsh r3, r0
/* 8051BED0  7F C0 F3 78 */	mr r0, r30
/* 8051BED4  50 60 28 34 */	rlwimi r0, r3, 5, 0, 0x1a
/* 8051BED8  B0 1B 00 00 */	sth r0, 0(r27)
/* 8051BEDC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8051BEE0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8051BEE4  39 61 00 30 */	addi r11, r1, 0x30
/* 8051BEE8  4B E4 63 39 */	bl _restgpr_27
/* 8051BEEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8051BEF0  7C 08 03 A6 */	mtlr r0
/* 8051BEF4  38 21 00 40 */	addi r1, r1, 0x40
/* 8051BEF8  4E 80 00 20 */	blr 

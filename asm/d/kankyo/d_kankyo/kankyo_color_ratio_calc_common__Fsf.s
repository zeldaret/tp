lbl_8019D5BC:
/* 8019D5BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019D5C0  7C 60 07 34 */	extsh r0, r3
/* 8019D5C4  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 8019D5C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8019D5CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8019D5D0  3C 00 43 30 */	lis r0, 0x4330
/* 8019D5D4  90 01 00 08 */	stw r0, 8(r1)
/* 8019D5D8  C8 01 00 08 */	lfd f0, 8(r1)
/* 8019D5DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8019D5E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8019D5E4  FC 00 00 1E */	fctiwz f0, f0
/* 8019D5E8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8019D5EC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8019D5F0  7C 60 07 35 */	extsh. r0, r3
/* 8019D5F4  40 80 00 0C */	bge lbl_8019D600
/* 8019D5F8  38 60 00 00 */	li r3, 0
/* 8019D5FC  48 00 00 14 */	b lbl_8019D610
lbl_8019D600:
/* 8019D600  7C 60 07 34 */	extsh r0, r3
/* 8019D604  2C 00 00 FF */	cmpwi r0, 0xff
/* 8019D608  40 81 00 08 */	ble lbl_8019D610
/* 8019D60C  38 60 00 FF */	li r3, 0xff
lbl_8019D610:
/* 8019D610  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8019D614  38 21 00 20 */	addi r1, r1, 0x20
/* 8019D618  4E 80 00 20 */	blr 

lbl_802F7D00:
/* 802F7D00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F7D04  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802F7D08  28 00 00 0F */	cmplwi r0, 0xf
/* 802F7D0C  41 80 00 0C */	blt lbl_802F7D18
/* 802F7D10  38 60 00 00 */	li r3, 0
/* 802F7D14  48 00 00 9C */	b lbl_802F7DB0
lbl_802F7D18:
/* 802F7D18  FC 60 08 90 */	fmr f3, f1
/* 802F7D1C  C0 02 C7 F0 */	lfs f0, lit_1469(r2)
/* 802F7D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802F7D24  40 80 00 08 */	bge lbl_802F7D2C
/* 802F7D28  FC 60 08 50 */	fneg f3, f1
lbl_802F7D2C:
/* 802F7D2C  38 80 00 01 */	li r4, 1
/* 802F7D30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 802F7D34  7C 80 00 30 */	slw r0, r4, r0
/* 802F7D38  C8 42 C7 F8 */	lfd f2, lit_1651(r2)
/* 802F7D3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F7D40  90 01 00 0C */	stw r0, 0xc(r1)
/* 802F7D44  3C 00 43 30 */	lis r0, 0x4330
/* 802F7D48  90 01 00 08 */	stw r0, 8(r1)
/* 802F7D4C  C8 01 00 08 */	lfd f0, 8(r1)
/* 802F7D50  EC 00 10 28 */	fsubs f0, f0, f2
/* 802F7D54  EC 03 00 32 */	fmuls f0, f3, f0
/* 802F7D58  FC 00 00 1E */	fctiwz f0, f0
/* 802F7D5C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 802F7D60  80 81 00 14 */	lwz r4, 0x14(r1)
/* 802F7D64  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 802F7D68  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 802F7D6C  7C 04 00 00 */	cmpw r4, r0
/* 802F7D70  41 80 00 20 */	blt lbl_802F7D90
/* 802F7D74  C0 02 C7 F0 */	lfs f0, lit_1469(r2)
/* 802F7D78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802F7D7C  40 80 00 0C */	bge lbl_802F7D88
/* 802F7D80  38 60 80 00 */	li r3, -32768
/* 802F7D84  48 00 00 2C */	b lbl_802F7DB0
lbl_802F7D88:
/* 802F7D88  38 60 7F FF */	li r3, 0x7fff
/* 802F7D8C  48 00 00 24 */	b lbl_802F7DB0
lbl_802F7D90:
/* 802F7D90  C0 02 C7 F0 */	lfs f0, lit_1469(r2)
/* 802F7D94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802F7D98  40 80 00 14 */	bge lbl_802F7DAC
/* 802F7D9C  7C 83 20 F8 */	nor r3, r4, r4
/* 802F7DA0  38 03 00 01 */	addi r0, r3, 1
/* 802F7DA4  7C 03 07 34 */	extsh r3, r0
/* 802F7DA8  48 00 00 08 */	b lbl_802F7DB0
lbl_802F7DAC:
/* 802F7DAC  7C 83 07 34 */	extsh r3, r4
lbl_802F7DB0:
/* 802F7DB0  38 21 00 20 */	addi r1, r1, 0x20
/* 802F7DB4  4E 80 00 20 */	blr 

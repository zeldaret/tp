lbl_801CF12C:
/* 801CF12C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CF130  38 A0 00 00 */	li r5, 0
/* 801CF134  2C 04 00 04 */	cmpwi r4, 4
/* 801CF138  40 82 00 70 */	bne lbl_801CF1A8
/* 801CF13C  80 03 00 D4 */	lwz r0, 0xd4(r3)
/* 801CF140  2C 00 00 02 */	cmpwi r0, 2
/* 801CF144  40 80 00 18 */	bge lbl_801CF15C
/* 801CF148  2C 00 00 00 */	cmpwi r0, 0
/* 801CF14C  40 80 00 08 */	bge lbl_801CF154
/* 801CF150  48 00 00 0C */	b lbl_801CF15C
lbl_801CF154:
/* 801CF154  80 83 00 C4 */	lwz r4, 0xc4(r3)
/* 801CF158  88 A4 01 6D */	lbz r5, 0x16d(r4)
lbl_801CF15C:
/* 801CF15C  C0 63 00 D0 */	lfs f3, 0xd0(r3)
/* 801CF160  C0 42 A7 84 */	lfs f2, lit_3711(r2)
/* 801CF164  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 801CF168  40 81 00 38 */	ble lbl_801CF1A0
/* 801CF16C  C8 22 A7 A8 */	lfd f1, lit_4108(r2)
/* 801CF170  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801CF174  90 01 00 0C */	stw r0, 0xc(r1)
/* 801CF178  3C 00 43 30 */	lis r0, 0x4330
/* 801CF17C  90 01 00 08 */	stw r0, 8(r1)
/* 801CF180  C8 01 00 08 */	lfd f0, 8(r1)
/* 801CF184  EC 20 08 28 */	fsubs f1, f0, f1
/* 801CF188  EC 03 10 28 */	fsubs f0, f3, f2
/* 801CF18C  EC 01 00 32 */	fmuls f0, f1, f0
/* 801CF190  FC 00 00 1E */	fctiwz f0, f0
/* 801CF194  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801CF198  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801CF19C  48 00 00 30 */	b lbl_801CF1CC
lbl_801CF1A0:
/* 801CF1A0  38 60 00 00 */	li r3, 0
/* 801CF1A4  48 00 00 28 */	b lbl_801CF1CC
lbl_801CF1A8:
/* 801CF1A8  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 801CF1AC  C0 02 A7 C0 */	lfs f0, lit_4152(r2)
/* 801CF1B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801CF1B4  40 81 00 10 */	ble lbl_801CF1C4
/* 801CF1B8  38 62 A7 B0 */	la r3, l_lineWidthPatData(r2) /* 804541B0-_SDA2_BASE_ */
/* 801CF1BC  7C 63 20 AE */	lbzx r3, r3, r4
/* 801CF1C0  48 00 00 0C */	b lbl_801CF1CC
lbl_801CF1C4:
/* 801CF1C4  38 62 A7 B8 */	la r3, l_lineWidthPatData2(r2) /* 804541B8-_SDA2_BASE_ */
/* 801CF1C8  7C 63 20 AE */	lbzx r3, r3, r4
lbl_801CF1CC:
/* 801CF1CC  38 21 00 20 */	addi r1, r1, 0x20
/* 801CF1D0  4E 80 00 20 */	blr 

lbl_80AAFB4C:
/* 80AAFB4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AAFB50  2C 04 00 19 */	cmpwi r4, 0x19
/* 80AAFB54  41 82 00 1C */	beq lbl_80AAFB70
/* 80AAFB58  40 80 00 78 */	bge lbl_80AAFBD0
/* 80AAFB5C  2C 04 00 0A */	cmpwi r4, 0xa
/* 80AAFB60  40 80 00 70 */	bge lbl_80AAFBD0
/* 80AAFB64  2C 04 00 08 */	cmpwi r4, 8
/* 80AAFB68  40 80 00 08 */	bge lbl_80AAFB70
/* 80AAFB6C  48 00 00 64 */	b lbl_80AAFBD0
lbl_80AAFB70:
/* 80AAFB70  80 A3 05 78 */	lwz r5, 0x578(r3)
/* 80AAFB74  A8 05 00 14 */	lha r0, 0x14(r5)
/* 80AAFB78  3C 80 80 AB */	lis r4, lit_4918@ha
/* 80AAFB7C  C8 24 20 F0 */	lfd f1, lit_4918@l(r4)
/* 80AAFB80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AAFB84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AAFB88  3C 80 43 30 */	lis r4, 0x4330
/* 80AAFB8C  90 81 00 08 */	stw r4, 8(r1)
/* 80AAFB90  C8 01 00 08 */	lfd f0, 8(r1)
/* 80AAFB94  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AAFB98  FC 00 00 1E */	fctiwz f0, f0
/* 80AAFB9C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AAFBA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAFBA4  7C 00 07 34 */	extsh r0, r0
/* 80AAFBA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AAFBAC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AAFBB0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80AAFBB4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80AAFBB8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AAFBBC  D0 05 00 1C */	stfs f0, 0x1c(r5)
/* 80AAFBC0  3C 80 80 AB */	lis r4, lit_4742@ha
/* 80AAFBC4  C0 04 20 D0 */	lfs f0, lit_4742@l(r4)
/* 80AAFBC8  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80AAFBCC  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80AAFBD0:
/* 80AAFBD0  38 60 00 01 */	li r3, 1
/* 80AAFBD4  38 21 00 20 */	addi r1, r1, 0x20
/* 80AAFBD8  4E 80 00 20 */	blr 

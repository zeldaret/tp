lbl_80658E98:
/* 80658E98  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80658E9C  7C 08 02 A6 */	mflr r0
/* 80658EA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80658EA4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80658EA8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80658EAC  7C 7E 1B 78 */	mr r30, r3
/* 80658EB0  A8 03 0C 34 */	lha r0, 0xc34(r3)
/* 80658EB4  7C 04 00 50 */	subf r0, r4, r0
/* 80658EB8  7C 1F 07 34 */	extsh r31, r0
/* 80658EBC  2C 1F 20 00 */	cmpwi r31, 0x2000
/* 80658EC0  40 81 00 08 */	ble lbl_80658EC8
/* 80658EC4  3B E0 20 00 */	li r31, 0x2000
lbl_80658EC8:
/* 80658EC8  7F E0 07 34 */	extsh r0, r31
/* 80658ECC  2C 00 E0 00 */	cmpwi r0, -8192
/* 80658ED0  40 80 00 08 */	bge lbl_80658ED8
/* 80658ED4  3B E0 E0 00 */	li r31, -8192
lbl_80658ED8:
/* 80658ED8  7F E3 07 34 */	extsh r3, r31
/* 80658EDC  4B D0 C1 F5 */	bl abs
/* 80658EE0  2C 03 01 00 */	cmpwi r3, 0x100
/* 80658EE4  40 80 00 08 */	bge lbl_80658EEC
/* 80658EE8  3B E0 00 00 */	li r31, 0
lbl_80658EEC:
/* 80658EEC  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 80658EF0  3C 80 80 66 */	lis r4, lit_4205@ha /* 0x80662DF0@ha */
/* 80658EF4  C0 44 2D F0 */	lfs f2, lit_4205@l(r4)  /* 0x80662DF0@l */
/* 80658EF8  7F E0 07 34 */	extsh r0, r31
/* 80658EFC  3C 80 80 66 */	lis r4, lit_4208@ha /* 0x80662DF8@ha */
/* 80658F00  C8 24 2D F8 */	lfd f1, lit_4208@l(r4)  /* 0x80662DF8@l */
/* 80658F04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80658F08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80658F0C  3C 00 43 30 */	lis r0, 0x4330
/* 80658F10  90 01 00 08 */	stw r0, 8(r1)
/* 80658F14  C8 01 00 08 */	lfd f0, 8(r1)
/* 80658F18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80658F1C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80658F20  FC 00 00 1E */	fctiwz f0, f0
/* 80658F24  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80658F28  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80658F2C  38 A0 01 00 */	li r5, 0x100
/* 80658F30  4B C1 77 A1 */	bl cLib_chaseS__FPsss
/* 80658F34  38 7E 0C 3A */	addi r3, r30, 0xc3a
/* 80658F38  3C 80 80 66 */	lis r4, lit_4206@ha /* 0x80662DF4@ha */
/* 80658F3C  C0 44 2D F4 */	lfs f2, lit_4206@l(r4)  /* 0x80662DF4@l */
/* 80658F40  7F E0 07 34 */	extsh r0, r31
/* 80658F44  3C 80 80 66 */	lis r4, lit_4208@ha /* 0x80662DF8@ha */
/* 80658F48  C8 24 2D F8 */	lfd f1, lit_4208@l(r4)  /* 0x80662DF8@l */
/* 80658F4C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80658F50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80658F54  3C 00 43 30 */	lis r0, 0x4330
/* 80658F58  90 01 00 18 */	stw r0, 0x18(r1)
/* 80658F5C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80658F60  EC 00 08 28 */	fsubs f0, f0, f1
/* 80658F64  EC 02 00 32 */	fmuls f0, f2, f0
/* 80658F68  FC 00 00 1E */	fctiwz f0, f0
/* 80658F6C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80658F70  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80658F74  38 A0 01 00 */	li r5, 0x100
/* 80658F78  4B C1 77 59 */	bl cLib_chaseS__FPsss
/* 80658F7C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80658F80  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80658F84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80658F88  7C 08 03 A6 */	mtlr r0
/* 80658F8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80658F90  4E 80 00 20 */	blr 

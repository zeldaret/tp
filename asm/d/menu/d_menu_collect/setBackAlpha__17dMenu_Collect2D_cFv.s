lbl_801B1EDC:
/* 801B1EDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B1EE0  7C 08 02 A6 */	mflr r0
/* 801B1EE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B1EE8  80 83 00 8C */	lwz r4, 0x8c(r3)
/* 801B1EEC  88 04 00 B2 */	lbz r0, 0xb2(r4)
/* 801B1EF0  C8 22 A5 48 */	lfd f1, lit_5271(r2)
/* 801B1EF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B1EF8  3C 00 43 30 */	lis r0, 0x4330
/* 801B1EFC  90 01 00 08 */	stw r0, 8(r1)
/* 801B1F00  C8 01 00 08 */	lfd f0, 8(r1)
/* 801B1F04  EC 20 08 28 */	fsubs f1, f0, f1
/* 801B1F08  C0 02 A5 40 */	lfs f0, lit_5268(r2)
/* 801B1F0C  EC 21 00 24 */	fdivs f1, f1, f0
/* 801B1F10  88 03 02 2C */	lbz r0, 0x22c(r3)
/* 801B1F14  2C 00 00 13 */	cmpwi r0, 0x13
/* 801B1F18  40 80 00 38 */	bge lbl_801B1F50
/* 801B1F1C  2C 00 00 01 */	cmpwi r0, 1
/* 801B1F20  40 80 00 08 */	bge lbl_801B1F28
/* 801B1F24  48 00 00 2C */	b lbl_801B1F50
lbl_801B1F28:
/* 801B1F28  C0 02 A5 2C */	lfs f0, lit_4482(r2)
/* 801B1F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1F30  40 80 00 0C */	bge lbl_801B1F3C
/* 801B1F34  C0 02 A5 44 */	lfs f0, lit_5269(r2)
/* 801B1F38  EC 21 00 2A */	fadds f1, f1, f0
lbl_801B1F3C:
/* 801B1F3C  C0 02 A5 2C */	lfs f0, lit_4482(r2)
/* 801B1F40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1F44  40 81 00 30 */	ble lbl_801B1F74
/* 801B1F48  FC 20 00 90 */	fmr f1, f0
/* 801B1F4C  48 00 00 28 */	b lbl_801B1F74
lbl_801B1F50:
/* 801B1F50  C0 02 A5 28 */	lfs f0, lit_4481(r2)
/* 801B1F54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1F58  40 81 00 0C */	ble lbl_801B1F64
/* 801B1F5C  C0 02 A5 44 */	lfs f0, lit_5269(r2)
/* 801B1F60  EC 21 00 28 */	fsubs f1, f1, f0
lbl_801B1F64:
/* 801B1F64  C0 02 A5 28 */	lfs f0, lit_4481(r2)
/* 801B1F68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B1F6C  40 80 00 08 */	bge lbl_801B1F74
/* 801B1F70  FC 20 00 90 */	fmr f1, f0
lbl_801B1F74:
/* 801B1F74  7C 83 23 78 */	mr r3, r4
/* 801B1F78  C0 02 A5 40 */	lfs f0, lit_5268(r2)
/* 801B1F7C  EC 00 00 72 */	fmuls f0, f0, f1
/* 801B1F80  FC 00 00 1E */	fctiwz f0, f0
/* 801B1F84  D8 01 00 08 */	stfd f0, 8(r1)
/* 801B1F88  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801B1F8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1F90  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801B1F94  7D 89 03 A6 */	mtctr r12
/* 801B1F98  4E 80 04 21 */	bctrl 
/* 801B1F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B1FA0  7C 08 03 A6 */	mtlr r0
/* 801B1FA4  38 21 00 10 */	addi r1, r1, 0x10
/* 801B1FA8  4E 80 00 20 */	blr 

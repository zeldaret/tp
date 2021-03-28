lbl_80C60F58:
/* 80C60F58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C60F5C  7C 08 02 A6 */	mflr r0
/* 80C60F60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C60F64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C60F68  7C 7F 1B 78 */	mr r31, r3
/* 80C60F6C  80 83 09 4C */	lwz r4, 0x94c(r3)
/* 80C60F70  A8 04 05 EE */	lha r0, 0x5ee(r4)
/* 80C60F74  3C 80 80 C6 */	lis r4, lit_3785@ha
/* 80C60F78  C8 24 1B 50 */	lfd f1, lit_3785@l(r4)
/* 80C60F7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C60F80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C60F84  3C 00 43 30 */	lis r0, 0x4330
/* 80C60F88  90 01 00 08 */	stw r0, 8(r1)
/* 80C60F8C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C60F90  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C60F94  3C 80 80 C6 */	lis r4, lit_3782@ha
/* 80C60F98  C0 04 1B 44 */	lfs f0, lit_3782@l(r4)
/* 80C60F9C  EC 21 00 24 */	fdivs f1, f1, f0
/* 80C60FA0  3C 80 80 C6 */	lis r4, lit_3783@ha
/* 80C60FA4  C0 04 1B 48 */	lfs f0, lit_3783@l(r4)
/* 80C60FA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C60FAC  40 81 00 3C */	ble lbl_80C60FE8
/* 80C60FB0  80 9F 09 54 */	lwz r4, 0x954(r31)
/* 80C60FB4  38 04 00 01 */	addi r0, r4, 1
/* 80C60FB8  90 1F 09 54 */	stw r0, 0x954(r31)
/* 80C60FBC  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80C60FC0  2C 00 00 64 */	cmpwi r0, 0x64
/* 80C60FC4  40 81 00 2C */	ble lbl_80C60FF0
/* 80C60FC8  48 00 00 3D */	bl mode_init_move__14daObjLv4Wall_cFv
/* 80C60FCC  3C 60 80 C6 */	lis r3, s_BossSearch__FPvPv@ha
/* 80C60FD0  38 63 0A 78 */	addi r3, r3, s_BossSearch__FPvPv@l
/* 80C60FD4  7F E4 FB 78 */	mr r4, r31
/* 80C60FD8  4B 3C 03 60 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80C60FDC  38 00 00 01 */	li r0, 1
/* 80C60FE0  98 03 08 51 */	stb r0, 0x851(r3)
/* 80C60FE4  48 00 00 0C */	b lbl_80C60FF0
lbl_80C60FE8:
/* 80C60FE8  38 00 00 00 */	li r0, 0
/* 80C60FEC  90 1F 09 54 */	stw r0, 0x954(r31)
lbl_80C60FF0:
/* 80C60FF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C60FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C60FF8  7C 08 03 A6 */	mtlr r0
/* 80C60FFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80C61000  4E 80 00 20 */	blr 

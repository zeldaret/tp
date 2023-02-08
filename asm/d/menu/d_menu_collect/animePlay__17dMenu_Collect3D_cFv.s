lbl_801B6E70:
/* 801B6E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B6E74  7C 08 02 A6 */	mflr r0
/* 801B6E78  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B6E7C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801B6E80  7C 7F 1B 78 */	mr r31, r3
/* 801B6E84  80 03 00 20 */	lwz r0, 0x20(r3)
/* 801B6E88  28 00 00 00 */	cmplwi r0, 0
/* 801B6E8C  41 82 00 84 */	beq lbl_801B6F10
/* 801B6E90  C0 3F 03 D0 */	lfs f1, 0x3d0(r31)
/* 801B6E94  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B6E98  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B6E9C  C0 03 06 50 */	lfs f0, 0x650(r3)
/* 801B6EA0  EC 01 00 2A */	fadds f0, f1, f0
/* 801B6EA4  D0 1F 03 D0 */	stfs f0, 0x3d0(r31)
/* 801B6EA8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801B6EAC  A8 83 00 08 */	lha r4, 8(r3)
/* 801B6EB0  C8 42 A5 38 */	lfd f2, lit_5199(r2)
/* 801B6EB4  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801B6EB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B6EBC  3C 60 43 30 */	lis r3, 0x4330
/* 801B6EC0  90 61 00 08 */	stw r3, 8(r1)
/* 801B6EC4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801B6EC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801B6ECC  C0 3F 03 D0 */	lfs f1, 0x3d0(r31)
/* 801B6ED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B6ED4  4C 41 13 82 */	cror 2, 1, 2
/* 801B6ED8  40 82 00 24 */	bne lbl_801B6EFC
/* 801B6EDC  7C 80 07 34 */	extsh r0, r4
/* 801B6EE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801B6EE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B6EE8  90 61 00 08 */	stw r3, 8(r1)
/* 801B6EEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 801B6EF0  EC 00 10 28 */	fsubs f0, f0, f2
/* 801B6EF4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801B6EF8  D0 1F 03 D0 */	stfs f0, 0x3d0(r31)
lbl_801B6EFC:
/* 801B6EFC  C0 1F 03 D0 */	lfs f0, 0x3d0(r31)
/* 801B6F00  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801B6F04  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801B6F08  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801B6F0C  4B E5 65 1D */	bl play__14mDoExt_baseAnmFv
lbl_801B6F10:
/* 801B6F10  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 801B6F14  28 00 00 00 */	cmplwi r0, 0
/* 801B6F18  41 82 00 84 */	beq lbl_801B6F9C
/* 801B6F1C  C0 3F 03 D4 */	lfs f1, 0x3d4(r31)
/* 801B6F20  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B6F24  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B6F28  C0 03 06 50 */	lfs f0, 0x650(r3)
/* 801B6F2C  EC 01 00 2A */	fadds f0, f1, f0
/* 801B6F30  D0 1F 03 D4 */	stfs f0, 0x3d4(r31)
/* 801B6F34  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B6F38  A8 83 00 08 */	lha r4, 8(r3)
/* 801B6F3C  C8 42 A5 38 */	lfd f2, lit_5199(r2)
/* 801B6F40  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801B6F44  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B6F48  3C 60 43 30 */	lis r3, 0x4330
/* 801B6F4C  90 61 00 08 */	stw r3, 8(r1)
/* 801B6F50  C8 01 00 08 */	lfd f0, 8(r1)
/* 801B6F54  EC 00 10 28 */	fsubs f0, f0, f2
/* 801B6F58  C0 3F 03 D4 */	lfs f1, 0x3d4(r31)
/* 801B6F5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801B6F60  4C 41 13 82 */	cror 2, 1, 2
/* 801B6F64  40 82 00 24 */	bne lbl_801B6F88
/* 801B6F68  7C 80 07 34 */	extsh r0, r4
/* 801B6F6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801B6F70  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B6F74  90 61 00 08 */	stw r3, 8(r1)
/* 801B6F78  C8 01 00 08 */	lfd f0, 8(r1)
/* 801B6F7C  EC 00 10 28 */	fsubs f0, f0, f2
/* 801B6F80  EC 01 00 28 */	fsubs f0, f1, f0
/* 801B6F84  D0 1F 03 D4 */	stfs f0, 0x3d4(r31)
lbl_801B6F88:
/* 801B6F88  C0 1F 03 D4 */	lfs f0, 0x3d4(r31)
/* 801B6F8C  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B6F90  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 801B6F94  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B6F98  4B E5 64 91 */	bl play__14mDoExt_baseAnmFv
lbl_801B6F9C:
/* 801B6F9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801B6FA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B6FA4  7C 08 03 A6 */	mtlr r0
/* 801B6FA8  38 21 00 20 */	addi r1, r1, 0x20
/* 801B6FAC  4E 80 00 20 */	blr 

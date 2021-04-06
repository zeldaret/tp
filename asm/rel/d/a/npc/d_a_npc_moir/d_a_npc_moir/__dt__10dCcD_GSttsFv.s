lbl_80A82F88:
/* 80A82F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A82F8C  7C 08 02 A6 */	mflr r0
/* 80A82F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A82F98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A82F9C  41 82 00 30 */	beq lbl_80A82FCC
/* 80A82FA0  3C 60 80 A8 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A83D18@ha */
/* 80A82FA4  38 03 3D 18 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A83D18@l */
/* 80A82FA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A82FAC  41 82 00 10 */	beq lbl_80A82FBC
/* 80A82FB0  3C 60 80 A8 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A83D0C@ha */
/* 80A82FB4  38 03 3D 0C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A83D0C@l */
/* 80A82FB8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A82FBC:
/* 80A82FBC  7C 80 07 35 */	extsh. r0, r4
/* 80A82FC0  40 81 00 0C */	ble lbl_80A82FCC
/* 80A82FC4  7F E3 FB 78 */	mr r3, r31
/* 80A82FC8  4B 84 BD 75 */	bl __dl__FPv
lbl_80A82FCC:
/* 80A82FCC  7F E3 FB 78 */	mr r3, r31
/* 80A82FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A82FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A82FD8  7C 08 03 A6 */	mtlr r0
/* 80A82FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A82FE0  4E 80 00 20 */	blr 

lbl_809B7F8C:
/* 809B7F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B7F90  7C 08 02 A6 */	mflr r0
/* 809B7F94  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B7F98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B7F9C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B7FA0  41 82 00 1C */	beq lbl_809B7FBC
/* 809B7FA4  3C A0 80 9C */	lis r5, __vt__10cCcD_GStts@ha /* 0x809BA2E0@ha */
/* 809B7FA8  38 05 A2 E0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x809BA2E0@l */
/* 809B7FAC  90 1F 00 00 */	stw r0, 0(r31)
/* 809B7FB0  7C 80 07 35 */	extsh. r0, r4
/* 809B7FB4  40 81 00 08 */	ble lbl_809B7FBC
/* 809B7FB8  4B 91 6D 85 */	bl __dl__FPv
lbl_809B7FBC:
/* 809B7FBC  7F E3 FB 78 */	mr r3, r31
/* 809B7FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B7FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B7FC8  7C 08 03 A6 */	mtlr r0
/* 809B7FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 809B7FD0  4E 80 00 20 */	blr 

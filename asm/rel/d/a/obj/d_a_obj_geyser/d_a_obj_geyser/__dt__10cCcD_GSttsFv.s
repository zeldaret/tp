lbl_80BF8F98:
/* 80BF8F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF8F9C  7C 08 02 A6 */	mflr r0
/* 80BF8FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF8FA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF8FAC  41 82 00 1C */	beq lbl_80BF8FC8
/* 80BF8FB0  3C A0 80 C0 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BF91E8@ha */
/* 80BF8FB4  38 05 91 E8 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BF91E8@l */
/* 80BF8FB8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF8FBC  7C 80 07 35 */	extsh. r0, r4
/* 80BF8FC0  40 81 00 08 */	ble lbl_80BF8FC8
/* 80BF8FC4  4B 6D 5D 79 */	bl __dl__FPv
lbl_80BF8FC8:
/* 80BF8FC8  7F E3 FB 78 */	mr r3, r31
/* 80BF8FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF8FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8FD4  7C 08 03 A6 */	mtlr r0
/* 80BF8FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8FDC  4E 80 00 20 */	blr 

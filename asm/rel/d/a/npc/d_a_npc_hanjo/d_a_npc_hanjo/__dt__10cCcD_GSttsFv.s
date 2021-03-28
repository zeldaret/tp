lbl_809FEE10:
/* 809FEE10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FEE14  7C 08 02 A6 */	mflr r0
/* 809FEE18  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FEE1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FEE20  7C 7F 1B 79 */	or. r31, r3, r3
/* 809FEE24  41 82 00 1C */	beq lbl_809FEE40
/* 809FEE28  3C A0 80 A0 */	lis r5, __vt__10cCcD_GStts@ha
/* 809FEE2C  38 05 11 4C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 809FEE30  90 1F 00 00 */	stw r0, 0(r31)
/* 809FEE34  7C 80 07 35 */	extsh. r0, r4
/* 809FEE38  40 81 00 08 */	ble lbl_809FEE40
/* 809FEE3C  4B 8C FF 00 */	b __dl__FPv
lbl_809FEE40:
/* 809FEE40  7F E3 FB 78 */	mr r3, r31
/* 809FEE44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FEE48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FEE4C  7C 08 03 A6 */	mtlr r0
/* 809FEE50  38 21 00 10 */	addi r1, r1, 0x10
/* 809FEE54  4E 80 00 20 */	blr 

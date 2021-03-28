lbl_809DEE20:
/* 809DEE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DEE24  7C 08 02 A6 */	mflr r0
/* 809DEE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DEE2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DEE30  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DEE34  41 82 00 1C */	beq lbl_809DEE50
/* 809DEE38  3C A0 80 9E */	lis r5, __vt__10cCcD_GStts@ha
/* 809DEE3C  38 05 F6 98 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 809DEE40  90 1F 00 00 */	stw r0, 0(r31)
/* 809DEE44  7C 80 07 35 */	extsh. r0, r4
/* 809DEE48  40 81 00 08 */	ble lbl_809DEE50
/* 809DEE4C  4B 8E FE F0 */	b __dl__FPv
lbl_809DEE50:
/* 809DEE50  7F E3 FB 78 */	mr r3, r31
/* 809DEE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DEE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DEE5C  7C 08 03 A6 */	mtlr r0
/* 809DEE60  38 21 00 10 */	addi r1, r1, 0x10
/* 809DEE64  4E 80 00 20 */	blr 

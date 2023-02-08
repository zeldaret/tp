lbl_809BAE28:
/* 809BAE28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BAE2C  7C 08 02 A6 */	mflr r0
/* 809BAE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BAE34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BAE38  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BAE3C  41 82 00 1C */	beq lbl_809BAE58
/* 809BAE40  3C A0 80 9C */	lis r5, __vt__10cCcD_GStts@ha /* 0x809BB4A8@ha */
/* 809BAE44  38 05 B4 A8 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x809BB4A8@l */
/* 809BAE48  90 1F 00 00 */	stw r0, 0(r31)
/* 809BAE4C  7C 80 07 35 */	extsh. r0, r4
/* 809BAE50  40 81 00 08 */	ble lbl_809BAE58
/* 809BAE54  4B 91 3E E9 */	bl __dl__FPv
lbl_809BAE58:
/* 809BAE58  7F E3 FB 78 */	mr r3, r31
/* 809BAE5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BAE60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BAE64  7C 08 03 A6 */	mtlr r0
/* 809BAE68  38 21 00 10 */	addi r1, r1, 0x10
/* 809BAE6C  4E 80 00 20 */	blr 

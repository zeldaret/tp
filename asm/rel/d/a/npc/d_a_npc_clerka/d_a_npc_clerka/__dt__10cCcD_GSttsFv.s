lbl_8099489C:
/* 8099489C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809948A0  7C 08 02 A6 */	mflr r0
/* 809948A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809948A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809948AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809948B0  41 82 00 1C */	beq lbl_809948CC
/* 809948B4  3C A0 80 99 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80995CE8@ha */
/* 809948B8  38 05 5C E8 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80995CE8@l */
/* 809948BC  90 1F 00 00 */	stw r0, 0(r31)
/* 809948C0  7C 80 07 35 */	extsh. r0, r4
/* 809948C4  40 81 00 08 */	ble lbl_809948CC
/* 809948C8  4B 93 A4 75 */	bl __dl__FPv
lbl_809948CC:
/* 809948CC  7F E3 FB 78 */	mr r3, r31
/* 809948D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809948D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809948D8  7C 08 03 A6 */	mtlr r0
/* 809948DC  38 21 00 10 */	addi r1, r1, 0x10
/* 809948E0  4E 80 00 20 */	blr 

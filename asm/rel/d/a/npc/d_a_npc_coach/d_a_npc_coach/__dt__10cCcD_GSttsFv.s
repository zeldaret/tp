lbl_809A4E70:
/* 809A4E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A4E74  7C 08 02 A6 */	mflr r0
/* 809A4E78  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A4E7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A4E80  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A4E84  41 82 00 1C */	beq lbl_809A4EA0
/* 809A4E88  3C A0 80 9A */	lis r5, __vt__10cCcD_GStts@ha /* 0x809A5268@ha */
/* 809A4E8C  38 05 52 68 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x809A5268@l */
/* 809A4E90  90 1F 00 00 */	stw r0, 0(r31)
/* 809A4E94  7C 80 07 35 */	extsh. r0, r4
/* 809A4E98  40 81 00 08 */	ble lbl_809A4EA0
/* 809A4E9C  4B 92 9E A1 */	bl __dl__FPv
lbl_809A4EA0:
/* 809A4EA0  7F E3 FB 78 */	mr r3, r31
/* 809A4EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A4EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A4EAC  7C 08 03 A6 */	mtlr r0
/* 809A4EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 809A4EB4  4E 80 00 20 */	blr 

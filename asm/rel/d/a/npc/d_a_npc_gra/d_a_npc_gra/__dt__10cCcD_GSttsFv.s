lbl_809C9A80:
/* 809C9A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C9A84  7C 08 02 A6 */	mflr r0
/* 809C9A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C9A90  7C 7F 1B 79 */	or. r31, r3, r3
/* 809C9A94  41 82 00 1C */	beq lbl_809C9AB0
/* 809C9A98  3C A0 80 9D */	lis r5, __vt__10cCcD_GStts@ha /* 0x809CB278@ha */
/* 809C9A9C  38 05 B2 78 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x809CB278@l */
/* 809C9AA0  90 1F 00 00 */	stw r0, 0(r31)
/* 809C9AA4  7C 80 07 35 */	extsh. r0, r4
/* 809C9AA8  40 81 00 08 */	ble lbl_809C9AB0
/* 809C9AAC  4B 90 52 91 */	bl __dl__FPv
lbl_809C9AB0:
/* 809C9AB0  7F E3 FB 78 */	mr r3, r31
/* 809C9AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C9ABC  7C 08 03 A6 */	mtlr r0
/* 809C9AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9AC4  4E 80 00 20 */	blr 

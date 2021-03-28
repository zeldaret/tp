lbl_809A94D4:
/* 809A94D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A94D8  7C 08 02 A6 */	mflr r0
/* 809A94DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A94E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A94E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A94E8  41 82 00 10 */	beq lbl_809A94F8
/* 809A94EC  7C 80 07 35 */	extsh. r0, r4
/* 809A94F0  40 81 00 08 */	ble lbl_809A94F8
/* 809A94F4  4B 92 58 48 */	b __dl__FPv
lbl_809A94F8:
/* 809A94F8  7F E3 FB 78 */	mr r3, r31
/* 809A94FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A9500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A9504  7C 08 03 A6 */	mtlr r0
/* 809A9508  38 21 00 10 */	addi r1, r1, 0x10
/* 809A950C  4E 80 00 20 */	blr 

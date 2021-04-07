lbl_809AD264:
/* 809AD264  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD268  7C 08 02 A6 */	mflr r0
/* 809AD26C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD270  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD274  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AD278  41 82 00 10 */	beq lbl_809AD288
/* 809AD27C  7C 80 07 35 */	extsh. r0, r4
/* 809AD280  40 81 00 08 */	ble lbl_809AD288
/* 809AD284  4B 92 1A B9 */	bl __dl__FPv
lbl_809AD288:
/* 809AD288  7F E3 FB 78 */	mr r3, r31
/* 809AD28C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD294  7C 08 03 A6 */	mtlr r0
/* 809AD298  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD29C  4E 80 00 20 */	blr 

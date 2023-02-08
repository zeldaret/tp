lbl_8004AB88:
/* 8004AB88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004AB8C  7C 08 02 A6 */	mflr r0
/* 8004AB90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004AB94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004AB98  7C 7F 1B 79 */	or. r31, r3, r3
/* 8004AB9C  41 82 00 10 */	beq lbl_8004ABAC
/* 8004ABA0  7C 80 07 35 */	extsh. r0, r4
/* 8004ABA4  40 81 00 08 */	ble lbl_8004ABAC
/* 8004ABA8  48 28 41 95 */	bl __dl__FPv
lbl_8004ABAC:
/* 8004ABAC  7F E3 FB 78 */	mr r3, r31
/* 8004ABB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004ABB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004ABB8  7C 08 03 A6 */	mtlr r0
/* 8004ABBC  38 21 00 10 */	addi r1, r1, 0x10
/* 8004ABC0  4E 80 00 20 */	blr 

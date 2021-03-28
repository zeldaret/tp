lbl_80038F70:
/* 80038F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80038F74  7C 08 02 A6 */	mflr r0
/* 80038F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80038F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80038F80  93 C1 00 08 */	stw r30, 8(r1)
/* 80038F84  7C 7E 1B 79 */	or. r30, r3, r3
/* 80038F88  7C 9F 23 78 */	mr r31, r4
/* 80038F8C  41 82 00 18 */	beq lbl_80038FA4
/* 80038F90  48 00 03 45 */	bl remove__14dDemo_object_cFv
/* 80038F94  7F E0 07 35 */	extsh. r0, r31
/* 80038F98  40 81 00 0C */	ble lbl_80038FA4
/* 80038F9C  7F C3 F3 78 */	mr r3, r30
/* 80038FA0  48 29 5D 9D */	bl __dl__FPv
lbl_80038FA4:
/* 80038FA4  7F C3 F3 78 */	mr r3, r30
/* 80038FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80038FAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80038FB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80038FB4  7C 08 03 A6 */	mtlr r0
/* 80038FB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80038FBC  4E 80 00 20 */	blr 

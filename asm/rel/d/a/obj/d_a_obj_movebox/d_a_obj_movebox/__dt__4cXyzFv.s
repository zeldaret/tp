lbl_8047DBB0:
/* 8047DBB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047DBB4  7C 08 02 A6 */	mflr r0
/* 8047DBB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047DBBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047DBC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8047DBC4  41 82 00 10 */	beq lbl_8047DBD4
/* 8047DBC8  7C 80 07 35 */	extsh. r0, r4
/* 8047DBCC  40 81 00 08 */	ble lbl_8047DBD4
/* 8047DBD0  4B E5 11 6C */	b __dl__FPv
lbl_8047DBD4:
/* 8047DBD4  7F E3 FB 78 */	mr r3, r31
/* 8047DBD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047DBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047DBE0  7C 08 03 A6 */	mtlr r0
/* 8047DBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8047DBE8  4E 80 00 20 */	blr 

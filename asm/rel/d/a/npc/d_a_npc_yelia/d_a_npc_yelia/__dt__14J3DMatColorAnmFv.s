lbl_80B4DBCC:
/* 80B4DBCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4DBD0  7C 08 02 A6 */	mflr r0
/* 80B4DBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4DBD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4DBDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4DBE0  41 82 00 10 */	beq lbl_80B4DBF0
/* 80B4DBE4  7C 80 07 35 */	extsh. r0, r4
/* 80B4DBE8  40 81 00 08 */	ble lbl_80B4DBF0
/* 80B4DBEC  4B 78 11 50 */	b __dl__FPv
lbl_80B4DBF0:
/* 80B4DBF0  7F E3 FB 78 */	mr r3, r31
/* 80B4DBF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4DBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4DBFC  7C 08 03 A6 */	mtlr r0
/* 80B4DC00  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4DC04  4E 80 00 20 */	blr 

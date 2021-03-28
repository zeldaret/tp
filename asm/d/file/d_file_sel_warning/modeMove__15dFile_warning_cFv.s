lbl_80191F94:
/* 80191F94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80191F98  7C 08 02 A6 */	mflr r0
/* 80191F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80191FA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80191FA4  7C 7F 1B 78 */	mr r31, r3
/* 80191FA8  48 00 00 2D */	bl baseMoveAnm__15dFile_warning_cFv
/* 80191FAC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80191FB0  28 00 00 01 */	cmplwi r0, 1
/* 80191FB4  40 82 00 0C */	bne lbl_80191FC0
/* 80191FB8  38 00 00 00 */	li r0, 0
/* 80191FBC  98 1F 00 18 */	stb r0, 0x18(r31)
lbl_80191FC0:
/* 80191FC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80191FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80191FC8  7C 08 03 A6 */	mtlr r0
/* 80191FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80191FD0  4E 80 00 20 */	blr 

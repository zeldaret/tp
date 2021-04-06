lbl_80A14EA4:
/* 80A14EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A14EA8  7C 08 02 A6 */	mflr r0
/* 80A14EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A14EB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A14EB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A14EB8  41 82 00 10 */	beq lbl_80A14EC8
/* 80A14EBC  7C 80 07 35 */	extsh. r0, r4
/* 80A14EC0  40 81 00 08 */	ble lbl_80A14EC8
/* 80A14EC4  4B 8B 9E 79 */	bl __dl__FPv
lbl_80A14EC8:
/* 80A14EC8  7F E3 FB 78 */	mr r3, r31
/* 80A14ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A14ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A14ED4  7C 08 03 A6 */	mtlr r0
/* 80A14ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14EDC  4E 80 00 20 */	blr 

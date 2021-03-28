lbl_80AC3648:
/* 80AC3648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC364C  7C 08 02 A6 */	mflr r0
/* 80AC3650  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC3654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC3658  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC365C  41 82 00 10 */	beq lbl_80AC366C
/* 80AC3660  7C 80 07 35 */	extsh. r0, r4
/* 80AC3664  40 81 00 08 */	ble lbl_80AC366C
/* 80AC3668  4B 80 B6 D4 */	b __dl__FPv
lbl_80AC366C:
/* 80AC366C  7F E3 FB 78 */	mr r3, r31
/* 80AC3670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC3674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC3678  7C 08 03 A6 */	mtlr r0
/* 80AC367C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC3680  4E 80 00 20 */	blr 

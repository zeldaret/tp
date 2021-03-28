lbl_80966E9C:
/* 80966E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80966EA0  7C 08 02 A6 */	mflr r0
/* 80966EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80966EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80966EAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80966EB0  41 82 00 10 */	beq lbl_80966EC0
/* 80966EB4  7C 80 07 35 */	extsh. r0, r4
/* 80966EB8  40 81 00 08 */	ble lbl_80966EC0
/* 80966EBC  4B 96 7E 80 */	b __dl__FPv
lbl_80966EC0:
/* 80966EC0  7F E3 FB 78 */	mr r3, r31
/* 80966EC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80966EC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80966ECC  7C 08 03 A6 */	mtlr r0
/* 80966ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80966ED4  4E 80 00 20 */	blr 

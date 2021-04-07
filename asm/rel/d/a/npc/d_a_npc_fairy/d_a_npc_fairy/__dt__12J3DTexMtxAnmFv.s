lbl_809B2A9C:
/* 809B2A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B2AA0  7C 08 02 A6 */	mflr r0
/* 809B2AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B2AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B2AAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B2AB0  41 82 00 10 */	beq lbl_809B2AC0
/* 809B2AB4  7C 80 07 35 */	extsh. r0, r4
/* 809B2AB8  40 81 00 08 */	ble lbl_809B2AC0
/* 809B2ABC  4B 91 C2 81 */	bl __dl__FPv
lbl_809B2AC0:
/* 809B2AC0  7F E3 FB 78 */	mr r3, r31
/* 809B2AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B2AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B2ACC  7C 08 03 A6 */	mtlr r0
/* 809B2AD0  38 21 00 10 */	addi r1, r1, 0x10
/* 809B2AD4  4E 80 00 20 */	blr 

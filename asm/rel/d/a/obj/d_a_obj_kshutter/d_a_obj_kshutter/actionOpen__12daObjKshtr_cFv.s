lbl_80C499CC:
/* 80C499CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C499D0  7C 08 02 A6 */	mflr r0
/* 80C499D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C499D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C499DC  7C 7F 1B 78 */	mr r31, r3
/* 80C499E0  4B FF F3 2D */	bl openProc__12daObjKshtr_cFv
/* 80C499E4  2C 03 00 00 */	cmpwi r3, 0
/* 80C499E8  41 82 00 0C */	beq lbl_80C499F4
/* 80C499EC  38 00 00 02 */	li r0, 2
/* 80C499F0  98 1F 05 E8 */	stb r0, 0x5e8(r31)
lbl_80C499F4:
/* 80C499F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C499F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C499FC  7C 08 03 A6 */	mtlr r0
/* 80C49A00  38 21 00 10 */	addi r1, r1, 0x10
/* 80C49A04  4E 80 00 20 */	blr 

lbl_80BBC2C0:
/* 80BBC2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC2C4  7C 08 02 A6 */	mflr r0
/* 80BBC2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC2CC  4B FF EF 65 */	bl create__15daObj_BouMato_cFv
/* 80BBC2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC2D4  7C 08 03 A6 */	mtlr r0
/* 80BBC2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC2DC  4E 80 00 20 */	blr 

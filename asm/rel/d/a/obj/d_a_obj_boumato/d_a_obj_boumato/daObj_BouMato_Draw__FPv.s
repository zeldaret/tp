lbl_80BBC320:
/* 80BBC320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC324  7C 08 02 A6 */	mflr r0
/* 80BBC328  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC32C  4B FF FA 55 */	bl Draw__15daObj_BouMato_cFv
/* 80BBC330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC334  7C 08 03 A6 */	mtlr r0
/* 80BBC338  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC33C  4E 80 00 20 */	blr 

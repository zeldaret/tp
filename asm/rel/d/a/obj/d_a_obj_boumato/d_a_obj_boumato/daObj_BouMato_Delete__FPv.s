lbl_80BBC2E0:
/* 80BBC2E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC2E4  7C 08 02 A6 */	mflr r0
/* 80BBC2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC2EC  4B FF F5 15 */	bl Delete__15daObj_BouMato_cFv
/* 80BBC2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC2F4  7C 08 03 A6 */	mtlr r0
/* 80BBC2F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC2FC  4E 80 00 20 */	blr 

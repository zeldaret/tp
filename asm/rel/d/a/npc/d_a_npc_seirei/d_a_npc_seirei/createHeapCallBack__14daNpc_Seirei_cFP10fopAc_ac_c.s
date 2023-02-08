lbl_80AD5CC0:
/* 80AD5CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD5CC4  7C 08 02 A6 */	mflr r0
/* 80AD5CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD5CCC  4B FF FD B1 */	bl CreateHeap__14daNpc_Seirei_cFv
/* 80AD5CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD5CD4  7C 08 03 A6 */	mtlr r0
/* 80AD5CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD5CDC  4E 80 00 20 */	blr 

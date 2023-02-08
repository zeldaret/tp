lbl_80C35280:
/* 80C35280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C35284  7C 08 02 A6 */	mflr r0
/* 80C35288  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3528C  48 00 00 15 */	bl CreateHeap__10daObjKAM_cFv
/* 80C35290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C35294  7C 08 03 A6 */	mtlr r0
/* 80C35298  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3529C  4E 80 00 20 */	blr 

lbl_80BD6398:
/* 80BD6398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD639C  7C 08 02 A6 */	mflr r0
/* 80BD63A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD63A4  48 00 02 0D */	bl CreateHeap__14daObjCrystal_cFv
/* 80BD63A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD63AC  7C 08 03 A6 */	mtlr r0
/* 80BD63B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD63B4  4E 80 00 20 */	blr 

lbl_80CE7758:
/* 80CE7758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE775C  7C 08 02 A6 */	mflr r0
/* 80CE7760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE7764  4B FF FB 35 */	bl CreateHeap__14daObj_SSItem_cFv
/* 80CE7768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE776C  7C 08 03 A6 */	mtlr r0
/* 80CE7770  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7774  4E 80 00 20 */	blr 

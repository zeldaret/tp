lbl_80CE6684:
/* 80CE6684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE6688  7C 08 02 A6 */	mflr r0
/* 80CE668C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE6690  4B FF F1 C9 */	bl Draw__15daObj_SSDrink_cFv
/* 80CE6694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6698  7C 08 03 A6 */	mtlr r0
/* 80CE669C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE66A0  4E 80 00 20 */	blr 

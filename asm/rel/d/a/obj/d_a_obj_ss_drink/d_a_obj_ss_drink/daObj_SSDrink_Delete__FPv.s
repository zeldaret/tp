lbl_80CE6644:
/* 80CE6644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE6648  7C 08 02 A6 */	mflr r0
/* 80CE664C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE6650  4B FF EF A1 */	bl Delete__15daObj_SSDrink_cFv
/* 80CE6654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6658  7C 08 03 A6 */	mtlr r0
/* 80CE665C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE6660  4E 80 00 20 */	blr 

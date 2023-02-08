lbl_80CE6664:
/* 80CE6664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE6668  7C 08 02 A6 */	mflr r0
/* 80CE666C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE6670  4B FF EF B5 */	bl Execute__15daObj_SSDrink_cFv
/* 80CE6674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE6678  7C 08 03 A6 */	mtlr r0
/* 80CE667C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE6680  4E 80 00 20 */	blr 

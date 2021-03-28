lbl_80BD0658:
/* 80BD0658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD065C  7C 08 02 A6 */	mflr r0
/* 80BD0660  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD0664  48 00 22 5D */	bl create__14daObjCRVGATE_cFv
/* 80BD0668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD066C  7C 08 03 A6 */	mtlr r0
/* 80BD0670  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD0674  4E 80 00 20 */	blr 

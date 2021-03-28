lbl_801CC85C:
/* 801CC85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC860  7C 08 02 A6 */	mflr r0
/* 801CC864  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC868  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801CC86C  48 00 A6 CD */	bl setTitleNameString__17dMenu_Fmap2DTop_cFUl
/* 801CC870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC874  7C 08 03 A6 */	mtlr r0
/* 801CC878  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC87C  4E 80 00 20 */	blr 

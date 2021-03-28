lbl_801D2860:
/* 801D2860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D2864  7C 08 02 A6 */	mflr r0
/* 801D2868  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D286C  4B FF FF 7D */	bl getMapScissorAreaSizeX__18dMenu_Fmap2DBack_cFv
/* 801D2870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D2874  7C 08 03 A6 */	mtlr r0
/* 801D2878  38 21 00 10 */	addi r1, r1, 0x10
/* 801D287C  4E 80 00 20 */	blr 

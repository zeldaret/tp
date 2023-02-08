lbl_801D2998:
/* 801D2998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801D299C  7C 08 02 A6 */	mflr r0
/* 801D29A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D29A4  4B FF FF 7D */	bl getMapScissorAreaSizeY__18dMenu_Fmap2DBack_cFv
/* 801D29A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801D29AC  7C 08 03 A6 */	mtlr r0
/* 801D29B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801D29B4  4E 80 00 20 */	blr 

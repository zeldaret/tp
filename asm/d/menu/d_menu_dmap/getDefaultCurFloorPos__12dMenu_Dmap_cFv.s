lbl_801BD1E8:
/* 801BD1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BD1EC  7C 08 02 A6 */	mflr r0
/* 801BD1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BD1F4  4B FF FF E1 */	bl getCurFloorPos__12dMenu_Dmap_cFv
/* 801BD1F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BD1FC  7C 08 03 A6 */	mtlr r0
/* 801BD200  38 21 00 10 */	addi r1, r1, 0x10
/* 801BD204  4E 80 00 20 */	blr 

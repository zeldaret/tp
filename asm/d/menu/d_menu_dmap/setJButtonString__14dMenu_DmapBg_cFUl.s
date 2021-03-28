lbl_801B90BC:
/* 801B90BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B90C0  7C 08 02 A6 */	mflr r0
/* 801B90C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B90C8  80 6D 8B 00 */	lwz r3, myclass__12dMenu_Dmap_c(r13)
/* 801B90CC  48 00 45 C5 */	bl isMapMoveState__12dMenu_Dmap_cFv
/* 801B90D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B90D4  7C 08 03 A6 */	mtlr r0
/* 801B90D8  38 21 00 10 */	addi r1, r1, 0x10
/* 801B90DC  4E 80 00 20 */	blr 

lbl_801EF560:
/* 801EF560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EF564  7C 08 02 A6 */	mflr r0
/* 801EF568  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EF56C  4B FF B7 5D */	bl _draw__12dMenu_Ring_cFv
/* 801EF570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EF574  7C 08 03 A6 */	mtlr r0
/* 801EF578  38 21 00 10 */	addi r1, r1, 0x10
/* 801EF57C  4E 80 00 20 */	blr 

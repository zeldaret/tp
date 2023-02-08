lbl_80C2AA00:
/* 80C2AA00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2AA04  7C 08 02 A6 */	mflr r0
/* 80C2AA08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2AA0C  4B FF F3 D5 */	bl Execute__15daObj_ItaMato_cFv
/* 80C2AA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2AA14  7C 08 03 A6 */	mtlr r0
/* 80C2AA18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2AA1C  4E 80 00 20 */	blr 

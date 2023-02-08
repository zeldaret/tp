lbl_807390A4:
/* 807390A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807390A8  7C 08 02 A6 */	mflr r0
/* 807390AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807390B0  4B FF FF AD */	bl execute__11daE_OctBg_cFv
/* 807390B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807390B8  7C 08 03 A6 */	mtlr r0
/* 807390BC  38 21 00 10 */	addi r1, r1, 0x10
/* 807390C0  4E 80 00 20 */	blr 

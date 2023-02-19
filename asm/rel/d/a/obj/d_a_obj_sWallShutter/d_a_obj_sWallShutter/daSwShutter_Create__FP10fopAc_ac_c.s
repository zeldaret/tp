lbl_80598EAC:
/* 80598EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80598EB0  7C 08 02 A6 */	mflr r0
/* 80598EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80598EB8  4B FF F5 0D */	bl create__13daSwShutter_cFv
/* 80598EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80598EC0  7C 08 03 A6 */	mtlr r0
/* 80598EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80598EC8  4E 80 00 20 */	blr 

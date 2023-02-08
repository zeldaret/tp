lbl_80857F28:
/* 80857F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80857F2C  7C 08 02 A6 */	mflr r0
/* 80857F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80857F34  4B FF FB 1D */	bl dKy_event_proc__Fv
/* 80857F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80857F3C  7C 08 03 A6 */	mtlr r0
/* 80857F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80857F44  4E 80 00 20 */	blr 

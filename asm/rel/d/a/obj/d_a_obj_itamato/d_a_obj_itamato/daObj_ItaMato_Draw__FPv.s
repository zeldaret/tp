lbl_80C2AA20:
/* 80C2AA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2AA24  7C 08 02 A6 */	mflr r0
/* 80C2AA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2AA2C  4B FF FA 21 */	bl Draw__15daObj_ItaMato_cFv
/* 80C2AA30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2AA34  7C 08 03 A6 */	mtlr r0
/* 80C2AA38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2AA3C  4E 80 00 20 */	blr 

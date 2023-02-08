lbl_80C5E70C:
/* 80C5E70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E710  7C 08 02 A6 */	mflr r0
/* 80C5E714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E718  4B FF F8 1D */	bl create__16daLv4EdShutter_cFv
/* 80C5E71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E720  7C 08 03 A6 */	mtlr r0
/* 80C5E724  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E728  4E 80 00 20 */	blr 

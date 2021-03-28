lbl_80BA80D4:
/* 80BA80D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA80D8  7C 08 02 A6 */	mflr r0
/* 80BA80DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA80E0  4B FF FF 15 */	bl draw__15daObj_Balloon_cFv
/* 80BA80E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA80E8  7C 08 03 A6 */	mtlr r0
/* 80BA80EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA80F0  4E 80 00 20 */	blr 

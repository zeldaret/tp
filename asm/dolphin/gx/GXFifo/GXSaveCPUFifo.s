lbl_8035AA8C:
/* 8035AA8C  7C 08 02 A6 */	mflr r0
/* 8035AA90  90 01 00 04 */	stw r0, 4(r1)
/* 8035AA94  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035AA98  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035AA9C  7C 7F 1B 78 */	mr r31, r3
/* 8035AAA0  48 00 14 2D */	bl GXFlush
/* 8035AAA4  7F E3 FB 78 */	mr r3, r31
/* 8035AAA8  48 00 00 19 */	bl __GXSaveCPUFifoAux
/* 8035AAAC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035AAB0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035AAB4  38 21 00 18 */	addi r1, r1, 0x18
/* 8035AAB8  7C 08 03 A6 */	mtlr r0
/* 8035AABC  4E 80 00 20 */	blr 

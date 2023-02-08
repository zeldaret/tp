lbl_8099BC48:
/* 8099BC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099BC4C  7C 08 02 A6 */	mflr r0
/* 8099BC50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099BC54  4B FF EE 2D */	bl Draw__13daNpcClerkT_cFv
/* 8099BC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099BC5C  7C 08 03 A6 */	mtlr r0
/* 8099BC60  38 21 00 10 */	addi r1, r1, 0x10
/* 8099BC64  4E 80 00 20 */	blr 

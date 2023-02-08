lbl_8099BC08:
/* 8099BC08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099BC0C  7C 08 02 A6 */	mflr r0
/* 8099BC10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099BC14  4B FF ED 59 */	bl Delete__13daNpcClerkT_cFv
/* 8099BC18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099BC1C  7C 08 03 A6 */	mtlr r0
/* 8099BC20  38 21 00 10 */	addi r1, r1, 0x10
/* 8099BC24  4E 80 00 20 */	blr 

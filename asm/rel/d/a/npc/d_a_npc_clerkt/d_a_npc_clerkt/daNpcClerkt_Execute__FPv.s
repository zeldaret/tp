lbl_8099BC28:
/* 8099BC28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099BC2C  7C 08 02 A6 */	mflr r0
/* 8099BC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099BC34  4B FF ED 6D */	bl Execute__13daNpcClerkT_cFv
/* 8099BC38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099BC3C  7C 08 03 A6 */	mtlr r0
/* 8099BC40  38 21 00 10 */	addi r1, r1, 0x10
/* 8099BC44  4E 80 00 20 */	blr 

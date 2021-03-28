lbl_8029C4E4:
/* 8029C4E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029C4E8  7C 08 02 A6 */	mflr r0
/* 8029C4EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029C4F0  48 0B 38 4D */	bl AIStartDMA
/* 8029C4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029C4F8  7C 08 03 A6 */	mtlr r0
/* 8029C4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029C500  4E 80 00 20 */	blr 

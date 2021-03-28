lbl_8048E9E8:
/* 8048E9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048E9EC  7C 08 02 A6 */	mflr r0
/* 8048E9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048E9F4  4B FF F6 1D */	bl Execute__12daTag_KMsg_cFv
/* 8048E9F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048E9FC  7C 08 03 A6 */	mtlr r0
/* 8048EA00  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EA04  4E 80 00 20 */	blr 

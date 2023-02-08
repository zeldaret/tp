lbl_8048E9A8:
/* 8048E9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048E9AC  7C 08 02 A6 */	mflr r0
/* 8048E9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048E9B4  4B FF F4 C5 */	bl create__12daTag_KMsg_cFv
/* 8048E9B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048E9BC  7C 08 03 A6 */	mtlr r0
/* 8048E9C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048E9C4  4E 80 00 20 */	blr 

lbl_80CFB67C:
/* 80CFB67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFB680  7C 08 02 A6 */	mflr r0
/* 80CFB684  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFB688  4B FF D4 C1 */	bl create1st__14daObjSwChain_cFv
/* 80CFB68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFB690  7C 08 03 A6 */	mtlr r0
/* 80CFB694  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFB698  4E 80 00 20 */	blr 

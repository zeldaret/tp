lbl_80AB0CFC:
/* 80AB0CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB0D00  7C 08 02 A6 */	mflr r0
/* 80AB0D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB0D08  4B FF D1 D9 */	bl create__13daNpc_Pouya_cFv
/* 80AB0D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB0D10  7C 08 03 A6 */	mtlr r0
/* 80AB0D14  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB0D18  4E 80 00 20 */	blr 

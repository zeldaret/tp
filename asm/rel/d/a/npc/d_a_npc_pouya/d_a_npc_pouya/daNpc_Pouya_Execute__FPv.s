lbl_80AB0D3C:
/* 80AB0D3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB0D40  7C 08 02 A6 */	mflr r0
/* 80AB0D44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB0D48  4B FF DA 75 */	bl Execute__13daNpc_Pouya_cFv
/* 80AB0D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB0D50  7C 08 03 A6 */	mtlr r0
/* 80AB0D54  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB0D58  4E 80 00 20 */	blr 

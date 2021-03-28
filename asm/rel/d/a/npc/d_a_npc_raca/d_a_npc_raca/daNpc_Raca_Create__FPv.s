lbl_80AB7B40:
/* 80AB7B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB7B44  7C 08 02 A6 */	mflr r0
/* 80AB7B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB7B4C  4B FF E2 B1 */	bl create__12daNpc_Raca_cFv
/* 80AB7B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB7B54  7C 08 03 A6 */	mtlr r0
/* 80AB7B58  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB7B5C  4E 80 00 20 */	blr 

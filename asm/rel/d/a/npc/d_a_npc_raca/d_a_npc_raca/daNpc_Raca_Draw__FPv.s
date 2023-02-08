lbl_80AB7BA0:
/* 80AB7BA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB7BA4  7C 08 02 A6 */	mflr r0
/* 80AB7BA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB7BAC  4B FF E9 BD */	bl Draw__12daNpc_Raca_cFv
/* 80AB7BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB7BB4  7C 08 03 A6 */	mtlr r0
/* 80AB7BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB7BBC  4E 80 00 20 */	blr 

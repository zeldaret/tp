lbl_80B23628:
/* 80B23628  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2362C  7C 08 02 A6 */	mflr r0
/* 80B23630  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23634  4B FF B1 65 */	bl create__12daNpc_Toby_cFv
/* 80B23638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2363C  7C 08 03 A6 */	mtlr r0
/* 80B23640  38 21 00 10 */	addi r1, r1, 0x10
/* 80B23644  4E 80 00 20 */	blr 

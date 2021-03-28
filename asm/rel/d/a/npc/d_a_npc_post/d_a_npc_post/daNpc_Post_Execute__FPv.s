lbl_80AABE44:
/* 80AABE44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AABE48  7C 08 02 A6 */	mflr r0
/* 80AABE4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AABE50  4B FF D8 19 */	bl Execute__12daNpc_Post_cFv
/* 80AABE54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AABE58  7C 08 03 A6 */	mtlr r0
/* 80AABE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AABE60  4E 80 00 20 */	blr 

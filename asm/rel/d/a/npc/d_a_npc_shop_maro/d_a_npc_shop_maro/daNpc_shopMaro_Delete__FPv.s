lbl_80AEBE78:
/* 80AEBE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEBE7C  7C 08 02 A6 */	mflr r0
/* 80AEBE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEBE84  4B 6A E6 E0 */	b deleteObject__13dShopSystem_cFv
/* 80AEBE88  38 60 00 01 */	li r3, 1
/* 80AEBE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEBE90  7C 08 03 A6 */	mtlr r0
/* 80AEBE94  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEBE98  4E 80 00 20 */	blr 

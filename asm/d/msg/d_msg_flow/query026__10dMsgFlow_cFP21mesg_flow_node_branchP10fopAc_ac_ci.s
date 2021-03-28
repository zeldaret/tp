lbl_8024B9BC:
/* 8024B9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B9C0  7C 08 02 A6 */	mflr r0
/* 8024B9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B9C8  7C A3 2B 78 */	mr r3, r5
/* 8024B9CC  38 80 00 07 */	li r4, 7
/* 8024B9D0  4B F4 BC 29 */	bl isFlag__13dShopSystem_cFi
/* 8024B9D4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 8024B9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B9DC  7C 08 03 A6 */	mtlr r0
/* 8024B9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B9E4  4E 80 00 20 */	blr 

lbl_80BDAA18:
/* 80BDAA18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDAA1C  7C 08 02 A6 */	mflr r0
/* 80BDAA20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDAA24  48 00 0F 05 */	bl Delete__10daObjDAN_cFv
/* 80BDAA28  38 60 00 01 */	li r3, 1
/* 80BDAA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDAA30  7C 08 03 A6 */	mtlr r0
/* 80BDAA34  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDAA38  4E 80 00 20 */	blr 

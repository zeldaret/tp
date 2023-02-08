lbl_80BDCB14:
/* 80BDCB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCB18  7C 08 02 A6 */	mflr r0
/* 80BDCB1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCB20  4B FF FF ED */	bl draw__14daObjDigholl_cFv
/* 80BDCB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCB28  7C 08 03 A6 */	mtlr r0
/* 80BDCB2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCB30  4E 80 00 20 */	blr 

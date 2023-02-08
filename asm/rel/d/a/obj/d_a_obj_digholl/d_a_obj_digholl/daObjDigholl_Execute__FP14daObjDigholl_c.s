lbl_80BDCAEC:
/* 80BDCAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCAF0  7C 08 02 A6 */	mflr r0
/* 80BDCAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCAF8  4B FF FC E1 */	bl execute__14daObjDigholl_cFv
/* 80BDCAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCB00  7C 08 03 A6 */	mtlr r0
/* 80BDCB04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCB08  4E 80 00 20 */	blr 

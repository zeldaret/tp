lbl_80BDBAEC:
/* 80BDBAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDBAF0  7C 08 02 A6 */	mflr r0
/* 80BDBAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDBAF8  4B FF FB 35 */	bl Execute__10daObjDAN_cFv
/* 80BDBAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDBB00  7C 08 03 A6 */	mtlr r0
/* 80BDBB04  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDBB08  4E 80 00 20 */	blr 

lbl_80ABDE24:
/* 80ABDE24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABDE28  7C 08 02 A6 */	mflr r0
/* 80ABDE2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABDE30  4B FF C5 85 */	bl Execute__13daNpcRafrel_cFv
/* 80ABDE34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABDE38  7C 08 03 A6 */	mtlr r0
/* 80ABDE3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABDE40  4E 80 00 20 */	blr 

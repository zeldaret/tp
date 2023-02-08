lbl_80CAEFAC:
/* 80CAEFAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAEFB0  7C 08 02 A6 */	mflr r0
/* 80CAEFB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAEFB8  4B FF F0 A5 */	bl draw__14daObjPicture_cFv
/* 80CAEFBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAEFC0  7C 08 03 A6 */	mtlr r0
/* 80CAEFC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAEFC8  4E 80 00 20 */	blr 

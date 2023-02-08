lbl_80CFCCE0:
/* 80CFCCE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFCCE4  7C 08 02 A6 */	mflr r0
/* 80CFCCE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFCCEC  4B FF F4 A9 */	bl changeOnStatus__13daObjSwHang_cFv
/* 80CFCCF0  38 60 00 01 */	li r3, 1
/* 80CFCCF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFCCF8  7C 08 03 A6 */	mtlr r0
/* 80CFCCFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFCD00  4E 80 00 20 */	blr 

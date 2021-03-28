lbl_809EE744:
/* 809EE744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EE748  7C 08 02 A6 */	mflr r0
/* 809EE74C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EE750  4B FF AB 5D */	bl Delete__11daNpc_Grz_cFv
/* 809EE754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EE758  7C 08 03 A6 */	mtlr r0
/* 809EE75C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EE760  4E 80 00 20 */	blr 

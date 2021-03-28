lbl_80BE8E34:
/* 80BE8E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE8E38  7C 08 02 A6 */	mflr r0
/* 80BE8E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE8E40  4B FF F4 E9 */	bl create__13daFireWood2_cFv
/* 80BE8E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE8E48  7C 08 03 A6 */	mtlr r0
/* 80BE8E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE8E50  4E 80 00 20 */	blr 

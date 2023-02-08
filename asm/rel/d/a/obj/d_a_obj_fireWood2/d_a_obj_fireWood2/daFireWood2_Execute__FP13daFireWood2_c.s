lbl_80BE8DF4:
/* 80BE8DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE8DF8  7C 08 02 A6 */	mflr r0
/* 80BE8DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE8E00  4B FF F9 DD */	bl Execute__13daFireWood2_cFv
/* 80BE8E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE8E08  7C 08 03 A6 */	mtlr r0
/* 80BE8E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE8E10  4E 80 00 20 */	blr 

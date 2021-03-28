lbl_80D6674C:
/* 80D6674C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66750  7C 08 02 A6 */	mflr r0
/* 80D66754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66758  4B FF FF 05 */	bl draw__8daTalk_cFv
/* 80D6675C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D66760  7C 08 03 A6 */	mtlr r0
/* 80D66764  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66768  4E 80 00 20 */	blr 

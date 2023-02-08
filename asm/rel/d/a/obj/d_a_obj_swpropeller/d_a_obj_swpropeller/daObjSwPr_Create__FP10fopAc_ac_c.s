lbl_8059B24C:
/* 8059B24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B250  7C 08 02 A6 */	mflr r0
/* 8059B254  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B258  4B FF F6 31 */	bl create__11daObjSwPr_cFv
/* 8059B25C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B260  7C 08 03 A6 */	mtlr r0
/* 8059B264  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B268  4E 80 00 20 */	blr 

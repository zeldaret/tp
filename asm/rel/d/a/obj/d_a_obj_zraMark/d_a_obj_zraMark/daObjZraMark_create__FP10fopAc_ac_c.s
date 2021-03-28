lbl_80D4345C:
/* 80D4345C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D43460  7C 08 02 A6 */	mflr r0
/* 80D43464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43468  4B FF F2 11 */	bl Create__14daObjZraMark_cFv
/* 80D4346C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43470  7C 08 03 A6 */	mtlr r0
/* 80D43474  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43478  4E 80 00 20 */	blr 

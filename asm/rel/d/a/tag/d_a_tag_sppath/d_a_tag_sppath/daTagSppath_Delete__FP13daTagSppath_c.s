lbl_80D61FFC:
/* 80D61FFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D62000  7C 08 02 A6 */	mflr r0
/* 80D62004  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D62008  38 80 FF FF */	li r4, -1
/* 80D6200C  4B FF FE B9 */	bl __dt__13daTagSppath_cFv
/* 80D62010  38 60 00 01 */	li r3, 1
/* 80D62014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D62018  7C 08 03 A6 */	mtlr r0
/* 80D6201C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D62020  4E 80 00 20 */	blr 

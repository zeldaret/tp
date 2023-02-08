lbl_8015DE90:
/* 8015DE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015DE94  7C 08 02 A6 */	mflr r0
/* 8015DE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015DE9C  4B FF DF 4D */	bl _daItem_delete__8daItem_cFv
/* 8015DEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015DEA4  7C 08 03 A6 */	mtlr r0
/* 8015DEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015DEAC  4E 80 00 20 */	blr 

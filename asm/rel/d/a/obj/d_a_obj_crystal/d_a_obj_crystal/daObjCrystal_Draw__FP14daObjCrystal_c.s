lbl_80BD6834:
/* 80BD6834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6838  7C 08 02 A6 */	mflr r0
/* 80BD683C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6840  4B FF FE FD */	bl draw__14daObjCrystal_cFv
/* 80BD6844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6848  7C 08 03 A6 */	mtlr r0
/* 80BD684C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6850  4E 80 00 20 */	blr 

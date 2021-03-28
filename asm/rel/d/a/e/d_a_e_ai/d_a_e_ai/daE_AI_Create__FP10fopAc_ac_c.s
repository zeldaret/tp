lbl_8067BED8:
/* 8067BED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067BEDC  7C 08 02 A6 */	mflr r0
/* 8067BEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067BEE4  4B FF FA 01 */	bl Create__10e_ai_classFv
/* 8067BEE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067BEEC  7C 08 03 A6 */	mtlr r0
/* 8067BEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8067BEF4  4E 80 00 20 */	blr 

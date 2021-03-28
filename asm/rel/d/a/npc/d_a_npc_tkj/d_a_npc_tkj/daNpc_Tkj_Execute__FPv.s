lbl_805751C0:
/* 805751C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805751C4  7C 08 02 A6 */	mflr r0
/* 805751C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805751CC  4B FF ED D1 */	bl Execute__10daNpcTkj_cFv
/* 805751D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805751D4  7C 08 03 A6 */	mtlr r0
/* 805751D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805751DC  4E 80 00 20 */	blr 

lbl_80C450C8:
/* 80C450C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C450CC  7C 08 02 A6 */	mflr r0
/* 80C450D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C450D4  4B FF FC FD */	bl create__9daKiPot_cFv
/* 80C450D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C450DC  7C 08 03 A6 */	mtlr r0
/* 80C450E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C450E4  4E 80 00 20 */	blr 

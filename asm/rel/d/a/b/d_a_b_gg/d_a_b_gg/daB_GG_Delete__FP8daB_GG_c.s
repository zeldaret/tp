lbl_805EBBC4:
/* 805EBBC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EBBC8  7C 08 02 A6 */	mflr r0
/* 805EBBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EBBD0  4B FF FC D9 */	bl Delete__8daB_GG_cFv
/* 805EBBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EBBD8  7C 08 03 A6 */	mtlr r0
/* 805EBBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 805EBBE0  4E 80 00 20 */	blr 

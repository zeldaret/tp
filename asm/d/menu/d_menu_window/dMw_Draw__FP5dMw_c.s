lbl_801FD840:
/* 801FD840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FD844  7C 08 02 A6 */	mflr r0
/* 801FD848  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FD84C  4B FF FC 05 */	bl _draw__5dMw_cFv
/* 801FD850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FD854  7C 08 03 A6 */	mtlr r0
/* 801FD858  38 21 00 10 */	addi r1, r1, 0x10
/* 801FD85C  4E 80 00 20 */	blr 

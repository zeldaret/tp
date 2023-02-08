lbl_8048DC94:
/* 8048DC94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048DC98  7C 08 02 A6 */	mflr r0
/* 8048DC9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048DCA0  4B FF FD 1D */	bl destroy__12daTag_Howl_cFv
/* 8048DCA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048DCA8  7C 08 03 A6 */	mtlr r0
/* 8048DCAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048DCB0  4E 80 00 20 */	blr 

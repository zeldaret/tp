lbl_8048DCB4:
/* 8048DCB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048DCB8  7C 08 02 A6 */	mflr r0
/* 8048DCBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048DCC0  4B FF FD 05 */	bl execute__12daTag_Howl_cFv
/* 8048DCC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048DCC8  7C 08 03 A6 */	mtlr r0
/* 8048DCCC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048DCD0  4E 80 00 20 */	blr 

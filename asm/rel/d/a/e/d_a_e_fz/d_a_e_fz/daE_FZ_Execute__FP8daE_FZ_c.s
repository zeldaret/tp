lbl_806C0B00:
/* 806C0B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C0B04  7C 08 02 A6 */	mflr r0
/* 806C0B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C0B0C  4B FF FD B9 */	bl execute__8daE_FZ_cFv
/* 806C0B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C0B14  7C 08 03 A6 */	mtlr r0
/* 806C0B18  38 21 00 10 */	addi r1, r1, 0x10
/* 806C0B1C  4E 80 00 20 */	blr 

lbl_80258FD4:
/* 80258FD4  80 8D 86 F8 */	lwz r4, mResetData__6mDoRst(r13)
/* 80258FD8  80 04 00 00 */	lwz r0, 0(r4)
/* 80258FDC  2C 00 00 00 */	cmpwi r0, 0
/* 80258FE0  4C 82 00 20 */	bnelr 
/* 80258FE4  88 83 04 1E */	lbz r4, 0x41e(r3)
/* 80258FE8  38 04 FF FF */	addi r0, r4, -1
/* 80258FEC  98 03 04 1E */	stb r0, 0x41e(r3)
/* 80258FF0  88 03 04 1E */	lbz r0, 0x41e(r3)
/* 80258FF4  28 00 00 00 */	cmplwi r0, 0
/* 80258FF8  4C 82 00 20 */	bnelr 
/* 80258FFC  38 00 00 04 */	li r0, 4
/* 80259000  98 03 04 1D */	stb r0, 0x41d(r3)
/* 80259004  4E 80 00 20 */	blr 

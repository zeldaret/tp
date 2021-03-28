lbl_8035C3E4:
/* 8035C3E4  80 ED 93 A8 */	lwz r7, __peReg(r13)
/* 8035C3E8  2C 03 00 01 */	cmpwi r3, 1
/* 8035C3EC  39 20 00 01 */	li r9, 1
/* 8035C3F0  A1 47 00 02 */	lhz r10, 2(r7)
/* 8035C3F4  41 82 00 10 */	beq lbl_8035C404
/* 8035C3F8  2C 03 00 03 */	cmpwi r3, 3
/* 8035C3FC  41 82 00 08 */	beq lbl_8035C404
/* 8035C400  39 20 00 00 */	li r9, 0
lbl_8035C404:
/* 8035C404  20 03 00 03 */	subfic r0, r3, 3
/* 8035C408  80 ED 93 A8 */	lwz r7, __peReg(r13)
/* 8035C40C  7C 08 00 34 */	cntlzw r8, r0
/* 8035C410  20 03 00 02 */	subfic r0, r3, 2
/* 8035C414  51 2A 07 FE */	rlwimi r10, r9, 0, 0x1f, 0x1f
/* 8035C418  55 03 D9 7E */	srwi r3, r8, 5
/* 8035C41C  39 0A 00 00 */	addi r8, r10, 0
/* 8035C420  7C 00 00 34 */	cntlzw r0, r0
/* 8035C424  50 68 5D 28 */	rlwimi r8, r3, 0xb, 0x14, 0x14
/* 8035C428  50 08 E7 BC */	rlwimi r8, r0, 0x1c, 0x1e, 0x1e
/* 8035C42C  50 C8 64 26 */	rlwimi r8, r6, 0xc, 0x10, 0x13
/* 8035C430  50 88 45 6E */	rlwimi r8, r4, 8, 0x15, 0x17
/* 8035C434  38 00 00 41 */	li r0, 0x41
/* 8035C438  50 A8 2E 34 */	rlwimi r8, r5, 5, 0x18, 0x1a
/* 8035C43C  50 08 C0 0E */	rlwimi r8, r0, 0x18, 0, 7
/* 8035C440  B1 07 00 02 */	sth r8, 2(r7)
/* 8035C444  4E 80 00 20 */	blr 

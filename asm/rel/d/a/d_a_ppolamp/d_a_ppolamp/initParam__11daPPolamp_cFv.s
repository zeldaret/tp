lbl_80D4D10C:
/* 80D4D10C  38 80 00 00 */	li r4, 0
/* 80D4D110  90 83 05 98 */	stw r4, 0x598(r3)
/* 80D4D114  38 00 00 01 */	li r0, 1
/* 80D4D118  98 03 05 9C */	stb r0, 0x59c(r3)
/* 80D4D11C  B0 83 05 9E */	sth r4, 0x59e(r3)
/* 80D4D120  98 83 05 A0 */	stb r4, 0x5a0(r3)
/* 80D4D124  3C 80 80 D5 */	lis r4, lit_3936@ha /* 0x80D4D2C4@ha */
/* 80D4D128  C0 04 D2 C4 */	lfs f0, lit_3936@l(r4)  /* 0x80D4D2C4@l */
/* 80D4D12C  D0 03 05 A4 */	stfs f0, 0x5a4(r3)
/* 80D4D130  3C 80 80 D5 */	lis r4, lit_3909@ha /* 0x80D4D2A4@ha */
/* 80D4D134  C0 04 D2 A4 */	lfs f0, lit_3909@l(r4)  /* 0x80D4D2A4@l */
/* 80D4D138  D0 03 05 A8 */	stfs f0, 0x5a8(r3)
/* 80D4D13C  4E 80 00 20 */	blr 

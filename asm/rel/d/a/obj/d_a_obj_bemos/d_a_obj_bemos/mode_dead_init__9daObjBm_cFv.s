lbl_80BB0DC0:
/* 80BB0DC0  38 00 00 00 */	li r0, 0
/* 80BB0DC4  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80BB0DC8  98 04 00 14 */	stb r0, 0x14(r4)
/* 80BB0DCC  3C 80 80 BB */	lis r4, lit_4250@ha /* 0x80BB3830@ha */
/* 80BB0DD0  C0 04 38 30 */	lfs f0, lit_4250@l(r4)  /* 0x80BB3830@l */
/* 80BB0DD4  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80BB0DD8  38 00 00 03 */	li r0, 3
/* 80BB0DDC  90 03 10 AC */	stw r0, 0x10ac(r3)
/* 80BB0DE0  4E 80 00 20 */	blr 

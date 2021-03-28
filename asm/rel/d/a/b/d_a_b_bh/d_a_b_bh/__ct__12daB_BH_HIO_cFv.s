lbl_805AE26C:
/* 805AE26C  3C 80 80 5B */	lis r4, __vt__12daB_BH_HIO_c@ha
/* 805AE270  38 04 33 98 */	addi r0, r4, __vt__12daB_BH_HIO_c@l
/* 805AE274  90 03 00 00 */	stw r0, 0(r3)
/* 805AE278  38 00 FF FF */	li r0, -1
/* 805AE27C  98 03 00 04 */	stb r0, 4(r3)
/* 805AE280  3C 80 80 5B */	lis r4, lit_3764@ha
/* 805AE284  C0 04 31 40 */	lfs f0, lit_3764@l(r4)
/* 805AE288  D0 03 00 08 */	stfs f0, 8(r3)
/* 805AE28C  38 00 01 5E */	li r0, 0x15e
/* 805AE290  B0 03 00 10 */	sth r0, 0x10(r3)
/* 805AE294  38 00 00 FA */	li r0, 0xfa
/* 805AE298  B0 03 00 12 */	sth r0, 0x12(r3)
/* 805AE29C  B0 03 00 14 */	sth r0, 0x14(r3)
/* 805AE2A0  4E 80 00 20 */	blr 

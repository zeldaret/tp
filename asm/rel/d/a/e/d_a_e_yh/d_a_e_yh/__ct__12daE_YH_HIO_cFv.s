lbl_807FD4CC:
/* 807FD4CC  3C 80 80 80 */	lis r4, lit_3902@ha /* 0x8080427C@ha */
/* 807FD4D0  38 A4 42 7C */	addi r5, r4, lit_3902@l /* 0x8080427C@l */
/* 807FD4D4  3C 80 80 80 */	lis r4, __vt__12daE_YH_HIO_c@ha /* 0x80804704@ha */
/* 807FD4D8  38 04 47 04 */	addi r0, r4, __vt__12daE_YH_HIO_c@l /* 0x80804704@l */
/* 807FD4DC  90 03 00 00 */	stw r0, 0(r3)
/* 807FD4E0  38 00 FF FF */	li r0, -1
/* 807FD4E4  98 03 00 04 */	stb r0, 4(r3)
/* 807FD4E8  C0 05 00 08 */	lfs f0, 8(r5)
/* 807FD4EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 807FD4F0  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 807FD4F4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807FD4F8  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 807FD4FC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 807FD500  38 00 00 46 */	li r0, 0x46
/* 807FD504  B0 03 00 14 */	sth r0, 0x14(r3)
/* 807FD508  38 00 00 1E */	li r0, 0x1e
/* 807FD50C  B0 03 00 16 */	sth r0, 0x16(r3)
/* 807FD510  4E 80 00 20 */	blr 

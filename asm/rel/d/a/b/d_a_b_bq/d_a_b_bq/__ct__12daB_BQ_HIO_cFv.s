lbl_805B356C:
/* 805B356C  3C 80 80 5C */	lis r4, __vt__12daB_BQ_HIO_c@ha
/* 805B3570  38 04 AD 38 */	addi r0, r4, __vt__12daB_BQ_HIO_c@l
/* 805B3574  90 03 00 00 */	stw r0, 0(r3)
/* 805B3578  38 00 FF FF */	li r0, -1
/* 805B357C  98 03 00 04 */	stb r0, 4(r3)
/* 805B3580  3C 80 80 5C */	lis r4, lit_3816@ha
/* 805B3584  C0 04 A5 88 */	lfs f0, lit_3816@l(r4)
/* 805B3588  D0 03 00 08 */	stfs f0, 8(r3)
/* 805B358C  38 00 00 C8 */	li r0, 0xc8
/* 805B3590  B0 03 00 0C */	sth r0, 0xc(r3)
/* 805B3594  38 00 00 96 */	li r0, 0x96
/* 805B3598  B0 03 00 0E */	sth r0, 0xe(r3)
/* 805B359C  4E 80 00 20 */	blr 

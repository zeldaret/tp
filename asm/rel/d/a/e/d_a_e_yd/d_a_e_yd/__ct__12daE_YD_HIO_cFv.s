lbl_807F2C2C:
/* 807F2C2C  3C 80 80 7F */	lis r4, __vt__12daE_YD_HIO_c@ha
/* 807F2C30  38 04 7D 54 */	addi r0, r4, __vt__12daE_YD_HIO_c@l
/* 807F2C34  90 03 00 00 */	stw r0, 0(r3)
/* 807F2C38  38 00 FF FF */	li r0, -1
/* 807F2C3C  98 03 00 04 */	stb r0, 4(r3)
/* 807F2C40  3C 80 80 7F */	lis r4, lit_3790@ha
/* 807F2C44  C0 24 7A 08 */	lfs f1, lit_3790@l(r4)
/* 807F2C48  D0 23 00 08 */	stfs f1, 8(r3)
/* 807F2C4C  3C 80 80 7F */	lis r4, lit_3809@ha
/* 807F2C50  C0 04 7A 2C */	lfs f0, lit_3809@l(r4)
/* 807F2C54  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 807F2C58  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 807F2C5C  38 00 00 46 */	li r0, 0x46
/* 807F2C60  B0 03 00 14 */	sth r0, 0x14(r3)
/* 807F2C64  38 00 00 1E */	li r0, 0x1e
/* 807F2C68  B0 03 00 16 */	sth r0, 0x16(r3)
/* 807F2C6C  38 00 00 01 */	li r0, 1
/* 807F2C70  98 03 00 18 */	stb r0, 0x18(r3)
/* 807F2C74  4E 80 00 20 */	blr 

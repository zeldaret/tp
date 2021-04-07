lbl_804FBD6C:
/* 804FBD6C  3C 80 80 50 */	lis r4, __vt__12daE_HB_HIO_c@ha /* 0x80500E4C@ha */
/* 804FBD70  38 04 0E 4C */	addi r0, r4, __vt__12daE_HB_HIO_c@l /* 0x80500E4C@l */
/* 804FBD74  90 03 00 00 */	stw r0, 0(r3)
/* 804FBD78  38 00 FF FF */	li r0, -1
/* 804FBD7C  98 03 00 04 */	stb r0, 4(r3)
/* 804FBD80  3C 80 80 50 */	lis r4, lit_3790@ha /* 0x80500B0C@ha */
/* 804FBD84  C0 24 0B 0C */	lfs f1, lit_3790@l(r4)  /* 0x80500B0C@l */
/* 804FBD88  D0 23 00 08 */	stfs f1, 8(r3)
/* 804FBD8C  3C 80 80 50 */	lis r4, lit_3809@ha /* 0x80500B30@ha */
/* 804FBD90  C0 04 0B 30 */	lfs f0, lit_3809@l(r4)  /* 0x80500B30@l */
/* 804FBD94  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804FBD98  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 804FBD9C  38 00 00 46 */	li r0, 0x46
/* 804FBDA0  B0 03 00 14 */	sth r0, 0x14(r3)
/* 804FBDA4  38 00 00 1E */	li r0, 0x1e
/* 804FBDA8  B0 03 00 16 */	sth r0, 0x16(r3)
/* 804FBDAC  38 00 00 01 */	li r0, 1
/* 804FBDB0  98 03 00 18 */	stb r0, 0x18(r3)
/* 804FBDB4  4E 80 00 20 */	blr 

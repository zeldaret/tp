lbl_8024E3E0:
/* 8024E3E0  3C 80 80 3C */	lis r4, __vt__9dNm_HIO_c@ha /* 0x803C2B7C@ha */
/* 8024E3E4  38 04 2B 7C */	addi r0, r4, __vt__9dNm_HIO_c@l /* 0x803C2B7C@l */
/* 8024E3E8  90 03 00 00 */	stw r0, 0(r3)
/* 8024E3EC  C0 02 B3 B0 */	lfs f0, lit_3665(r2)
/* 8024E3F0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8024E3F4  C0 02 B3 B4 */	lfs f0, lit_3666(r2)
/* 8024E3F8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8024E3FC  38 00 00 0A */	li r0, 0xa
/* 8024E400  98 03 00 10 */	stb r0, 0x10(r3)
/* 8024E404  4E 80 00 20 */	blr 

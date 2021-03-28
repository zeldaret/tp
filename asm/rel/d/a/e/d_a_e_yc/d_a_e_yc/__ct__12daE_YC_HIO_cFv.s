lbl_807EFECC:
/* 807EFECC  3C 80 80 7F */	lis r4, __vt__12daE_YC_HIO_c@ha
/* 807EFED0  38 04 2A F4 */	addi r0, r4, __vt__12daE_YC_HIO_c@l
/* 807EFED4  90 03 00 00 */	stw r0, 0(r3)
/* 807EFED8  38 00 FF FF */	li r0, -1
/* 807EFEDC  98 03 00 04 */	stb r0, 4(r3)
/* 807EFEE0  3C 80 80 7F */	lis r4, lit_3715@ha
/* 807EFEE4  C0 04 28 64 */	lfs f0, lit_3715@l(r4)
/* 807EFEE8  D0 03 00 08 */	stfs f0, 8(r3)
/* 807EFEEC  4E 80 00 20 */	blr 

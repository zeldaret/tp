lbl_80CA05AC:
/* 80CA05AC  3C 80 80 CA */	lis r4, __vt__14daObj_NanHIO_c@ha /* 0x80CA3480@ha */
/* 80CA05B0  38 04 34 80 */	addi r0, r4, __vt__14daObj_NanHIO_c@l /* 0x80CA3480@l */
/* 80CA05B4  90 03 00 00 */	stw r0, 0(r3)
/* 80CA05B8  38 00 FF FF */	li r0, -1
/* 80CA05BC  98 03 00 04 */	stb r0, 4(r3)
/* 80CA05C0  3C 80 80 CA */	lis r4, lit_3774@ha /* 0x80CA31BC@ha */
/* 80CA05C4  C0 04 31 BC */	lfs f0, lit_3774@l(r4)  /* 0x80CA31BC@l */
/* 80CA05C8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CA05CC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CA05D0  4E 80 00 20 */	blr 

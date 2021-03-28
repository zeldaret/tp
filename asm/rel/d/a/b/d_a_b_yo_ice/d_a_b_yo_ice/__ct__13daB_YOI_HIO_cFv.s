lbl_8063A14C:
/* 8063A14C  3C 80 80 64 */	lis r4, __vt__13daB_YOI_HIO_c@ha
/* 8063A150  38 04 DF D0 */	addi r0, r4, __vt__13daB_YOI_HIO_c@l
/* 8063A154  90 03 00 00 */	stw r0, 0(r3)
/* 8063A158  38 00 FF FF */	li r0, -1
/* 8063A15C  98 03 00 04 */	stb r0, 4(r3)
/* 8063A160  3C 80 80 64 */	lis r4, lit_3776@ha
/* 8063A164  C0 04 DC 84 */	lfs f0, lit_3776@l(r4)
/* 8063A168  D0 03 00 08 */	stfs f0, 8(r3)
/* 8063A16C  3C 80 80 64 */	lis r4, lit_3777@ha
/* 8063A170  C0 04 DC 88 */	lfs f0, lit_3777@l(r4)
/* 8063A174  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8063A178  4E 80 00 20 */	blr 

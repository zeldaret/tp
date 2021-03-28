lbl_80007FD8:
/* 80007FD8  38 00 00 01 */	li r0, 1
/* 80007FDC  98 0D 86 66 */	stb r0, struct_80450BE4+0x2(r13)
/* 80007FE0  D0 2D 86 60 */	stfs f1, mFadeSpeed__13mDoGph_gInf_c(r13)
/* 80007FE4  88 03 00 00 */	lbz r0, 0(r3)
/* 80007FE8  98 0D 80 14 */	stb r0, mFadeColor__13mDoGph_gInf_c(r13)
/* 80007FEC  88 03 00 01 */	lbz r0, 1(r3)
/* 80007FF0  38 8D 80 14 */	la r4, mFadeColor__13mDoGph_gInf_c(r13) /* 80450594-_SDA_BASE_ */
/* 80007FF4  98 04 00 01 */	stb r0, 1(r4)
/* 80007FF8  88 03 00 02 */	lbz r0, 2(r3)
/* 80007FFC  98 04 00 02 */	stb r0, 2(r4)
/* 80008000  88 03 00 03 */	lbz r0, 3(r3)
/* 80008004  98 04 00 03 */	stb r0, 3(r4)
/* 80008008  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 8000800C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80008010  4C 41 13 82 */	cror 2, 1, 2
/* 80008014  40 82 00 08 */	bne lbl_8000801C
/* 80008018  48 00 00 08 */	b lbl_80008020
lbl_8000801C:
/* 8000801C  C0 02 80 3C */	lfs f0, lit_4063(r2)
lbl_80008020:
/* 80008020  D0 0D 86 5C */	stfs f0, mFadeRate__13mDoGph_gInf_c(r13)
/* 80008024  4E 80 00 20 */	blr 

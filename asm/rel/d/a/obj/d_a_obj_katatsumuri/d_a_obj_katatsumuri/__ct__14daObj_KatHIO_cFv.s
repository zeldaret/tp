lbl_80C3996C:
/* 80C3996C  3C 80 80 C4 */	lis r4, __vt__14daObj_KatHIO_c@ha
/* 80C39970  38 04 C8 20 */	addi r0, r4, __vt__14daObj_KatHIO_c@l
/* 80C39974  90 03 00 00 */	stw r0, 0(r3)
/* 80C39978  38 00 FF FF */	li r0, -1
/* 80C3997C  98 03 00 04 */	stb r0, 4(r3)
/* 80C39980  3C 80 80 C4 */	lis r4, lit_3775@ha
/* 80C39984  C0 04 C6 74 */	lfs f0, lit_3775@l(r4)
/* 80C39988  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C3998C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C39990  4E 80 00 20 */	blr 

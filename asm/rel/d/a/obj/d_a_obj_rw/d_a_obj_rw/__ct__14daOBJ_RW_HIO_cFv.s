lbl_80CC298C:
/* 80CC298C  3C 80 80 CC */	lis r4, __vt__14daOBJ_RW_HIO_c@ha
/* 80CC2990  38 04 3C 6C */	addi r0, r4, __vt__14daOBJ_RW_HIO_c@l
/* 80CC2994  90 03 00 00 */	stw r0, 0(r3)
/* 80CC2998  38 00 FF FF */	li r0, -1
/* 80CC299C  98 03 00 04 */	stb r0, 4(r3)
/* 80CC29A0  3C 80 80 CC */	lis r4, lit_3649@ha
/* 80CC29A4  C0 04 3A F4 */	lfs f0, lit_3649@l(r4)
/* 80CC29A8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CC29AC  4E 80 00 20 */	blr 

lbl_80C209AC:
/* 80C209AC  3C 80 80 C2 */	lis r4, __vt__17daOBJ_ICE_S_HIO_c@ha
/* 80C209B0  38 04 1C 24 */	addi r0, r4, __vt__17daOBJ_ICE_S_HIO_c@l
/* 80C209B4  90 03 00 00 */	stw r0, 0(r3)
/* 80C209B8  38 00 FF FF */	li r0, -1
/* 80C209BC  98 03 00 04 */	stb r0, 4(r3)
/* 80C209C0  3C 80 80 C2 */	lis r4, lit_3644@ha
/* 80C209C4  C0 04 1A F8 */	lfs f0, lit_3644@l(r4)
/* 80C209C8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C209CC  3C 80 80 C2 */	lis r4, lit_3645@ha
/* 80C209D0  C0 04 1A FC */	lfs f0, lit_3645@l(r4)
/* 80C209D4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C209D8  4E 80 00 20 */	blr 

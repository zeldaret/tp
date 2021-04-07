lbl_80CE03CC:
/* 80CE03CC  3C 80 80 CE */	lis r4, __vt__14daObj_So_HIO_c@ha /* 0x80CE3C78@ha */
/* 80CE03D0  38 04 3C 78 */	addi r0, r4, __vt__14daObj_So_HIO_c@l /* 0x80CE3C78@l */
/* 80CE03D4  90 03 00 00 */	stw r0, 0(r3)
/* 80CE03D8  38 00 FF FF */	li r0, -1
/* 80CE03DC  98 03 00 04 */	stb r0, 4(r3)
/* 80CE03E0  3C 80 80 CE */	lis r4, lit_3779@ha /* 0x80CE39E8@ha */
/* 80CE03E4  C0 04 39 E8 */	lfs f0, lit_3779@l(r4)  /* 0x80CE39E8@l */
/* 80CE03E8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CE03EC  4E 80 00 20 */	blr 

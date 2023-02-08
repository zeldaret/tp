lbl_80BF070C:
/* 80BF070C  3C 80 80 BF */	lis r4, __vt__16daObj_Food_HIO_c@ha /* 0x80BF1F2C@ha */
/* 80BF0710  38 04 1F 2C */	addi r0, r4, __vt__16daObj_Food_HIO_c@l /* 0x80BF1F2C@l */
/* 80BF0714  90 03 00 00 */	stw r0, 0(r3)
/* 80BF0718  38 00 FF FF */	li r0, -1
/* 80BF071C  98 03 00 04 */	stb r0, 4(r3)
/* 80BF0720  3C 80 80 BF */	lis r4, lit_3647@ha /* 0x80BF1D90@ha */
/* 80BF0724  C0 04 1D 90 */	lfs f0, lit_3647@l(r4)  /* 0x80BF1D90@l */
/* 80BF0728  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BF072C  4E 80 00 20 */	blr 

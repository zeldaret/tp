lbl_805ADF08:
/* 805ADF08  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805ADF0C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805ADF10  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 805ADF14  D0 03 00 00 */	stfs f0, 0(r3)
/* 805ADF18  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805ADF1C  D0 03 00 04 */	stfs f0, 4(r3)
/* 805ADF20  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 805ADF24  D0 03 00 08 */	stfs f0, 8(r3)
/* 805ADF28  4E 80 00 20 */	blr 

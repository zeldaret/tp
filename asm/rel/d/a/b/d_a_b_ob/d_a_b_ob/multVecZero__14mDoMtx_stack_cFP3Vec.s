lbl_8061A924:
/* 8061A924  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8061A928  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8061A92C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8061A930  D0 03 00 00 */	stfs f0, 0(r3)
/* 8061A934  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8061A938  D0 03 00 04 */	stfs f0, 4(r3)
/* 8061A93C  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 8061A940  D0 03 00 08 */	stfs f0, 8(r3)
/* 8061A944  4E 80 00 20 */	blr 

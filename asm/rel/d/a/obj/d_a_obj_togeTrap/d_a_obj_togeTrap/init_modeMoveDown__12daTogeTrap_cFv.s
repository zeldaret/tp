lbl_80D188C0:
/* 80D188C0  3C 80 80 D2 */	lis r4, l_HIO@ha /* 0x80D190B4@ha */
/* 80D188C4  38 84 90 B4 */	addi r4, r4, l_HIO@l /* 0x80D190B4@l */
/* 80D188C8  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80D188CC  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80D188D0  38 00 00 02 */	li r0, 2
/* 80D188D4  98 03 0A DC */	stb r0, 0xadc(r3)
/* 80D188D8  4E 80 00 20 */	blr 

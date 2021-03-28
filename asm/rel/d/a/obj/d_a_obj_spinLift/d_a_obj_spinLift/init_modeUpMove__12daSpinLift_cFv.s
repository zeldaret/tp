lbl_80CE42A0:
/* 80CE42A0  3C 80 80 CE */	lis r4, l_HIO@ha
/* 80CE42A4  38 84 4E D4 */	addi r4, r4, l_HIO@l
/* 80CE42A8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CE42AC  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80CE42B0  88 03 05 B9 */	lbz r0, 0x5b9(r3)
/* 80CE42B4  98 03 05 BA */	stb r0, 0x5ba(r3)
/* 80CE42B8  38 00 00 01 */	li r0, 1
/* 80CE42BC  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80CE42C0  4E 80 00 20 */	blr 

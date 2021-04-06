lbl_80D2C134:
/* 80D2C134  3C 80 80 D3 */	lis r4, l_HIO@ha /* 0x80D2C5BC@ha */
/* 80D2C138  38 84 C5 BC */	addi r4, r4, l_HIO@l /* 0x80D2C5BC@l */
/* 80D2C13C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80D2C140  D0 03 05 B8 */	stfs f0, 0x5b8(r3)
/* 80D2C144  38 00 00 02 */	li r0, 2
/* 80D2C148  98 03 05 AC */	stb r0, 0x5ac(r3)
/* 80D2C14C  4E 80 00 20 */	blr 

lbl_80C7BC54:
/* 80C7BC54  3C 80 80 C8 */	lis r4, lit_3665@ha /* 0x80C7C6E8@ha */
/* 80C7BC58  C0 04 C6 E8 */	lfs f0, lit_3665@l(r4)  /* 0x80C7C6E8@l */
/* 80C7BC5C  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80C7BC60  3C 80 80 C8 */	lis r4, l_HIO@ha /* 0x80C7CA64@ha */
/* 80C7BC64  38 84 CA 64 */	addi r4, r4, l_HIO@l /* 0x80C7CA64@l */
/* 80C7BC68  88 04 00 16 */	lbz r0, 0x16(r4)
/* 80C7BC6C  98 03 06 0A */	stb r0, 0x60a(r3)
/* 80C7BC70  38 00 00 0B */	li r0, 0xb
/* 80C7BC74  98 03 05 D8 */	stb r0, 0x5d8(r3)
/* 80C7BC78  4E 80 00 20 */	blr 

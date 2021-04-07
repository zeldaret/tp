lbl_80BE762C:
/* 80BE762C  3C 80 80 BF */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80BE8120@ha */
/* 80BE7630  38 04 81 20 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80BE8120@l */
/* 80BE7634  90 03 00 00 */	stw r0, 0(r3)
/* 80BE7638  3C 80 80 BF */	lis r4, __vt__16daFireWood_HIO_c@ha /* 0x80BE8114@ha */
/* 80BE763C  38 04 81 14 */	addi r0, r4, __vt__16daFireWood_HIO_c@l /* 0x80BE8114@l */
/* 80BE7640  90 03 00 00 */	stw r0, 0(r3)
/* 80BE7644  3C 80 80 BF */	lis r4, lit_3625@ha /* 0x80BE8004@ha */
/* 80BE7648  C0 04 80 04 */	lfs f0, lit_3625@l(r4)  /* 0x80BE8004@l */
/* 80BE764C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BE7650  3C 80 80 BF */	lis r4, lit_3626@ha /* 0x80BE8008@ha */
/* 80BE7654  C0 04 80 08 */	lfs f0, lit_3626@l(r4)  /* 0x80BE8008@l */
/* 80BE7658  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BE765C  38 00 00 14 */	li r0, 0x14
/* 80BE7660  98 03 00 0C */	stb r0, 0xc(r3)
/* 80BE7664  4E 80 00 20 */	blr 

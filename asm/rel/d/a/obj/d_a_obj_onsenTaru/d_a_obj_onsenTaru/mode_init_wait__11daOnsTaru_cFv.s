lbl_80CA929C:
/* 80CA929C  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CA92A0  60 00 00 10 */	ori r0, r0, 0x10
/* 80CA92A4  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CA92A8  3C 80 80 CB */	lis r4, lit_4020@ha /* 0x80CA9BD8@ha */
/* 80CA92AC  C0 04 9B D8 */	lfs f0, lit_4020@l(r4)  /* 0x80CA9BD8@l */
/* 80CA92B0  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80CA92B4  3C 80 80 CB */	lis r4, lit_3774@ha /* 0x80CA9BB8@ha */
/* 80CA92B8  C0 04 9B B8 */	lfs f0, lit_3774@l(r4)  /* 0x80CA9BB8@l */
/* 80CA92BC  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80CA92C0  38 00 00 00 */	li r0, 0
/* 80CA92C4  98 03 05 78 */	stb r0, 0x578(r3)
/* 80CA92C8  4E 80 00 20 */	blr 

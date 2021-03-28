lbl_80BDEA1C:
/* 80BDEA1C  3C 80 80 BE */	lis r4, lit_3719@ha
/* 80BDEA20  C0 04 F8 80 */	lfs f0, lit_3719@l(r4)
/* 80BDEA24  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80BDEA28  3C 80 80 BE */	lis r4, lit_4092@ha
/* 80BDEA2C  C0 04 F8 D8 */	lfs f0, lit_4092@l(r4)
/* 80BDEA30  D0 03 06 3C */	stfs f0, 0x63c(r3)
/* 80BDEA34  D0 03 06 40 */	stfs f0, 0x640(r3)
/* 80BDEA38  38 00 00 00 */	li r0, 0
/* 80BDEA3C  98 03 06 28 */	stb r0, 0x628(r3)
/* 80BDEA40  4E 80 00 20 */	blr 

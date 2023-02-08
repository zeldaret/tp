lbl_80D0EACC:
/* 80D0EACC  3C 80 80 D1 */	lis r4, lit_3686@ha /* 0x80D0F0E4@ha */
/* 80D0EAD0  38 84 F0 E4 */	addi r4, r4, lit_3686@l /* 0x80D0F0E4@l */
/* 80D0EAD4  C0 03 05 70 */	lfs f0, 0x570(r3)
/* 80D0EAD8  D0 03 05 94 */	stfs f0, 0x594(r3)
/* 80D0EADC  C0 03 05 74 */	lfs f0, 0x574(r3)
/* 80D0EAE0  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 80D0EAE4  C0 03 05 78 */	lfs f0, 0x578(r3)
/* 80D0EAE8  D0 03 05 9C */	stfs f0, 0x59c(r3)
/* 80D0EAEC  C0 23 05 98 */	lfs f1, 0x598(r3)
/* 80D0EAF0  C0 04 00 00 */	lfs f0, 0(r4)
/* 80D0EAF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80D0EAF8  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 80D0EAFC  C0 03 05 94 */	lfs f0, 0x594(r3)
/* 80D0EB00  D0 03 05 A0 */	stfs f0, 0x5a0(r3)
/* 80D0EB04  C0 03 05 98 */	lfs f0, 0x598(r3)
/* 80D0EB08  D0 03 05 A4 */	stfs f0, 0x5a4(r3)
/* 80D0EB0C  C0 03 05 9C */	lfs f0, 0x59c(r3)
/* 80D0EB10  D0 03 05 A8 */	stfs f0, 0x5a8(r3)
/* 80D0EB14  38 00 00 BC */	li r0, 0xbc
/* 80D0EB18  B0 03 05 AC */	sth r0, 0x5ac(r3)
/* 80D0EB1C  38 00 00 66 */	li r0, 0x66
/* 80D0EB20  B0 03 05 AE */	sth r0, 0x5ae(r3)
/* 80D0EB24  38 00 00 42 */	li r0, 0x42
/* 80D0EB28  B0 03 05 B0 */	sth r0, 0x5b0(r3)
/* 80D0EB2C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80D0EB30  D0 03 05 B4 */	stfs f0, 0x5b4(r3)
/* 80D0EB34  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80D0EB38  D0 03 05 B8 */	stfs f0, 0x5b8(r3)
/* 80D0EB3C  4E 80 00 20 */	blr 

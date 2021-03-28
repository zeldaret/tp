lbl_80D5F010:
/* 80D5F010  3C 80 80 D6 */	lis r4, lit_3682@ha
/* 80D5F014  C0 44 F2 08 */	lfs f2, lit_3682@l(r4)
/* 80D5F018  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D5F01C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D5F020  D0 03 05 6C */	stfs f0, 0x56c(r3)
/* 80D5F024  3C 80 80 D6 */	lis r4, lit_3683@ha
/* 80D5F028  C0 24 F2 0C */	lfs f1, lit_3683@l(r4)
/* 80D5F02C  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80D5F030  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D5F034  D0 03 05 70 */	stfs f0, 0x570(r3)
/* 80D5F038  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 80D5F03C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D5F040  D0 03 05 74 */	stfs f0, 0x574(r3)
/* 80D5F044  38 00 00 00 */	li r0, 0
/* 80D5F048  90 03 05 78 */	stw r0, 0x578(r3)
/* 80D5F04C  4E 80 00 20 */	blr 

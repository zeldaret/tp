lbl_80BE8640:
/* 80BE8640  3C 80 80 BF */	lis r4, lit_3625@ha
/* 80BE8644  38 84 8F 34 */	addi r4, r4, lit_3625@l
/* 80BE8648  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 80BE864C  D0 03 07 0C */	stfs f0, 0x70c(r3)
/* 80BE8650  C0 03 06 F0 */	lfs f0, 0x6f0(r3)
/* 80BE8654  D0 03 07 10 */	stfs f0, 0x710(r3)
/* 80BE8658  C0 03 06 F4 */	lfs f0, 0x6f4(r3)
/* 80BE865C  D0 03 07 14 */	stfs f0, 0x714(r3)
/* 80BE8660  C0 23 07 10 */	lfs f1, 0x710(r3)
/* 80BE8664  C0 04 00 3C */	lfs f0, 0x3c(r4)
/* 80BE8668  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE866C  D0 03 07 10 */	stfs f0, 0x710(r3)
/* 80BE8670  88 03 07 18 */	lbz r0, 0x718(r3)
/* 80BE8674  28 00 00 00 */	cmplwi r0, 0
/* 80BE8678  41 82 00 48 */	beq lbl_80BE86C0
/* 80BE867C  C0 03 07 0C */	lfs f0, 0x70c(r3)
/* 80BE8680  D0 03 07 20 */	stfs f0, 0x720(r3)
/* 80BE8684  C0 03 07 10 */	lfs f0, 0x710(r3)
/* 80BE8688  D0 03 07 24 */	stfs f0, 0x724(r3)
/* 80BE868C  C0 03 07 14 */	lfs f0, 0x714(r3)
/* 80BE8690  D0 03 07 28 */	stfs f0, 0x728(r3)
/* 80BE8694  38 00 00 BC */	li r0, 0xbc
/* 80BE8698  B0 03 07 2C */	sth r0, 0x72c(r3)
/* 80BE869C  38 00 00 66 */	li r0, 0x66
/* 80BE86A0  B0 03 07 2E */	sth r0, 0x72e(r3)
/* 80BE86A4  38 00 00 42 */	li r0, 0x42
/* 80BE86A8  B0 03 07 30 */	sth r0, 0x730(r3)
/* 80BE86AC  C0 04 00 40 */	lfs f0, 0x40(r4)
/* 80BE86B0  D0 03 07 34 */	stfs f0, 0x734(r3)
/* 80BE86B4  C0 04 00 44 */	lfs f0, 0x44(r4)
/* 80BE86B8  D0 03 07 38 */	stfs f0, 0x738(r3)
/* 80BE86BC  4E 80 00 20 */	blr 
lbl_80BE86C0:
/* 80BE86C0  C0 04 00 48 */	lfs f0, 0x48(r4)
/* 80BE86C4  D0 03 07 1C */	stfs f0, 0x71c(r3)
/* 80BE86C8  4E 80 00 20 */	blr 

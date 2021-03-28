lbl_80D1B998:
/* 80D1B998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1B99C  7C 08 02 A6 */	mflr r0
/* 80D1B9A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1B9A4  3C 80 80 D2 */	lis r4, lit_3628@ha
/* 80D1B9A8  38 84 C3 54 */	addi r4, r4, lit_3628@l
/* 80D1B9AC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D1B9B0  D0 03 07 40 */	stfs f0, 0x740(r3)
/* 80D1B9B4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D1B9B8  D0 03 07 44 */	stfs f0, 0x744(r3)
/* 80D1B9BC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D1B9C0  D0 03 07 48 */	stfs f0, 0x748(r3)
/* 80D1B9C4  C0 44 00 00 */	lfs f2, 0(r4)
/* 80D1B9C8  D0 43 07 4C */	stfs f2, 0x74c(r3)
/* 80D1B9CC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80D1B9D0  D0 03 07 50 */	stfs f0, 0x750(r3)
/* 80D1B9D4  D0 43 07 54 */	stfs f2, 0x754(r3)
/* 80D1B9D8  C0 24 00 08 */	lfs f1, 8(r4)
/* 80D1B9DC  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D1B9E0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1B9E4  D0 03 07 58 */	stfs f0, 0x758(r3)
/* 80D1B9E8  D0 43 07 60 */	stfs f2, 0x760(r3)
/* 80D1B9EC  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80D1B9F0  D0 03 07 5C */	stfs f0, 0x75c(r3)
/* 80D1B9F4  38 63 07 40 */	addi r3, r3, 0x740
/* 80D1B9F8  4B 33 F4 04 */	b dKyw_pntwind_set__FP14WIND_INFLUENCE
/* 80D1B9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1BA00  7C 08 03 A6 */	mtlr r0
/* 80D1BA04  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1BA08  4E 80 00 20 */	blr 

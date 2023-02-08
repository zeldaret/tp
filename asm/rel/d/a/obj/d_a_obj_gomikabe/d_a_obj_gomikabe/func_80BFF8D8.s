lbl_80BFF8D8:
/* 80BFF8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFF8DC  7C 08 02 A6 */	mflr r0
/* 80BFF8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFF8E4  3C 80 80 C0 */	lis r4, ccSphSrc@ha /* 0x80BFFC1C@ha */
/* 80BFF8E8  38 84 FC 1C */	addi r4, r4, ccSphSrc@l /* 0x80BFFC1C@l */
/* 80BFF8EC  C0 E3 05 AC */	lfs f7, 0x5ac(r3)
/* 80BFF8F0  C0 A3 05 A8 */	lfs f5, 0x5a8(r3)
/* 80BFF8F4  C0 83 05 A4 */	lfs f4, 0x5a4(r3)
/* 80BFF8F8  C0 64 00 C0 */	lfs f3, 0xc0(r4)
/* 80BFF8FC  EC 23 01 32 */	fmuls f1, f3, f4
/* 80BFF900  C0 04 00 C4 */	lfs f0, 0xc4(r4)
/* 80BFF904  EC 40 01 72 */	fmuls f2, f0, f5
/* 80BFF908  EC 63 01 F2 */	fmuls f3, f3, f7
/* 80BFF90C  C0 C4 00 68 */	lfs f6, 0x68(r4)
/* 80BFF910  EC 86 01 32 */	fmuls f4, f6, f4
/* 80BFF914  C0 04 00 D0 */	lfs f0, 0xd0(r4)
/* 80BFF918  EC A0 01 72 */	fmuls f5, f0, f5
/* 80BFF91C  EC C6 01 F2 */	fmuls f6, f6, f7
/* 80BFF920  4B 41 AC 29 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BFF924  38 60 00 04 */	li r3, 4
/* 80BFF928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFF92C  7C 08 03 A6 */	mtlr r0
/* 80BFF930  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFF934  4E 80 00 20 */	blr 

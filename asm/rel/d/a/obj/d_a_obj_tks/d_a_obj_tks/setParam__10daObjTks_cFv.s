lbl_80D11670:
/* 80D11670  3C 80 80 D1 */	lis r4, m__16daObjTks_Param_c@ha /* 0x80D1273C@ha */
/* 80D11674  38 84 27 3C */	addi r4, r4, m__16daObjTks_Param_c@l /* 0x80D1273C@l */
/* 80D11678  C0 84 00 7C */	lfs f4, 0x7c(r4)
/* 80D1167C  C0 63 0D D0 */	lfs f3, 0xdd0(r3)
/* 80D11680  C0 44 00 78 */	lfs f2, 0x78(r4)
/* 80D11684  C0 23 0D CC */	lfs f1, 0xdcc(r3)
/* 80D11688  3C 80 80 D1 */	lis r4, lit_5005@ha /* 0x80D128A0@ha */
/* 80D1168C  C0 04 28 A0 */	lfs f0, lit_5005@l(r4)  /* 0x80D128A0@l */
/* 80D11690  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D11694  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D11698  EC 03 00 2A */	fadds f0, f3, f0
/* 80D1169C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80D116A0  D0 03 0D D0 */	stfs f0, 0xdd0(r3)
/* 80D116A4  C0 23 0D CC */	lfs f1, 0xdcc(r3)
/* 80D116A8  C0 03 0D D0 */	lfs f0, 0xdd0(r3)
/* 80D116AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80D116B0  D0 03 0D CC */	stfs f0, 0xdcc(r3)
/* 80D116B4  C0 03 0D CC */	lfs f0, 0xdcc(r3)
/* 80D116B8  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 80D116BC  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 80D116C0  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 80D116C4  4E 80 00 20 */	blr 

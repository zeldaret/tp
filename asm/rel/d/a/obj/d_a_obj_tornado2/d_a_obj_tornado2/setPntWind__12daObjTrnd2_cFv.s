lbl_80D1C4D8:
/* 80D1C4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1C4DC  7C 08 02 A6 */	mflr r0
/* 80D1C4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1C4E4  3C 80 80 D2 */	lis r4, l_R02_eff_id@ha /* 0x80D1D3D4@ha */
/* 80D1C4E8  38 84 D3 D4 */	addi r4, r4, l_R02_eff_id@l /* 0x80D1D3D4@l */
/* 80D1C4EC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D1C4F0  D0 03 07 3C */	stfs f0, 0x73c(r3)
/* 80D1C4F4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D1C4F8  D0 03 07 40 */	stfs f0, 0x740(r3)
/* 80D1C4FC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D1C500  D0 03 07 44 */	stfs f0, 0x744(r3)
/* 80D1C504  C0 44 00 30 */	lfs f2, 0x30(r4)
/* 80D1C508  D0 43 07 48 */	stfs f2, 0x748(r3)
/* 80D1C50C  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 80D1C510  D0 03 07 4C */	stfs f0, 0x74c(r3)
/* 80D1C514  D0 43 07 50 */	stfs f2, 0x750(r3)
/* 80D1C518  C0 23 07 68 */	lfs f1, 0x768(r3)
/* 80D1C51C  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 80D1C520  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1C524  D0 03 07 54 */	stfs f0, 0x754(r3)
/* 80D1C528  D0 43 07 5C */	stfs f2, 0x75c(r3)
/* 80D1C52C  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 80D1C530  D0 03 07 58 */	stfs f0, 0x758(r3)
/* 80D1C534  38 63 07 3C */	addi r3, r3, 0x73c
/* 80D1C538  4B 33 E8 C5 */	bl dKyw_pntwind_set__FP14WIND_INFLUENCE
/* 80D1C53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1C540  7C 08 03 A6 */	mtlr r0
/* 80D1C544  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1C548  4E 80 00 20 */	blr 

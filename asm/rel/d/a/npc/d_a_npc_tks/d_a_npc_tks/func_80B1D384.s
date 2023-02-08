lbl_80B1D384:
/* 80B1D384  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B1D388  7C 08 02 A6 */	mflr r0
/* 80B1D38C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B1D390  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B1D394  7C 7F 1B 78 */	mr r31, r3
/* 80B1D398  3C 60 80 B2 */	lis r3, lit_5433@ha /* 0x80B1DF40@ha */
/* 80B1D39C  C8 23 DF 40 */	lfd f1, lit_5433@l(r3)  /* 0x80B1DF40@l */
/* 80B1D3A0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80B1D3A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B1D3A8  3C 00 43 30 */	lis r0, 0x4330
/* 80B1D3AC  90 01 00 08 */	stw r0, 8(r1)
/* 80B1D3B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80B1D3B4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B1D3B8  4B 74 A5 9D */	bl cM_rndF__Ff
/* 80B1D3BC  3C 60 80 B2 */	lis r3, lit_5433@ha /* 0x80B1DF40@ha */
/* 80B1D3C0  C8 43 DF 40 */	lfd f2, lit_5433@l(r3)  /* 0x80B1DF40@l */
/* 80B1D3C4  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80B1D3C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1D3CC  3C 00 43 30 */	lis r0, 0x4330
/* 80B1D3D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B1D3D4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80B1D3D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B1D3DC  EC 00 08 2A */	fadds f0, f0, f1
/* 80B1D3E0  FC 00 00 1E */	fctiwz f0, f0
/* 80B1D3E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B1D3E8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80B1D3EC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B1D3F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B1D3F4  7C 08 03 A6 */	mtlr r0
/* 80B1D3F8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B1D3FC  4E 80 00 20 */	blr 

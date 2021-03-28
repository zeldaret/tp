lbl_80B5D394:
/* 80B5D394  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B5D398  7C 08 02 A6 */	mflr r0
/* 80B5D39C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B5D3A0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B5D3A4  7C 7F 1B 78 */	mr r31, r3
/* 80B5D3A8  3C 60 80 B6 */	lis r3, lit_5517@ha
/* 80B5D3AC  C8 23 D9 2C */	lfd f1, lit_5517@l(r3)
/* 80B5D3B0  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80B5D3B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B5D3B8  3C 00 43 30 */	lis r0, 0x4330
/* 80B5D3BC  90 01 00 08 */	stw r0, 8(r1)
/* 80B5D3C0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80B5D3C4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B5D3C8  4B 70 A5 8C */	b cM_rndF__Ff
/* 80B5D3CC  3C 60 80 B6 */	lis r3, lit_5517@ha
/* 80B5D3D0  C8 43 D9 2C */	lfd f2, lit_5517@l(r3)
/* 80B5D3D4  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80B5D3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5D3DC  3C 00 43 30 */	lis r0, 0x4330
/* 80B5D3E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B5D3E4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80B5D3E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B5D3EC  EC 00 08 2A */	fadds f0, f0, f1
/* 80B5D3F0  FC 00 00 1E */	fctiwz f0, f0
/* 80B5D3F4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B5D3F8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80B5D3FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B5D400  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B5D404  7C 08 03 A6 */	mtlr r0
/* 80B5D408  38 21 00 30 */	addi r1, r1, 0x30
/* 80B5D40C  4E 80 00 20 */	blr 

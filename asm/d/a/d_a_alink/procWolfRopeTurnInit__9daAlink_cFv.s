lbl_80132D68:
/* 80132D68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80132D6C  7C 08 02 A6 */	mflr r0
/* 80132D70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80132D74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80132D78  7C 7F 1B 78 */	mr r31, r3
/* 80132D7C  38 80 01 15 */	li r4, 0x115
/* 80132D80  4B F8 F1 ED */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80132D84  7F E3 FB 78 */	mr r3, r31
/* 80132D88  38 80 00 24 */	li r4, 0x24
/* 80132D8C  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlRope_c0@ha /* 0x8038F46C@ha */
/* 80132D90  38 A5 F4 6C */	addi r5, r5, m__20daAlinkHIO_wlRope_c0@l /* 0x8038F46C@l */
/* 80132D94  4B FF 6A B5 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80132D98  7F E3 FB 78 */	mr r3, r31
/* 80132D9C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010033@ha */
/* 80132DA0  38 84 00 33 */	addi r4, r4, 0x0033 /* 0x00010033@l */
/* 80132DA4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80132DA8  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80132DAC  7D 89 03 A6 */	mtctr r12
/* 80132DB0  4E 80 04 21 */	bctrl 
/* 80132DB4  7F E3 FB 78 */	mr r3, r31
/* 80132DB8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80132DBC  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 80132DC0  38 80 00 00 */	li r4, 0
/* 80132DC4  4B F8 89 AD */	bl setSpecialGravity__9daAlink_cFffi
/* 80132DC8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80132DCC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80132DD0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 80132DD4  7F E3 FB 78 */	mr r3, r31
/* 80132DD8  4B FF EC 19 */	bl initWolfRopeShapeAngle__9daAlink_cFv
/* 80132DDC  B0 7F 30 0E */	sth r3, 0x300e(r31)
/* 80132DE0  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80132DE4  3C 63 00 01 */	addis r3, r3, 1
/* 80132DE8  38 03 80 00 */	addi r0, r3, -32768
/* 80132DEC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80132DF0  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 80132DF4  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 80132DF8  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 80132DFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80132E00  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 80132E04  C0 03 00 08 */	lfs f0, 8(r3)
/* 80132E08  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 80132E0C  38 00 00 00 */	li r0, 0
/* 80132E10  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80132E14  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80132E18  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 80132E1C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80132E20  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 80132E24  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80132E28  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 80132E2C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80132E30  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 80132E34  A8 1F 1F D8 */	lha r0, 0x1fd8(r31)
/* 80132E38  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80132E3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80132E40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80132E44  3C 00 43 30 */	lis r0, 0x4330
/* 80132E48  90 01 00 08 */	stw r0, 8(r1)
/* 80132E4C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80132E50  EC 00 08 28 */	fsubs f0, f0, f1
/* 80132E54  EC 02 00 24 */	fdivs f0, f2, f0
/* 80132E58  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 80132E5C  80 7F 28 10 */	lwz r3, 0x2810(r31)
/* 80132E60  38 00 FF FE */	li r0, -2
/* 80132E64  90 03 07 18 */	stw r0, 0x718(r3)
/* 80132E68  38 00 FF FF */	li r0, -1
/* 80132E6C  90 03 07 1C */	stw r0, 0x71c(r3)
/* 80132E70  38 60 00 01 */	li r3, 1
/* 80132E74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80132E78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80132E7C  7C 08 03 A6 */	mtlr r0
/* 80132E80  38 21 00 20 */	addi r1, r1, 0x20
/* 80132E84  4E 80 00 20 */	blr 

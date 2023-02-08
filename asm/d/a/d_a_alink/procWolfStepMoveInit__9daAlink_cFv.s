lbl_8012F41C:
/* 8012F41C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012F420  7C 08 02 A6 */	mflr r0
/* 8012F424  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012F428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012F42C  7C 7F 1B 78 */	mr r31, r3
/* 8012F430  38 80 01 04 */	li r4, 0x104
/* 8012F434  4B F9 2B 39 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012F438  7F E3 FB 78 */	mr r3, r31
/* 8012F43C  38 80 00 11 */	li r4, 0x11
/* 8012F440  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlWallHang_c0@ha /* 0x8038F1A0@ha */
/* 8012F444  38 A5 F1 A0 */	addi r5, r5, m__24daAlinkHIO_wlWallHang_c0@l /* 0x8038F1A0@l */
/* 8012F448  38 A5 00 50 */	addi r5, r5, 0x50
/* 8012F44C  4B FF A3 FD */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012F450  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 8012F454  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 8012F458  EC 01 00 32 */	fmuls f0, f1, f0
/* 8012F45C  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8012F460  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012F464  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012F468  38 00 00 00 */	li r0, 0
/* 8012F46C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012F470  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha /* 0x8042561C@ha */
/* 8012F474  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)  /* 0x8042561C@l */
/* 8012F478  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8012F47C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012F480  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8012F484  C0 03 00 08 */	lfs f0, 8(r3)
/* 8012F488  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8012F48C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012F490  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012F494  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8012F498  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8012F49C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8012F4A0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8012F4A4  C0 42 93 30 */	lfs f2, lit_7625(r2)
/* 8012F4A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8012F4AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012F4B0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8012F4B4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012F4B8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8012F4BC  7C 63 02 14 */	add r3, r3, r0
/* 8012F4C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8012F4C4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8012F4C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 8012F4CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012F4D0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8012F4D4  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 8012F4D8  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8012F4DC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8012F4E0  EC 00 10 2A */	fadds f0, f0, f2
/* 8012F4E4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8012F4E8  38 60 00 01 */	li r3, 1
/* 8012F4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012F4F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012F4F4  7C 08 03 A6 */	mtlr r0
/* 8012F4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8012F4FC  4E 80 00 20 */	blr 

lbl_80137420:
/* 80137420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80137424  7C 08 02 A6 */	mflr r0
/* 80137428  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013742C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80137430  93 C1 00 08 */	stw r30, 8(r1)
/* 80137434  7C 7F 1B 78 */	mr r31, r3
/* 80137438  7C 9E 23 78 */	mr r30, r4
/* 8013743C  38 80 01 00 */	li r4, 0x100
/* 80137440  4B F8 AB 2D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80137444  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 80137448  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8013744C  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 80137450  C0 03 00 04 */	lfs f0, 4(r3)
/* 80137454  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 80137458  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013745C  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 80137460  7F E3 FB 78 */	mr r3, r31
/* 80137464  38 80 00 0C */	li r4, 0xc
/* 80137468  3C A0 80 39 */	lis r5, m__19daAlinkHIO_wlLie_c0@ha
/* 8013746C  38 A5 F1 38 */	addi r5, r5, m__19daAlinkHIO_wlLie_c0@l
/* 80137470  38 A5 00 14 */	addi r5, r5, 0x14
/* 80137474  4B FF 23 D5 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 80137478  2C 1E 00 00 */	cmpwi r30, 0
/* 8013747C  41 82 00 68 */	beq lbl_801374E4
/* 80137480  A8 7F 30 6E */	lha r3, 0x306e(r31)
/* 80137484  3C 63 00 01 */	addis r3, r3, 1
/* 80137488  38 03 80 00 */	addi r0, r3, -32768
/* 8013748C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80137490  A8 1F 30 6E */	lha r0, 0x306e(r31)
/* 80137494  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80137498  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8013749C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801374A0  7C 03 04 2E */	lfsx f0, r3, r0
/* 801374A4  C0 3F 34 EC */	lfs f1, 0x34ec(r31)
/* 801374A8  C0 42 94 68 */	lfs f2, lit_14955(r2)
/* 801374AC  EC 02 00 32 */	fmuls f0, f2, f0
/* 801374B0  EC 01 00 2A */	fadds f0, f1, f0
/* 801374B4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 801374B8  A8 1F 30 6E */	lha r0, 0x306e(r31)
/* 801374BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801374C0  7C 63 02 14 */	add r3, r3, r0
/* 801374C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 801374C8  C0 3F 34 F4 */	lfs f1, 0x34f4(r31)
/* 801374CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 801374D0  EC 01 00 2A */	fadds f0, f1, f0
/* 801374D4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 801374D8  38 00 00 01 */	li r0, 1
/* 801374DC  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 801374E0  48 00 00 0C */	b lbl_801374EC
lbl_801374E4:
/* 801374E4  38 00 00 00 */	li r0, 0
/* 801374E8  B0 1F 30 10 */	sth r0, 0x3010(r31)
lbl_801374EC:
/* 801374EC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801374F0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 801374F4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801374F8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801374FC  38 00 00 00 */	li r0, 0
/* 80137500  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80137504  38 00 00 1E */	li r0, 0x1e
/* 80137508  B0 1F 30 12 */	sth r0, 0x3012(r31)
/* 8013750C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80137510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80137514  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80137518  64 00 08 00 */	oris r0, r0, 0x800
/* 8013751C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80137520  38 60 00 01 */	li r3, 1
/* 80137524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80137528  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013752C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80137530  7C 08 03 A6 */	mtlr r0
/* 80137534  38 21 00 10 */	addi r1, r1, 0x10
/* 80137538  4E 80 00 20 */	blr 

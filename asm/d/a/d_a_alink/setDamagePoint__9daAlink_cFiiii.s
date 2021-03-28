lbl_800D72BC:
/* 800D72BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D72C0  7C 08 02 A6 */	mflr r0
/* 800D72C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D72C8  39 61 00 30 */	addi r11, r1, 0x30
/* 800D72CC  48 28 AF 11 */	bl _savegpr_29
/* 800D72D0  7C 7D 1B 78 */	mr r29, r3
/* 800D72D4  7C 9E 23 79 */	or. r30, r4, r4
/* 800D72D8  7C DF 33 78 */	mr r31, r6
/* 800D72DC  41 81 00 48 */	bgt lbl_800D7324
/* 800D72E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D72E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D72E8  C0 43 5D C0 */	lfs f2, 0x5dc0(r3)
/* 800D72EC  7C 1E 00 D0 */	neg r0, r30
/* 800D72F0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800D72F4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D72F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 800D72FC  3C 00 43 30 */	lis r0, 0x4330
/* 800D7300  90 01 00 08 */	stw r0, 8(r1)
/* 800D7304  C8 01 00 08 */	lfd f0, 8(r1)
/* 800D7308  EC 00 08 28 */	fsubs f0, f0, f1
/* 800D730C  EC 02 00 2A */	fadds f0, f2, f0
/* 800D7310  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 800D7314  38 00 00 00 */	li r0, 0
/* 800D7318  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 800D731C  38 60 00 00 */	li r3, 0
/* 800D7320  48 00 01 40 */	b lbl_800D7460
lbl_800D7324:
/* 800D7324  7C A4 2B 78 */	mr r4, r5
/* 800D7328  7C E5 3B 78 */	mr r5, r7
/* 800D732C  4B FF FE DD */	bl damageMagnification__9daAlink_cFii
/* 800D7330  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800D7334  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 800D7338  90 01 00 0C */	stw r0, 0xc(r1)
/* 800D733C  3C 00 43 30 */	lis r0, 0x4330
/* 800D7340  90 01 00 08 */	stw r0, 8(r1)
/* 800D7344  C8 01 00 08 */	lfd f0, 8(r1)
/* 800D7348  EC 00 10 28 */	fsubs f0, f0, f2
/* 800D734C  EC 20 00 72 */	fmuls f1, f0, f1
/* 800D7350  FC 00 08 1E */	fctiwz f0, f1
/* 800D7354  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 800D7358  83 C1 00 14 */	lwz r30, 0x14(r1)
/* 800D735C  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 800D7360  EC 00 00 72 */	fmuls f0, f0, f1
/* 800D7364  FC 00 00 1E */	fctiwz f0, f0
/* 800D7368  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800D736C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 800D7370  38 60 00 0A */	li r3, 0xa
/* 800D7374  7C 04 1B D6 */	divw r0, r4, r3
/* 800D7378  7C 00 19 D6 */	mullw r0, r0, r3
/* 800D737C  7C 00 20 51 */	subf. r0, r0, r4
/* 800D7380  41 82 00 08 */	beq lbl_800D7388
/* 800D7384  3B DE 00 01 */	addi r30, r30, 1
lbl_800D7388:
/* 800D7388  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800D738C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D7390  41 82 00 0C */	beq lbl_800D739C
/* 800D7394  7F A3 EB 78 */	mr r3, r29
/* 800D7398  48 05 09 15 */	bl offWolfEyeUp__9daAlink_cFv
lbl_800D739C:
/* 800D739C  7F A3 EB 78 */	mr r3, r29
/* 800D73A0  48 00 04 29 */	bl checkMagicArmorNoDamage__9daAlink_cFv
/* 800D73A4  2C 03 00 00 */	cmpwi r3, 0
/* 800D73A8  41 82 00 24 */	beq lbl_800D73CC
/* 800D73AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D73B0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 800D73B4  80 64 5D C4 */	lwz r3, 0x5dc4(r4)
/* 800D73B8  7C 1E 00 D0 */	neg r0, r30
/* 800D73BC  1C 00 00 0A */	mulli r0, r0, 0xa
/* 800D73C0  7C 03 02 14 */	add r0, r3, r0
/* 800D73C4  90 04 5D C4 */	stw r0, 0x5dc4(r4)
/* 800D73C8  48 00 00 40 */	b lbl_800D7408
lbl_800D73CC:
/* 800D73CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D73D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D73D4  C0 43 5D C0 */	lfs f2, 0x5dc0(r3)
/* 800D73D8  7C 1E 00 D0 */	neg r0, r30
/* 800D73DC  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800D73E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800D73E4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800D73E8  3C 00 43 30 */	lis r0, 0x4330
/* 800D73EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 800D73F0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800D73F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 800D73F8  EC 02 00 2A */	fadds f0, f2, f0
/* 800D73FC  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 800D7400  38 00 00 00 */	li r0, 0
/* 800D7404  98 03 5E B6 */	stb r0, 0x5eb6(r3)
lbl_800D7408:
/* 800D7408  80 1D 05 84 */	lwz r0, 0x584(r29)
/* 800D740C  60 00 04 00 */	ori r0, r0, 0x400
/* 800D7410  90 1D 05 84 */	stw r0, 0x584(r29)
/* 800D7414  38 00 00 00 */	li r0, 0
/* 800D7418  B0 1D 05 6E */	sth r0, 0x56e(r29)
/* 800D741C  2C 1F 00 00 */	cmpwi r31, 0
/* 800D7420  41 82 00 34 */	beq lbl_800D7454
/* 800D7424  3C 60 80 39 */	lis r3, m__20daAlinkHIO_damage_c0@ha
/* 800D7428  38 63 E5 4C */	addi r3, r3, m__20daAlinkHIO_damage_c0@l
/* 800D742C  A8 03 00 2A */	lha r0, 0x2a(r3)
/* 800D7430  B0 1D 05 6C */	sth r0, 0x56c(r29)
/* 800D7434  A8 7D 05 6C */	lha r3, 0x56c(r29)
/* 800D7438  54 60 E0 06 */	slwi r0, r3, 0x1c
/* 800D743C  54 63 0F FE */	srwi r3, r3, 0x1f
/* 800D7440  7C 03 00 50 */	subf r0, r3, r0
/* 800D7444  54 00 20 3E */	rotlwi r0, r0, 4
/* 800D7448  7C 00 1A 14 */	add r0, r0, r3
/* 800D744C  20 00 00 20 */	subfic r0, r0, 0x20
/* 800D7450  98 1D 2F B5 */	stb r0, 0x2fb5(r29)
lbl_800D7454:
/* 800D7454  38 00 00 00 */	li r0, 0
/* 800D7458  B0 1D 30 06 */	sth r0, 0x3006(r29)
/* 800D745C  38 60 00 00 */	li r3, 0
lbl_800D7460:
/* 800D7460  39 61 00 30 */	addi r11, r1, 0x30
/* 800D7464  48 28 AD C5 */	bl _restgpr_29
/* 800D7468  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D746C  7C 08 03 A6 */	mtlr r0
/* 800D7470  38 21 00 30 */	addi r1, r1, 0x30
/* 800D7474  4E 80 00 20 */	blr 

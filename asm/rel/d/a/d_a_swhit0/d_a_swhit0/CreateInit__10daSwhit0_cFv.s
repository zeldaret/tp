lbl_80486214:
/* 80486214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486218  7C 08 02 A6 */	mflr r0
/* 8048621C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80486224  7C 7F 1B 78 */	mr r31, r3
/* 80486228  38 00 00 00 */	li r0, 0
/* 8048622C  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 80486230  B0 03 04 E0 */	sth r0, 0x4e0(r3)
/* 80486234  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80486238  38 80 00 FF */	li r4, 0xff
/* 8048623C  38 A0 00 FF */	li r5, 0xff
/* 80486240  7F E6 FB 78 */	mr r6, r31
/* 80486244  4B BF D6 1D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80486248  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 8048624C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80486250  7C 00 1E 70 */	srawi r0, r0, 3
/* 80486254  54 00 18 38 */	slwi r0, r0, 3
/* 80486258  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8048625C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80486260  7C 64 04 2E */	lfsx f3, r4, r0
/* 80486264  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80486268  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8048626C  7C 00 1E 70 */	srawi r0, r0, 3
/* 80486270  54 00 18 38 */	slwi r0, r0, 3
/* 80486274  7C 04 04 2E */	lfsx f0, r4, r0
/* 80486278  C0 3F 05 50 */	lfs f1, 0x550(r31)
/* 8048627C  3C 60 80 48 */	lis r3, lit_3725@ha /* 0x80487374@ha */
/* 80486280  C0 43 73 74 */	lfs f2, lit_3725@l(r3)  /* 0x80487374@l */
/* 80486284  EC 02 00 32 */	fmuls f0, f2, f0
/* 80486288  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8048628C  EC 01 00 2A */	fadds f0, f1, f0
/* 80486290  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80486294  38 64 00 04 */	addi r3, r4, 4
/* 80486298  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 8048629C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804862A0  7C 03 04 2E */	lfsx f0, r3, r0
/* 804862A4  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 804862A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804862AC  EC 01 00 2A */	fadds f0, f1, f0
/* 804862B0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804862B4  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 804862B8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804862BC  7C 63 04 2E */	lfsx f3, r3, r0
/* 804862C0  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 804862C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804862C8  7C 04 04 2E */	lfsx f0, r4, r0
/* 804862CC  C0 3F 05 58 */	lfs f1, 0x558(r31)
/* 804862D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804862D4  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804862D8  EC 01 00 2A */	fadds f0, f1, f0
/* 804862DC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 804862E0  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 804862E4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804862E8  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 804862EC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804862F0  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 804862F4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804862F8  38 7F 06 14 */	addi r3, r31, 0x614
/* 804862FC  3C 80 80 48 */	lis r4, l_sph_src@ha /* 0x804873C0@ha */
/* 80486300  38 84 73 C0 */	addi r4, r4, l_sph_src@l /* 0x804873C0@l */
/* 80486304  4B BF E7 31 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80486308  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 8048630C  90 1F 06 58 */	stw r0, 0x658(r31)
/* 80486310  38 7F 07 38 */	addi r3, r31, 0x738
/* 80486314  38 9F 05 50 */	addi r4, r31, 0x550
/* 80486318  4B DE 93 31 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8048631C  7F E3 FB 78 */	mr r3, r31
/* 80486320  4B FF FC D9 */	bl getSwNo__10daSwhit0_cFv
/* 80486324  7C 64 1B 78 */	mr r4, r3
/* 80486328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048632C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80486330  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80486334  7C 05 07 74 */	extsb r5, r0
/* 80486338  4B BA F0 29 */	bl isSwitch__10dSv_info_cCFii
/* 8048633C  2C 03 00 00 */	cmpwi r3, 0
/* 80486340  41 82 00 1C */	beq lbl_8048635C
/* 80486344  38 00 00 06 */	li r0, 6
/* 80486348  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 8048634C  A0 1F 07 54 */	lhz r0, 0x754(r31)
/* 80486350  60 00 00 01 */	ori r0, r0, 1
/* 80486354  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80486358  48 00 00 18 */	b lbl_80486370
lbl_8048635C:
/* 8048635C  38 00 00 01 */	li r0, 1
/* 80486360  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 80486364  A0 1F 07 54 */	lhz r0, 0x754(r31)
/* 80486368  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 8048636C  B0 1F 07 54 */	sth r0, 0x754(r31)
lbl_80486370:
/* 80486370  7F E3 FB 78 */	mr r3, r31
/* 80486374  4B FF FC F1 */	bl makeEventId__10daSwhit0_cFv
/* 80486378  38 60 00 01 */	li r3, 1
/* 8048637C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80486380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486384  7C 08 03 A6 */	mtlr r0
/* 80486388  38 21 00 10 */	addi r1, r1, 0x10
/* 8048638C  4E 80 00 20 */	blr 

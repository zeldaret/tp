lbl_804956EC:
/* 804956EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804956F0  7C 08 02 A6 */	mflr r0
/* 804956F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804956F8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804956FC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80495700  7C 7F 1B 78 */	mr r31, r3
/* 80495704  3B C0 00 00 */	li r30, 0
/* 80495708  88 03 09 CC */	lbz r0, 0x9cc(r3)
/* 8049570C  28 00 00 00 */	cmplwi r0, 0
/* 80495710  41 82 00 CC */	beq lbl_804957DC
/* 80495714  A0 1F 07 54 */	lhz r0, 0x754(r31)
/* 80495718  60 00 00 40 */	ori r0, r0, 0x40
/* 8049571C  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 80495720  C0 5F 04 A8 */	lfs f2, 0x4a8(r31)
/* 80495724  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80495728  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 8049572C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80495730  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80495734  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80495738  D0 41 00 08 */	stfs f2, 8(r1)
/* 8049573C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80495740  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80495744  3C 60 80 49 */	lis r3, lit_4222@ha
/* 80495748  C0 03 62 54 */	lfs f0, lit_4222@l(r3)
/* 8049574C  EC 01 00 2A */	fadds f0, f1, f0
/* 80495750  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80495754  3C 60 80 49 */	lis r3, lit_4223@ha
/* 80495758  C0 03 62 58 */	lfs f0, lit_4223@l(r3)
/* 8049575C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80495760  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80495764  38 61 00 14 */	addi r3, r1, 0x14
/* 80495768  38 81 00 08 */	addi r4, r1, 8
/* 8049576C  7F E5 FB 78 */	mr r5, r31
/* 80495770  4B B8 84 F8 */	b lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80495774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80495778  41 82 00 64 */	beq lbl_804957DC
/* 8049577C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80495780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80495784  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80495788  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha
/* 8049578C  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l
/* 80495790  38 84 00 14 */	addi r4, r4, 0x14
/* 80495794  4B BD F3 28 */	b ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 80495798  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8049579C  41 82 00 40 */	beq lbl_804957DC
/* 804957A0  3B C0 00 01 */	li r30, 1
/* 804957A4  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha
/* 804957A8  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l
/* 804957AC  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 804957B0  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 804957B4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 804957B8  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 804957BC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 804957C0  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 804957C4  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 804957C8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 804957CC  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 804957D0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 804957D4  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 804957D8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_804957DC:
/* 804957DC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 804957E0  41 82 00 20 */	beq lbl_80495800
/* 804957E4  A0 1F 07 54 */	lhz r0, 0x754(r31)
/* 804957E8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 804957EC  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 804957F0  38 00 00 01 */	li r0, 1
/* 804957F4  98 1F 09 CD */	stb r0, 0x9cd(r31)
/* 804957F8  7F E3 FB 78 */	mr r3, r31
/* 804957FC  48 00 00 1D */	bl mode_exec__8daTbox_cFv
lbl_80495800:
/* 80495800  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80495804  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80495808  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049580C  7C 08 03 A6 */	mtlr r0
/* 80495810  38 21 00 30 */	addi r1, r1, 0x30
/* 80495814  4E 80 00 20 */	blr 

lbl_80C8B318:
/* 80C8B318  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C8B31C  7C 08 02 A6 */	mflr r0
/* 80C8B320  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C8B324  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C8B328  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C8B32C  7C 7F 1B 78 */	mr r31, r3
/* 80C8B330  88 63 05 EA */	lbz r3, 0x5ea(r3)
/* 80C8B334  28 03 00 00 */	cmplwi r3, 0
/* 80C8B338  41 82 00 10 */	beq lbl_80C8B348
/* 80C8B33C  38 03 FF FF */	addi r0, r3, -1
/* 80C8B340  98 1F 05 EA */	stb r0, 0x5ea(r31)
/* 80C8B344  48 00 00 CC */	b lbl_80C8B410
lbl_80C8B348:
/* 80C8B348  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C8B34C  4B 38 20 DD */	bl play__14mDoExt_baseAnmFv
/* 80C8B350  7C 7E 1B 78 */	mr r30, r3
/* 80C8B354  C0 7F 05 BC */	lfs f3, 0x5bc(r31)
/* 80C8B358  3C 60 80 C9 */	lis r3, lit_4125@ha /* 0x80C8BA28@ha */
/* 80C8B35C  C0 43 BA 28 */	lfs f2, lit_4125@l(r3)  /* 0x80C8BA28@l */
/* 80C8B360  A8 1F 05 B2 */	lha r0, 0x5b2(r31)
/* 80C8B364  3C 60 80 C9 */	lis r3, lit_4127@ha /* 0x80C8BA2C@ha */
/* 80C8B368  C8 23 BA 2C */	lfd f1, lit_4127@l(r3)  /* 0x80C8BA2C@l */
/* 80C8B36C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C8B370  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8B374  3C 00 43 30 */	lis r0, 0x4330
/* 80C8B378  90 01 00 08 */	stw r0, 8(r1)
/* 80C8B37C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C8B380  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C8B384  3C 60 80 C9 */	lis r3, lit_3695@ha /* 0x80C8B9F0@ha */
/* 80C8B388  C0 03 B9 F0 */	lfs f0, lit_3695@l(r3)  /* 0x80C8B9F0@l */
/* 80C8B38C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C8B390  EC 02 00 2A */	fadds f0, f2, f0
/* 80C8B394  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80C8B398  4C 40 13 82 */	cror 2, 0, 2
/* 80C8B39C  40 82 00 30 */	bne lbl_80C8B3CC
/* 80C8B3A0  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C8B3A4  28 03 00 00 */	cmplwi r3, 0
/* 80C8B3A8  41 82 00 24 */	beq lbl_80C8B3CC
/* 80C8B3AC  4B 5D CE 29 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80C8B3B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C8B3B4  41 82 00 18 */	beq lbl_80C8B3CC
/* 80C8B3B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8B3BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8B3C0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C8B3C4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80C8B3C8  4B 3E 8E 89 */	bl Release__4cBgSFP9dBgW_Base
lbl_80C8B3CC:
/* 80C8B3CC  2C 1E 00 01 */	cmpwi r30, 1
/* 80C8B3D0  40 82 00 40 */	bne lbl_80C8B410
/* 80C8B3D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8B3D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8B3DC  88 9F 05 C4 */	lbz r4, 0x5c4(r31)
/* 80C8B3E0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C8B3E4  7C 05 07 74 */	extsb r5, r0
/* 80C8B3E8  4B 3A 9E C9 */	bl offSwitch__10dSv_info_cFii
/* 80C8B3EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C8B3F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C8B3F4  88 9F 05 C4 */	lbz r4, 0x5c4(r31)
/* 80C8B3F8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C8B3FC  7C 05 07 74 */	extsb r5, r0
/* 80C8B400  4B 3A 9F 61 */	bl isSwitch__10dSv_info_cCFii
/* 80C8B404  98 7F 05 E9 */	stb r3, 0x5e9(r31)
/* 80C8B408  7F E3 FB 78 */	mr r3, r31
/* 80C8B40C  48 00 00 1D */	bl init_modeInitSet__12daOptiLift_cFv
lbl_80C8B410:
/* 80C8B410  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C8B414  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C8B418  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8B41C  7C 08 03 A6 */	mtlr r0
/* 80C8B420  38 21 00 20 */	addi r1, r1, 0x20
/* 80C8B424  4E 80 00 20 */	blr 

lbl_80497678:
/* 80497678  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049767C  7C 08 02 A6 */	mflr r0
/* 80497680  90 01 00 34 */	stw r0, 0x34(r1)
/* 80497684  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80497688  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8049768C  7C 7F 1B 78 */	mr r31, r3
/* 80497690  3B C0 00 00 */	li r30, 0
/* 80497694  38 00 00 01 */	li r0, 1
/* 80497698  98 03 0A BF */	stb r0, 0xabf(r3)
/* 8049769C  C0 43 04 A8 */	lfs f2, 0x4a8(r3)
/* 804976A0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 804976A4  C0 23 04 AC */	lfs f1, 0x4ac(r3)
/* 804976A8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804976AC  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 804976B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804976B4  D0 41 00 08 */	stfs f2, 8(r1)
/* 804976B8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804976BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804976C0  3C 60 80 4A */	lis r3, lit_3717@ha
/* 804976C4  C0 03 81 C8 */	lfs f0, lit_3717@l(r3)
/* 804976C8  EC 01 00 2A */	fadds f0, f1, f0
/* 804976CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804976D0  3C 60 80 4A */	lis r3, lit_3718@ha
/* 804976D4  C0 03 81 CC */	lfs f0, lit_3718@l(r3)
/* 804976D8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804976DC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804976E0  38 61 00 14 */	addi r3, r1, 0x14
/* 804976E4  38 81 00 08 */	addi r4, r1, 8
/* 804976E8  7F E5 FB 78 */	mr r5, r31
/* 804976EC  4B B8 65 7C */	b lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 804976F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804976F4  41 82 00 64 */	beq lbl_80497758
/* 804976F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804976FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80497700  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80497704  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha
/* 80497708  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l
/* 8049770C  38 84 00 14 */	addi r4, r4, 0x14
/* 80497710  4B BD D3 AC */	b ChkMoveBG__4dBgSFRC13cBgS_PolyInfo
/* 80497714  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80497718  41 82 00 40 */	beq lbl_80497758
/* 8049771C  3B C0 00 01 */	li r30, 1
/* 80497720  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha
/* 80497724  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l
/* 80497728  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8049772C  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80497730  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80497734  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80497738  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8049773C  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80497740  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80497744  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80497748  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 8049774C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80497750  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80497754  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_80497758:
/* 80497758  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8049775C  41 82 00 1C */	beq lbl_80497778
/* 80497760  38 00 00 00 */	li r0, 0
/* 80497764  98 1F 0A BF */	stb r0, 0xabf(r31)
/* 80497768  38 00 00 01 */	li r0, 1
/* 8049776C  98 1F 0A BE */	stb r0, 0xabe(r31)
/* 80497770  7F E3 FB 78 */	mr r3, r31
/* 80497774  48 00 00 1D */	bl mode_exec__9daTbox2_cFv
lbl_80497778:
/* 80497778  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8049777C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80497780  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80497784  7C 08 03 A6 */	mtlr r0
/* 80497788  38 21 00 30 */	addi r1, r1, 0x30
/* 8049778C  4E 80 00 20 */	blr 

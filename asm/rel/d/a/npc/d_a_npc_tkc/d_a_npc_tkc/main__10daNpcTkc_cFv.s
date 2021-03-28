lbl_80B0FAD0:
/* 80B0FAD0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B0FAD4  7C 08 02 A6 */	mflr r0
/* 80B0FAD8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B0FADC  39 61 00 70 */	addi r11, r1, 0x70
/* 80B0FAE0  4B 85 26 FC */	b _savegpr_29
/* 80B0FAE4  7C 7D 1B 78 */	mr r29, r3
/* 80B0FAE8  3C 60 80 B1 */	lis r3, m__16daNpcTkc_Param_c@ha
/* 80B0FAEC  3B E3 08 B4 */	addi r31, r3, m__16daNpcTkc_Param_c@l
/* 80B0FAF0  38 7D 0D 20 */	addi r3, r29, 0xd20
/* 80B0FAF4  4B 85 25 24 */	b __ptmf_test
/* 80B0FAF8  2C 03 00 00 */	cmpwi r3, 0
/* 80B0FAFC  41 82 00 14 */	beq lbl_80B0FB10
/* 80B0FB00  7F A3 EB 78 */	mr r3, r29
/* 80B0FB04  39 9D 0D 20 */	addi r12, r29, 0xd20
/* 80B0FB08  4B 85 25 7C */	b __ptmf_scall
/* 80B0FB0C  60 00 00 00 */	nop 
lbl_80B0FB10:
/* 80B0FB10  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 80B0FB14  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 80B0FB18  90 61 00 30 */	stw r3, 0x30(r1)
/* 80B0FB1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B0FB20  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 80B0FB24  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B0FB28  3B DF 00 00 */	addi r30, r31, 0
/* 80B0FB2C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80B0FB30  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B0FB34  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80B0FB38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B0FB3C  38 01 00 30 */	addi r0, r1, 0x30
/* 80B0FB40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B0FB44  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80B0FB48  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80B0FB4C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80B0FB50  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B0FB54  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80B0FB58  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B0FB5C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B0FB60  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 80B0FB64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B0FB68  38 01 00 3C */	addi r0, r1, 0x3c
/* 80B0FB6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B0FB70  80 7F 00 EC */	lwz r3, 0xec(r31)
/* 80B0FB74  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80B0FB78  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B0FB7C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B0FB80  38 01 00 0C */	addi r0, r1, 0xc
/* 80B0FB84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B0FB88  38 01 00 10 */	addi r0, r1, 0x10
/* 80B0FB8C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B0FB90  A8 7D 09 DE */	lha r3, 0x9de(r29)
/* 80B0FB94  7C 60 07 35 */	extsh. r0, r3
/* 80B0FB98  41 80 00 18 */	blt lbl_80B0FBB0
/* 80B0FB9C  2C 03 00 02 */	cmpwi r3, 2
/* 80B0FBA0  40 80 00 10 */	bge lbl_80B0FBB0
/* 80B0FBA4  7F A3 EB 78 */	mr r3, r29
/* 80B0FBA8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B0FBAC  4B 64 35 A4 */	b playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80B0FBB0:
/* 80B0FBB0  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80B0FBB4  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80B0FBB8  90 61 00 24 */	stw r3, 0x24(r1)
/* 80B0FBBC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B0FBC0  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 80B0FBC4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B0FBC8  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80B0FBCC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B0FBD0  80 1F 01 00 */	lwz r0, 0x100(r31)
/* 80B0FBD4  90 01 00 08 */	stw r0, 8(r1)
/* 80B0FBD8  38 01 00 24 */	addi r0, r1, 0x24
/* 80B0FBDC  90 01 00 08 */	stw r0, 8(r1)
/* 80B0FBE0  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80B0FBE4  80 1F 01 08 */	lwz r0, 0x108(r31)
/* 80B0FBE8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B0FBEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B0FBF0  38 01 00 08 */	addi r0, r1, 8
/* 80B0FBF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0FBF8  A8 7D 09 E0 */	lha r3, 0x9e0(r29)
/* 80B0FBFC  7C 60 07 35 */	extsh. r0, r3
/* 80B0FC00  41 80 00 18 */	blt lbl_80B0FC18
/* 80B0FC04  2C 03 00 02 */	cmpwi r3, 2
/* 80B0FC08  40 80 00 10 */	bge lbl_80B0FC18
/* 80B0FC0C  7F A3 EB 78 */	mr r3, r29
/* 80B0FC10  38 81 00 14 */	addi r4, r1, 0x14
/* 80B0FC14  4B 64 36 50 */	b playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80B0FC18:
/* 80B0FC18  37 DD 07 A8 */	addic. r30, r29, 0x7a8
/* 80B0FC1C  41 82 00 14 */	beq lbl_80B0FC30
/* 80B0FC20  7F C3 F3 78 */	mr r3, r30
/* 80B0FC24  7F C4 F3 78 */	mr r4, r30
/* 80B0FC28  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80B0FC2C  4B 83 74 AC */	b PSVECScale
lbl_80B0FC30:
/* 80B0FC30  7F A3 EB 78 */	mr r3, r29
/* 80B0FC34  7F C4 F3 78 */	mr r4, r30
/* 80B0FC38  4B 50 AA 28 */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 80B0FC3C  3C 60 80 B1 */	lis r3, lit_4458@ha
/* 80B0FC40  38 83 0B 2C */	addi r4, r3, lit_4458@l
/* 80B0FC44  80 64 00 00 */	lwz r3, 0(r4)
/* 80B0FC48  80 04 00 04 */	lwz r0, 4(r4)
/* 80B0FC4C  90 61 00 48 */	stw r3, 0x48(r1)
/* 80B0FC50  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B0FC54  80 04 00 08 */	lwz r0, 8(r4)
/* 80B0FC58  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B0FC5C  38 61 00 48 */	addi r3, r1, 0x48
/* 80B0FC60  38 9D 0D 20 */	addi r4, r29, 0xd20
/* 80B0FC64  4B 85 23 E4 */	b __ptmf_cmpr
/* 80B0FC68  2C 03 00 00 */	cmpwi r3, 0
/* 80B0FC6C  41 82 00 18 */	beq lbl_80B0FC84
/* 80B0FC70  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80B0FC74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B0FC78  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B0FC7C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B0FC80  4B 56 6E 2C */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_80B0FC84:
/* 80B0FC84  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 80B0FC88  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 80B0FC8C  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 80B0FC90  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 80B0FC94  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 80B0FC98  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 80B0FC9C  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 80B0FCA0  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 80B0FCA4  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 80B0FCA8  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 80B0FCAC  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 80B0FCB0  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 80B0FCB4  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 80B0FCB8  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 80B0FCBC  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 80B0FCC0  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 80B0FCC4  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 80B0FCC8  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 80B0FCCC  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80B0FCD0  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 80B0FCD4  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 80B0FCD8  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 80B0FCDC  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80B0FCE0  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 80B0FCE4  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 80B0FCE8  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 80B0FCEC  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 80B0FCF0  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 80B0FCF4  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 80B0FCF8  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 80B0FCFC  38 60 00 00 */	li r3, 0
/* 80B0FD00  39 61 00 70 */	addi r11, r1, 0x70
/* 80B0FD04  4B 85 25 24 */	b _restgpr_29
/* 80B0FD08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B0FD0C  7C 08 03 A6 */	mtlr r0
/* 80B0FD10  38 21 00 70 */	addi r1, r1, 0x70
/* 80B0FD14  4E 80 00 20 */	blr 

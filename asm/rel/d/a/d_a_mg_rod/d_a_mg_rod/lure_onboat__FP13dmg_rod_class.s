lbl_804AC228:
/* 804AC228  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804AC22C  7C 08 02 A6 */	mflr r0
/* 804AC230  90 01 00 44 */	stw r0, 0x44(r1)
/* 804AC234  39 61 00 40 */	addi r11, r1, 0x40
/* 804AC238  4B EB 5F A4 */	b _savegpr_29
/* 804AC23C  7C 7E 1B 78 */	mr r30, r3
/* 804AC240  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804AC244  3B E3 B5 34 */	addi r31, r3, lit_3879@l
/* 804AC248  38 00 00 00 */	li r0, 0
/* 804AC24C  98 1E 10 0D */	stb r0, 0x100d(r30)
/* 804AC250  80 1E 11 44 */	lwz r0, 0x1144(r30)
/* 804AC254  90 01 00 08 */	stw r0, 8(r1)
/* 804AC258  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804AC25C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804AC260  38 81 00 08 */	addi r4, r1, 8
/* 804AC264  4B B6 D5 94 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804AC268  28 03 00 00 */	cmplwi r3, 0
/* 804AC26C  40 82 00 10 */	bne lbl_804AC27C
/* 804AC270  7F C3 F3 78 */	mr r3, r30
/* 804AC274  4B B6 DA 08 */	b fopAcM_delete__FP10fopAc_ac_c
/* 804AC278  48 00 01 8C */	b lbl_804AC404
lbl_804AC27C:
/* 804AC27C  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 804AC280  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 804AC284  80 03 00 34 */	lwz r0, 0x34(r3)
/* 804AC288  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804AC28C  41 82 00 10 */	beq lbl_804AC29C
/* 804AC290  38 00 00 1E */	li r0, 0x1e
/* 804AC294  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 804AC298  98 1E 14 6C */	stb r0, 0x146c(r30)
lbl_804AC29C:
/* 804AC29C  88 1E 14 6C */	lbz r0, 0x146c(r30)
/* 804AC2A0  28 00 00 00 */	cmplwi r0, 0
/* 804AC2A4  40 82 00 28 */	bne lbl_804AC2CC
/* 804AC2A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804AC2AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804AC2B0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804AC2B4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804AC2B8  40 82 00 14 */	bne lbl_804AC2CC
/* 804AC2BC  38 00 00 4F */	li r0, 0x4f
/* 804AC2C0  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 804AC2C4  38 00 00 02 */	li r0, 2
/* 804AC2C8  98 03 5E 50 */	stb r0, 0x5e50(r3)
lbl_804AC2CC:
/* 804AC2CC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804AC2D0  D0 1E 0F 64 */	stfs f0, 0xf64(r30)
/* 804AC2D4  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 804AC2D8  D0 1E 0F 5C */	stfs f0, 0xf5c(r30)
/* 804AC2DC  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 804AC2E0  D0 1E 06 F8 */	stfs f0, 0x6f8(r30)
/* 804AC2E4  C0 1E 07 64 */	lfs f0, 0x764(r30)
/* 804AC2E8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804AC2EC  C0 1E 07 68 */	lfs f0, 0x768(r30)
/* 804AC2F0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804AC2F4  C0 1E 07 6C */	lfs f0, 0x76c(r30)
/* 804AC2F8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804AC2FC  38 61 00 0C */	addi r3, r1, 0xc
/* 804AC300  38 9E 06 AC */	addi r4, r30, 0x6ac
/* 804AC304  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 804AC308  4B DB A8 2C */	b __mi__4cXyzCFRC3Vec
/* 804AC30C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804AC310  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804AC314  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804AC318  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804AC31C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 804AC320  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 804AC324  4B DB B3 50 */	b cM_atan2s__Fff
/* 804AC328  7C 03 00 D0 */	neg r0, r3
/* 804AC32C  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 804AC330  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804AC334  EC 20 00 32 */	fmuls f1, f0, f0
/* 804AC338  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804AC33C  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AC340  EC 41 00 2A */	fadds f2, f1, f0
/* 804AC344  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AC348  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AC34C  40 81 00 0C */	ble lbl_804AC358
/* 804AC350  FC 00 10 34 */	frsqrte f0, f2
/* 804AC354  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AC358:
/* 804AC358  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804AC35C  4B DB B3 18 */	b cM_atan2s__Fff
/* 804AC360  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 804AC364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804AC368  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 804AC36C  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 804AC370  7F C4 F3 78 */	mr r4, r30
/* 804AC374  4B C4 7A D8 */	b checkFishingRodGrab__9daAlink_cCFP10fopAc_ac_c
/* 804AC378  2C 03 00 00 */	cmpwi r3, 0
/* 804AC37C  41 82 00 88 */	beq lbl_804AC404
/* 804AC380  38 60 00 01 */	li r3, 1
/* 804AC384  B0 7E 0F 7E */	sth r3, 0xf7e(r30)
/* 804AC388  38 00 00 08 */	li r0, 8
/* 804AC38C  B0 1E 05 82 */	sth r0, 0x582(r30)
/* 804AC390  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 804AC394  D0 1E 0F 5C */	stfs f0, 0xf5c(r30)
/* 804AC398  B0 7E 13 B4 */	sth r3, 0x13b4(r30)
/* 804AC39C  38 60 00 00 */	li r3, 0
/* 804AC3A0  B0 7E 05 7A */	sth r3, 0x57a(r30)
/* 804AC3A4  38 00 00 0A */	li r0, 0xa
/* 804AC3A8  B0 1E 05 7C */	sth r0, 0x57c(r30)
/* 804AC3AC  B0 7E 14 F8 */	sth r3, 0x14f8(r30)
/* 804AC3B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804AC3B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804AC3B8  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 804AC3BC  C0 23 00 E4 */	lfs f1, 0xe4(r3)
/* 804AC3C0  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 804AC3C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 804AC3C8  C0 43 00 EC */	lfs f2, 0xec(r3)
/* 804AC3CC  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 804AC3D0  EC 42 00 28 */	fsubs f2, f2, f0
/* 804AC3D4  4B DB B2 A0 */	b cM_atan2s__Fff
/* 804AC3D8  B0 7E 14 18 */	sth r3, 0x1418(r30)
/* 804AC3DC  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 804AC3E0  A8 1E 14 18 */	lha r0, 0x1418(r30)
/* 804AC3E4  B0 03 31 1A */	sth r0, 0x311a(r3)
/* 804AC3E8  80 7D 5D B4 */	lwz r3, 0x5db4(r29)
/* 804AC3EC  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002008A@ha */
/* 804AC3F0  38 84 00 8A */	addi r4, r4, 0x008A /* 0x0002008A@l */
/* 804AC3F4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804AC3F8  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 804AC3FC  7D 89 03 A6 */	mtctr r12
/* 804AC400  4E 80 04 21 */	bctrl 
lbl_804AC404:
/* 804AC404  39 61 00 40 */	addi r11, r1, 0x40
/* 804AC408  4B EB 5E 20 */	b _restgpr_29
/* 804AC40C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804AC410  7C 08 03 A6 */	mtlr r0
/* 804AC414  38 21 00 40 */	addi r1, r1, 0x40
/* 804AC418  4E 80 00 20 */	blr 

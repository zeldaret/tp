lbl_8095E224:
/* 8095E224  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8095E228  7C 08 02 A6 */	mflr r0
/* 8095E22C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8095E230  39 61 00 30 */	addi r11, r1, 0x30
/* 8095E234  4B A0 3F A8 */	b _savegpr_29
/* 8095E238  7C 7D 1B 78 */	mr r29, r3
/* 8095E23C  3C 80 80 96 */	lis r4, m__17daNpcAshB_Param_c@ha
/* 8095E240  3B E4 20 E4 */	addi r31, r4, m__17daNpcAshB_Param_c@l
/* 8095E244  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8095E248  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8095E24C  40 82 00 1C */	bne lbl_8095E268
/* 8095E250  28 1D 00 00 */	cmplwi r29, 0
/* 8095E254  41 82 00 08 */	beq lbl_8095E25C
/* 8095E258  4B FF FB F5 */	bl __ct__11daNpcAshB_cFv
lbl_8095E25C:
/* 8095E25C  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 8095E260  60 00 00 08 */	ori r0, r0, 8
/* 8095E264  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_8095E268:
/* 8095E268  38 60 01 69 */	li r3, 0x169
/* 8095E26C  4B 7F 73 C8 */	b daNpcF_chkEvtBit__FUl
/* 8095E270  2C 03 00 00 */	cmpwi r3, 0
/* 8095E274  41 82 00 14 */	beq lbl_8095E288
/* 8095E278  38 60 01 4F */	li r3, 0x14f
/* 8095E27C  4B 7F 73 B8 */	b daNpcF_chkEvtBit__FUl
/* 8095E280  2C 03 00 00 */	cmpwi r3, 0
/* 8095E284  41 82 00 0C */	beq lbl_8095E290
lbl_8095E288:
/* 8095E288  38 60 00 05 */	li r3, 5
/* 8095E28C  48 00 01 FC */	b lbl_8095E488
lbl_8095E290:
/* 8095E290  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8095E294  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 8095E298  B0 1D 0D E4 */	sth r0, 0xde4(r29)
/* 8095E29C  3C 60 80 96 */	lis r3, l_arcNames@ha
/* 8095E2A0  38 83 25 94 */	addi r4, r3, l_arcNames@l
/* 8095E2A4  38 7D 0D D0 */	addi r3, r29, 0xdd0
/* 8095E2A8  80 84 00 00 */	lwz r4, 0(r4)
/* 8095E2AC  4B 6C EC 10 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8095E2B0  7C 7E 1B 78 */	mr r30, r3
/* 8095E2B4  2C 1E 00 04 */	cmpwi r30, 4
/* 8095E2B8  41 82 00 08 */	beq lbl_8095E2C0
/* 8095E2BC  48 00 01 CC */	b lbl_8095E488
lbl_8095E2C0:
/* 8095E2C0  40 82 01 C4 */	bne lbl_8095E484
/* 8095E2C4  7F A3 EB 78 */	mr r3, r29
/* 8095E2C8  3C 80 80 96 */	lis r4, createHeapCallBack__11daNpcAshB_cFP10fopAc_ac_c@ha
/* 8095E2CC  38 84 EB 94 */	addi r4, r4, createHeapCallBack__11daNpcAshB_cFP10fopAc_ac_c@l
/* 8095E2D0  38 A0 58 B0 */	li r5, 0x58b0
/* 8095E2D4  4B 6B C1 DC */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8095E2D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8095E2DC  40 82 00 0C */	bne lbl_8095E2E8
/* 8095E2E0  38 60 00 05 */	li r3, 5
/* 8095E2E4  48 00 01 A4 */	b lbl_8095E488
lbl_8095E2E8:
/* 8095E2E8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8095E2EC  80 63 00 04 */	lwz r3, 4(r3)
/* 8095E2F0  38 03 00 24 */	addi r0, r3, 0x24
/* 8095E2F4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 8095E2F8  7F A3 EB 78 */	mr r3, r29
/* 8095E2FC  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8095E300  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8095E304  FC 60 08 90 */	fmr f3, f1
/* 8095E308  C0 9F 00 78 */	lfs f4, 0x78(r31)
/* 8095E30C  C0 BF 00 7C */	lfs f5, 0x7c(r31)
/* 8095E310  FC C0 20 90 */	fmr f6, f4
/* 8095E314  4B 6B C2 34 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 8095E318  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 8095E31C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8095E320  38 BD 05 38 */	addi r5, r29, 0x538
/* 8095E324  38 C0 00 03 */	li r6, 3
/* 8095E328  38 E0 00 01 */	li r7, 1
/* 8095E32C  4B 96 22 04 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 8095E330  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 8095E334  38 9F 00 00 */	addi r4, r31, 0
/* 8095E338  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8095E33C  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 8095E340  4B 71 7C 18 */	b SetWall__12dBgS_AcchCirFff
/* 8095E344  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 8095E348  90 01 00 08 */	stw r0, 8(r1)
/* 8095E34C  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 8095E350  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8095E354  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 8095E358  7F A6 EB 78 */	mr r6, r29
/* 8095E35C  38 E0 00 01 */	li r7, 1
/* 8095E360  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 8095E364  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 8095E368  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 8095E36C  4B 71 7E DC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8095E370  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 8095E374  60 00 00 08 */	ori r0, r0, 8
/* 8095E378  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 8095E37C  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 8095E380  60 00 04 00 */	ori r0, r0, 0x400
/* 8095E384  90 1D 05 FC */	stw r0, 0x5fc(r29)
/* 8095E388  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 8095E38C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095E390  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8095E394  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8095E398  4B 71 87 14 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8095E39C  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 8095E3A0  38 9F 00 00 */	addi r4, r31, 0
/* 8095E3A4  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 8095E3A8  FC 00 00 1E */	fctiwz f0, f0
/* 8095E3AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8095E3B0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8095E3B4  38 A0 00 00 */	li r5, 0
/* 8095E3B8  7F A6 EB 78 */	mr r6, r29
/* 8095E3BC  4B 72 54 A4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8095E3C0  38 7D 0C 88 */	addi r3, r29, 0xc88
/* 8095E3C4  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 8095E3C8  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 8095E3CC  4B 72 64 E8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8095E3D0  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 8095E3D4  90 1D 0C CC */	stw r0, 0xccc(r29)
/* 8095E3D8  38 00 00 00 */	li r0, 0
/* 8095E3DC  90 1D 0C B0 */	stw r0, 0xcb0(r29)
/* 8095E3E0  90 1D 0C A0 */	stw r0, 0xca0(r29)
/* 8095E3E4  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 8095E3E8  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 8095E3EC  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 8095E3F0  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 8095E3F4  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 8095E3F8  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 8095E3FC  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 8095E400  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 8095E404  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 8095E408  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 8095E40C  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 8095E410  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 8095E414  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 8095E418  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 8095E41C  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 8095E420  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 8095E424  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 8095E428  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 8095E42C  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 8095E430  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 8095E434  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 8095E438  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 8095E43C  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 8095E440  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 8095E444  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 8095E448  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 8095E44C  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 8095E450  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 8095E454  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 8095E458  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 8095E45C  7F A3 EB 78 */	mr r3, r29
/* 8095E460  4B 7F 49 24 */	b setEnvTevColor__8daNpcF_cFv
/* 8095E464  7F A3 EB 78 */	mr r3, r29
/* 8095E468  4B 7F 49 78 */	b setRoomNo__8daNpcF_cFv
/* 8095E46C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8095E470  4B 6B 2D 7C */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8095E474  7F A3 EB 78 */	mr r3, r29
/* 8095E478  48 00 0C 2D */	bl reset__11daNpcAshB_cFv
/* 8095E47C  7F A3 EB 78 */	mr r3, r29
/* 8095E480  48 00 04 C9 */	bl Execute__11daNpcAshB_cFv
lbl_8095E484:
/* 8095E484  7F C3 F3 78 */	mr r3, r30
lbl_8095E488:
/* 8095E488  39 61 00 30 */	addi r11, r1, 0x30
/* 8095E48C  4B A0 3D 9C */	b _restgpr_29
/* 8095E490  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8095E494  7C 08 03 A6 */	mtlr r0
/* 8095E498  38 21 00 30 */	addi r1, r1, 0x30
/* 8095E49C  4E 80 00 20 */	blr 

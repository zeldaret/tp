lbl_809AE10C:
/* 809AE10C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809AE110  7C 08 02 A6 */	mflr r0
/* 809AE114  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AE118  39 61 00 20 */	addi r11, r1, 0x20
/* 809AE11C  4B 9B 40 C1 */	bl _savegpr_29
/* 809AE120  7C 7D 1B 78 */	mr r29, r3
/* 809AE124  3C 80 80 9B */	lis r4, m__18daNpcDrSol_Param_c@ha /* 0x809AF9A4@ha */
/* 809AE128  3B E4 F9 A4 */	addi r31, r4, m__18daNpcDrSol_Param_c@l /* 0x809AF9A4@l */
/* 809AE12C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809AE130  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809AE134  40 82 00 1C */	bne lbl_809AE150
/* 809AE138  28 1D 00 00 */	cmplwi r29, 0
/* 809AE13C  41 82 00 08 */	beq lbl_809AE144
/* 809AE140  4B FF FD 2D */	bl __ct__12daNpcDrSol_cFv
lbl_809AE144:
/* 809AE144  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 809AE148  60 00 00 08 */	ori r0, r0, 8
/* 809AE14C  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_809AE150:
/* 809AE150  4B 7F E4 2D */	bl dKy_darkworld_check__Fv
/* 809AE154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809AE158  40 82 00 0C */	bne lbl_809AE164
/* 809AE15C  38 60 00 05 */	li r3, 5
/* 809AE160  48 00 01 DC */	b lbl_809AE33C
lbl_809AE164:
/* 809AE164  88 1D 04 99 */	lbz r0, 0x499(r29)
/* 809AE168  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 809AE16C  98 1D 0D 39 */	stb r0, 0xd39(r29)
/* 809AE170  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 809AE174  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 809AE178  7C 00 07 34 */	extsh r0, r0
/* 809AE17C  90 1D 0D 30 */	stw r0, 0xd30(r29)
/* 809AE180  38 7D 0D 28 */	addi r3, r29, 0xd28
/* 809AE184  88 1D 0D 39 */	lbz r0, 0xd39(r29)
/* 809AE188  54 00 10 3A */	slwi r0, r0, 2
/* 809AE18C  3C 80 80 9B */	lis r4, l_arcNames@ha /* 0x809AFAEC@ha */
/* 809AE190  38 84 FA EC */	addi r4, r4, l_arcNames@l /* 0x809AFAEC@l */
/* 809AE194  7C 84 00 2E */	lwzx r4, r4, r0
/* 809AE198  4B 67 ED 25 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809AE19C  7C 7E 1B 78 */	mr r30, r3
/* 809AE1A0  2C 1E 00 04 */	cmpwi r30, 4
/* 809AE1A4  40 82 01 94 */	bne lbl_809AE338
/* 809AE1A8  7F A3 EB 78 */	mr r3, r29
/* 809AE1AC  3C 80 80 9B */	lis r4, createHeapCallBack__12daNpcDrSol_cFP10fopAc_ac_c@ha /* 0x809AE69C@ha */
/* 809AE1B0  38 84 E6 9C */	addi r4, r4, createHeapCallBack__12daNpcDrSol_cFP10fopAc_ac_c@l /* 0x809AE69C@l */
/* 809AE1B4  38 A0 29 B0 */	li r5, 0x29b0
/* 809AE1B8  4B 66 C2 F9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809AE1BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809AE1C0  40 82 00 0C */	bne lbl_809AE1CC
/* 809AE1C4  38 60 00 05 */	li r3, 5
/* 809AE1C8  48 00 01 74 */	b lbl_809AE33C
lbl_809AE1CC:
/* 809AE1CC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809AE1D0  80 63 00 04 */	lwz r3, 4(r3)
/* 809AE1D4  38 03 00 24 */	addi r0, r3, 0x24
/* 809AE1D8  90 1D 05 04 */	stw r0, 0x504(r29)
/* 809AE1DC  7F A3 EB 78 */	mr r3, r29
/* 809AE1E0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 809AE1E4  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 809AE1E8  FC 60 08 90 */	fmr f3, f1
/* 809AE1EC  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 809AE1F0  C0 BF 00 78 */	lfs f5, 0x78(r31)
/* 809AE1F4  FC C0 20 90 */	fmr f6, f4
/* 809AE1F8  4B 66 C3 51 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809AE1FC  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 809AE200  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809AE204  38 BD 05 38 */	addi r5, r29, 0x538
/* 809AE208  38 C0 00 03 */	li r6, 3
/* 809AE20C  38 E0 00 01 */	li r7, 1
/* 809AE210  4B 91 23 21 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 809AE214  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 809AE218  38 9F 00 00 */	addi r4, r31, 0
/* 809AE21C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809AE220  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 809AE224  4B 6C 7D 35 */	bl SetWall__12dBgS_AcchCirFff
/* 809AE228  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 809AE22C  90 01 00 08 */	stw r0, 8(r1)
/* 809AE230  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 809AE234  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809AE238  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 809AE23C  7F A6 EB 78 */	mr r6, r29
/* 809AE240  38 E0 00 01 */	li r7, 1
/* 809AE244  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 809AE248  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 809AE24C  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 809AE250  4B 6C 7F F9 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809AE254  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 809AE258  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809AE25C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809AE260  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809AE264  4B 6C 88 49 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809AE268  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 809AE26C  38 80 00 FF */	li r4, 0xff
/* 809AE270  38 A0 00 00 */	li r5, 0
/* 809AE274  7F A6 EB 78 */	mr r6, r29
/* 809AE278  4B 6D 55 E9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809AE27C  38 7D 0B E0 */	addi r3, r29, 0xbe0
/* 809AE280  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 809AE284  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 809AE288  4B 6D 66 2D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809AE28C  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 809AE290  90 1D 0C 24 */	stw r0, 0xc24(r29)
/* 809AE294  38 00 00 00 */	li r0, 0
/* 809AE298  90 1D 0C 08 */	stw r0, 0xc08(r29)
/* 809AE29C  90 1D 0B F8 */	stw r0, 0xbf8(r29)
/* 809AE2A0  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 809AE2A4  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 809AE2A8  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 809AE2AC  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 809AE2B0  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 809AE2B4  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 809AE2B8  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 809AE2BC  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 809AE2C0  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 809AE2C4  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 809AE2C8  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 809AE2CC  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 809AE2D0  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 809AE2D4  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 809AE2D8  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 809AE2DC  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 809AE2E0  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 809AE2E4  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 809AE2E8  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 809AE2EC  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 809AE2F0  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 809AE2F4  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 809AE2F8  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 809AE2FC  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 809AE300  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 809AE304  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 809AE308  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 809AE30C  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 809AE310  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 809AE314  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 809AE318  7F A3 EB 78 */	mr r3, r29
/* 809AE31C  4B 7A 4A 69 */	bl setEnvTevColor__8daNpcF_cFv
/* 809AE320  7F A3 EB 78 */	mr r3, r29
/* 809AE324  4B 7A 4A BD */	bl setRoomNo__8daNpcF_cFv
/* 809AE328  7F A3 EB 78 */	mr r3, r29
/* 809AE32C  48 00 03 91 */	bl reset__12daNpcDrSol_cFv
/* 809AE330  7F A3 EB 78 */	mr r3, r29
/* 809AE334  48 00 02 1D */	bl Execute__12daNpcDrSol_cFv
lbl_809AE338:
/* 809AE338  7F C3 F3 78 */	mr r3, r30
lbl_809AE33C:
/* 809AE33C  39 61 00 20 */	addi r11, r1, 0x20
/* 809AE340  4B 9B 3E E9 */	bl _restgpr_29
/* 809AE344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809AE348  7C 08 03 A6 */	mtlr r0
/* 809AE34C  38 21 00 20 */	addi r1, r1, 0x20
/* 809AE350  4E 80 00 20 */	blr 

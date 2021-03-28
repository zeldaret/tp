lbl_809AB088:
/* 809AB088  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809AB08C  7C 08 02 A6 */	mflr r0
/* 809AB090  90 01 00 44 */	stw r0, 0x44(r1)
/* 809AB094  39 61 00 40 */	addi r11, r1, 0x40
/* 809AB098  4B 9B 71 34 */	b _savegpr_25
/* 809AB09C  7C 7D 1B 78 */	mr r29, r3
/* 809AB0A0  3C 80 80 9B */	lis r4, m__20daNpcDoorBoy_Param_c@ha
/* 809AB0A4  3B E4 D9 A8 */	addi r31, r4, m__20daNpcDoorBoy_Param_c@l
/* 809AB0A8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 809AB0AC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 809AB0B0  40 82 00 1C */	bne lbl_809AB0CC
/* 809AB0B4  28 1D 00 00 */	cmplwi r29, 0
/* 809AB0B8  41 82 00 08 */	beq lbl_809AB0C0
/* 809AB0BC  4B FF FB D1 */	bl __ct__14daNpcDoorBoy_cFv
lbl_809AB0C0:
/* 809AB0C0  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 809AB0C4  60 00 00 08 */	ori r0, r0, 8
/* 809AB0C8  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_809AB0CC:
/* 809AB0CC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 809AB0D0  54 00 C4 3E */	rlwinm r0, r0, 0x18, 0x10, 0x1f
/* 809AB0D4  7C 00 07 34 */	extsh r0, r0
/* 809AB0D8  90 1D 0D FC */	stw r0, 0xdfc(r29)
/* 809AB0DC  3B 20 00 00 */	li r25, 0
/* 809AB0E0  3B 80 00 00 */	li r28, 0
/* 809AB0E4  3B 60 00 00 */	li r27, 0
/* 809AB0E8  3C 60 80 9B */	lis r3, l_arcNames@ha
/* 809AB0EC  3B 43 DB 9C */	addi r26, r3, l_arcNames@l
lbl_809AB0F0:
/* 809AB0F0  38 7B 0D E0 */	addi r3, r27, 0xde0
/* 809AB0F4  7C 7D 1A 14 */	add r3, r29, r3
/* 809AB0F8  7C 9A E0 2E */	lwzx r4, r26, r28
/* 809AB0FC  4B 68 1D C0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 809AB100  7C 7E 1B 78 */	mr r30, r3
/* 809AB104  2C 1E 00 04 */	cmpwi r30, 4
/* 809AB108  41 82 00 08 */	beq lbl_809AB110
/* 809AB10C  48 00 01 FC */	b lbl_809AB308
lbl_809AB110:
/* 809AB110  3B 39 00 01 */	addi r25, r25, 1
/* 809AB114  2C 19 00 02 */	cmpwi r25, 2
/* 809AB118  3B 9C 00 04 */	addi r28, r28, 4
/* 809AB11C  3B 7B 00 08 */	addi r27, r27, 8
/* 809AB120  41 80 FF D0 */	blt lbl_809AB0F0
/* 809AB124  2C 1E 00 04 */	cmpwi r30, 4
/* 809AB128  40 82 01 DC */	bne lbl_809AB304
/* 809AB12C  7F A3 EB 78 */	mr r3, r29
/* 809AB130  3C 80 80 9B */	lis r4, createHeapCallBack__14daNpcDoorBoy_cFP10fopAc_ac_c@ha
/* 809AB134  38 84 B7 04 */	addi r4, r4, createHeapCallBack__14daNpcDoorBoy_cFP10fopAc_ac_c@l
/* 809AB138  38 A0 18 60 */	li r5, 0x1860
/* 809AB13C  4B 66 F3 74 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 809AB140  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809AB144  40 82 00 0C */	bne lbl_809AB150
/* 809AB148  38 60 00 05 */	li r3, 5
/* 809AB14C  48 00 01 BC */	b lbl_809AB308
lbl_809AB150:
/* 809AB150  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809AB154  80 63 00 04 */	lwz r3, 4(r3)
/* 809AB158  38 03 00 24 */	addi r0, r3, 0x24
/* 809AB15C  90 1D 05 04 */	stw r0, 0x504(r29)
/* 809AB160  7F A3 EB 78 */	mr r3, r29
/* 809AB164  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 809AB168  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 809AB16C  FC 60 08 90 */	fmr f3, f1
/* 809AB170  C0 9F 00 74 */	lfs f4, 0x74(r31)
/* 809AB174  C0 BF 00 78 */	lfs f5, 0x78(r31)
/* 809AB178  FC C0 20 90 */	fmr f6, f4
/* 809AB17C  4B 66 F3 CC */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 809AB180  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 809AB184  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809AB188  38 BD 05 38 */	addi r5, r29, 0x538
/* 809AB18C  38 C0 00 03 */	li r6, 3
/* 809AB190  38 E0 00 01 */	li r7, 1
/* 809AB194  4B 91 5B 50 */	b init__17Z2CreatureCitizenFP3VecP3VecUcUc
/* 809AB198  4B 80 13 E4 */	b dKy_darkworld_check__Fv
/* 809AB19C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 809AB1A0  30 03 FF FF */	addic r0, r3, -1
/* 809AB1A4  7C 00 19 10 */	subfe r0, r0, r3
/* 809AB1A8  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 809AB1AC  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 809AB1B0  38 80 00 05 */	li r4, 5
/* 809AB1B4  38 A0 00 00 */	li r5, 0
/* 809AB1B8  4B 91 5B 90 */	b setMdlType__17Z2CreatureCitizenFScbb
/* 809AB1BC  38 7D 07 E4 */	addi r3, r29, 0x7e4
/* 809AB1C0  3B 5F 00 00 */	addi r26, r31, 0
/* 809AB1C4  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 809AB1C8  C0 5A 00 18 */	lfs f2, 0x18(r26)
/* 809AB1CC  4B 6C AD 8C */	b SetWall__12dBgS_AcchCirFff
/* 809AB1D0  38 1D 04 E4 */	addi r0, r29, 0x4e4
/* 809AB1D4  90 01 00 08 */	stw r0, 8(r1)
/* 809AB1D8  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 809AB1DC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809AB1E0  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 809AB1E4  7F A6 EB 78 */	mr r6, r29
/* 809AB1E8  38 E0 00 01 */	li r7, 1
/* 809AB1EC  39 1D 07 E4 */	addi r8, r29, 0x7e4
/* 809AB1F0  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 809AB1F4  39 5D 04 DC */	addi r10, r29, 0x4dc
/* 809AB1F8  4B 6C B0 50 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 809AB1FC  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 809AB200  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809AB204  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809AB208  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809AB20C  4B 6C B8 A0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 809AB210  38 7D 07 A8 */	addi r3, r29, 0x7a8
/* 809AB214  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 809AB218  FC 00 00 1E */	fctiwz f0, f0
/* 809AB21C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 809AB220  80 81 00 14 */	lwz r4, 0x14(r1)
/* 809AB224  38 A0 00 00 */	li r5, 0
/* 809AB228  7F A6 EB 78 */	mr r6, r29
/* 809AB22C  4B 6D 86 34 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 809AB230  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 809AB234  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 809AB238  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 809AB23C  4B 6D 96 78 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 809AB240  38 1D 07 A8 */	addi r0, r29, 0x7a8
/* 809AB244  90 1D 0C DC */	stw r0, 0xcdc(r29)
/* 809AB248  38 00 00 00 */	li r0, 0
/* 809AB24C  90 1D 0C C0 */	stw r0, 0xcc0(r29)
/* 809AB250  90 1D 0C B0 */	stw r0, 0xcb0(r29)
/* 809AB254  38 7D 0D BC */	addi r3, r29, 0xdbc
/* 809AB258  C0 3A 00 14 */	lfs f1, 0x14(r26)
/* 809AB25C  4B 8C 3F 9C */	b SetH__8cM3dGCylFf
/* 809AB260  38 7D 0D BC */	addi r3, r29, 0xdbc
/* 809AB264  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 809AB268  4B 8C 3F 98 */	b SetR__8cM3dGCylFf
/* 809AB26C  80 1D 06 AC */	lwz r0, 0x6ac(r29)
/* 809AB270  90 1D 0A 44 */	stw r0, 0xa44(r29)
/* 809AB274  80 1D 06 B0 */	lwz r0, 0x6b0(r29)
/* 809AB278  90 1D 0A 48 */	stw r0, 0xa48(r29)
/* 809AB27C  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 809AB280  90 1D 0A 4C */	stw r0, 0xa4c(r29)
/* 809AB284  88 1D 06 B8 */	lbz r0, 0x6b8(r29)
/* 809AB288  98 1D 0A 50 */	stb r0, 0xa50(r29)
/* 809AB28C  A0 1D 06 C0 */	lhz r0, 0x6c0(r29)
/* 809AB290  B0 1D 0A 58 */	sth r0, 0xa58(r29)
/* 809AB294  A0 1D 06 C2 */	lhz r0, 0x6c2(r29)
/* 809AB298  B0 1D 0A 5A */	sth r0, 0xa5a(r29)
/* 809AB29C  80 1D 06 C4 */	lwz r0, 0x6c4(r29)
/* 809AB2A0  90 1D 0A 5C */	stw r0, 0xa5c(r29)
/* 809AB2A4  80 1D 06 C8 */	lwz r0, 0x6c8(r29)
/* 809AB2A8  90 1D 0A 60 */	stw r0, 0xa60(r29)
/* 809AB2AC  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 809AB2B0  D0 1D 0A 68 */	stfs f0, 0xa68(r29)
/* 809AB2B4  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 809AB2B8  D0 1D 0A 6C */	stfs f0, 0xa6c(r29)
/* 809AB2BC  C0 1D 06 D8 */	lfs f0, 0x6d8(r29)
/* 809AB2C0  D0 1D 0A 70 */	stfs f0, 0xa70(r29)
/* 809AB2C4  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 809AB2C8  90 1D 0A 74 */	stw r0, 0xa74(r29)
/* 809AB2CC  C0 1D 06 E0 */	lfs f0, 0x6e0(r29)
/* 809AB2D0  D0 1D 0A 78 */	stfs f0, 0xa78(r29)
/* 809AB2D4  80 1D 06 E4 */	lwz r0, 0x6e4(r29)
/* 809AB2D8  90 1D 0A 7C */	stw r0, 0xa7c(r29)
/* 809AB2DC  C0 1D 06 68 */	lfs f0, 0x668(r29)
/* 809AB2E0  D0 1D 09 80 */	stfs f0, 0x980(r29)
/* 809AB2E4  7F A3 EB 78 */	mr r3, r29
/* 809AB2E8  4B 7A 7A 9C */	b setEnvTevColor__8daNpcF_cFv
/* 809AB2EC  7F A3 EB 78 */	mr r3, r29
/* 809AB2F0  4B 7A 7A F0 */	b setRoomNo__8daNpcF_cFv
/* 809AB2F4  7F A3 EB 78 */	mr r3, r29
/* 809AB2F8  48 00 04 C1 */	bl reset__14daNpcDoorBoy_cFv
/* 809AB2FC  7F A3 EB 78 */	mr r3, r29
/* 809AB300  48 00 01 D9 */	bl Execute__14daNpcDoorBoy_cFv
lbl_809AB304:
/* 809AB304  7F C3 F3 78 */	mr r3, r30
lbl_809AB308:
/* 809AB308  39 61 00 40 */	addi r11, r1, 0x40
/* 809AB30C  4B 9B 6F 0C */	b _restgpr_25
/* 809AB310  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809AB314  7C 08 03 A6 */	mtlr r0
/* 809AB318  38 21 00 40 */	addi r1, r1, 0x40
/* 809AB31C  4E 80 00 20 */	blr 

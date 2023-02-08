lbl_80A0E660:
/* 80A0E660  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A0E664  7C 08 02 A6 */	mflr r0
/* 80A0E668  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A0E66C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A0E670  4B 95 3B 59 */	bl _savegpr_24
/* 80A0E674  7C 7C 1B 78 */	mr r28, r3
/* 80A0E678  3C 80 80 A1 */	lis r4, l_insectParams@ha /* 0x80A13DAC@ha */
/* 80A0E67C  3B E4 3D AC */	addi r31, r4, l_insectParams@l /* 0x80A13DAC@l */
/* 80A0E680  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80A0E684  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80A0E688  40 82 00 1C */	bne lbl_80A0E6A4
/* 80A0E68C  28 1C 00 00 */	cmplwi r28, 0
/* 80A0E690  41 82 00 08 */	beq lbl_80A0E698
/* 80A0E694  4B FF FB B9 */	bl __ct__10daNpcIns_cFv
lbl_80A0E698:
/* 80A0E698  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80A0E69C  60 00 00 08 */	ori r0, r0, 8
/* 80A0E6A0  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80A0E6A4:
/* 80A0E6A4  38 00 00 00 */	li r0, 0
/* 80A0E6A8  98 1C 0E 21 */	stb r0, 0xe21(r28)
/* 80A0E6AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0E6B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0E6B4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80A0E6B8  3B 1E 3E C8 */	addi r24, r30, 0x3ec8
/* 80A0E6BC  7F 03 C3 78 */	mr r3, r24
/* 80A0E6C0  3C 80 80 A1 */	lis r4, d_a_npc_ins__stringBase0@ha /* 0x80A14168@ha */
/* 80A0E6C4  38 84 41 68 */	addi r4, r4, d_a_npc_ins__stringBase0@l /* 0x80A14168@l */
/* 80A0E6C8  38 84 00 12 */	addi r4, r4, 0x12
/* 80A0E6CC  4B 95 A2 C9 */	bl strcmp
/* 80A0E6D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A0E6D4  40 82 00 10 */	bne lbl_80A0E6E4
/* 80A0E6D8  38 00 00 00 */	li r0, 0
/* 80A0E6DC  98 1C 0E 21 */	stb r0, 0xe21(r28)
/* 80A0E6E0  48 00 00 EC */	b lbl_80A0E7CC
lbl_80A0E6E4:
/* 80A0E6E4  7F 03 C3 78 */	mr r3, r24
/* 80A0E6E8  3C 80 80 A1 */	lis r4, d_a_npc_ins__stringBase0@ha /* 0x80A14168@ha */
/* 80A0E6EC  38 84 41 68 */	addi r4, r4, d_a_npc_ins__stringBase0@l /* 0x80A14168@l */
/* 80A0E6F0  38 84 00 1A */	addi r4, r4, 0x1a
/* 80A0E6F4  4B 95 A2 A1 */	bl strcmp
/* 80A0E6F8  2C 03 00 00 */	cmpwi r3, 0
/* 80A0E6FC  40 82 00 D0 */	bne lbl_80A0E7CC
/* 80A0E700  7F 83 E3 78 */	mr r3, r28
/* 80A0E704  48 00 34 E5 */	bl isInsectComplete__10daNpcIns_cFv
/* 80A0E708  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A0E70C  41 82 00 0C */	beq lbl_80A0E718
/* 80A0E710  38 60 00 05 */	li r3, 5
/* 80A0E714  48 00 03 04 */	b lbl_80A0EA18
lbl_80A0E718:
/* 80A0E718  38 60 00 00 */	li r3, 0
/* 80A0E71C  38 80 00 02 */	li r4, 2
/* 80A0E720  48 00 4D 55 */	bl func_80A13474
/* 80A0E724  2C 03 00 00 */	cmpwi r3, 0
/* 80A0E728  41 82 00 10 */	beq lbl_80A0E738
/* 80A0E72C  38 00 00 01 */	li r0, 1
/* 80A0E730  98 1C 0E 21 */	stb r0, 0xe21(r28)
/* 80A0E734  48 00 00 0C */	b lbl_80A0E740
lbl_80A0E738:
/* 80A0E738  38 00 00 02 */	li r0, 2
/* 80A0E73C  98 1C 0E 21 */	stb r0, 0xe21(r28)
lbl_80A0E740:
/* 80A0E740  80 DC 00 B0 */	lwz r6, 0xb0(r28)
/* 80A0E744  54 C4 06 3E */	clrlwi r4, r6, 0x18
/* 80A0E748  38 A0 00 0A */	li r5, 0xa
/* 80A0E74C  7C 04 2B D6 */	divw r0, r4, r5
/* 80A0E750  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 80A0E754  7C 00 29 D6 */	mullw r0, r0, r5
/* 80A0E758  7C 00 20 50 */	subf r0, r0, r4
/* 80A0E75C  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80A0E760  7C 03 02 14 */	add r0, r3, r0
/* 80A0E764  54 19 04 3E */	clrlwi r25, r0, 0x10
/* 80A0E768  54 C4 C6 3E */	rlwinm r4, r6, 0x18, 0x18, 0x1f
/* 80A0E76C  7C 04 2B D6 */	divw r0, r4, r5
/* 80A0E770  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 80A0E774  7C 00 29 D6 */	mullw r0, r0, r5
/* 80A0E778  7C 00 20 50 */	subf r0, r0, r4
/* 80A0E77C  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80A0E780  7C 03 02 14 */	add r0, r3, r0
/* 80A0E784  B0 1C 0E 1C */	sth r0, 0xe1c(r28)
/* 80A0E788  4B 79 12 89 */	bl dKy_getdaytime_hour__Fv
/* 80A0E78C  7C 78 1B 78 */	mr r24, r3
/* 80A0E790  4B 79 12 AD */	bl dKy_getdaytime_minute__Fv
/* 80A0E794  1C 18 00 3C */	mulli r0, r24, 0x3c
/* 80A0E798  7C 03 02 14 */	add r0, r3, r0
/* 80A0E79C  7C 00 C8 00 */	cmpw r0, r25
/* 80A0E7A0  41 80 00 24 */	blt lbl_80A0E7C4
/* 80A0E7A4  4B 79 12 6D */	bl dKy_getdaytime_hour__Fv
/* 80A0E7A8  7C 78 1B 78 */	mr r24, r3
/* 80A0E7AC  4B 79 12 91 */	bl dKy_getdaytime_minute__Fv
/* 80A0E7B0  1C 18 00 3C */	mulli r0, r24, 0x3c
/* 80A0E7B4  7C 63 02 14 */	add r3, r3, r0
/* 80A0E7B8  A0 1C 0E 1C */	lhz r0, 0xe1c(r28)
/* 80A0E7BC  7C 03 00 00 */	cmpw r3, r0
/* 80A0E7C0  40 81 00 0C */	ble lbl_80A0E7CC
lbl_80A0E7C4:
/* 80A0E7C4  38 60 00 05 */	li r3, 5
/* 80A0E7C8  48 00 02 50 */	b lbl_80A0EA18
lbl_80A0E7CC:
/* 80A0E7CC  3B A0 00 05 */	li r29, 5
/* 80A0E7D0  3B 60 00 00 */	li r27, 0
/* 80A0E7D4  3B 40 00 00 */	li r26, 0
/* 80A0E7D8  3C 60 80 A1 */	lis r3, l_arcNames@ha /* 0x80A14384@ha */
/* 80A0E7DC  3B 03 43 84 */	addi r24, r3, l_arcNames@l /* 0x80A14384@l */
/* 80A0E7E0  3C 60 80 A1 */	lis r3, l_loadRes_list@ha /* 0x80A14378@ha */
/* 80A0E7E4  3B 23 43 78 */	addi r25, r3, l_loadRes_list@l /* 0x80A14378@l */
/* 80A0E7E8  48 00 00 30 */	b lbl_80A0E818
lbl_80A0E7EC:
/* 80A0E7EC  38 7A 0D E0 */	addi r3, r26, 0xde0
/* 80A0E7F0  7C 7C 1A 14 */	add r3, r28, r3
/* 80A0E7F4  54 00 10 3A */	slwi r0, r0, 2
/* 80A0E7F8  7C 98 00 2E */	lwzx r4, r24, r0
/* 80A0E7FC  4B 61 E6 C1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80A0E800  7C 7D 1B 78 */	mr r29, r3
/* 80A0E804  2C 1D 00 04 */	cmpwi r29, 4
/* 80A0E808  41 82 00 08 */	beq lbl_80A0E810
/* 80A0E80C  48 00 02 0C */	b lbl_80A0EA18
lbl_80A0E810:
/* 80A0E810  3B 7B 00 04 */	addi r27, r27, 4
/* 80A0E814  3B 5A 00 08 */	addi r26, r26, 8
lbl_80A0E818:
/* 80A0E818  88 1C 0E 21 */	lbz r0, 0xe21(r28)
/* 80A0E81C  54 00 10 3A */	slwi r0, r0, 2
/* 80A0E820  7C 79 00 2E */	lwzx r3, r25, r0
/* 80A0E824  7C 03 D8 2E */	lwzx r0, r3, r27
/* 80A0E828  2C 00 00 00 */	cmpwi r0, 0
/* 80A0E82C  40 80 FF C0 */	bge lbl_80A0E7EC
/* 80A0E830  2C 1D 00 04 */	cmpwi r29, 4
/* 80A0E834  40 82 01 E0 */	bne lbl_80A0EA14
/* 80A0E838  7F 83 E3 78 */	mr r3, r28
/* 80A0E83C  3C 80 80 A1 */	lis r4, createHeapCallBack__10daNpcIns_cFP10fopAc_ac_c@ha /* 0x80A0F28C@ha */
/* 80A0E840  38 84 F2 8C */	addi r4, r4, createHeapCallBack__10daNpcIns_cFP10fopAc_ac_c@l /* 0x80A0F28C@l */
/* 80A0E844  38 A0 62 00 */	li r5, 0x6200
/* 80A0E848  4B 60 BC 69 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80A0E84C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A0E850  40 82 00 0C */	bne lbl_80A0E85C
/* 80A0E854  38 60 00 05 */	li r3, 5
/* 80A0E858  48 00 01 C0 */	b lbl_80A0EA18
lbl_80A0E85C:
/* 80A0E85C  A8 1C 04 E4 */	lha r0, 0x4e4(r28)
/* 80A0E860  B0 1C 0E 18 */	sth r0, 0xe18(r28)
/* 80A0E864  A8 1C 0E 18 */	lha r0, 0xe18(r28)
/* 80A0E868  B0 1C 0E 16 */	sth r0, 0xe16(r28)
/* 80A0E86C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A0E870  80 63 00 04 */	lwz r3, 4(r3)
/* 80A0E874  38 03 00 24 */	addi r0, r3, 0x24
/* 80A0E878  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80A0E87C  7F 83 E3 78 */	mr r3, r28
/* 80A0E880  C0 3F 01 30 */	lfs f1, 0x130(r31)
/* 80A0E884  C0 5F 01 34 */	lfs f2, 0x134(r31)
/* 80A0E888  FC 60 08 90 */	fmr f3, f1
/* 80A0E88C  C0 9F 01 38 */	lfs f4, 0x138(r31)
/* 80A0E890  C0 BF 01 3C */	lfs f5, 0x13c(r31)
/* 80A0E894  FC C0 20 90 */	fmr f6, f4
/* 80A0E898  4B 60 BC B1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80A0E89C  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80A0E8A0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A0E8A4  38 BC 05 38 */	addi r5, r28, 0x538
/* 80A0E8A8  38 C0 00 03 */	li r6, 3
/* 80A0E8AC  38 E0 00 01 */	li r7, 1
/* 80A0E8B0  4B 8B 1C 81 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80A0E8B4  38 7C 07 E4 */	addi r3, r28, 0x7e4
/* 80A0E8B8  3B 1F 00 C0 */	addi r24, r31, 0xc0
/* 80A0E8BC  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80A0E8C0  C0 58 00 18 */	lfs f2, 0x18(r24)
/* 80A0E8C4  4B 66 76 95 */	bl SetWall__12dBgS_AcchCirFff
/* 80A0E8C8  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 80A0E8CC  90 01 00 08 */	stw r0, 8(r1)
/* 80A0E8D0  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80A0E8D4  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80A0E8D8  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 80A0E8DC  7F 86 E3 78 */	mr r6, r28
/* 80A0E8E0  38 E0 00 01 */	li r7, 1
/* 80A0E8E4  39 1C 07 E4 */	addi r8, r28, 0x7e4
/* 80A0E8E8  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 80A0E8EC  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 80A0E8F0  4B 66 79 59 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80A0E8F4  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80A0E8F8  60 00 00 08 */	ori r0, r0, 8
/* 80A0E8FC  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80A0E900  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80A0E904  60 00 04 00 */	ori r0, r0, 0x400
/* 80A0E908  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80A0E90C  38 7C 05 D0 */	addi r3, r28, 0x5d0
/* 80A0E910  7F C4 F3 78 */	mr r4, r30
/* 80A0E914  4B 66 81 99 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80A0E918  38 7C 07 A8 */	addi r3, r28, 0x7a8
/* 80A0E91C  C0 18 00 10 */	lfs f0, 0x10(r24)
/* 80A0E920  FC 00 00 1E */	fctiwz f0, f0
/* 80A0E924  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A0E928  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A0E92C  38 A0 00 00 */	li r5, 0
/* 80A0E930  7F 86 E3 78 */	mr r6, r28
/* 80A0E934  4B 67 4F 2D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80A0E938  38 7C 0C 8C */	addi r3, r28, 0xc8c
/* 80A0E93C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha /* 0x803B37E0@ha */
/* 80A0E940  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l /* 0x803B37E0@l */
/* 80A0E944  4B 67 5F 71 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80A0E948  38 1C 07 A8 */	addi r0, r28, 0x7a8
/* 80A0E94C  90 1C 0C D0 */	stw r0, 0xcd0(r28)
/* 80A0E950  38 00 00 00 */	li r0, 0
/* 80A0E954  90 1C 0C B4 */	stw r0, 0xcb4(r28)
/* 80A0E958  90 1C 0C A4 */	stw r0, 0xca4(r28)
/* 80A0E95C  38 7C 0D B0 */	addi r3, r28, 0xdb0
/* 80A0E960  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 80A0E964  4B 86 08 95 */	bl SetH__8cM3dGCylFf
/* 80A0E968  38 7C 0D B0 */	addi r3, r28, 0xdb0
/* 80A0E96C  C0 38 00 1C */	lfs f1, 0x1c(r24)
/* 80A0E970  4B 86 08 91 */	bl SetR__8cM3dGCylFf
/* 80A0E974  80 1C 06 AC */	lwz r0, 0x6ac(r28)
/* 80A0E978  90 1C 0A 44 */	stw r0, 0xa44(r28)
/* 80A0E97C  80 1C 06 B0 */	lwz r0, 0x6b0(r28)
/* 80A0E980  90 1C 0A 48 */	stw r0, 0xa48(r28)
/* 80A0E984  80 1C 06 B4 */	lwz r0, 0x6b4(r28)
/* 80A0E988  90 1C 0A 4C */	stw r0, 0xa4c(r28)
/* 80A0E98C  88 1C 06 B8 */	lbz r0, 0x6b8(r28)
/* 80A0E990  98 1C 0A 50 */	stb r0, 0xa50(r28)
/* 80A0E994  A0 1C 06 C0 */	lhz r0, 0x6c0(r28)
/* 80A0E998  B0 1C 0A 58 */	sth r0, 0xa58(r28)
/* 80A0E99C  A0 1C 06 C2 */	lhz r0, 0x6c2(r28)
/* 80A0E9A0  B0 1C 0A 5A */	sth r0, 0xa5a(r28)
/* 80A0E9A4  80 1C 06 C4 */	lwz r0, 0x6c4(r28)
/* 80A0E9A8  90 1C 0A 5C */	stw r0, 0xa5c(r28)
/* 80A0E9AC  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 80A0E9B0  90 1C 0A 60 */	stw r0, 0xa60(r28)
/* 80A0E9B4  C0 1C 06 D0 */	lfs f0, 0x6d0(r28)
/* 80A0E9B8  D0 1C 0A 68 */	stfs f0, 0xa68(r28)
/* 80A0E9BC  C0 1C 06 D4 */	lfs f0, 0x6d4(r28)
/* 80A0E9C0  D0 1C 0A 6C */	stfs f0, 0xa6c(r28)
/* 80A0E9C4  C0 1C 06 D8 */	lfs f0, 0x6d8(r28)
/* 80A0E9C8  D0 1C 0A 70 */	stfs f0, 0xa70(r28)
/* 80A0E9CC  80 1C 06 DC */	lwz r0, 0x6dc(r28)
/* 80A0E9D0  90 1C 0A 74 */	stw r0, 0xa74(r28)
/* 80A0E9D4  C0 1C 06 E0 */	lfs f0, 0x6e0(r28)
/* 80A0E9D8  D0 1C 0A 78 */	stfs f0, 0xa78(r28)
/* 80A0E9DC  80 1C 06 E4 */	lwz r0, 0x6e4(r28)
/* 80A0E9E0  90 1C 0A 7C */	stw r0, 0xa7c(r28)
/* 80A0E9E4  C0 1C 06 68 */	lfs f0, 0x668(r28)
/* 80A0E9E8  D0 1C 09 80 */	stfs f0, 0x980(r28)
/* 80A0E9EC  7F 83 E3 78 */	mr r3, r28
/* 80A0E9F0  4B 74 43 95 */	bl setEnvTevColor__8daNpcF_cFv
/* 80A0E9F4  7F 83 E3 78 */	mr r3, r28
/* 80A0E9F8  4B 74 43 E9 */	bl setRoomNo__8daNpcF_cFv
/* 80A0E9FC  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80A0EA00  4B 60 27 ED */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80A0EA04  7F 83 E3 78 */	mr r3, r28
/* 80A0EA08  48 00 0D 85 */	bl reset__10daNpcIns_cFv
/* 80A0EA0C  7F 83 E3 78 */	mr r3, r28
/* 80A0EA10  48 00 05 61 */	bl Execute__10daNpcIns_cFv
lbl_80A0EA14:
/* 80A0EA14  7F A3 EB 78 */	mr r3, r29
lbl_80A0EA18:
/* 80A0EA18  39 61 00 40 */	addi r11, r1, 0x40
/* 80A0EA1C  4B 95 37 F9 */	bl _restgpr_24
/* 80A0EA20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A0EA24  7C 08 03 A6 */	mtlr r0
/* 80A0EA28  38 21 00 40 */	addi r1, r1, 0x40
/* 80A0EA2C  4E 80 00 20 */	blr 

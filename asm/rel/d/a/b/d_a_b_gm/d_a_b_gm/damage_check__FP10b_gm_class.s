lbl_805EE0B4:
/* 805EE0B4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805EE0B8  7C 08 02 A6 */	mflr r0
/* 805EE0BC  90 01 00 54 */	stw r0, 0x54(r1)
/* 805EE0C0  39 61 00 50 */	addi r11, r1, 0x50
/* 805EE0C4  4B D7 41 0C */	b _savegpr_26
/* 805EE0C8  7C 7F 1B 78 */	mr r31, r3
/* 805EE0CC  38 7F 09 7C */	addi r3, r31, 0x97c
/* 805EE0D0  4B A9 57 60 */	b Move__10dCcD_GSttsFv
/* 805EE0D4  A8 1F 07 2A */	lha r0, 0x72a(r31)
/* 805EE0D8  2C 00 00 00 */	cmpwi r0, 0
/* 805EE0DC  40 82 03 44 */	bne lbl_805EE420
/* 805EE0E0  A8 1F 07 1E */	lha r0, 0x71e(r31)
/* 805EE0E4  2C 00 00 0B */	cmpwi r0, 0xb
/* 805EE0E8  40 82 00 18 */	bne lbl_805EE100
/* 805EE0EC  A8 1F 07 20 */	lha r0, 0x720(r31)
/* 805EE0F0  2C 00 00 02 */	cmpwi r0, 2
/* 805EE0F4  41 82 01 14 */	beq lbl_805EE208
/* 805EE0F8  2C 00 00 03 */	cmpwi r0, 3
/* 805EE0FC  41 82 01 0C */	beq lbl_805EE208
lbl_805EE100:
/* 805EE100  38 7F 09 9C */	addi r3, r31, 0x99c
/* 805EE104  4B A9 63 5C */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EE108  28 03 00 00 */	cmplwi r3, 0
/* 805EE10C  41 82 00 FC */	beq lbl_805EE208
/* 805EE110  38 7F 09 9C */	addi r3, r31, 0x99c
/* 805EE114  4B A9 63 E4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EE118  90 7F 1A B0 */	stw r3, 0x1ab0(r31)
/* 805EE11C  7F E3 FB 78 */	mr r3, r31
/* 805EE120  38 9F 1A B0 */	addi r4, r31, 0x1ab0
/* 805EE124  4B A9 9A E0 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 805EE128  38 60 00 0A */	li r3, 0xa
/* 805EE12C  B0 7F 07 2A */	sth r3, 0x72a(r31)
/* 805EE130  38 00 00 05 */	li r0, 5
/* 805EE134  B0 1F 07 2A */	sth r0, 0x72a(r31)
/* 805EE138  B0 7F 07 1E */	sth r3, 0x71e(r31)
/* 805EE13C  38 00 00 00 */	li r0, 0
/* 805EE140  B0 1F 07 20 */	sth r0, 0x720(r31)
/* 805EE144  3C 60 80 5F */	lis r3, lit_3794@ha
/* 805EE148  C0 03 41 A4 */	lfs f0, lit_3794@l(r3)
/* 805EE14C  D0 1F 06 C0 */	stfs f0, 0x6c0(r31)
/* 805EE150  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 805EE154  80 63 00 04 */	lwz r3, 4(r3)
/* 805EE158  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805EE15C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805EE160  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 805EE164  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805EE168  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805EE16C  4B D5 83 44 */	b PSMTXCopy
/* 805EE170  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805EE174  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805EE178  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805EE17C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805EE180  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805EE184  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805EE188  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805EE18C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805EE190  3B E0 00 00 */	li r31, 0
/* 805EE194  3B C0 00 00 */	li r30, 0
/* 805EE198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EE19C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 805EE1A0  3C 60 80 5F */	lis r3, name_4019@ha
/* 805EE1A4  3B 83 43 B0 */	addi r28, r3, name_4019@l
/* 805EE1A8  3C 60 80 5F */	lis r3, lit_3774@ha
/* 805EE1AC  3B 63 41 88 */	addi r27, r3, lit_3774@l
lbl_805EE1B0:
/* 805EE1B0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805EE1B4  38 80 00 00 */	li r4, 0
/* 805EE1B8  90 81 00 08 */	stw r4, 8(r1)
/* 805EE1BC  38 00 FF FF */	li r0, -1
/* 805EE1C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EE1C4  90 81 00 10 */	stw r4, 0x10(r1)
/* 805EE1C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 805EE1CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 805EE1D0  38 80 00 00 */	li r4, 0
/* 805EE1D4  7C BC F2 2E */	lhzx r5, r28, r30
/* 805EE1D8  38 C1 00 2C */	addi r6, r1, 0x2c
/* 805EE1DC  38 E0 00 00 */	li r7, 0
/* 805EE1E0  39 00 00 00 */	li r8, 0
/* 805EE1E4  39 20 00 00 */	li r9, 0
/* 805EE1E8  39 40 00 FF */	li r10, 0xff
/* 805EE1EC  C0 3B 00 00 */	lfs f1, 0(r27)
/* 805EE1F0  4B A5 E8 A0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805EE1F4  3B FF 00 01 */	addi r31, r31, 1
/* 805EE1F8  2C 1F 00 03 */	cmpwi r31, 3
/* 805EE1FC  3B DE 00 02 */	addi r30, r30, 2
/* 805EE200  41 80 FF B0 */	blt lbl_805EE1B0
/* 805EE204  48 00 02 1C */	b lbl_805EE420
lbl_805EE208:
/* 805EE208  3B 80 00 00 */	li r28, 0
/* 805EE20C  3B C0 00 00 */	li r30, 0
lbl_805EE210:
/* 805EE210  2C 1C 00 02 */	cmpwi r28, 2
/* 805EE214  40 80 01 B0 */	bge lbl_805EE3C4
/* 805EE218  3B 7E 0A D4 */	addi r27, r30, 0xad4
/* 805EE21C  7F 7F DA 14 */	add r27, r31, r27
/* 805EE220  7F 63 DB 78 */	mr r3, r27
/* 805EE224  4B A9 62 3C */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EE228  28 03 00 00 */	cmplwi r3, 0
/* 805EE22C  41 82 01 98 */	beq lbl_805EE3C4
/* 805EE230  38 00 00 06 */	li r0, 6
/* 805EE234  B0 1F 07 2A */	sth r0, 0x72a(r31)
/* 805EE238  A8 1F 07 1E */	lha r0, 0x71e(r31)
/* 805EE23C  2C 00 00 0B */	cmpwi r0, 0xb
/* 805EE240  40 82 01 E0 */	bne lbl_805EE420
/* 805EE244  A8 1F 07 20 */	lha r0, 0x720(r31)
/* 805EE248  2C 00 00 02 */	cmpwi r0, 2
/* 805EE24C  41 82 00 0C */	beq lbl_805EE258
/* 805EE250  2C 00 00 03 */	cmpwi r0, 3
/* 805EE254  40 82 01 CC */	bne lbl_805EE420
lbl_805EE258:
/* 805EE258  7F 63 DB 78 */	mr r3, r27
/* 805EE25C  4B A9 62 9C */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EE260  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805EE264  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 805EE268  41 82 01 4C */	beq lbl_805EE3B4
/* 805EE26C  88 7F 1A D4 */	lbz r3, 0x1ad4(r31)
/* 805EE270  38 03 00 01 */	addi r0, r3, 1
/* 805EE274  98 1F 1A D4 */	stb r0, 0x1ad4(r31)
/* 805EE278  38 60 00 04 */	li r3, 4
/* 805EE27C  38 80 FF FF */	li r4, -1
/* 805EE280  4B A3 F8 1C */	b dComIfGs_onOneZoneSwitch__Fii
/* 805EE284  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805EE288  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805EE28C  80 63 00 00 */	lwz r3, 0(r3)
/* 805EE290  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805EE294  38 80 00 02 */	li r4, 2
/* 805EE298  4B CC 1C F4 */	b changeBgmStatus__8Z2SeqMgrFl
/* 805EE29C  88 1F 1A D4 */	lbz r0, 0x1ad4(r31)
/* 805EE2A0  7C 00 07 74 */	extsb r0, r0
/* 805EE2A4  2C 00 00 03 */	cmpwi r0, 3
/* 805EE2A8  41 80 00 44 */	blt lbl_805EE2EC
/* 805EE2AC  38 00 00 14 */	li r0, 0x14
/* 805EE2B0  B0 1F 07 20 */	sth r0, 0x720(r31)
/* 805EE2B4  38 00 00 1E */	li r0, 0x1e
/* 805EE2B8  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
/* 805EE2BC  3C 60 80 5F */	lis r3, s_ko_del__FPvPv@ha
/* 805EE2C0  38 63 E0 5C */	addi r3, r3, s_ko_del__FPvPv@l
/* 805EE2C4  7F E4 FB 78 */	mr r4, r31
/* 805EE2C8  4B A3 30 70 */	b fpcEx_Search__FPFPvPv_PvPv
/* 805EE2CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805EE2D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805EE2D4  80 63 00 00 */	lwz r3, 0(r3)
/* 805EE2D8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805EE2DC  38 80 00 1E */	li r4, 0x1e
/* 805EE2E0  38 A0 00 00 */	li r5, 0
/* 805EE2E4  4B CC 11 24 */	b bgmStop__8Z2SeqMgrFUll
/* 805EE2E8  48 00 00 1C */	b lbl_805EE304
lbl_805EE2EC:
/* 805EE2EC  38 00 00 0A */	li r0, 0xa
/* 805EE2F0  B0 1F 07 20 */	sth r0, 0x720(r31)
/* 805EE2F4  38 00 00 02 */	li r0, 2
/* 805EE2F8  98 1F 1A D5 */	stb r0, 0x1ad5(r31)
/* 805EE2FC  38 00 00 14 */	li r0, 0x14
/* 805EE300  B0 1F 1C 8C */	sth r0, 0x1c8c(r31)
lbl_805EE304:
/* 805EE304  3C 60 80 5F */	lis r3, lit_3794@ha
/* 805EE308  C0 23 41 A4 */	lfs f1, lit_3794@l(r3)
/* 805EE30C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805EE310  3C 60 80 5F */	lis r3, lit_3774@ha
/* 805EE314  C0 03 41 88 */	lfs f0, lit_3774@l(r3)
/* 805EE318  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805EE31C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 805EE320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EE324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805EE328  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805EE32C  38 80 00 08 */	li r4, 8
/* 805EE330  38 A0 00 4F */	li r5, 0x4f
/* 805EE334  38 C1 00 20 */	addi r6, r1, 0x20
/* 805EE338  4B A8 16 EC */	b StartShock__12dVibration_cFii4cXyz
/* 805EE33C  3B 40 00 00 */	li r26, 0
/* 805EE340  3B C0 00 00 */	li r30, 0
/* 805EE344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805EE348  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 805EE34C  3C 60 80 5F */	lis r3, name_4042@ha
/* 805EE350  3B 83 43 B8 */	addi r28, r3, name_4042@l
/* 805EE354  3C 60 80 5F */	lis r3, lit_3774@ha
/* 805EE358  3B A3 41 88 */	addi r29, r3, lit_3774@l
lbl_805EE35C:
/* 805EE35C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 805EE360  38 80 00 00 */	li r4, 0
/* 805EE364  90 81 00 08 */	stw r4, 8(r1)
/* 805EE368  38 00 FF FF */	li r0, -1
/* 805EE36C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EE370  90 81 00 10 */	stw r4, 0x10(r1)
/* 805EE374  90 81 00 14 */	stw r4, 0x14(r1)
/* 805EE378  90 81 00 18 */	stw r4, 0x18(r1)
/* 805EE37C  38 80 00 00 */	li r4, 0
/* 805EE380  7C BC F2 2E */	lhzx r5, r28, r30
/* 805EE384  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805EE388  38 E0 00 00 */	li r7, 0
/* 805EE38C  39 00 00 00 */	li r8, 0
/* 805EE390  39 20 00 00 */	li r9, 0
/* 805EE394  39 40 00 FF */	li r10, 0xff
/* 805EE398  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805EE39C  4B A5 E6 F4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805EE3A0  3B 5A 00 01 */	addi r26, r26, 1
/* 805EE3A4  2C 1A 00 04 */	cmpwi r26, 4
/* 805EE3A8  3B DE 00 02 */	addi r30, r30, 2
/* 805EE3AC  41 80 FF B0 */	blt lbl_805EE35C
/* 805EE3B0  48 00 00 70 */	b lbl_805EE420
lbl_805EE3B4:
/* 805EE3B4  38 60 00 03 */	li r3, 3
/* 805EE3B8  38 80 FF FF */	li r4, -1
/* 805EE3BC  4B A3 F6 E0 */	b dComIfGs_onOneZoneSwitch__Fii
/* 805EE3C0  48 00 00 60 */	b lbl_805EE420
lbl_805EE3C4:
/* 805EE3C4  3B 7E 0F B4 */	addi r27, r30, 0xfb4
/* 805EE3C8  7F 7F DA 14 */	add r27, r31, r27
/* 805EE3CC  7F 63 DB 78 */	mr r3, r27
/* 805EE3D0  4B A9 60 90 */	b ChkTgHit__12dCcD_GObjInfFv
/* 805EE3D4  28 03 00 00 */	cmplwi r3, 0
/* 805EE3D8  41 82 00 38 */	beq lbl_805EE410
/* 805EE3DC  38 00 00 06 */	li r0, 6
/* 805EE3E0  B0 1F 07 2A */	sth r0, 0x72a(r31)
/* 805EE3E4  7F 63 DB 78 */	mr r3, r27
/* 805EE3E8  4B A9 61 10 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 805EE3EC  7C 64 1B 78 */	mr r4, r3
/* 805EE3F0  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 805EE3F4  38 A0 00 28 */	li r5, 0x28
/* 805EE3F8  38 C0 00 00 */	li r6, 0
/* 805EE3FC  4B A9 91 18 */	b def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 805EE400  38 60 00 03 */	li r3, 3
/* 805EE404  38 80 FF FF */	li r4, -1
/* 805EE408  4B A3 F6 94 */	b dComIfGs_onOneZoneSwitch__Fii
/* 805EE40C  48 00 00 14 */	b lbl_805EE420
lbl_805EE410:
/* 805EE410  3B 9C 00 01 */	addi r28, r28, 1
/* 805EE414  2C 1C 00 08 */	cmpwi r28, 8
/* 805EE418  3B DE 01 38 */	addi r30, r30, 0x138
/* 805EE41C  41 80 FD F4 */	blt lbl_805EE210
lbl_805EE420:
/* 805EE420  39 61 00 50 */	addi r11, r1, 0x50
/* 805EE424  4B D7 3D F8 */	b _restgpr_26
/* 805EE428  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805EE42C  7C 08 03 A6 */	mtlr r0
/* 805EE430  38 21 00 50 */	addi r1, r1, 0x50
/* 805EE434  4E 80 00 20 */	blr 

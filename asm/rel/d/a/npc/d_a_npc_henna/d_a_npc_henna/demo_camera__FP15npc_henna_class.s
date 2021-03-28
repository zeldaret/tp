lbl_8054518C:
/* 8054518C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80545190  7C 08 02 A6 */	mflr r0
/* 80545194  90 01 00 64 */	stw r0, 0x64(r1)
/* 80545198  39 61 00 60 */	addi r11, r1, 0x60
/* 8054519C  4B E1 D0 3C */	b _savegpr_28
/* 805451A0  7C 7D 1B 78 */	mr r29, r3
/* 805451A4  3C 80 80 55 */	lis r4, lit_3905@ha
/* 805451A8  3B E4 A9 64 */	addi r31, r4, lit_3905@l
/* 805451AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805451B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805451B4  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 805451B8  7C 00 07 74 */	extsb r0, r0
/* 805451BC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805451C0  7C 84 02 14 */	add r4, r4, r0
/* 805451C4  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 805451C8  A8 03 07 52 */	lha r0, 0x752(r3)
/* 805451CC  2C 00 00 64 */	cmpwi r0, 0x64
/* 805451D0  41 82 00 30 */	beq lbl_80545200
/* 805451D4  40 80 00 10 */	bge lbl_805451E4
/* 805451D8  2C 00 00 00 */	cmpwi r0, 0
/* 805451DC  41 82 00 14 */	beq lbl_805451F0
/* 805451E0  48 00 02 24 */	b lbl_80545404
lbl_805451E4:
/* 805451E4  2C 00 00 66 */	cmpwi r0, 0x66
/* 805451E8  40 80 02 1C */	bge lbl_80545404
/* 805451EC  48 00 00 94 */	b lbl_80545280
lbl_805451F0:
/* 805451F0  38 00 00 00 */	li r0, 0
/* 805451F4  3C 60 80 55 */	lis r3, data_8054B008@ha
/* 805451F8  98 03 B0 08 */	stb r0, data_8054B008@l(r3)
/* 805451FC  48 00 02 08 */	b lbl_80545404
lbl_80545200:
/* 80545200  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80545204  28 00 00 02 */	cmplwi r0, 2
/* 80545208  41 82 00 28 */	beq lbl_80545230
/* 8054520C  38 80 00 02 */	li r4, 2
/* 80545210  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80545214  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80545218  38 C0 00 00 */	li r6, 0
/* 8054521C  4B AD 66 EC */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80545220  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80545224  60 00 00 02 */	ori r0, r0, 2
/* 80545228  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 8054522C  48 00 02 58 */	b lbl_80545484
lbl_80545230:
/* 80545230  38 00 00 65 */	li r0, 0x65
/* 80545234  B0 1D 07 52 */	sth r0, 0x752(r29)
/* 80545238  38 00 00 00 */	li r0, 0
/* 8054523C  B0 1D 07 54 */	sth r0, 0x754(r29)
/* 80545240  38 7E 02 48 */	addi r3, r30, 0x248
/* 80545244  4B C1 C2 8C */	b Stop__9dCamera_cFv
/* 80545248  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8054524C  D0 1D 07 6C */	stfs f0, 0x76c(r29)
/* 80545250  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80545254  D0 1D 07 70 */	stfs f0, 0x770(r29)
/* 80545258  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8054525C  D0 1D 07 74 */	stfs f0, 0x774(r29)
/* 80545260  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80545264  D0 1D 07 60 */	stfs f0, 0x760(r29)
/* 80545268  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8054526C  D0 1D 07 64 */	stfs f0, 0x764(r29)
/* 80545270  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80545274  D0 1D 07 68 */	stfs f0, 0x768(r29)
/* 80545278  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8054527C  D0 1D 07 BC */	stfs f0, 0x7bc(r29)
lbl_80545280:
/* 80545280  A8 1D 07 54 */	lha r0, 0x754(r29)
/* 80545284  2C 00 00 02 */	cmpwi r0, 2
/* 80545288  40 82 00 98 */	bne lbl_80545320
/* 8054528C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80545290  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 80545294  80 C5 5D AC */	lwz r6, 0x5dac(r5)
/* 80545298  38 80 00 03 */	li r4, 3
/* 8054529C  B0 86 06 04 */	sth r4, 0x604(r6)
/* 805452A0  38 60 00 00 */	li r3, 0
/* 805452A4  90 66 06 0C */	stw r3, 0x60c(r6)
/* 805452A8  80 A5 5D AC */	lwz r5, 0x5dac(r5)
/* 805452AC  38 00 00 04 */	li r0, 4
/* 805452B0  90 05 06 14 */	stw r0, 0x614(r5)
/* 805452B4  90 85 06 0C */	stw r4, 0x60c(r5)
/* 805452B8  90 65 06 10 */	stw r3, 0x610(r5)
/* 805452BC  B0 65 06 0A */	sth r3, 0x60a(r5)
/* 805452C0  38 00 00 14 */	li r0, 0x14
/* 805452C4  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 805452C8  B0 7D 06 A4 */	sth r3, 0x6a4(r29)
/* 805452CC  80 1D 07 E4 */	lwz r0, 0x7e4(r29)
/* 805452D0  90 01 00 08 */	stw r0, 8(r1)
/* 805452D4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805452D8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805452DC  38 81 00 08 */	addi r4, r1, 8
/* 805452E0  4B AD 45 18 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805452E4  28 03 00 00 */	cmplwi r3, 0
/* 805452E8  41 82 00 38 */	beq lbl_80545320
/* 805452EC  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 805452F0  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 805452F4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 805452F8  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 805452FC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80545300  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80545304  D0 23 14 D0 */	stfs f1, 0x14d0(r3)
/* 80545308  D0 43 14 D4 */	stfs f2, 0x14d4(r3)
/* 8054530C  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80545310  38 00 76 D9 */	li r0, 0x76d9
/* 80545314  B0 03 14 4A */	sth r0, 0x144a(r3)
/* 80545318  38 00 00 01 */	li r0, 1
/* 8054531C  98 03 14 46 */	stb r0, 0x1446(r3)
lbl_80545320:
/* 80545320  A8 1D 07 54 */	lha r0, 0x754(r29)
/* 80545324  2C 00 00 0A */	cmpwi r0, 0xa
/* 80545328  40 82 00 DC */	bne lbl_80545404
/* 8054532C  C0 1D 07 6C */	lfs f0, 0x76c(r29)
/* 80545330  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80545334  C0 1D 07 70 */	lfs f0, 0x770(r29)
/* 80545338  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8054533C  C0 1D 07 74 */	lfs f0, 0x774(r29)
/* 80545340  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80545344  C0 1D 07 60 */	lfs f0, 0x760(r29)
/* 80545348  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8054534C  C0 1D 07 64 */	lfs f0, 0x764(r29)
/* 80545350  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80545354  C0 1D 07 68 */	lfs f0, 0x768(r29)
/* 80545358  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8054535C  38 7E 02 48 */	addi r3, r30, 0x248
/* 80545360  38 81 00 30 */	addi r4, r1, 0x30
/* 80545364  38 A1 00 24 */	addi r5, r1, 0x24
/* 80545368  4B C3 B8 B0 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 8054536C  38 7E 02 48 */	addi r3, r30, 0x248
/* 80545370  4B C1 C1 3C */	b Start__9dCamera_cFv
/* 80545374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80545378  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054537C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80545380  4B AF D0 E8 */	b reset__14dEvt_control_cFv
/* 80545384  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80545388  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8054538C  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80545390  38 00 00 02 */	li r0, 2
/* 80545394  B0 04 06 04 */	sth r0, 0x604(r4)
/* 80545398  38 00 00 01 */	li r0, 1
/* 8054539C  90 04 06 14 */	stw r0, 0x614(r4)
/* 805453A0  3B 83 07 F0 */	addi r28, r3, 0x7f0
/* 805453A4  7F 83 E3 78 */	mr r3, r28
/* 805453A8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 805453AC  3B E4 72 88 */	addi r31, r4, saveBitLabels__16dSv_event_flag_c@l
/* 805453B0  A0 9F 03 A0 */	lhz r4, 0x3a0(r31)
/* 805453B4  4B AE F6 08 */	b isEventBit__11dSv_event_cCFUs
/* 805453B8  2C 03 00 00 */	cmpwi r3, 0
/* 805453BC  40 82 00 20 */	bne lbl_805453DC
/* 805453C0  38 00 00 0A */	li r0, 0xa
/* 805453C4  98 1D 07 0A */	stb r0, 0x70a(r29)
/* 805453C8  38 00 00 00 */	li r0, 0
/* 805453CC  98 1D 07 0B */	stb r0, 0x70b(r29)
/* 805453D0  38 00 00 01 */	li r0, 1
/* 805453D4  98 1D 07 34 */	stb r0, 0x734(r29)
/* 805453D8  48 00 00 0C */	b lbl_805453E4
lbl_805453DC:
/* 805453DC  38 00 00 00 */	li r0, 0
/* 805453E0  B0 1D 07 52 */	sth r0, 0x752(r29)
lbl_805453E4:
/* 805453E4  7F 83 E3 78 */	mr r3, r28
/* 805453E8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 805453EC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 805453F0  A0 84 03 9E */	lhz r4, 0x39e(r4)
/* 805453F4  4B AE F5 B0 */	b offEventBit__11dSv_event_cFUs
/* 805453F8  7F 83 E3 78 */	mr r3, r28
/* 805453FC  A0 9F 03 A0 */	lhz r4, 0x3a0(r31)
/* 80545400  4B AE F5 A4 */	b offEventBit__11dSv_event_cFUs
lbl_80545404:
/* 80545404  A8 1D 07 52 */	lha r0, 0x752(r29)
/* 80545408  2C 00 00 00 */	cmpwi r0, 0
/* 8054540C  41 82 00 78 */	beq lbl_80545484
/* 80545410  A8 7D 07 54 */	lha r3, 0x754(r29)
/* 80545414  38 03 00 01 */	addi r0, r3, 1
/* 80545418  B0 1D 07 54 */	sth r0, 0x754(r29)
/* 8054541C  A8 1D 07 54 */	lha r0, 0x754(r29)
/* 80545420  2C 00 27 10 */	cmpwi r0, 0x2710
/* 80545424  40 81 00 0C */	ble lbl_80545430
/* 80545428  38 00 27 10 */	li r0, 0x2710
/* 8054542C  B0 1D 07 54 */	sth r0, 0x754(r29)
lbl_80545430:
/* 80545430  A8 1D 07 52 */	lha r0, 0x752(r29)
/* 80545434  2C 00 00 6E */	cmpwi r0, 0x6e
/* 80545438  40 80 00 4C */	bge lbl_80545484
/* 8054543C  C0 1D 07 6C */	lfs f0, 0x76c(r29)
/* 80545440  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80545444  C0 1D 07 70 */	lfs f0, 0x770(r29)
/* 80545448  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8054544C  C0 1D 07 74 */	lfs f0, 0x774(r29)
/* 80545450  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80545454  C0 1D 07 60 */	lfs f0, 0x760(r29)
/* 80545458  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8054545C  C0 1D 07 64 */	lfs f0, 0x764(r29)
/* 80545460  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80545464  C0 1D 07 68 */	lfs f0, 0x768(r29)
/* 80545468  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8054546C  38 7E 02 48 */	addi r3, r30, 0x248
/* 80545470  38 81 00 18 */	addi r4, r1, 0x18
/* 80545474  38 A1 00 0C */	addi r5, r1, 0xc
/* 80545478  C0 3D 07 BC */	lfs f1, 0x7bc(r29)
/* 8054547C  38 C0 00 00 */	li r6, 0
/* 80545480  4B C3 B6 60 */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_80545484:
/* 80545484  39 61 00 60 */	addi r11, r1, 0x60
/* 80545488  4B E1 CD 9C */	b _restgpr_28
/* 8054548C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80545490  7C 08 03 A6 */	mtlr r0
/* 80545494  38 21 00 60 */	addi r1, r1, 0x60
/* 80545498  4E 80 00 20 */	blr 

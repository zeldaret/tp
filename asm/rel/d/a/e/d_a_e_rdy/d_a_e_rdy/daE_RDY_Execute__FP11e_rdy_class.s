lbl_80777330:
/* 80777330  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 80777334  7C 08 02 A6 */	mflr r0
/* 80777338  90 01 01 34 */	stw r0, 0x134(r1)
/* 8077733C  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 80777340  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 80777344  39 61 01 20 */	addi r11, r1, 0x120
/* 80777348  4B BE AE 74 */	b _savegpr_21
/* 8077734C  7C 7F 1B 78 */	mr r31, r3
/* 80777350  3C 60 80 78 */	lis r3, lit_1109@ha
/* 80777354  3B A3 A8 30 */	addi r29, r3, lit_1109@l
/* 80777358  3C 60 80 78 */	lis r3, lit_4018@ha
/* 8077735C  3B C3 9D FC */	addi r30, r3, lit_4018@l
/* 80777360  80 1D 01 EC */	lwz r0, 0x1ec(r29)
/* 80777364  2C 00 00 00 */	cmpwi r0, 0
/* 80777368  40 82 00 50 */	bne lbl_807773B8
/* 8077736C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80777370  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80777374  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80777378  28 00 00 00 */	cmplwi r0, 0
/* 8077737C  41 82 00 3C */	beq lbl_807773B8
/* 80777380  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80777384  82 A3 10 18 */	lwz r21, m_midnaActor__9daPy_py_c@l(r3)
/* 80777388  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 8077738C  4B 8A 47 88 */	b fopAcM_getTalkEventPartner__FPC10fopAc_ac_c
/* 80777390  7C 03 A8 40 */	cmplw r3, r21
/* 80777394  41 82 00 1C */	beq lbl_807773B0
/* 80777398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077739C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807773A0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807773A4  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 807773A8  28 00 00 03 */	cmplwi r0, 3
/* 807773AC  40 82 00 0C */	bne lbl_807773B8
lbl_807773B0:
/* 807773B0  38 60 00 01 */	li r3, 1
/* 807773B4  48 00 15 58 */	b lbl_8077890C
lbl_807773B8:
/* 807773B8  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 807773BC  28 00 00 0C */	cmplwi r0, 0xc
/* 807773C0  40 82 00 44 */	bne lbl_80777404
/* 807773C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807773C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807773CC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 807773D0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 807773D4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 807773D8  A0 84 01 DE */	lhz r4, 0x1de(r4)
/* 807773DC  4B 8B D5 E0 */	b isEventBit__11dSv_event_cCFUs
/* 807773E0  2C 03 00 00 */	cmpwi r3, 0
/* 807773E4  40 82 00 20 */	bne lbl_80777404
/* 807773E8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 807773EC  54 00 00 3E */	slwi r0, r0, 0
/* 807773F0  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 807773F4  38 00 00 00 */	li r0, 0
/* 807773F8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 807773FC  38 60 00 01 */	li r3, 1
/* 80777400  48 00 15 0C */	b lbl_8077890C
lbl_80777404:
/* 80777404  88 7F 0B CB */	lbz r3, 0xbcb(r31)
/* 80777408  7C 60 07 75 */	extsb. r0, r3
/* 8077740C  41 82 00 70 */	beq lbl_8077747C
/* 80777410  38 03 FF FF */	addi r0, r3, -1
/* 80777414  98 1F 0B CB */	stb r0, 0xbcb(r31)
/* 80777418  88 1F 0B CB */	lbz r0, 0xbcb(r31)
/* 8077741C  7C 00 07 75 */	extsb. r0, r0
/* 80777420  40 82 00 54 */	bne lbl_80777474
/* 80777424  38 00 00 F4 */	li r0, 0xf4
/* 80777428  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8077742C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80777430  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80777434  38 81 00 10 */	addi r4, r1, 0x10
/* 80777438  4B 8A 23 C0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8077743C  38 80 00 00 */	li r4, 0
/* 80777440  98 83 06 E1 */	stb r4, 0x6e1(r3)
/* 80777444  38 00 00 06 */	li r0, 6
/* 80777448  90 03 07 40 */	stw r0, 0x740(r3)
/* 8077744C  90 83 07 44 */	stw r4, 0x744(r3)
/* 80777450  7F E3 FB 78 */	mr r3, r31
/* 80777454  4B 8A 28 28 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80777458  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 8077745C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80777460  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80777464  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80777468  38 81 00 18 */	addi r4, r1, 0x18
/* 8077746C  4B 8A 23 8C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80777470  4B 8A 28 0C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80777474:
/* 80777474  38 60 00 01 */	li r3, 1
/* 80777478  48 00 14 94 */	b lbl_8077890C
lbl_8077747C:
/* 8077747C  88 7F 0A 7E */	lbz r3, 0xa7e(r31)
/* 80777480  28 03 00 00 */	cmplwi r3, 0
/* 80777484  41 82 00 58 */	beq lbl_807774DC
/* 80777488  38 03 FF FF */	addi r0, r3, -1
/* 8077748C  98 1F 0A 7E */	stb r0, 0xa7e(r31)
/* 80777490  88 1F 0A 7E */	lbz r0, 0xa7e(r31)
/* 80777494  28 00 00 14 */	cmplwi r0, 0x14
/* 80777498  40 82 00 14 */	bne lbl_807774AC
/* 8077749C  C0 3E 02 90 */	lfs f1, 0x290(r30)
/* 807774A0  3C 60 80 45 */	lis r3, g_blackColor@ha
/* 807774A4  38 63 06 04 */	addi r3, r3, g_blackColor@l
/* 807774A8  4B 89 0B 30 */	b fadeOut__13mDoGph_gInf_cFfR8_GXColor
lbl_807774AC:
/* 807774AC  88 1F 0A 7E */	lbz r0, 0xa7e(r31)
/* 807774B0  28 00 00 00 */	cmplwi r0, 0
/* 807774B4  40 82 00 28 */	bne lbl_807774DC
/* 807774B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 807774BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 807774C0  80 63 00 00 */	lwz r3, 0(r3)
/* 807774C4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 807774C8  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002F@ha */
/* 807774CC  38 84 00 2F */	addi r4, r4, 0x002F /* 0x0100002F@l */
/* 807774D0  38 A0 00 00 */	li r5, 0
/* 807774D4  38 C0 00 00 */	li r6, 0
/* 807774D8  4B B3 7B 38 */	b bgmStart__8Z2SeqMgrFUlUll
lbl_807774DC:
/* 807774DC  A8 7D 00 A4 */	lha r3, 0xa4(r29)
/* 807774E0  2C 03 00 00 */	cmpwi r3, 0
/* 807774E4  41 82 00 0C */	beq lbl_807774F0
/* 807774E8  38 03 FF FF */	addi r0, r3, -1
/* 807774EC  B0 1D 00 A4 */	sth r0, 0xa4(r29)
lbl_807774F0:
/* 807774F0  A8 7F 0A 40 */	lha r3, 0xa40(r31)
/* 807774F4  38 03 00 01 */	addi r0, r3, 1
/* 807774F8  B0 1F 0A 40 */	sth r0, 0xa40(r31)
/* 807774FC  38 7D 00 54 */	addi r3, r29, 0x54
/* 80777500  88 03 00 3A */	lbz r0, 0x3a(r3)
/* 80777504  98 1F 13 67 */	stb r0, 0x1367(r31)
/* 80777508  38 60 00 00 */	li r3, 0
/* 8077750C  38 00 00 04 */	li r0, 4
/* 80777510  7C 09 03 A6 */	mtctr r0
lbl_80777514:
/* 80777514  38 A3 0A 60 */	addi r5, r3, 0xa60
/* 80777518  7C 9F 2A AE */	lhax r4, r31, r5
/* 8077751C  2C 04 00 00 */	cmpwi r4, 0
/* 80777520  41 82 00 0C */	beq lbl_8077752C
/* 80777524  38 04 FF FF */	addi r0, r4, -1
/* 80777528  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8077752C:
/* 8077752C  38 63 00 02 */	addi r3, r3, 2
/* 80777530  42 00 FF E4 */	bdnz lbl_80777514
/* 80777534  A8 7F 0A 68 */	lha r3, 0xa68(r31)
/* 80777538  2C 03 00 00 */	cmpwi r3, 0
/* 8077753C  41 82 00 0C */	beq lbl_80777548
/* 80777540  38 03 FF FF */	addi r0, r3, -1
/* 80777544  B0 1F 0A 68 */	sth r0, 0xa68(r31)
lbl_80777548:
/* 80777548  A8 7F 0B C0 */	lha r3, 0xbc0(r31)
/* 8077754C  2C 03 00 00 */	cmpwi r3, 0
/* 80777550  41 82 00 0C */	beq lbl_8077755C
/* 80777554  38 03 FF FF */	addi r0, r3, -1
/* 80777558  B0 1F 0B C0 */	sth r0, 0xbc0(r31)
lbl_8077755C:
/* 8077755C  A8 7F 0A 6C */	lha r3, 0xa6c(r31)
/* 80777560  2C 03 00 00 */	cmpwi r3, 0
/* 80777564  41 82 00 0C */	beq lbl_80777570
/* 80777568  38 03 FF FF */	addi r0, r3, -1
/* 8077756C  B0 1F 0A 6C */	sth r0, 0xa6c(r31)
lbl_80777570:
/* 80777570  A8 7F 0A 6E */	lha r3, 0xa6e(r31)
/* 80777574  2C 03 00 00 */	cmpwi r3, 0
/* 80777578  41 82 00 0C */	beq lbl_80777584
/* 8077757C  38 03 FF FF */	addi r0, r3, -1
/* 80777580  B0 1F 0A 6E */	sth r0, 0xa6e(r31)
lbl_80777584:
/* 80777584  7F E3 FB 78 */	mr r3, r31
/* 80777588  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 8077758C  4B 8A 56 D0 */	b fopAcM_otoCheck__FPC10fopAc_ac_cf
/* 80777590  2C 03 00 00 */	cmpwi r3, 0
/* 80777594  40 82 00 1C */	bne lbl_807775B0
/* 80777598  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077759C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807775A0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807775A4  80 03 05 80 */	lwz r0, 0x580(r3)
/* 807775A8  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 807775AC  41 82 00 24 */	beq lbl_807775D0
lbl_807775B0:
/* 807775B0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807775B4  4B AF 03 A0 */	b cM_rndF__Ff
/* 807775B8  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 807775BC  EC 00 08 2A */	fadds f0, f0, f1
/* 807775C0  FC 00 00 1E */	fctiwz f0, f0
/* 807775C4  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 807775C8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 807775CC  98 1F 0A 71 */	stb r0, 0xa71(r31)
lbl_807775D0:
/* 807775D0  88 7F 0A 71 */	lbz r3, 0xa71(r31)
/* 807775D4  7C 60 07 75 */	extsb. r0, r3
/* 807775D8  41 82 00 0C */	beq lbl_807775E4
/* 807775DC  38 03 FF FF */	addi r0, r3, -1
/* 807775E0  98 1F 0A 71 */	stb r0, 0xa71(r31)
lbl_807775E4:
/* 807775E4  38 00 00 00 */	li r0, 0
/* 807775E8  98 1F 0A 72 */	stb r0, 0xa72(r31)
/* 807775EC  38 00 00 01 */	li r0, 1
/* 807775F0  98 1F 0A 7D */	stb r0, 0xa7d(r31)
/* 807775F4  7F E3 FB 78 */	mr r3, r31
/* 807775F8  4B FF CC 55 */	bl action__FP11e_rdy_class
/* 807775FC  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 80777600  7C 00 07 75 */	extsb. r0, r0
/* 80777604  41 82 00 0C */	beq lbl_80777610
/* 80777608  38 00 00 00 */	li r0, 0
/* 8077760C  98 1F 0A 7D */	stb r0, 0xa7d(r31)
lbl_80777610:
/* 80777610  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 80777614  2C 00 00 02 */	cmpwi r0, 2
/* 80777618  41 82 01 54 */	beq lbl_8077776C
/* 8077761C  A8 1F 0B C0 */	lha r0, 0xbc0(r31)
/* 80777620  2C 00 00 00 */	cmpwi r0, 0
/* 80777624  40 82 01 48 */	bne lbl_8077776C
/* 80777628  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8077762C  D0 21 00 C8 */	stfs f1, 0xc8(r1)
/* 80777630  D0 21 00 CC */	stfs f1, 0xcc(r1)
/* 80777634  D0 21 00 D0 */	stfs f1, 0xd0(r1)
/* 80777638  C0 1F 0A BC */	lfs f0, 0xabc(r31)
/* 8077763C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80777640  41 82 00 58 */	beq lbl_80777698
/* 80777644  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80777648  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8077764C  80 63 00 00 */	lwz r3, 0(r3)
/* 80777650  A8 9F 0A DE */	lha r4, 0xade(r31)
/* 80777654  4B 89 4D 88 */	b mDoMtx_YrotS__FPA4_fs
/* 80777658  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077765C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80777660  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80777664  C0 1F 0B BC */	lfs f0, 0xbbc(r31)
/* 80777668  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8077766C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80777670  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80777674  4B AF 98 78 */	b MtxPosition__FP4cXyzP4cXyz
/* 80777678  38 7F 0B BC */	addi r3, r31, 0xbbc
/* 8077767C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80777680  C0 1F 0A BC */	lfs f0, 0xabc(r31)
/* 80777684  EC 21 00 32 */	fmuls f1, f1, f0
/* 80777688  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077768C  C0 7E 00 54 */	lfs f3, 0x54(r30)
/* 80777690  4B AF 83 AC */	b cLib_addCalc2__FPffff
/* 80777694  48 00 00 14 */	b lbl_807776A8
lbl_80777698:
/* 80777698  38 7F 0B BC */	addi r3, r31, 0xbbc
/* 8077769C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807776A0  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 807776A4  4B AF 83 DC */	b cLib_addCalc0__FPfff
lbl_807776A8:
/* 807776A8  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 807776AC  2C 00 00 13 */	cmpwi r0, 0x13
/* 807776B0  40 82 00 2C */	bne lbl_807776DC
/* 807776B4  A8 1F 0A DC */	lha r0, 0xadc(r31)
/* 807776B8  2C 00 00 00 */	cmpwi r0, 0
/* 807776BC  41 82 00 20 */	beq lbl_807776DC
/* 807776C0  88 1F 0A EF */	lbz r0, 0xaef(r31)
/* 807776C4  7C 00 07 75 */	extsb. r0, r0
/* 807776C8  40 82 00 14 */	bne lbl_807776DC
/* 807776CC  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 807776D0  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 807776D4  EC 01 00 2A */	fadds f0, f1, f0
/* 807776D8  D0 01 00 CC */	stfs f0, 0xcc(r1)
lbl_807776DC:
/* 807776DC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 807776E0  38 81 00 C8 */	addi r4, r1, 0xc8
/* 807776E4  7C 65 1B 78 */	mr r5, r3
/* 807776E8  4B BC F9 A8 */	b PSVECAdd
/* 807776EC  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 807776F0  38 81 00 C8 */	addi r4, r1, 0xc8
/* 807776F4  7C 65 1B 78 */	mr r5, r3
/* 807776F8  4B BC F9 98 */	b PSVECAdd
/* 807776FC  38 7F 0C 14 */	addi r3, r31, 0xc14
/* 80777700  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80777704  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80777708  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8077770C  4B 8F F3 A0 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80777710  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80777714  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80777718  7C 65 1B 78 */	mr r5, r3
/* 8077771C  4B BC F9 98 */	b PSVECSubtract
/* 80777720  38 7F 04 BC */	addi r3, r31, 0x4bc
/* 80777724  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80777728  7C 65 1B 78 */	mr r5, r3
/* 8077772C  4B BC F9 88 */	b PSVECSubtract
/* 80777730  38 00 00 00 */	li r0, 0
/* 80777734  98 1F 13 64 */	stb r0, 0x1364(r31)
/* 80777738  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 8077773C  C0 1F 0C AC */	lfs f0, 0xcac(r31)
/* 80777740  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80777744  41 82 00 28 */	beq lbl_8077776C
/* 80777748  80 1F 0C 40 */	lwz r0, 0xc40(r31)
/* 8077774C  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80777750  41 82 00 1C */	beq lbl_8077776C
/* 80777754  C0 3F 0D E0 */	lfs f1, 0xde0(r31)
/* 80777758  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8077775C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80777760  40 81 00 0C */	ble lbl_8077776C
/* 80777764  38 00 00 01 */	li r0, 1
/* 80777768  98 1F 13 64 */	stb r0, 0x1364(r31)
lbl_8077776C:
/* 8077776C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80777770  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80777774  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80777778  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8077777C  C0 1F 0A 90 */	lfs f0, 0xa90(r31)
/* 80777780  EC 42 00 2A */	fadds f2, f2, f0
/* 80777784  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80777788  4B BC F1 60 */	b PSMTXTrans
/* 8077778C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80777790  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80777794  A8 9F 0A E2 */	lha r4, 0xae2(r31)
/* 80777798  4B 89 4C 04 */	b mDoMtx_XrotM__FPA4_fs
/* 8077779C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807777A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807777A4  A8 9F 0A E6 */	lha r4, 0xae6(r31)
/* 807777A8  4B 89 4D 24 */	b mDoMtx_ZrotM__FPA4_fs
/* 807777AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807777B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807777B4  A8 9F 0A DE */	lha r4, 0xade(r31)
/* 807777B8  4B 89 4C 7C */	b mDoMtx_YrotM__FPA4_fs
/* 807777BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807777C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807777C4  A8 9F 0A DC */	lha r4, 0xadc(r31)
/* 807777C8  4B 89 4B D4 */	b mDoMtx_XrotM__FPA4_fs
/* 807777CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807777D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807777D4  A8 1F 0A DE */	lha r0, 0xade(r31)
/* 807777D8  7C 00 00 D0 */	neg r0, r0
/* 807777DC  7C 04 07 34 */	extsh r4, r0
/* 807777E0  4B 89 4C 54 */	b mDoMtx_YrotM__FPA4_fs
/* 807777E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807777E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807777EC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807777F0  4B 89 4C 44 */	b mDoMtx_YrotM__FPA4_fs
/* 807777F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807777F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807777FC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80777800  4B 89 4B 9C */	b mDoMtx_XrotM__FPA4_fs
/* 80777804  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80777808  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8077780C  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 80777810  4B 89 4C BC */	b mDoMtx_ZrotM__FPA4_fs
/* 80777814  3B BD 00 54 */	addi r29, r29, 0x54
/* 80777818  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8077781C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80777820  EF E1 00 32 */	fmuls f31, f1, f0
/* 80777824  FC 20 F8 90 */	fmr f1, f31
/* 80777828  FC 40 F8 90 */	fmr f2, f31
/* 8077782C  FC 60 F8 90 */	fmr f3, f31
/* 80777830  4B 89 56 08 */	b scaleM__14mDoMtx_stack_cFfff
/* 80777834  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80777838  83 23 00 04 */	lwz r25, 4(r3)
/* 8077783C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80777840  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80777844  38 99 00 24 */	addi r4, r25, 0x24
/* 80777848  4B BC EC 68 */	b PSMTXCopy
/* 8077784C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80777850  7C 03 07 74 */	extsb r3, r0
/* 80777854  4B 8B 58 18 */	b dComIfGp_getReverb__Fi
/* 80777858  7C 65 1B 78 */	mr r5, r3
/* 8077785C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80777860  38 80 00 00 */	li r4, 0
/* 80777864  4B 89 98 4C */	b play__16mDoExt_McaMorfSOFUlSc
/* 80777868  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8077786C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80777870  FC 00 00 1E */	fctiwz f0, f0
/* 80777874  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 80777878  82 A1 00 E4 */	lwz r21, 0xe4(r1)
/* 8077787C  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 80777880  2C 00 00 3E */	cmpwi r0, 0x3e
/* 80777884  40 82 00 3C */	bne lbl_807778C0
/* 80777888  2C 15 00 01 */	cmpwi r21, 1
/* 8077788C  41 82 00 0C */	beq lbl_80777898
/* 80777890  2C 15 00 0A */	cmpwi r21, 0xa
/* 80777894  40 82 00 2C */	bne lbl_807778C0
lbl_80777898:
/* 80777898  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070036@ha */
/* 8077789C  38 03 00 36 */	addi r0, r3, 0x0036 /* 0x00070036@l */
/* 807778A0  90 01 00 38 */	stw r0, 0x38(r1)
/* 807778A4  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 807778A8  38 81 00 38 */	addi r4, r1, 0x38
/* 807778AC  38 A0 FF FF */	li r5, -1
/* 807778B0  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 807778B4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807778B8  7D 89 03 A6 */	mtctr r12
/* 807778BC  4E 80 04 21 */	bctrl 
lbl_807778C0:
/* 807778C0  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 807778C4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807778C8  40 82 00 3C */	bne lbl_80777904
/* 807778CC  2C 15 00 05 */	cmpwi r21, 5
/* 807778D0  41 82 00 0C */	beq lbl_807778DC
/* 807778D4  2C 15 00 1A */	cmpwi r21, 0x1a
/* 807778D8  40 82 00 2C */	bne lbl_80777904
lbl_807778DC:
/* 807778DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070036@ha */
/* 807778E0  38 03 00 36 */	addi r0, r3, 0x0036 /* 0x00070036@l */
/* 807778E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 807778E8  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 807778EC  38 81 00 34 */	addi r4, r1, 0x34
/* 807778F0  38 A0 FF FF */	li r5, -1
/* 807778F4  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 807778F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807778FC  7D 89 03 A6 */	mtctr r12
/* 80777900  4E 80 04 21 */	bctrl 
lbl_80777904:
/* 80777904  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 80777908  2C 00 00 45 */	cmpwi r0, 0x45
/* 8077790C  40 82 00 0C */	bne lbl_80777918
/* 80777910  2C 15 00 0A */	cmpwi r21, 0xa
/* 80777914  41 82 00 24 */	beq lbl_80777938
lbl_80777918:
/* 80777918  2C 00 00 36 */	cmpwi r0, 0x36
/* 8077791C  40 82 00 0C */	bne lbl_80777928
/* 80777920  2C 15 00 05 */	cmpwi r21, 5
/* 80777924  41 82 00 14 */	beq lbl_80777938
lbl_80777928:
/* 80777928  2C 00 00 04 */	cmpwi r0, 4
/* 8077792C  40 82 00 34 */	bne lbl_80777960
/* 80777930  2C 15 00 0A */	cmpwi r21, 0xa
/* 80777934  40 82 00 2C */	bne lbl_80777960
lbl_80777938:
/* 80777938  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070035@ha */
/* 8077793C  38 03 00 35 */	addi r0, r3, 0x0035 /* 0x00070035@l */
/* 80777940  90 01 00 30 */	stw r0, 0x30(r1)
/* 80777944  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80777948  38 81 00 30 */	addi r4, r1, 0x30
/* 8077794C  38 A0 FF FF */	li r5, -1
/* 80777950  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 80777954  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80777958  7D 89 03 A6 */	mtctr r12
/* 8077795C  4E 80 04 21 */	bctrl 
lbl_80777960:
/* 80777960  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 80777964  2C 00 00 4D */	cmpwi r0, 0x4d
/* 80777968  40 82 00 34 */	bne lbl_8077799C
/* 8077796C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80777970  38 63 00 0C */	addi r3, r3, 0xc
/* 80777974  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80777978  4B BB 0A B4 */	b checkPass__12J3DFrameCtrlFf
/* 8077797C  2C 03 00 00 */	cmpwi r3, 0
/* 80777980  40 82 00 60 */	bne lbl_807779E0
/* 80777984  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80777988  38 63 00 0C */	addi r3, r3, 0xc
/* 8077798C  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80777990  4B BB 0A 9C */	b checkPass__12J3DFrameCtrlFf
/* 80777994  2C 03 00 00 */	cmpwi r3, 0
/* 80777998  40 82 00 48 */	bne lbl_807779E0
lbl_8077799C:
/* 8077799C  80 1F 06 78 */	lwz r0, 0x678(r31)
/* 807779A0  2C 00 00 3E */	cmpwi r0, 0x3e
/* 807779A4  41 82 00 0C */	beq lbl_807779B0
/* 807779A8  2C 00 00 3F */	cmpwi r0, 0x3f
/* 807779AC  40 82 00 9C */	bne lbl_80777A48
lbl_807779B0:
/* 807779B0  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807779B4  38 63 00 0C */	addi r3, r3, 0xc
/* 807779B8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807779BC  4B BB 0A 70 */	b checkPass__12J3DFrameCtrlFf
/* 807779C0  2C 03 00 00 */	cmpwi r3, 0
/* 807779C4  40 82 00 1C */	bne lbl_807779E0
/* 807779C8  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807779CC  38 63 00 0C */	addi r3, r3, 0xc
/* 807779D0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 807779D4  4B BB 0A 58 */	b checkPass__12J3DFrameCtrlFf
/* 807779D8  2C 03 00 00 */	cmpwi r3, 0
/* 807779DC  41 82 00 6C */	beq lbl_80777A48
lbl_807779E0:
/* 807779E0  88 1F 13 64 */	lbz r0, 0x1364(r31)
/* 807779E4  7C 00 07 75 */	extsb. r0, r0
/* 807779E8  41 82 00 34 */	beq lbl_80777A1C
/* 807779EC  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030033@ha */
/* 807779F0  38 03 00 33 */	addi r0, r3, 0x0033 /* 0x00030033@l */
/* 807779F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807779F8  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 807779FC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80777A00  38 A0 00 00 */	li r5, 0
/* 80777A04  38 C0 FF FF */	li r6, -1
/* 80777A08  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 80777A0C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80777A10  7D 89 03 A6 */	mtctr r12
/* 80777A14  4E 80 04 21 */	bctrl 
/* 80777A18  48 00 00 30 */	b lbl_80777A48
lbl_80777A1C:
/* 80777A1C  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030032@ha */
/* 80777A20  38 03 00 32 */	addi r0, r3, 0x0032 /* 0x00030032@l */
/* 80777A24  90 01 00 28 */	stw r0, 0x28(r1)
/* 80777A28  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80777A2C  38 81 00 28 */	addi r4, r1, 0x28
/* 80777A30  38 A0 00 00 */	li r5, 0
/* 80777A34  38 C0 FF FF */	li r6, -1
/* 80777A38  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 80777A3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80777A40  7D 89 03 A6 */	mtctr r12
/* 80777A44  4E 80 04 21 */	bctrl 
lbl_80777A48:
/* 80777A48  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80777A4C  4B 89 97 A0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80777A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80777A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80777A58  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80777A5C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80777A60  41 82 00 0C */	beq lbl_80777A6C
/* 80777A64  38 00 00 00 */	li r0, 0
/* 80777A68  98 1F 13 67 */	stb r0, 0x1367(r31)
lbl_80777A6C:
/* 80777A6C  88 1F 13 67 */	lbz r0, 0x1367(r31)
/* 80777A70  7C 00 07 75 */	extsb. r0, r0
/* 80777A74  41 82 02 DC */	beq lbl_80777D50
/* 80777A78  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80777A7C  82 A3 00 04 */	lwz r21, 4(r3)
/* 80777A80  38 7F 0A 30 */	addi r3, r31, 0xa30
/* 80777A84  C0 3F 0A 34 */	lfs f1, 0xa34(r31)
/* 80777A88  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80777A8C  C0 7E 01 B8 */	lfs f3, 0x1b8(r30)
/* 80777A90  4B AF 7F AC */	b cLib_addCalc2__FPffff
/* 80777A94  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80777A98  D0 1F 0A 34 */	stfs f0, 0xa34(r31)
/* 80777A9C  80 75 00 84 */	lwz r3, 0x84(r21)
/* 80777AA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80777AA4  38 63 02 70 */	addi r3, r3, 0x270
/* 80777AA8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80777AAC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80777AB0  80 84 00 00 */	lwz r4, 0(r4)
/* 80777AB4  4B BC E9 FC */	b PSMTXCopy
/* 80777AB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80777ABC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80777AC0  83 03 5D 74 */	lwz r24, 0x5d74(r3)
/* 80777AC4  3A E0 00 00 */	li r23, 0
/* 80777AC8  3A C0 00 00 */	li r22, 0
/* 80777ACC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80777AD0  3B 43 CA 54 */	addi r26, r3, g_env_light@l
/* 80777AD4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80777AD8  3A A3 07 68 */	addi r21, r3, calc_mtx@l
lbl_80777ADC:
/* 80777ADC  4B AF 94 40 */	b MtxPush__Fv
/* 80777AE0  2C 17 00 00 */	cmpwi r23, 0
/* 80777AE4  40 82 01 E0 */	bne lbl_80777CC4
/* 80777AE8  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 80777AEC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80777AF0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777AF4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80777AF8  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80777AFC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80777B00  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80777B04  4B AF 93 E8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80777B08  38 61 00 8C */	addi r3, r1, 0x8c
/* 80777B0C  38 98 00 D8 */	addi r4, r24, 0xd8
/* 80777B10  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80777B14  4B AE F0 20 */	b __mi__4cXyzCFRC3Vec
/* 80777B18  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80777B1C  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80777B20  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80777B24  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80777B28  C0 41 00 94 */	lfs f2, 0x94(r1)
/* 80777B2C  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 80777B30  4B AE FB 44 */	b cM_atan2s__Fff
/* 80777B34  7C 7C 1B 78 */	mr r28, r3
/* 80777B38  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80777B3C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80777B40  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80777B44  EC 00 00 32 */	fmuls f0, f0, f0
/* 80777B48  EC 41 00 2A */	fadds f2, f1, f0
/* 80777B4C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777B50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80777B54  40 81 00 0C */	ble lbl_80777B60
/* 80777B58  FC 00 10 34 */	frsqrte f0, f2
/* 80777B5C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80777B60:
/* 80777B60  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 80777B64  4B AE FB 10 */	b cM_atan2s__Fff
/* 80777B68  7C 03 00 D0 */	neg r0, r3
/* 80777B6C  7C 1B 07 34 */	extsh r27, r0
/* 80777B70  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80777B74  4B BC F5 C4 */	b PSVECSquareMag
/* 80777B78  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80777B80  40 81 00 58 */	ble lbl_80777BD8
/* 80777B84  FC 00 08 34 */	frsqrte f0, f1
/* 80777B88  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80777B8C  FC 44 00 32 */	fmul f2, f4, f0
/* 80777B90  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80777B94  FC 00 00 32 */	fmul f0, f0, f0
/* 80777B98  FC 01 00 32 */	fmul f0, f1, f0
/* 80777B9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80777BA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80777BA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80777BA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80777BAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80777BB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80777BB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80777BB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80777BBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80777BC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80777BC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80777BC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80777BCC  FC 21 00 32 */	fmul f1, f1, f0
/* 80777BD0  FC 20 08 18 */	frsp f1, f1
/* 80777BD4  48 00 00 88 */	b lbl_80777C5C
lbl_80777BD8:
/* 80777BD8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 80777BDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80777BE0  40 80 00 10 */	bge lbl_80777BF0
/* 80777BE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80777BE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80777BEC  48 00 00 70 */	b lbl_80777C5C
lbl_80777BF0:
/* 80777BF0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80777BF4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80777BF8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80777BFC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80777C00  7C 03 00 00 */	cmpw r3, r0
/* 80777C04  41 82 00 14 */	beq lbl_80777C18
/* 80777C08  40 80 00 40 */	bge lbl_80777C48
/* 80777C0C  2C 03 00 00 */	cmpwi r3, 0
/* 80777C10  41 82 00 20 */	beq lbl_80777C30
/* 80777C14  48 00 00 34 */	b lbl_80777C48
lbl_80777C18:
/* 80777C18  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80777C1C  41 82 00 0C */	beq lbl_80777C28
/* 80777C20  38 00 00 01 */	li r0, 1
/* 80777C24  48 00 00 28 */	b lbl_80777C4C
lbl_80777C28:
/* 80777C28  38 00 00 02 */	li r0, 2
/* 80777C2C  48 00 00 20 */	b lbl_80777C4C
lbl_80777C30:
/* 80777C30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80777C34  41 82 00 0C */	beq lbl_80777C40
/* 80777C38  38 00 00 05 */	li r0, 5
/* 80777C3C  48 00 00 10 */	b lbl_80777C4C
lbl_80777C40:
/* 80777C40  38 00 00 03 */	li r0, 3
/* 80777C44  48 00 00 08 */	b lbl_80777C4C
lbl_80777C48:
/* 80777C48  38 00 00 04 */	li r0, 4
lbl_80777C4C:
/* 80777C4C  2C 00 00 01 */	cmpwi r0, 1
/* 80777C50  40 82 00 0C */	bne lbl_80777C5C
/* 80777C54  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80777C58  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80777C5C:
/* 80777C5C  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 80777C60  EF E0 00 72 */	fmuls f31, f0, f1
/* 80777C64  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80777C68  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80777C6C  40 81 00 08 */	ble lbl_80777C74
/* 80777C70  FF E0 00 90 */	fmr f31, f0
lbl_80777C74:
/* 80777C74  C0 5F 0A 30 */	lfs f2, 0xa30(r31)
/* 80777C78  C0 3A 12 44 */	lfs f1, 0x1244(r26)
/* 80777C7C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80777C80  EC 01 00 24 */	fdivs f0, f1, f0
/* 80777C84  FC 00 00 1E */	fctiwz f0, f0
/* 80777C88  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 80777C8C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80777C90  54 00 10 3A */	slwi r0, r0, 2
/* 80777C94  3C 60 80 78 */	lis r3, time_scale@ha
/* 80777C98  38 63 A5 C8 */	addi r3, r3, time_scale@l
/* 80777C9C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80777CA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80777CA4  EF FF 00 32 */	fmuls f31, f31, f0
/* 80777CA8  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 80777CAC  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80777CB0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777CB4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80777CB8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80777CBC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80777CC0  48 00 00 1C */	b lbl_80777CDC
lbl_80777CC4:
/* 80777CC4  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 80777CC8  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80777CCC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777CD0  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80777CD4  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 80777CD8  D0 01 00 DC */	stfs f0, 0xdc(r1)
lbl_80777CDC:
/* 80777CDC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80777CE0  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80777CE4  4B AF 92 08 */	b MtxPosition__FP4cXyzP4cXyz
/* 80777CE8  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 80777CEC  C0 41 00 CC */	lfs f2, 0xcc(r1)
/* 80777CF0  C0 61 00 D0 */	lfs f3, 0xd0(r1)
/* 80777CF4  38 60 00 00 */	li r3, 0
/* 80777CF8  4B AF 91 64 */	b MtxTrans__FfffUc
/* 80777CFC  80 75 00 00 */	lwz r3, 0(r21)
/* 80777D00  7F 84 E3 78 */	mr r4, r28
/* 80777D04  4B 89 47 30 */	b mDoMtx_YrotM__FPA4_fs
/* 80777D08  80 75 00 00 */	lwz r3, 0(r21)
/* 80777D0C  7F 64 DB 78 */	mr r4, r27
/* 80777D10  4B 89 46 8C */	b mDoMtx_XrotM__FPA4_fs
/* 80777D14  FC 20 F8 90 */	fmr f1, f31
/* 80777D18  FC 40 F8 90 */	fmr f2, f31
/* 80777D1C  FC 60 F8 90 */	fmr f3, f31
/* 80777D20  38 60 00 01 */	li r3, 1
/* 80777D24  4B AF 91 80 */	b MtxScale__FfffUc
/* 80777D28  80 75 00 00 */	lwz r3, 0(r21)
/* 80777D2C  38 16 0A 28 */	addi r0, r22, 0xa28
/* 80777D30  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80777D34  38 84 00 24 */	addi r4, r4, 0x24
/* 80777D38  4B BC E7 78 */	b PSMTXCopy
/* 80777D3C  4B AF 92 1C */	b MtxPull__Fv
/* 80777D40  3A F7 00 01 */	addi r23, r23, 1
/* 80777D44  2C 17 00 02 */	cmpwi r23, 2
/* 80777D48  3A D6 00 04 */	addi r22, r22, 4
/* 80777D4C  41 80 FD 90 */	blt lbl_80777ADC
lbl_80777D50:
/* 80777D50  80 79 00 84 */	lwz r3, 0x84(r25)
/* 80777D54  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80777D58  38 63 02 10 */	addi r3, r3, 0x210
/* 80777D5C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80777D60  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80777D64  80 84 00 00 */	lwz r4, 0(r4)
/* 80777D68  4B BC E7 48 */	b PSMTXCopy
/* 80777D6C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777D70  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80777D74  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80777D78  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80777D7C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80777D80  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80777D84  4B AF 91 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 80777D88  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80777D8C  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80777D90  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80777D94  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80777D98  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80777D9C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80777DA0  38 81 00 BC */	addi r4, r1, 0xbc
/* 80777DA4  4B AF 91 48 */	b MtxPosition__FP4cXyzP4cXyz
/* 80777DA8  C0 21 00 CC */	lfs f1, 0xcc(r1)
/* 80777DAC  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 80777DB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80777DB4  40 80 00 10 */	bge lbl_80777DC4
/* 80777DB8  38 00 00 00 */	li r0, 0
/* 80777DBC  98 1F 0A EF */	stb r0, 0xaef(r31)
/* 80777DC0  48 00 00 0C */	b lbl_80777DCC
lbl_80777DC4:
/* 80777DC4  38 00 00 01 */	li r0, 1
/* 80777DC8  98 1F 0A EF */	stb r0, 0xaef(r31)
lbl_80777DCC:
/* 80777DCC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777DD0  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80777DD4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80777DD8  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80777DDC  A8 1F 0A 68 */	lha r0, 0xa68(r31)
/* 80777DE0  2C 00 00 00 */	cmpwi r0, 0
/* 80777DE4  41 82 00 1C */	beq lbl_80777E00
/* 80777DE8  C0 1E 02 A0 */	lfs f0, 0x2a0(r30)
/* 80777DEC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80777DF0  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 80777DF4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80777DF8  C0 1E 02 4C */	lfs f0, 0x24c(r30)
/* 80777DFC  D0 01 00 B8 */	stfs f0, 0xb8(r1)
lbl_80777E00:
/* 80777E00  80 79 00 84 */	lwz r3, 0x84(r25)
/* 80777E04  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80777E08  38 63 02 70 */	addi r3, r3, 0x270
/* 80777E0C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80777E10  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80777E14  80 84 00 00 */	lwz r4, 0(r4)
/* 80777E18  4B BC E6 98 */	b PSMTXCopy
/* 80777E1C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80777E20  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80777E24  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777E28  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80777E2C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80777E30  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80777E34  38 9F 05 38 */	addi r4, r31, 0x538
/* 80777E38  4B AF 90 B4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80777E3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80777E40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80777E44  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80777E48  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80777E4C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80777E50  41 82 00 40 */	beq lbl_80777E90
/* 80777E54  C0 21 00 B4 */	lfs f1, 0xb4(r1)
/* 80777E58  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80777E5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80777E60  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80777E64  38 61 00 80 */	addi r3, r1, 0x80
/* 80777E68  38 9F 05 38 */	addi r4, r31, 0x538
/* 80777E6C  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 80777E70  4B AE EC 74 */	b __pl__4cXyzCFRC3Vec
/* 80777E74  38 7F 0F 4C */	addi r3, r31, 0xf4c
/* 80777E78  38 81 00 80 */	addi r4, r1, 0x80
/* 80777E7C  4B AF 77 CC */	b SetC__8cM3dGSphFRC4cXyz
/* 80777E80  38 7F 0F 4C */	addi r3, r31, 0xf4c
/* 80777E84  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80777E88  4B AF 78 80 */	b SetR__8cM3dGSphFf
/* 80777E8C  48 00 00 2C */	b lbl_80777EB8
lbl_80777E90:
/* 80777E90  38 61 00 74 */	addi r3, r1, 0x74
/* 80777E94  38 9F 05 38 */	addi r4, r31, 0x538
/* 80777E98  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 80777E9C  4B AE EC 48 */	b __pl__4cXyzCFRC3Vec
/* 80777EA0  38 7F 0F 4C */	addi r3, r31, 0xf4c
/* 80777EA4  38 81 00 74 */	addi r4, r1, 0x74
/* 80777EA8  4B AF 77 A0 */	b SetC__8cM3dGSphFRC4cXyz
/* 80777EAC  38 7F 0F 4C */	addi r3, r31, 0xf4c
/* 80777EB0  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 80777EB4  4B AF 78 54 */	b SetR__8cM3dGSphFf
lbl_80777EB8:
/* 80777EB8  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80777EBC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80777EC0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80777EC4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80777EC8  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80777ECC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80777ED0  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80777ED4  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80777ED8  EC 01 00 2A */	fadds f0, f1, f0
/* 80777EDC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80777EE0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777EE4  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80777EE8  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80777EEC  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80777EF0  80 79 00 84 */	lwz r3, 0x84(r25)
/* 80777EF4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80777EF8  38 63 02 40 */	addi r3, r3, 0x240
/* 80777EFC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80777F00  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80777F04  80 84 00 00 */	lwz r4, 0(r4)
/* 80777F08  4B BC E5 A8 */	b PSMTXCopy
/* 80777F0C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80777F10  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80777F14  4B AF 8F D8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80777F18  38 61 00 68 */	addi r3, r1, 0x68
/* 80777F1C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80777F20  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 80777F24  4B AE EB C0 */	b __pl__4cXyzCFRC3Vec
/* 80777F28  38 7F 11 BC */	addi r3, r31, 0x11bc
/* 80777F2C  38 81 00 68 */	addi r4, r1, 0x68
/* 80777F30  4B AF 77 18 */	b SetC__8cM3dGSphFRC4cXyz
/* 80777F34  38 7F 11 BC */	addi r3, r31, 0x11bc
/* 80777F38  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 80777F3C  4B AF 77 CC */	b SetR__8cM3dGSphFf
/* 80777F40  C0 1E 02 A8 */	lfs f0, 0x2a8(r30)
/* 80777F44  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80777F48  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80777F4C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80777F50  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80777F54  80 79 00 84 */	lwz r3, 0x84(r25)
/* 80777F58  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80777F5C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80777F60  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80777F64  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80777F68  80 84 00 00 */	lwz r4, 0(r4)
/* 80777F6C  4B BC E5 44 */	b PSMTXCopy
/* 80777F70  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80777F74  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80777F78  4B AF 8F 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 80777F7C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80777F80  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80777F84  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 80777F88  4B AE EB 5C */	b __pl__4cXyzCFRC3Vec
/* 80777F8C  38 7F 10 84 */	addi r3, r31, 0x1084
/* 80777F90  38 81 00 5C */	addi r4, r1, 0x5c
/* 80777F94  4B AF 76 B4 */	b SetC__8cM3dGSphFRC4cXyz
/* 80777F98  38 7F 10 84 */	addi r3, r31, 0x1084
/* 80777F9C  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 80777FA0  4B AF 77 68 */	b SetR__8cM3dGSphFf
/* 80777FA4  3A E0 00 00 */	li r23, 0
/* 80777FA8  3B 00 00 00 */	li r24, 0
/* 80777FAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80777FB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80777FB4  3B 23 23 3C */	addi r25, r3, 0x233c
lbl_80777FB8:
/* 80777FB8  88 1F 0A 7D */	lbz r0, 0xa7d(r31)
/* 80777FBC  7C 00 07 75 */	extsb. r0, r0
/* 80777FC0  41 82 00 18 */	beq lbl_80777FD8
/* 80777FC4  38 78 0E 54 */	addi r3, r24, 0xe54
/* 80777FC8  7C 1F 18 2E */	lwzx r0, r31, r3
/* 80777FCC  60 00 00 01 */	ori r0, r0, 1
/* 80777FD0  7C 1F 19 2E */	stwx r0, r31, r3
/* 80777FD4  48 00 00 14 */	b lbl_80777FE8
lbl_80777FD8:
/* 80777FD8  38 78 0E 54 */	addi r3, r24, 0xe54
/* 80777FDC  7C 1F 18 2E */	lwzx r0, r31, r3
/* 80777FE0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80777FE4  7C 1F 19 2E */	stwx r0, r31, r3
lbl_80777FE8:
/* 80777FE8  7F 23 CB 78 */	mr r3, r25
/* 80777FEC  7E BF C2 14 */	add r21, r31, r24
/* 80777FF0  38 95 0E 28 */	addi r4, r21, 0xe28
/* 80777FF4  4B AE CB B4 */	b Set__4cCcSFP8cCcD_Obj
/* 80777FF8  80 15 0E C4 */	lwz r0, 0xec4(r21)
/* 80777FFC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80778000  90 15 0E C4 */	stw r0, 0xec4(r21)
/* 80778004  3A F7 00 01 */	addi r23, r23, 1
/* 80778008  2C 17 00 02 */	cmpwi r23, 2
/* 8077800C  3B 18 01 38 */	addi r24, r24, 0x138
/* 80778010  40 81 FF A8 */	ble lbl_80777FB8
/* 80778014  88 1F 0A 7B */	lbz r0, 0xa7b(r31)
/* 80778018  2C 00 00 02 */	cmpwi r0, 2
/* 8077801C  40 82 00 78 */	bne lbl_80778094
/* 80778020  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80778024  80 63 00 04 */	lwz r3, 4(r3)
/* 80778028  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077802C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80778030  38 63 02 10 */	addi r3, r3, 0x210
/* 80778034  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80778038  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8077803C  80 84 00 00 */	lwz r4, 0(r4)
/* 80778040  4B BC E4 70 */	b PSMTXCopy
/* 80778044  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80778048  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 8077804C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80778050  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80778054  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80778058  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8077805C  4B AF 8E 90 */	b MtxPosition__FP4cXyzP4cXyz
/* 80778060  38 7F 12 F4 */	addi r3, r31, 0x12f4
/* 80778064  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80778068  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8077806C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80778070  4B AF 76 98 */	b SetR__8cM3dGSphFf
/* 80778074  38 7F 12 F4 */	addi r3, r31, 0x12f4
/* 80778078  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8077807C  4B AF 75 CC */	b SetC__8cM3dGSphFRC4cXyz
/* 80778080  7F 23 CB 78 */	mr r3, r25
/* 80778084  38 9F 11 D0 */	addi r4, r31, 0x11d0
/* 80778088  4B AE CB 20 */	b Set__4cCcSFP8cCcD_Obj
/* 8077808C  38 00 00 00 */	li r0, 0
/* 80778090  98 1F 0A 7B */	stb r0, 0xa7b(r31)
lbl_80778094:
/* 80778094  88 1F 05 BA */	lbz r0, 0x5ba(r31)
/* 80778098  28 00 00 01 */	cmplwi r0, 1
/* 8077809C  40 82 01 7C */	bne lbl_80778218
/* 807780A0  88 1F 05 BB */	lbz r0, 0x5bb(r31)
/* 807780A4  7C 00 07 75 */	extsb. r0, r0
/* 807780A8  40 82 00 2C */	bne lbl_807780D4
/* 807780AC  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807780B0  80 63 00 04 */	lwz r3, 4(r3)
/* 807780B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807780B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807780BC  38 63 04 80 */	addi r3, r3, 0x480
/* 807780C0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807780C4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807780C8  80 84 00 00 */	lwz r4, 0(r4)
/* 807780CC  4B BC E3 E4 */	b PSMTXCopy
/* 807780D0  48 00 00 78 */	b lbl_80778148
lbl_807780D4:
/* 807780D4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807780D8  80 63 00 04 */	lwz r3, 4(r3)
/* 807780DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807780E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807780E4  38 63 02 10 */	addi r3, r3, 0x210
/* 807780E8  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807780EC  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807780F0  80 84 00 00 */	lwz r4, 0(r4)
/* 807780F4  4B BC E3 BC */	b PSMTXCopy
/* 807780F8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807780FC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80778100  80 63 00 00 */	lwz r3, 0(r3)
/* 80778104  38 80 17 70 */	li r4, 0x1770
/* 80778108  4B 89 43 2C */	b mDoMtx_YrotM__FPA4_fs
/* 8077810C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80778110  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80778114  80 63 00 00 */	lwz r3, 0(r3)
/* 80778118  38 80 27 10 */	li r4, 0x2710
/* 8077811C  4B 89 42 80 */	b mDoMtx_XrotM__FPA4_fs
/* 80778120  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80778124  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80778128  80 63 00 00 */	lwz r3, 0(r3)
/* 8077812C  38 80 46 50 */	li r4, 0x4650
/* 80778130  4B 89 43 9C */	b mDoMtx_ZrotM__FPA4_fs
/* 80778134  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 80778138  C0 5E 01 9C */	lfs f2, 0x19c(r30)
/* 8077813C  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 80778140  38 60 00 01 */	li r3, 1
/* 80778144  4B AF 8D 18 */	b MtxTrans__FfffUc
lbl_80778148:
/* 80778148  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077814C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80778150  80 63 00 00 */	lwz r3, 0(r3)
/* 80778154  80 9F 06 90 */	lwz r4, 0x690(r31)
/* 80778158  38 84 00 24 */	addi r4, r4, 0x24
/* 8077815C  4B BC E3 54 */	b PSMTXCopy
/* 80778160  88 1F 0A 7B */	lbz r0, 0xa7b(r31)
/* 80778164  7C 00 07 75 */	extsb. r0, r0
/* 80778168  41 82 00 74 */	beq lbl_807781DC
/* 8077816C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80778170  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80778174  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80778178  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8077817C  D0 21 00 DC */	stfs f1, 0xdc(r1)
/* 80778180  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80778184  38 81 00 C8 */	addi r4, r1, 0xc8
/* 80778188  4B AF 8D 64 */	b MtxPosition__FP4cXyzP4cXyz
/* 8077818C  38 7F 12 F4 */	addi r3, r31, 0x12f4
/* 80778190  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80778194  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80778198  EC 21 00 32 */	fmuls f1, f1, f0
/* 8077819C  4B AF 75 6C */	b SetR__8cM3dGSphFf
/* 807781A0  88 1F 0A 7C */	lbz r0, 0xa7c(r31)
/* 807781A4  7C 00 07 75 */	extsb. r0, r0
/* 807781A8  40 82 00 1C */	bne lbl_807781C4
/* 807781AC  38 00 00 01 */	li r0, 1
/* 807781B0  98 1F 0A 7C */	stb r0, 0xa7c(r31)
/* 807781B4  38 7F 11 D0 */	addi r3, r31, 0x11d0
/* 807781B8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 807781BC  4B 90 C8 BC */	b StartCAt__8dCcD_SphFR4cXyz
/* 807781C0  48 00 00 10 */	b lbl_807781D0
lbl_807781C4:
/* 807781C4  38 7F 11 D0 */	addi r3, r31, 0x11d0
/* 807781C8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 807781CC  4B 90 C8 F8 */	b MoveCAt__8dCcD_SphFR4cXyz
lbl_807781D0:
/* 807781D0  38 00 00 00 */	li r0, 0
/* 807781D4  98 1F 0A 7B */	stb r0, 0xa7b(r31)
/* 807781D8  48 00 00 34 */	b lbl_8077820C
lbl_807781DC:
/* 807781DC  C0 1E 02 AC */	lfs f0, 0x2ac(r30)
/* 807781E0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 807781E4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807781E8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 807781EC  38 7F 12 F4 */	addi r3, r31, 0x12f4
/* 807781F0  38 81 00 A4 */	addi r4, r1, 0xa4
/* 807781F4  4B AF 74 54 */	b SetC__8cM3dGSphFRC4cXyz
/* 807781F8  38 7F 12 F4 */	addi r3, r31, 0x12f4
/* 807781FC  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80778200  4B AF 75 08 */	b SetR__8cM3dGSphFf
/* 80778204  38 00 00 00 */	li r0, 0
/* 80778208  98 1F 0A 7C */	stb r0, 0xa7c(r31)
lbl_8077820C:
/* 8077820C  7F 23 CB 78 */	mr r3, r25
/* 80778210  38 9F 11 D0 */	addi r4, r31, 0x11d0
/* 80778214  4B AE C9 94 */	b Set__4cCcSFP8cCcD_Obj
lbl_80778218:
/* 80778218  88 1F 05 BA */	lbz r0, 0x5ba(r31)
/* 8077821C  28 00 00 02 */	cmplwi r0, 2
/* 80778220  41 80 04 DC */	blt lbl_807786FC
/* 80778224  A8 7F 0A 76 */	lha r3, 0xa76(r31)
/* 80778228  2C 03 00 00 */	cmpwi r3, 0
/* 8077822C  41 82 00 0C */	beq lbl_80778238
/* 80778230  38 03 FF FF */	addi r0, r3, -1
/* 80778234  B0 1F 0A 76 */	sth r0, 0xa76(r31)
lbl_80778238:
/* 80778238  A8 9F 0A 76 */	lha r4, 0xa76(r31)
/* 8077823C  1C 04 78 00 */	mulli r0, r4, 0x7800
/* 80778240  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80778244  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80778248  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8077824C  7C 63 04 2E */	lfsx f3, r3, r0
/* 80778250  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80778254  C8 3E 00 68 */	lfd f1, 0x68(r30)
/* 80778258  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 8077825C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80778260  3C 00 43 30 */	lis r0, 0x4330
/* 80778264  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 80778268  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 8077826C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80778270  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80778274  EC 02 00 32 */	fmuls f0, f2, f0
/* 80778278  FC 00 00 1E */	fctiwz f0, f0
/* 8077827C  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80778280  80 01 00 EC */	lwz r0, 0xec(r1)
/* 80778284  B0 1F 0A 78 */	sth r0, 0xa78(r31)
/* 80778288  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 8077828C  83 23 00 04 */	lwz r25, 4(r3)
/* 80778290  88 1F 05 BB */	lbz r0, 0x5bb(r31)
/* 80778294  7C 00 07 75 */	extsb. r0, r0
/* 80778298  40 82 00 24 */	bne lbl_807782BC
/* 8077829C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807782A0  80 63 00 04 */	lwz r3, 4(r3)
/* 807782A4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807782A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807782AC  38 63 03 90 */	addi r3, r3, 0x390
/* 807782B0  38 99 00 24 */	addi r4, r25, 0x24
/* 807782B4  4B BC E1 FC */	b PSMTXCopy
/* 807782B8  48 00 00 8C */	b lbl_80778344
lbl_807782BC:
/* 807782BC  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807782C0  80 63 00 04 */	lwz r3, 4(r3)
/* 807782C4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807782C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807782CC  38 63 02 10 */	addi r3, r3, 0x210
/* 807782D0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807782D4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807782D8  80 84 00 00 */	lwz r4, 0(r4)
/* 807782DC  4B BC E1 D4 */	b PSMTXCopy
/* 807782E0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807782E4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807782E8  80 63 00 00 */	lwz r3, 0(r3)
/* 807782EC  38 80 17 70 */	li r4, 0x1770
/* 807782F0  4B 89 41 44 */	b mDoMtx_YrotM__FPA4_fs
/* 807782F4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807782F8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807782FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80778300  38 80 27 10 */	li r4, 0x2710
/* 80778304  4B 89 40 98 */	b mDoMtx_XrotM__FPA4_fs
/* 80778308  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077830C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80778310  80 63 00 00 */	lwz r3, 0(r3)
/* 80778314  38 80 46 50 */	li r4, 0x4650
/* 80778318  4B 89 41 B4 */	b mDoMtx_ZrotM__FPA4_fs
/* 8077831C  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 80778320  FC 40 08 90 */	fmr f2, f1
/* 80778324  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 80778328  38 60 00 01 */	li r3, 1
/* 8077832C  4B AF 8B 30 */	b MtxTrans__FfffUc
/* 80778330  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80778334  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80778338  80 63 00 00 */	lwz r3, 0(r3)
/* 8077833C  38 99 00 24 */	addi r4, r25, 0x24
/* 80778340  4B BC E1 70 */	b PSMTXCopy
lbl_80778344:
/* 80778344  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 80778348  38 80 00 00 */	li r4, 0
/* 8077834C  38 A0 00 00 */	li r5, 0
/* 80778350  4B 89 8D 60 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80778354  80 7F 06 94 */	lwz r3, 0x694(r31)
/* 80778358  4B 89 8E 94 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8077835C  88 1F 0A 72 */	lbz r0, 0xa72(r31)
/* 80778360  7C 00 07 75 */	extsb. r0, r0
/* 80778364  41 82 00 80 */	beq lbl_807783E4
/* 80778368  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8077836C  80 63 00 04 */	lwz r3, 4(r3)
/* 80778370  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80778374  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80778378  38 63 04 80 */	addi r3, r3, 0x480
/* 8077837C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80778380  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80778384  80 84 00 00 */	lwz r4, 0(r4)
/* 80778388  4B BC E1 28 */	b PSMTXCopy
/* 8077838C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80778390  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80778394  80 63 00 00 */	lwz r3, 0(r3)
/* 80778398  80 9F 06 90 */	lwz r4, 0x690(r31)
/* 8077839C  38 84 00 24 */	addi r4, r4, 0x24
/* 807783A0  4B BC E1 10 */	b PSMTXCopy
/* 807783A4  88 1F 05 BA */	lbz r0, 0x5ba(r31)
/* 807783A8  28 00 00 03 */	cmplwi r0, 3
/* 807783AC  41 80 00 28 */	blt lbl_807783D4
/* 807783B0  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 807783B4  2C 00 00 02 */	cmpwi r0, 2
/* 807783B8  40 82 00 10 */	bne lbl_807783C8
/* 807783BC  A8 1F 0A 62 */	lha r0, 0xa62(r31)
/* 807783C0  2C 00 00 12 */	cmpwi r0, 0x12
/* 807783C4  41 81 00 20 */	bgt lbl_807783E4
lbl_807783C8:
/* 807783C8  7F E3 FB 78 */	mr r3, r31
/* 807783CC  4B FF D4 61 */	bl fire_eff_set__FP11e_rdy_class
/* 807783D0  48 00 00 14 */	b lbl_807783E4
lbl_807783D4:
/* 807783D4  C0 1E 02 AC */	lfs f0, 0x2ac(r30)
/* 807783D8  D0 1F 13 4C */	stfs f0, 0x134c(r31)
/* 807783DC  D0 1F 13 50 */	stfs f0, 0x1350(r31)
/* 807783E0  D0 1F 13 54 */	stfs f0, 0x1354(r31)
lbl_807783E4:
/* 807783E4  88 1F 0A 73 */	lbz r0, 0xa73(r31)
/* 807783E8  7C 00 07 75 */	extsb. r0, r0
/* 807783EC  41 82 03 10 */	beq lbl_807786FC
/* 807783F0  88 1F 05 BA */	lbz r0, 0x5ba(r31)
/* 807783F4  28 00 00 03 */	cmplwi r0, 3
/* 807783F8  40 82 00 34 */	bne lbl_8077842C
/* 807783FC  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080007@ha */
/* 80778400  38 03 00 07 */	addi r0, r3, 0x0007 /* 0x00080007@l */
/* 80778404  90 01 00 24 */	stw r0, 0x24(r1)
/* 80778408  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 8077840C  38 81 00 24 */	addi r4, r1, 0x24
/* 80778410  38 A0 00 00 */	li r5, 0
/* 80778414  38 C0 FF FF */	li r6, -1
/* 80778418  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 8077841C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80778420  7D 89 03 A6 */	mtctr r12
/* 80778424  4E 80 04 21 */	bctrl 
/* 80778428  48 00 00 30 */	b lbl_80778458
lbl_8077842C:
/* 8077842C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080002@ha */
/* 80778430  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00080002@l */
/* 80778434  90 01 00 20 */	stw r0, 0x20(r1)
/* 80778438  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 8077843C  38 81 00 20 */	addi r4, r1, 0x20
/* 80778440  38 A0 00 00 */	li r5, 0
/* 80778444  38 C0 FF FF */	li r6, -1
/* 80778448  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 8077844C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80778450  7D 89 03 A6 */	mtctr r12
/* 80778454  4E 80 04 21 */	bctrl 
lbl_80778458:
/* 80778458  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070017@ha */
/* 8077845C  38 03 00 17 */	addi r0, r3, 0x0017 /* 0x00070017@l */
/* 80778460  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80778464  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80778468  38 81 00 1C */	addi r4, r1, 0x1c
/* 8077846C  38 A0 FF FF */	li r5, -1
/* 80778470  81 9F 05 D0 */	lwz r12, 0x5d0(r31)
/* 80778474  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80778478  7D 89 03 A6 */	mtctr r12
/* 8077847C  4E 80 04 21 */	bctrl 
/* 80778480  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80778484  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80778488  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 8077848C  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 80778490  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80778494  80 63 00 04 */	lwz r3, 4(r3)
/* 80778498  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077849C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807784A0  38 63 04 80 */	addi r3, r3, 0x480
/* 807784A4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807784A8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807784AC  80 84 00 00 */	lwz r4, 0(r4)
/* 807784B0  4B BC E0 00 */	b PSMTXCopy
/* 807784B4  38 61 00 D4 */	addi r3, r1, 0xd4
/* 807784B8  38 81 00 C8 */	addi r4, r1, 0xc8
/* 807784BC  4B AF 8A 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 807784C0  80 1F 0B CC */	lwz r0, 0xbcc(r31)
/* 807784C4  28 00 00 00 */	cmplwi r0, 0
/* 807784C8  40 82 00 10 */	bne lbl_807784D8
/* 807784CC  A8 1F 0A 42 */	lha r0, 0xa42(r31)
/* 807784D0  2C 00 00 09 */	cmpwi r0, 9
/* 807784D4  40 82 00 70 */	bne lbl_80778544
lbl_807784D8:
/* 807784D8  38 61 00 50 */	addi r3, r1, 0x50
/* 807784DC  38 9F 0A A4 */	addi r4, r31, 0xaa4
/* 807784E0  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 807784E4  4B AE E6 50 */	b __mi__4cXyzCFRC3Vec
/* 807784E8  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 807784EC  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 807784F0  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807784F4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807784F8  C0 41 00 58 */	lfs f2, 0x58(r1)
/* 807784FC  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 80778500  4B AE F1 74 */	b cM_atan2s__Fff
/* 80778504  B0 61 00 3E */	sth r3, 0x3e(r1)
/* 80778508  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8077850C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80778510  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80778514  EC 00 00 32 */	fmuls f0, f0, f0
/* 80778518  EC 41 00 2A */	fadds f2, f1, f0
/* 8077851C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80778520  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80778524  40 81 00 0C */	ble lbl_80778530
/* 80778528  FC 00 10 34 */	frsqrte f0, f2
/* 8077852C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80778530:
/* 80778530  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 80778534  4B AE F1 40 */	b cM_atan2s__Fff
/* 80778538  7C 03 00 D0 */	neg r0, r3
/* 8077853C  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80778540  48 00 01 34 */	b lbl_80778674
lbl_80778544:
/* 80778544  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80778548  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8077854C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80778550  C0 63 05 38 */	lfs f3, 0x538(r3)
/* 80778554  D0 61 00 D4 */	stfs f3, 0xd4(r1)
/* 80778558  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 8077855C  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80778560  C0 43 05 40 */	lfs f2, 0x540(r3)
/* 80778564  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 80778568  88 1F 13 66 */	lbz r0, 0x1366(r31)
/* 8077856C  7C 00 07 75 */	extsb. r0, r0
/* 80778570  41 82 00 28 */	beq lbl_80778598
/* 80778574  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 80778578  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 8077857C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80778580  EC 03 00 2A */	fadds f0, f3, f0
/* 80778584  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80778588  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 8077858C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80778590  EC 02 00 2A */	fadds f0, f2, f0
/* 80778594  D0 01 00 DC */	stfs f0, 0xdc(r1)
lbl_80778598:
/* 80778598  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8077859C  38 81 00 C8 */	addi r4, r1, 0xc8
/* 807785A0  7C 65 1B 78 */	mr r5, r3
/* 807785A4  4B BC EB 10 */	b PSVECSubtract
/* 807785A8  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 807785AC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 807785B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807785B4  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 807785B8  C0 21 00 D4 */	lfs f1, 0xd4(r1)
/* 807785BC  C0 41 00 DC */	lfs f2, 0xdc(r1)
/* 807785C0  4B AE F0 B4 */	b cM_atan2s__Fff
/* 807785C4  B0 61 00 3E */	sth r3, 0x3e(r1)
/* 807785C8  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 807785CC  EC 20 00 32 */	fmuls f1, f0, f0
/* 807785D0  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 807785D4  EC 00 00 32 */	fmuls f0, f0, f0
/* 807785D8  EC 41 00 2A */	fadds f2, f1, f0
/* 807785DC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807785E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807785E4  40 81 00 0C */	ble lbl_807785F0
/* 807785E8  FC 00 10 34 */	frsqrte f0, f2
/* 807785EC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807785F0:
/* 807785F0  C0 21 00 D8 */	lfs f1, 0xd8(r1)
/* 807785F4  4B AE F0 80 */	b cM_atan2s__Fff
/* 807785F8  7C 03 00 D0 */	neg r0, r3
/* 807785FC  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80778600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80778604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80778608  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8077860C  3C 80 80 78 */	lis r4, stringBase0@ha
/* 80778610  38 84 A0 BC */	addi r4, r4, stringBase0@l
/* 80778614  4B BF 03 80 */	b strcmp
/* 80778618  2C 03 00 00 */	cmpwi r3, 0
/* 8077861C  41 82 00 58 */	beq lbl_80778674
/* 80778620  88 1F 13 66 */	lbz r0, 0x1366(r31)
/* 80778624  7C 00 07 75 */	extsb. r0, r0
/* 80778628  40 82 00 4C */	bne lbl_80778674
/* 8077862C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80778630  4B AE F3 5C */	b cM_rndFX__Ff
/* 80778634  C0 1E 02 B0 */	lfs f0, 0x2b0(r30)
/* 80778638  EC 00 08 2A */	fadds f0, f0, f1
/* 8077863C  FC 00 00 1E */	fctiwz f0, f0
/* 80778640  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 80778644  80 61 00 EC */	lwz r3, 0xec(r1)
/* 80778648  A8 01 00 3C */	lha r0, 0x3c(r1)
/* 8077864C  7C 00 1A 14 */	add r0, r0, r3
/* 80778650  B0 01 00 3C */	sth r0, 0x3c(r1)
/* 80778654  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80778658  4B AE F3 34 */	b cM_rndFX__Ff
/* 8077865C  FC 00 08 1E */	fctiwz f0, f1
/* 80778660  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 80778664  80 61 00 E4 */	lwz r3, 0xe4(r1)
/* 80778668  A8 01 00 3E */	lha r0, 0x3e(r1)
/* 8077866C  7C 00 1A 14 */	add r0, r0, r3
/* 80778670  B0 01 00 3E */	sth r0, 0x3e(r1)
lbl_80778674:
/* 80778674  38 00 00 00 */	li r0, 0
/* 80778678  B0 01 00 40 */	sth r0, 0x40(r1)
/* 8077867C  3C A0 80 00 */	lis r5, 0x8000
/* 80778680  88 1F 05 BA */	lbz r0, 0x5ba(r31)
/* 80778684  28 00 00 03 */	cmplwi r0, 3
/* 80778688  40 82 00 0C */	bne lbl_80778694
/* 8077868C  60 A5 00 01 */	ori r5, r5, 1
/* 80778690  48 00 00 10 */	b lbl_807786A0
lbl_80778694:
/* 80778694  28 00 00 04 */	cmplwi r0, 4
/* 80778698  40 82 00 08 */	bne lbl_807786A0
/* 8077869C  60 A5 00 02 */	ori r5, r5, 2
lbl_807786A0:
/* 807786A0  88 1F 05 B8 */	lbz r0, 0x5b8(r31)
/* 807786A4  28 00 00 0B */	cmplwi r0, 0xb
/* 807786A8  40 82 00 08 */	bne lbl_807786B0
/* 807786AC  60 A5 00 10 */	ori r5, r5, 0x10
lbl_807786B0:
/* 807786B0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807786B4  7C 07 07 74 */	extsb r7, r0
/* 807786B8  38 00 00 00 */	li r0, 0
/* 807786BC  90 01 00 08 */	stw r0, 8(r1)
/* 807786C0  38 60 02 E5 */	li r3, 0x2e5
/* 807786C4  28 1F 00 00 */	cmplwi r31, 0
/* 807786C8  41 82 00 0C */	beq lbl_807786D4
/* 807786CC  80 9F 00 04 */	lwz r4, 4(r31)
/* 807786D0  48 00 00 08 */	b lbl_807786D8
lbl_807786D4:
/* 807786D4  38 80 FF FF */	li r4, -1
lbl_807786D8:
/* 807786D8  38 C1 00 C8 */	addi r6, r1, 0xc8
/* 807786DC  39 01 00 3C */	addi r8, r1, 0x3c
/* 807786E0  39 20 00 00 */	li r9, 0
/* 807786E4  39 40 FF FF */	li r10, -1
/* 807786E8  4B 8A 18 08 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 807786EC  38 00 00 00 */	li r0, 0
/* 807786F0  98 1F 0A 73 */	stb r0, 0xa73(r31)
/* 807786F4  38 00 00 0F */	li r0, 0xf
/* 807786F8  B0 1F 0A 76 */	sth r0, 0xa76(r31)
lbl_807786FC:
/* 807786FC  88 1F 06 9C */	lbz r0, 0x69c(r31)
/* 80778700  7C 00 07 75 */	extsb. r0, r0
/* 80778704  41 82 00 CC */	beq lbl_807787D0
/* 80778708  3A A0 00 00 */	li r21, 0
/* 8077870C  A8 7F 0A 64 */	lha r3, 0xa64(r31)
/* 80778710  7C 60 07 35 */	extsh. r0, r3
/* 80778714  41 82 00 2C */	beq lbl_80778740
/* 80778718  1C 63 00 0A */	mulli r3, r3, 0xa
/* 8077871C  2C 03 01 90 */	cmpwi r3, 0x190
/* 80778720  40 81 00 08 */	ble lbl_80778728
/* 80778724  38 60 01 90 */	li r3, 0x190
lbl_80778728:
/* 80778728  A8 1F 0A 40 */	lha r0, 0xa40(r31)
/* 8077872C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80778730  7C 00 19 D6 */	mullw r0, r0, r3
/* 80778734  54 00 08 3C */	slwi r0, r0, 1
/* 80778738  7C 03 00 50 */	subf r0, r3, r0
/* 8077873C  7C 15 07 34 */	extsh r21, r0
lbl_80778740:
/* 80778740  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80778744  80 63 00 04 */	lwz r3, 4(r3)
/* 80778748  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8077874C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80778750  38 63 04 80 */	addi r3, r3, 0x480
/* 80778754  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80778758  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8077875C  80 84 00 00 */	lwz r4, 0(r4)
/* 80778760  4B BC DD 50 */	b PSMTXCopy
/* 80778764  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80778768  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 8077876C  C0 7E 02 A8 */	lfs f3, 0x2a8(r30)
/* 80778770  38 60 00 01 */	li r3, 1
/* 80778774  4B AF 86 E8 */	b MtxTrans__FfffUc
/* 80778778  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077877C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80778780  80 63 00 00 */	lwz r3, 0(r3)
/* 80778784  38 80 80 00 */	li r4, -32768
/* 80778788  4B 89 3C 14 */	b mDoMtx_XrotM__FPA4_fs
/* 8077878C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80778790  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80778794  80 63 00 00 */	lwz r3, 0(r3)
/* 80778798  38 15 EA 33 */	addi r0, r21, -5581
/* 8077879C  7C 04 07 34 */	extsh r4, r0
/* 807787A0  4B 89 3C 94 */	b mDoMtx_YrotM__FPA4_fs
/* 807787A4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807787A8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807787AC  80 63 00 00 */	lwz r3, 0(r3)
/* 807787B0  38 80 28 CD */	li r4, 0x28cd
/* 807787B4  4B 89 3D 18 */	b mDoMtx_ZrotM__FPA4_fs
/* 807787B8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807787BC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807787C0  80 63 00 00 */	lwz r3, 0(r3)
/* 807787C4  80 9F 06 98 */	lwz r4, 0x698(r31)
/* 807787C8  38 84 00 24 */	addi r4, r4, 0x24
/* 807787CC  4B BC DC E4 */	b PSMTXCopy
lbl_807787D0:
/* 807787D0  88 1F 0A 38 */	lbz r0, 0xa38(r31)
/* 807787D4  7C 00 07 75 */	extsb. r0, r0
/* 807787D8  41 82 00 18 */	beq lbl_807787F0
/* 807787DC  38 7F 0A 3C */	addi r3, r31, 0xa3c
/* 807787E0  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 807787E4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807787E8  C0 7E 02 B4 */	lfs f3, 0x2b4(r30)
/* 807787EC  4B AF 72 50 */	b cLib_addCalc2__FPffff
lbl_807787F0:
/* 807787F0  88 1F 0A 8C */	lbz r0, 0xa8c(r31)
/* 807787F4  7C 00 07 75 */	extsb. r0, r0
/* 807787F8  40 82 00 D8 */	bne lbl_807788D0
/* 807787FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80778800  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80778804  82 A3 5D AC */	lwz r21, 0x5dac(r3)
/* 80778808  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8077880C  80 63 00 04 */	lwz r3, 4(r3)
/* 80778810  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80778814  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80778818  38 63 02 10 */	addi r3, r3, 0x210
/* 8077881C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80778820  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80778824  4B BC DC 8C */	b PSMTXCopy
/* 80778828  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8077882C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80778830  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80778834  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 80778838  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8077883C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80778840  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80778844  D0 01 00 D0 */	stfs f0, 0xd0(r1)
/* 80778848  38 61 00 44 */	addi r3, r1, 0x44
/* 8077884C  38 95 04 D0 */	addi r4, r21, 0x4d0
/* 80778850  38 A1 00 C8 */	addi r5, r1, 0xc8
/* 80778854  4B AE E2 E0 */	b __mi__4cXyzCFRC3Vec
/* 80778858  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8077885C  D0 21 00 D4 */	stfs f1, 0xd4(r1)
/* 80778860  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80778864  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80778868  C0 41 00 4C */	lfs f2, 0x4c(r1)
/* 8077886C  D0 41 00 DC */	stfs f2, 0xdc(r1)
/* 80778870  4B AE EE 04 */	b cM_atan2s__Fff
/* 80778874  7C 64 1B 78 */	mr r4, r3
/* 80778878  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8077887C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80778880  80 63 00 00 */	lwz r3, 0(r3)
/* 80778884  4B 89 3B 58 */	b mDoMtx_YrotS__FPA4_fs
/* 80778888  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077888C  D0 01 00 D4 */	stfs f0, 0xd4(r1)
/* 80778890  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80778894  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80778898  D0 01 00 DC */	stfs f0, 0xdc(r1)
/* 8077889C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 807788A0  38 81 00 BC */	addi r4, r1, 0xbc
/* 807788A4  4B AF 86 48 */	b MtxPosition__FP4cXyzP4cXyz
/* 807788A8  38 61 00 BC */	addi r3, r1, 0xbc
/* 807788AC  38 81 00 C8 */	addi r4, r1, 0xc8
/* 807788B0  7C 65 1B 78 */	mr r5, r3
/* 807788B4  4B BC E7 DC */	b PSVECAdd
/* 807788B8  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 807788BC  D0 1F 05 68 */	stfs f0, 0x568(r31)
/* 807788C0  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 807788C4  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 807788C8  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 807788CC  D0 1F 05 70 */	stfs f0, 0x570(r31)
lbl_807788D0:
/* 807788D0  C0 7F 05 38 */	lfs f3, 0x538(r31)
/* 807788D4  D0 61 00 98 */	stfs f3, 0x98(r1)
/* 807788D8  C0 5F 05 3C */	lfs f2, 0x53c(r31)
/* 807788DC  D0 41 00 9C */	stfs f2, 0x9c(r1)
/* 807788E0  C0 3F 05 40 */	lfs f1, 0x540(r31)
/* 807788E4  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 807788E8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 807788EC  EC 02 00 2A */	fadds f0, f2, f0
/* 807788F0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 807788F4  D0 7F 05 74 */	stfs f3, 0x574(r31)
/* 807788F8  D0 1F 05 78 */	stfs f0, 0x578(r31)
/* 807788FC  D0 3F 05 7C */	stfs f1, 0x57c(r31)
/* 80778900  7F E3 FB 78 */	mr r3, r31
/* 80778904  4B FF D2 4D */	bl demo_camera__FP11e_rdy_class
/* 80778908  38 60 00 01 */	li r3, 1
lbl_8077890C:
/* 8077890C  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 80778910  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 80778914  39 61 01 20 */	addi r11, r1, 0x120
/* 80778918  4B BE 98 F0 */	b _restgpr_21
/* 8077891C  80 01 01 34 */	lwz r0, 0x134(r1)
/* 80778920  7C 08 03 A6 */	mtlr r0
/* 80778924  38 21 01 30 */	addi r1, r1, 0x130
/* 80778928  4E 80 00 20 */	blr 

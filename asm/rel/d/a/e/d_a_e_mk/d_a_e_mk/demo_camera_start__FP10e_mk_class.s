lbl_807174E4:
/* 807174E4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 807174E8  7C 08 02 A6 */	mflr r0
/* 807174EC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 807174F0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807174F4  4B C4 AC D8 */	b _savegpr_25
/* 807174F8  7C 7C 1B 78 */	mr r28, r3
/* 807174FC  3C 60 80 72 */	lis r3, lit_3777@ha
/* 80717500  3B A3 C5 44 */	addi r29, r3, lit_3777@l
/* 80717504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80717508  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8071750C  83 7E 5D AC */	lwz r27, 0x5dac(r30)
/* 80717510  80 1C 07 08 */	lwz r0, 0x708(r28)
/* 80717514  90 01 00 20 */	stw r0, 0x20(r1)
/* 80717518  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8071751C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80717520  38 81 00 20 */	addi r4, r1, 0x20
/* 80717524  4B 90 22 D4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80717528  7C 7F 1B 78 */	mr r31, r3
/* 8071752C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80717530  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80717534  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 80717538  7C 00 07 74 */	extsb r0, r0
/* 8071753C  38 63 5D 74 */	addi r3, r3, 0x5d74
/* 80717540  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80717544  7F 23 00 2E */	lwzx r25, r3, r0
/* 80717548  83 43 00 00 */	lwz r26, 0(r3)
/* 8071754C  A8 1C 0C 32 */	lha r0, 0xc32(r28)
/* 80717550  2C 00 00 07 */	cmpwi r0, 7
/* 80717554  41 82 07 D4 */	beq lbl_80717D28
/* 80717558  40 80 00 30 */	bge lbl_80717588
/* 8071755C  2C 00 00 03 */	cmpwi r0, 3
/* 80717560  41 82 02 6C */	beq lbl_807177CC
/* 80717564  40 80 00 14 */	bge lbl_80717578
/* 80717568  2C 00 00 01 */	cmpwi r0, 1
/* 8071756C  41 82 00 44 */	beq lbl_807175B0
/* 80717570  40 80 01 E8 */	bge lbl_80717758
/* 80717574  48 00 0C 60 */	b lbl_807181D4
lbl_80717578:
/* 80717578  2C 00 00 05 */	cmpwi r0, 5
/* 8071757C  41 82 05 10 */	beq lbl_80717A8C
/* 80717580  40 80 06 84 */	bge lbl_80717C04
/* 80717584  48 00 03 00 */	b lbl_80717884
lbl_80717588:
/* 80717588  2C 00 00 0B */	cmpwi r0, 0xb
/* 8071758C  41 82 0B 2C */	beq lbl_807180B8
/* 80717590  40 80 00 14 */	bge lbl_807175A4
/* 80717594  2C 00 00 09 */	cmpwi r0, 9
/* 80717598  41 82 08 CC */	beq lbl_80717E64
/* 8071759C  40 80 0A 18 */	bge lbl_80717FB4
/* 807175A0  48 00 08 20 */	b lbl_80717DC0
lbl_807175A4:
/* 807175A4  2C 00 00 64 */	cmpwi r0, 0x64
/* 807175A8  41 82 0C 2C */	beq lbl_807181D4
/* 807175AC  48 00 0C 28 */	b lbl_807181D4
lbl_807175B0:
/* 807175B0  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 807175B4  28 00 00 02 */	cmplwi r0, 2
/* 807175B8  41 82 00 2C */	beq lbl_807175E4
/* 807175BC  7F 83 E3 78 */	mr r3, r28
/* 807175C0  38 80 00 02 */	li r4, 2
/* 807175C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 807175C8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 807175CC  38 C0 00 00 */	li r6, 0
/* 807175D0  4B 90 43 38 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807175D4  A0 1C 00 FA */	lhz r0, 0xfa(r28)
/* 807175D8  60 00 00 02 */	ori r0, r0, 2
/* 807175DC  B0 1C 00 FA */	sth r0, 0xfa(r28)
/* 807175E0  48 00 0C 44 */	b lbl_80718224
lbl_807175E4:
/* 807175E4  38 79 02 48 */	addi r3, r25, 0x248
/* 807175E8  4B A4 9E E8 */	b Stop__9dCamera_cFv
/* 807175EC  38 00 00 02 */	li r0, 2
/* 807175F0  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 807175F4  38 00 00 00 */	li r0, 0
/* 807175F8  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 807175FC  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 80717600  D0 1C 0C 80 */	stfs f0, 0xc80(r28)
/* 80717604  38 79 02 48 */	addi r3, r25, 0x248
/* 80717608  38 80 00 03 */	li r4, 3
/* 8071760C  4B A4 BA 00 */	b SetTrimSize__9dCamera_cFl
/* 80717610  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 80717614  D0 1C 0C 90 */	stfs f0, 0xc90(r28)
/* 80717618  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8071761C  38 00 00 03 */	li r0, 3
/* 80717620  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80717624  38 00 00 00 */	li r0, 0
/* 80717628  90 03 06 0C */	stw r0, 0x60c(r3)
/* 8071762C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80717630  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80717634  80 63 00 00 */	lwz r3, 0(r3)
/* 80717638  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8071763C  3C 80 02 00 */	lis r4, 0x0200 /* 0x0200000D@ha */
/* 80717640  38 84 00 0D */	addi r4, r4, 0x000D /* 0x0200000D@l */
/* 80717644  4B B9 85 50 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 80717648  C0 1A 00 D8 */	lfs f0, 0xd8(r26)
/* 8071764C  D0 1C 0C 38 */	stfs f0, 0xc38(r28)
/* 80717650  C0 1A 00 DC */	lfs f0, 0xdc(r26)
/* 80717654  D0 1C 0C 3C */	stfs f0, 0xc3c(r28)
/* 80717658  C0 1A 00 E0 */	lfs f0, 0xe0(r26)
/* 8071765C  D0 1C 0C 40 */	stfs f0, 0xc40(r28)
/* 80717660  C0 1A 00 E4 */	lfs f0, 0xe4(r26)
/* 80717664  D0 1C 0C 44 */	stfs f0, 0xc44(r28)
/* 80717668  C0 1A 00 E8 */	lfs f0, 0xe8(r26)
/* 8071766C  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80717670  C0 1A 00 EC */	lfs f0, 0xec(r26)
/* 80717674  D0 1C 0C 4C */	stfs f0, 0xc4c(r28)
/* 80717678  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 8071767C  D0 1C 0C 50 */	stfs f0, 0xc50(r28)
/* 80717680  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80717684  D0 1C 0C 54 */	stfs f0, 0xc54(r28)
/* 80717688  C0 1D 00 C8 */	lfs f0, 0xc8(r29)
/* 8071768C  D0 1C 0C 58 */	stfs f0, 0xc58(r28)
/* 80717690  C0 1D 00 CC */	lfs f0, 0xcc(r29)
/* 80717694  D0 1C 0C 5C */	stfs f0, 0xc5c(r28)
/* 80717698  C0 1D 00 D0 */	lfs f0, 0xd0(r29)
/* 8071769C  D0 1C 0C 60 */	stfs f0, 0xc60(r28)
/* 807176A0  C0 1D 00 D4 */	lfs f0, 0xd4(r29)
/* 807176A4  D0 1C 0C 64 */	stfs f0, 0xc64(r28)
/* 807176A8  C0 3C 0C 50 */	lfs f1, 0xc50(r28)
/* 807176AC  C0 1C 0C 38 */	lfs f0, 0xc38(r28)
/* 807176B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807176B4  FC 00 02 10 */	fabs f0, f0
/* 807176B8  FC 00 00 18 */	frsp f0, f0
/* 807176BC  D0 1C 0C 68 */	stfs f0, 0xc68(r28)
/* 807176C0  C0 3C 0C 54 */	lfs f1, 0xc54(r28)
/* 807176C4  C0 1C 0C 3C */	lfs f0, 0xc3c(r28)
/* 807176C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807176CC  FC 00 02 10 */	fabs f0, f0
/* 807176D0  FC 00 00 18 */	frsp f0, f0
/* 807176D4  D0 1C 0C 6C */	stfs f0, 0xc6c(r28)
/* 807176D8  C0 3C 0C 58 */	lfs f1, 0xc58(r28)
/* 807176DC  C0 1C 0C 40 */	lfs f0, 0xc40(r28)
/* 807176E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807176E4  FC 00 02 10 */	fabs f0, f0
/* 807176E8  FC 00 00 18 */	frsp f0, f0
/* 807176EC  D0 1C 0C 70 */	stfs f0, 0xc70(r28)
/* 807176F0  C0 3C 0C 5C */	lfs f1, 0xc5c(r28)
/* 807176F4  C0 1C 0C 44 */	lfs f0, 0xc44(r28)
/* 807176F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807176FC  FC 00 02 10 */	fabs f0, f0
/* 80717700  FC 00 00 18 */	frsp f0, f0
/* 80717704  D0 1C 0C 74 */	stfs f0, 0xc74(r28)
/* 80717708  C0 3C 0C 60 */	lfs f1, 0xc60(r28)
/* 8071770C  C0 1C 0C 48 */	lfs f0, 0xc48(r28)
/* 80717710  EC 01 00 28 */	fsubs f0, f1, f0
/* 80717714  FC 00 02 10 */	fabs f0, f0
/* 80717718  FC 00 00 18 */	frsp f0, f0
/* 8071771C  D0 1C 0C 78 */	stfs f0, 0xc78(r28)
/* 80717720  C0 3C 0C 64 */	lfs f1, 0xc64(r28)
/* 80717724  C0 1C 0C 4C */	lfs f0, 0xc4c(r28)
/* 80717728  EC 01 00 28 */	fsubs f0, f1, f0
/* 8071772C  FC 00 02 10 */	fabs f0, f0
/* 80717730  FC 00 00 18 */	frsp f0, f0
/* 80717734  D0 1C 0C 7C */	stfs f0, 0xc7c(r28)
/* 80717738  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071773C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80717740  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80717744  7F 84 E3 78 */	mr r4, r28
/* 80717748  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 8071774C  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80717750  38 C0 00 00 */	li r6, 0
/* 80717754  4B 92 B1 C0 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80717758:
/* 80717758  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 8071775C  2C 00 00 08 */	cmpwi r0, 8
/* 80717760  40 82 00 20 */	bne lbl_80717780
/* 80717764  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80717768  38 00 00 19 */	li r0, 0x19
/* 8071776C  90 03 06 14 */	stw r0, 0x614(r3)
/* 80717770  38 00 00 00 */	li r0, 0
/* 80717774  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80717778  90 03 06 10 */	stw r0, 0x610(r3)
/* 8071777C  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_80717780:
/* 80717780  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717784  2C 00 00 23 */	cmpwi r0, 0x23
/* 80717788  41 80 00 24 */	blt lbl_807177AC
/* 8071778C  7F 83 E3 78 */	mr r3, r28
/* 80717790  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 80717794  4B FF FC 6D */	bl cam_3d_morf__FP10e_mk_classf
/* 80717798  38 7C 0C 84 */	addi r3, r28, 0xc84
/* 8071779C  C0 3D 00 DC */	lfs f1, 0xdc(r29)
/* 807177A0  C0 5D 00 04 */	lfs f2, 4(r29)
/* 807177A4  C0 7D 00 E0 */	lfs f3, 0xe0(r29)
/* 807177A8  4B B5 82 94 */	b cLib_addCalc2__FPffff
lbl_807177AC:
/* 807177AC  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 807177B0  2C 00 00 A0 */	cmpwi r0, 0xa0
/* 807177B4  41 80 0A 20 */	blt lbl_807181D4
/* 807177B8  38 00 00 00 */	li r0, 0
/* 807177BC  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 807177C0  38 00 00 03 */	li r0, 3
/* 807177C4  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 807177C8  48 00 0A 0C */	b lbl_807181D4
lbl_807177CC:
/* 807177CC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807177D0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807177D4  80 63 00 00 */	lwz r3, 0(r3)
/* 807177D8  3C 80 80 72 */	lis r4, struct_8071CB08+0x0@ha
/* 807177DC  38 84 CB 08 */	addi r4, r4, struct_8071CB08+0x0@l
/* 807177E0  A8 84 00 00 */	lha r4, 0(r4)
/* 807177E4  4B 8F 4B F8 */	b mDoMtx_YrotS__FPA4_fs
/* 807177E8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807177EC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807177F0  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 807177F4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807177F8  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 807177FC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80717800  38 61 00 84 */	addi r3, r1, 0x84
/* 80717804  38 81 00 78 */	addi r4, r1, 0x78
/* 80717808  4B B5 96 E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 8071780C  38 61 00 60 */	addi r3, r1, 0x60
/* 80717810  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80717814  38 A1 00 78 */	addi r5, r1, 0x78
/* 80717818  4B B4 F2 CC */	b __pl__4cXyzCFRC3Vec
/* 8071781C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80717820  D0 1C 0C 38 */	stfs f0, 0xc38(r28)
/* 80717824  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80717828  D0 1C 0C 3C */	stfs f0, 0xc3c(r28)
/* 8071782C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80717830  D0 1C 0C 40 */	stfs f0, 0xc40(r28)
/* 80717834  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80717838  D0 1C 0C 44 */	stfs f0, 0xc44(r28)
/* 8071783C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80717840  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80717844  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80717848  D0 1C 0C 4C */	stfs f0, 0xc4c(r28)
/* 8071784C  C0 3C 0C 48 */	lfs f1, 0xc48(r28)
/* 80717850  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 80717854  EC 01 00 2A */	fadds f0, f1, f0
/* 80717858  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 8071785C  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717860  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80717864  41 80 09 70 */	blt lbl_807181D4
/* 80717868  38 00 00 00 */	li r0, 0
/* 8071786C  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 80717870  38 00 00 04 */	li r0, 4
/* 80717874  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 80717878  38 00 00 02 */	li r0, 2
/* 8071787C  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80717880  48 00 09 54 */	b lbl_807181D4
lbl_80717884:
/* 80717884  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717888  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8071788C  80 63 00 00 */	lwz r3, 0(r3)
/* 80717890  3C 80 80 72 */	lis r4, struct_8071CB08+0x0@ha
/* 80717894  38 84 CB 08 */	addi r4, r4, struct_8071CB08+0x0@l
/* 80717898  A8 84 00 00 */	lha r4, 0(r4)
/* 8071789C  4B 8F 4B 40 */	b mDoMtx_YrotS__FPA4_fs
/* 807178A0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807178A4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807178A8  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 807178AC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807178B0  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 807178B4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807178B8  38 61 00 84 */	addi r3, r1, 0x84
/* 807178BC  38 81 00 78 */	addi r4, r1, 0x78
/* 807178C0  4B B5 96 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 807178C4  38 61 00 54 */	addi r3, r1, 0x54
/* 807178C8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807178CC  38 A1 00 78 */	addi r5, r1, 0x78
/* 807178D0  4B B4 F2 14 */	b __pl__4cXyzCFRC3Vec
/* 807178D4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807178D8  D0 1C 0C 38 */	stfs f0, 0xc38(r28)
/* 807178DC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807178E0  D0 1C 0C 3C */	stfs f0, 0xc3c(r28)
/* 807178E4  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807178E8  D0 1C 0C 40 */	stfs f0, 0xc40(r28)
/* 807178EC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807178F0  D0 1C 0C 44 */	stfs f0, 0xc44(r28)
/* 807178F4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807178F8  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 807178FC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80717900  D0 1C 0C 4C */	stfs f0, 0xc4c(r28)
/* 80717904  C0 3C 0C 48 */	lfs f1, 0xc48(r28)
/* 80717908  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 8071790C  EC 01 00 2A */	fadds f0, f1, f0
/* 80717910  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80717914  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717918  2C 00 00 23 */	cmpwi r0, 0x23
/* 8071791C  40 82 00 24 */	bne lbl_80717940
/* 80717920  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80717924  38 00 00 0C */	li r0, 0xc
/* 80717928  90 04 06 14 */	stw r0, 0x614(r4)
/* 8071792C  38 60 00 00 */	li r3, 0
/* 80717930  90 64 06 0C */	stw r3, 0x60c(r4)
/* 80717934  38 00 00 01 */	li r0, 1
/* 80717938  90 04 06 10 */	stw r0, 0x610(r4)
/* 8071793C  B0 64 06 0A */	sth r3, 0x60a(r4)
lbl_80717940:
/* 80717940  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717944  2C 00 00 5F */	cmpwi r0, 0x5f
/* 80717948  41 80 08 8C */	blt lbl_807181D4
/* 8071794C  38 00 00 00 */	li r0, 0
/* 80717950  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 80717954  38 00 00 05 */	li r0, 5
/* 80717958  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 8071795C  C0 1D 00 F0 */	lfs f0, 0xf0(r29)
/* 80717960  D0 1C 0C 9C */	stfs f0, 0xc9c(r28)
/* 80717964  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80717968  D0 1C 0C 84 */	stfs f0, 0xc84(r28)
/* 8071796C  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 80717970  D0 1C 0C 90 */	stfs f0, 0xc90(r28)
/* 80717974  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717978  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8071797C  80 63 00 00 */	lwz r3, 0(r3)
/* 80717980  3C 80 80 72 */	lis r4, struct_8071CB08+0x0@ha
/* 80717984  38 84 CB 08 */	addi r4, r4, struct_8071CB08+0x0@l
/* 80717988  A8 84 00 00 */	lha r4, 0(r4)
/* 8071798C  4B 8F 4A 50 */	b mDoMtx_YrotS__FPA4_fs
/* 80717990  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717994  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80717998  80 63 00 00 */	lwz r3, 0(r3)
/* 8071799C  38 80 06 A4 */	li r4, 0x6a4
/* 807179A0  4B 8F 49 FC */	b mDoMtx_XrotM__FPA4_fs
/* 807179A4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807179A8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807179AC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807179B0  C0 1C 0C 90 */	lfs f0, 0xc90(r28)
/* 807179B4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807179B8  38 61 00 84 */	addi r3, r1, 0x84
/* 807179BC  38 81 00 6C */	addi r4, r1, 0x6c
/* 807179C0  4B B5 95 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 807179C4  38 61 00 6C */	addi r3, r1, 0x6c
/* 807179C8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 807179CC  7C 65 1B 78 */	mr r5, r3
/* 807179D0  4B C2 F6 C0 */	b PSVECAdd
/* 807179D4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807179D8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807179DC  80 63 00 00 */	lwz r3, 0(r3)
/* 807179E0  3C 80 80 72 */	lis r4, struct_8071CB08+0x0@ha
/* 807179E4  38 84 CB 08 */	addi r4, r4, struct_8071CB08+0x0@l
/* 807179E8  A8 84 00 00 */	lha r4, 0(r4)
/* 807179EC  4B 8F 49 F0 */	b mDoMtx_YrotS__FPA4_fs
/* 807179F0  C0 1D 00 F4 */	lfs f0, 0xf4(r29)
/* 807179F4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807179F8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807179FC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80717A00  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80717A04  38 61 00 84 */	addi r3, r1, 0x84
/* 80717A08  38 81 00 78 */	addi r4, r1, 0x78
/* 80717A0C  4B B5 94 E0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80717A10  38 61 00 6C */	addi r3, r1, 0x6c
/* 80717A14  38 81 00 78 */	addi r4, r1, 0x78
/* 80717A18  7C 65 1B 78 */	mr r5, r3
/* 80717A1C  4B C2 F6 74 */	b PSVECAdd
/* 80717A20  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 80717A24  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80717A28  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80717A2C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80717A30  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80717A34  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80717A38  38 61 00 84 */	addi r3, r1, 0x84
/* 80717A3C  38 81 00 78 */	addi r4, r1, 0x78
/* 80717A40  4B B5 94 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80717A44  38 61 00 78 */	addi r3, r1, 0x78
/* 80717A48  38 81 00 6C */	addi r4, r1, 0x6c
/* 80717A4C  7C 65 1B 78 */	mr r5, r3
/* 80717A50  4B C2 F6 40 */	b PSVECAdd
/* 80717A54  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80717A58  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80717A5C  7F 63 DB 78 */	mr r3, r27
/* 80717A60  38 81 00 78 */	addi r4, r1, 0x78
/* 80717A64  A8 BC 04 DE */	lha r5, 0x4de(r28)
/* 80717A68  3C A5 00 01 */	addis r5, r5, 1
/* 80717A6C  38 05 80 00 */	addi r0, r5, -32768
/* 80717A70  7C 05 07 34 */	extsh r5, r0
/* 80717A74  38 C0 00 00 */	li r6, 0
/* 80717A78  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80717A7C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80717A80  7D 89 03 A6 */	mtctr r12
/* 80717A84  4E 80 04 21 */	bctrl 
/* 80717A88  48 00 07 4C */	b lbl_807181D4
lbl_80717A8C:
/* 80717A8C  C0 1D 00 F8 */	lfs f0, 0xf8(r29)
/* 80717A90  D0 1C 0C 90 */	stfs f0, 0xc90(r28)
/* 80717A94  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 80717A98  D0 1C 0C 9C */	stfs f0, 0xc9c(r28)
/* 80717A9C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717AA0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80717AA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80717AA8  3C 80 80 72 */	lis r4, struct_8071CB08+0x0@ha
/* 80717AAC  38 84 CB 08 */	addi r4, r4, struct_8071CB08+0x0@l
/* 80717AB0  A8 84 00 00 */	lha r4, 0(r4)
/* 80717AB4  4B 8F 49 28 */	b mDoMtx_YrotS__FPA4_fs
/* 80717AB8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717ABC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80717AC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80717AC4  C0 1C 0C 9C */	lfs f0, 0xc9c(r28)
/* 80717AC8  FC 00 00 1E */	fctiwz f0, f0
/* 80717ACC  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 80717AD0  80 81 00 94 */	lwz r4, 0x94(r1)
/* 80717AD4  4B 8F 48 C8 */	b mDoMtx_XrotM__FPA4_fs
/* 80717AD8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80717ADC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80717AE0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80717AE4  C0 1D 00 FC */	lfs f0, 0xfc(r29)
/* 80717AE8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80717AEC  38 61 00 84 */	addi r3, r1, 0x84
/* 80717AF0  38 9C 0C 44 */	addi r4, r28, 0xc44
/* 80717AF4  4B B5 93 F8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80717AF8  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80717AFC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80717B00  7C 65 1B 78 */	mr r5, r3
/* 80717B04  4B C2 F5 8C */	b PSVECAdd
/* 80717B08  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717B0C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80717B10  80 63 00 00 */	lwz r3, 0(r3)
/* 80717B14  3C 80 80 72 */	lis r4, struct_8071CB08+0x0@ha
/* 80717B18  38 84 CB 08 */	addi r4, r4, struct_8071CB08+0x0@l
/* 80717B1C  A8 84 00 00 */	lha r4, 0(r4)
/* 80717B20  4B 8F 48 BC */	b mDoMtx_YrotS__FPA4_fs
/* 80717B24  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717B28  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80717B2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80717B30  38 80 07 D0 */	li r4, 0x7d0
/* 80717B34  4B 8F 48 68 */	b mDoMtx_XrotM__FPA4_fs
/* 80717B38  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80717B3C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80717B40  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80717B44  C0 1C 0C 90 */	lfs f0, 0xc90(r28)
/* 80717B48  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80717B4C  38 61 00 84 */	addi r3, r1, 0x84
/* 80717B50  38 9C 0C 38 */	addi r4, r28, 0xc38
/* 80717B54  4B B5 93 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 80717B58  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80717B5C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80717B60  7C 65 1B 78 */	mr r5, r3
/* 80717B64  4B C2 F5 2C */	b PSVECAdd
/* 80717B68  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717B6C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80717B70  80 63 00 00 */	lwz r3, 0(r3)
/* 80717B74  3C 80 80 72 */	lis r4, struct_8071CB08+0x0@ha
/* 80717B78  38 84 CB 08 */	addi r4, r4, struct_8071CB08+0x0@l
/* 80717B7C  A8 84 00 00 */	lha r4, 0(r4)
/* 80717B80  4B 8F 48 5C */	b mDoMtx_YrotS__FPA4_fs
/* 80717B84  C0 1D 00 F4 */	lfs f0, 0xf4(r29)
/* 80717B88  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80717B8C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80717B90  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80717B94  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80717B98  38 61 00 84 */	addi r3, r1, 0x84
/* 80717B9C  38 81 00 78 */	addi r4, r1, 0x78
/* 80717BA0  4B B5 93 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 80717BA4  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80717BA8  38 81 00 78 */	addi r4, r1, 0x78
/* 80717BAC  7C 65 1B 78 */	mr r5, r3
/* 80717BB0  4B C2 F4 E0 */	b PSVECAdd
/* 80717BB4  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717BB8  2C 00 00 05 */	cmpwi r0, 5
/* 80717BBC  40 82 00 28 */	bne lbl_80717BE4
/* 80717BC0  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80717BC4  38 00 00 17 */	li r0, 0x17
/* 80717BC8  90 03 06 14 */	stw r0, 0x614(r3)
/* 80717BCC  38 00 00 01 */	li r0, 1
/* 80717BD0  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80717BD4  38 00 00 02 */	li r0, 2
/* 80717BD8  90 03 06 10 */	stw r0, 0x610(r3)
/* 80717BDC  38 00 00 00 */	li r0, 0
/* 80717BE0  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_80717BE4:
/* 80717BE4  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717BE8  2C 00 00 32 */	cmpwi r0, 0x32
/* 80717BEC  41 80 05 E8 */	blt lbl_807181D4
/* 80717BF0  38 00 00 00 */	li r0, 0
/* 80717BF4  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 80717BF8  38 00 00 06 */	li r0, 6
/* 80717BFC  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 80717C00  48 00 05 D4 */	b lbl_807181D4
lbl_80717C04:
/* 80717C04  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717C08  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80717C0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80717C10  3C 80 80 72 */	lis r4, struct_8071CB08+0x0@ha
/* 80717C14  38 84 CB 08 */	addi r4, r4, struct_8071CB08+0x0@l
/* 80717C18  A8 84 00 00 */	lha r4, 0(r4)
/* 80717C1C  4B 8F 47 C0 */	b mDoMtx_YrotS__FPA4_fs
/* 80717C20  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80717C24  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80717C28  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 80717C2C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80717C30  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80717C34  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80717C38  38 61 00 84 */	addi r3, r1, 0x84
/* 80717C3C  38 81 00 78 */	addi r4, r1, 0x78
/* 80717C40  4B B5 92 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80717C44  38 61 00 48 */	addi r3, r1, 0x48
/* 80717C48  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80717C4C  38 A1 00 78 */	addi r5, r1, 0x78
/* 80717C50  4B B4 EE 94 */	b __pl__4cXyzCFRC3Vec
/* 80717C54  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80717C58  D0 1C 0C 38 */	stfs f0, 0xc38(r28)
/* 80717C5C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80717C60  D0 1C 0C 3C */	stfs f0, 0xc3c(r28)
/* 80717C64  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80717C68  D0 1C 0C 40 */	stfs f0, 0xc40(r28)
/* 80717C6C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80717C70  D0 1C 0C 44 */	stfs f0, 0xc44(r28)
/* 80717C74  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80717C78  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80717C7C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80717C80  D0 1C 0C 4C */	stfs f0, 0xc4c(r28)
/* 80717C84  C0 3C 0C 48 */	lfs f1, 0xc48(r28)
/* 80717C88  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 80717C8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80717C90  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80717C94  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717C98  2C 00 00 02 */	cmpwi r0, 2
/* 80717C9C  40 82 00 0C */	bne lbl_80717CA8
/* 80717CA0  38 00 00 07 */	li r0, 7
/* 80717CA4  98 1C 07 07 */	stb r0, 0x707(r28)
lbl_80717CA8:
/* 80717CA8  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717CAC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80717CB0  41 80 05 24 */	blt lbl_807181D4
/* 80717CB4  38 00 00 04 */	li r0, 4
/* 80717CB8  B0 1C 05 B4 */	sth r0, 0x5b4(r28)
/* 80717CBC  38 00 00 64 */	li r0, 0x64
/* 80717CC0  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 80717CC4  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 80717CC8  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80717CCC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80717CD0  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80717CD4  C0 1D 01 00 */	lfs f0, 0x100(r29)
/* 80717CD8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80717CDC  38 61 00 84 */	addi r3, r1, 0x84
/* 80717CE0  38 81 00 78 */	addi r4, r1, 0x78
/* 80717CE4  4B B5 92 08 */	b MtxPosition__FP4cXyzP4cXyz
/* 80717CE8  38 61 00 78 */	addi r3, r1, 0x78
/* 80717CEC  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80717CF0  7C 65 1B 78 */	mr r5, r3
/* 80717CF4  4B C2 F3 9C */	b PSVECAdd
/* 80717CF8  7F 63 DB 78 */	mr r3, r27
/* 80717CFC  38 81 00 78 */	addi r4, r1, 0x78
/* 80717D00  A8 BC 04 DE */	lha r5, 0x4de(r28)
/* 80717D04  3C A5 00 01 */	addis r5, r5, 1
/* 80717D08  38 05 80 00 */	addi r0, r5, -32768
/* 80717D0C  7C 05 07 34 */	extsh r5, r0
/* 80717D10  38 C0 00 00 */	li r6, 0
/* 80717D14  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 80717D18  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80717D1C  7D 89 03 A6 */	mtctr r12
/* 80717D20  4E 80 04 21 */	bctrl 
/* 80717D24  48 00 04 B0 */	b lbl_807181D4
lbl_80717D28:
/* 80717D28  28 1F 00 00 */	cmplwi r31, 0
/* 80717D2C  41 82 04 A8 */	beq lbl_807181D4
/* 80717D30  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80717D34  D0 1C 0C 44 */	stfs f0, 0xc44(r28)
/* 80717D38  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80717D3C  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80717D40  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80717D44  D0 1C 0C 4C */	stfs f0, 0xc4c(r28)
/* 80717D48  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717D4C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80717D50  80 63 00 00 */	lwz r3, 0(r3)
/* 80717D54  3C 80 80 72 */	lis r4, struct_8071CB08+0x0@ha
/* 80717D58  38 84 CB 08 */	addi r4, r4, struct_8071CB08+0x0@l
/* 80717D5C  A8 84 00 00 */	lha r4, 0(r4)
/* 80717D60  4B 8F 46 7C */	b mDoMtx_YrotS__FPA4_fs
/* 80717D64  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 80717D68  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80717D6C  C0 1D 01 04 */	lfs f0, 0x104(r29)
/* 80717D70  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80717D74  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 80717D78  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80717D7C  38 61 00 84 */	addi r3, r1, 0x84
/* 80717D80  38 81 00 78 */	addi r4, r1, 0x78
/* 80717D84  4B B5 91 68 */	b MtxPosition__FP4cXyzP4cXyz
/* 80717D88  38 61 00 3C */	addi r3, r1, 0x3c
/* 80717D8C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80717D90  38 A1 00 78 */	addi r5, r1, 0x78
/* 80717D94  4B B4 ED 50 */	b __pl__4cXyzCFRC3Vec
/* 80717D98  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80717D9C  D0 1C 0C 38 */	stfs f0, 0xc38(r28)
/* 80717DA0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80717DA4  D0 1C 0C 3C */	stfs f0, 0xc3c(r28)
/* 80717DA8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80717DAC  D0 1C 0C 40 */	stfs f0, 0xc40(r28)
/* 80717DB0  38 00 00 08 */	li r0, 8
/* 80717DB4  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 80717DB8  38 00 00 00 */	li r0, 0
/* 80717DBC  B0 1C 0C 34 */	sth r0, 0xc34(r28)
lbl_80717DC0:
/* 80717DC0  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80717DC4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80717DC8  C0 5D 01 0C */	lfs f2, 0x10c(r29)
/* 80717DCC  C0 7D 00 48 */	lfs f3, 0x48(r29)
/* 80717DD0  4B B5 7C 6C */	b cLib_addCalc2__FPffff
/* 80717DD4  38 7C 0C 48 */	addi r3, r28, 0xc48
/* 80717DD8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80717DDC  C0 1C 0C 8C */	lfs f0, 0xc8c(r28)
/* 80717DE0  EC 21 00 2A */	fadds f1, f1, f0
/* 80717DE4  C0 5D 01 0C */	lfs f2, 0x10c(r29)
/* 80717DE8  C0 7D 00 48 */	lfs f3, 0x48(r29)
/* 80717DEC  4B B5 7C 50 */	b cLib_addCalc2__FPffff
/* 80717DF0  38 7C 0C 4C */	addi r3, r28, 0xc4c
/* 80717DF4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80717DF8  C0 5D 01 0C */	lfs f2, 0x10c(r29)
/* 80717DFC  C0 7D 00 48 */	lfs f3, 0x48(r29)
/* 80717E00  4B B5 7C 3C */	b cLib_addCalc2__FPffff
/* 80717E04  38 7C 0C 8C */	addi r3, r28, 0xc8c
/* 80717E08  C0 3D 00 F4 */	lfs f1, 0xf4(r29)
/* 80717E0C  C0 5D 00 04 */	lfs f2, 4(r29)
/* 80717E10  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 80717E14  4B B5 7C 28 */	b cLib_addCalc2__FPffff
/* 80717E18  38 61 00 30 */	addi r3, r1, 0x30
/* 80717E1C  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80717E20  C0 3D 01 10 */	lfs f1, 0x110(r29)
/* 80717E24  4B B4 ED 60 */	b __ml__4cXyzCFf
/* 80717E28  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80717E2C  38 81 00 30 */	addi r4, r1, 0x30
/* 80717E30  7C 65 1B 78 */	mr r5, r3
/* 80717E34  4B C2 F2 5C */	b PSVECAdd
/* 80717E38  C0 3C 0C 3C */	lfs f1, 0xc3c(r28)
/* 80717E3C  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80717E40  EC 01 00 28 */	fsubs f0, f1, f0
/* 80717E44  D0 1C 0C 3C */	stfs f0, 0xc3c(r28)
/* 80717E48  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717E4C  2C 00 00 41 */	cmpwi r0, 0x41
/* 80717E50  41 80 03 84 */	blt lbl_807181D4
/* 80717E54  38 00 00 09 */	li r0, 9
/* 80717E58  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 80717E5C  38 00 00 00 */	li r0, 0
/* 80717E60  B0 1C 0C 34 */	sth r0, 0xc34(r28)
lbl_80717E64:
/* 80717E64  80 1C 07 10 */	lwz r0, 0x710(r28)
/* 80717E68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80717E6C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80717E70  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80717E74  38 81 00 1C */	addi r4, r1, 0x1c
/* 80717E78  4B 90 19 80 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80717E7C  7C 7A 1B 78 */	mr r26, r3
/* 80717E80  80 1C 07 14 */	lwz r0, 0x714(r28)
/* 80717E84  90 01 00 18 */	stw r0, 0x18(r1)
/* 80717E88  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80717E8C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80717E90  38 81 00 18 */	addi r4, r1, 0x18
/* 80717E94  4B 90 19 64 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80717E98  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717E9C  2C 00 00 00 */	cmpwi r0, 0
/* 80717EA0  40 82 00 78 */	bne lbl_80717F18
/* 80717EA4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80717EA8  C0 7D 00 6C */	lfs f3, 0x6c(r29)
/* 80717EAC  EC 00 18 28 */	fsubs f0, f0, f3
/* 80717EB0  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80717EB4  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80717EB8  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80717EBC  EC 01 00 2A */	fadds f0, f1, f0
/* 80717EC0  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80717EC4  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80717EC8  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80717ECC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80717ED0  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80717ED4  C0 5D 00 0C */	lfs f2, 0xc(r29)
/* 80717ED8  D0 5A 04 FC */	stfs f2, 0x4fc(r26)
/* 80717EDC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80717EE0  EC 03 00 2A */	fadds f0, f3, f0
/* 80717EE4  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80717EE8  C0 3D 01 08 */	lfs f1, 0x108(r29)
/* 80717EEC  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80717EF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80717EF4  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80717EF8  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80717EFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80717F00  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80717F04  D0 43 04 FC */	stfs f2, 0x4fc(r3)
/* 80717F08  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80717F0C  D0 1C 0C 44 */	stfs f0, 0xc44(r28)
/* 80717F10  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80717F14  D0 1C 0C 4C */	stfs f0, 0xc4c(r28)
lbl_80717F18:
/* 80717F18  C0 5D 00 48 */	lfs f2, 0x48(r29)
/* 80717F1C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80717F20  EC 02 00 2A */	fadds f0, f2, f0
/* 80717F24  D0 1C 0C 38 */	stfs f0, 0xc38(r28)
/* 80717F28  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80717F2C  EC 02 00 2A */	fadds f0, f2, f0
/* 80717F30  D0 1C 0C 3C */	stfs f0, 0xc3c(r28)
/* 80717F34  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80717F38  C0 1D 01 14 */	lfs f0, 0x114(r29)
/* 80717F3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80717F40  D0 1C 0C 40 */	stfs f0, 0xc40(r28)
/* 80717F44  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80717F48  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80717F4C  38 7C 0C 44 */	addi r3, r28, 0xc44
/* 80717F50  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80717F54  EC 22 00 2A */	fadds f1, f2, f0
/* 80717F58  C0 5D 00 D8 */	lfs f2, 0xd8(r29)
/* 80717F5C  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 80717F60  4B B5 7A DC */	b cLib_addCalc2__FPffff
/* 80717F64  38 7C 0C 4C */	addi r3, r28, 0xc4c
/* 80717F68  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 80717F6C  C0 5D 00 D8 */	lfs f2, 0xd8(r29)
/* 80717F70  C0 7D 00 14 */	lfs f3, 0x14(r29)
/* 80717F74  4B B5 7A C8 */	b cLib_addCalc2__FPffff
/* 80717F78  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717F7C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80717F80  41 81 00 14 */	bgt lbl_80717F94
/* 80717F84  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80717F88  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 80717F8C  7C 65 1B 78 */	mr r5, r3
/* 80717F90  4B C2 F1 24 */	b PSVECSubtract
lbl_80717F94:
/* 80717F94  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 80717F98  2C 00 00 50 */	cmpwi r0, 0x50
/* 80717F9C  41 80 02 38 */	blt lbl_807181D4
/* 80717FA0  38 00 00 0A */	li r0, 0xa
/* 80717FA4  B0 1C 0C 32 */	sth r0, 0xc32(r28)
/* 80717FA8  38 00 00 00 */	li r0, 0
/* 80717FAC  B0 1C 0C 34 */	sth r0, 0xc34(r28)
/* 80717FB0  48 00 02 24 */	b lbl_807181D4
lbl_80717FB4:
/* 80717FB4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80717FB8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80717FBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80717FC0  3C 80 80 72 */	lis r4, struct_8071CB08+0x0@ha
/* 80717FC4  38 84 CB 08 */	addi r4, r4, struct_8071CB08+0x0@l
/* 80717FC8  A8 84 00 00 */	lha r4, 0(r4)
/* 80717FCC  4B 8F 44 10 */	b mDoMtx_YrotS__FPA4_fs
/* 80717FD0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 80717FD4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80717FD8  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 80717FDC  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80717FE0  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 80717FE4  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80717FE8  38 61 00 84 */	addi r3, r1, 0x84
/* 80717FEC  38 81 00 78 */	addi r4, r1, 0x78
/* 80717FF0  4B B5 8E FC */	b MtxPosition__FP4cXyzP4cXyz
/* 80717FF4  38 61 00 24 */	addi r3, r1, 0x24
/* 80717FF8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80717FFC  38 A1 00 78 */	addi r5, r1, 0x78
/* 80718000  4B B4 EA E4 */	b __pl__4cXyzCFRC3Vec
/* 80718004  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80718008  D0 1C 0C 38 */	stfs f0, 0xc38(r28)
/* 8071800C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80718010  D0 1C 0C 3C */	stfs f0, 0xc3c(r28)
/* 80718014  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80718018  D0 1C 0C 40 */	stfs f0, 0xc40(r28)
/* 8071801C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80718020  D0 1C 0C 44 */	stfs f0, 0xc44(r28)
/* 80718024  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80718028  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 8071802C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80718030  D0 1C 0C 4C */	stfs f0, 0xc4c(r28)
/* 80718034  C0 3C 0C 48 */	lfs f1, 0xc48(r28)
/* 80718038  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 8071803C  EC 01 00 2A */	fadds f0, f1, f0
/* 80718040  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80718044  80 1C 07 10 */	lwz r0, 0x710(r28)
/* 80718048  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071804C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80718050  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80718054  38 81 00 14 */	addi r4, r1, 0x14
/* 80718058  4B 90 17 A0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8071805C  7C 7A 1B 78 */	mr r26, r3
/* 80718060  80 1C 07 14 */	lwz r0, 0x714(r28)
/* 80718064  90 01 00 10 */	stw r0, 0x10(r1)
/* 80718068  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8071806C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80718070  38 81 00 10 */	addi r4, r1, 0x10
/* 80718074  4B 90 17 84 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80718078  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8071807C  C0 5D 00 6C */	lfs f2, 0x6c(r29)
/* 80718080  EC 00 10 28 */	fsubs f0, f0, f2
/* 80718084  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80718088  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 8071808C  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 80718090  EC 01 00 28 */	fsubs f0, f1, f0
/* 80718094  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80718098  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8071809C  EC 02 00 2A */	fadds f0, f2, f0
/* 807180A0  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 807180A4  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807180A8  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 807180AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807180B0  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 807180B4  48 00 01 20 */	b lbl_807181D4
lbl_807180B8:
/* 807180B8  A8 1C 0C 34 */	lha r0, 0xc34(r28)
/* 807180BC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 807180C0  41 80 00 A4 */	blt lbl_80718164
/* 807180C4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807180C8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807180CC  80 63 00 00 */	lwz r3, 0(r3)
/* 807180D0  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 807180D4  4B 8F 43 08 */	b mDoMtx_YrotS__FPA4_fs
/* 807180D8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 807180DC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 807180E0  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 807180E4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 807180E8  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 807180EC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 807180F0  38 61 00 84 */	addi r3, r1, 0x84
/* 807180F4  38 9C 0C 38 */	addi r4, r28, 0xc38
/* 807180F8  4B B5 8D F4 */	b MtxPosition__FP4cXyzP4cXyz
/* 807180FC  38 7C 0C 38 */	addi r3, r28, 0xc38
/* 80718100  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80718104  7C 65 1B 78 */	mr r5, r3
/* 80718108  4B C2 EF 88 */	b PSVECAdd
/* 8071810C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80718110  D0 1C 0C 44 */	stfs f0, 0xc44(r28)
/* 80718114  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80718118  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 8071811C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80718120  D0 1C 0C 4C */	stfs f0, 0xc4c(r28)
/* 80718124  C0 3C 0C 48 */	lfs f1, 0xc48(r28)
/* 80718128  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 8071812C  EC 01 00 2A */	fadds f0, f1, f0
/* 80718130  D0 1C 0C 48 */	stfs f0, 0xc48(r28)
/* 80718134  38 00 00 0A */	li r0, 0xa
/* 80718138  B0 1C 0C 30 */	sth r0, 0xc30(r28)
/* 8071813C  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80718140  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80718144  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 80718148  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8071814C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80718150  80 63 00 00 */	lwz r3, 0(r3)
/* 80718154  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80718158  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000008@ha */
/* 8071815C  38 84 00 08 */	addi r4, r4, 0x0008 /* 0x01000008@l */
/* 80718160  4B B9 73 3C */	b subBgmStart__8Z2SeqMgrFUl
lbl_80718164:
/* 80718164  80 1C 07 10 */	lwz r0, 0x710(r28)
/* 80718168  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071816C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80718170  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80718174  38 81 00 0C */	addi r4, r1, 0xc
/* 80718178  4B 90 16 80 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8071817C  7C 7A 1B 78 */	mr r26, r3
/* 80718180  80 1C 07 14 */	lwz r0, 0x714(r28)
/* 80718184  90 01 00 08 */	stw r0, 8(r1)
/* 80718188  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8071818C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80718190  38 81 00 08 */	addi r4, r1, 8
/* 80718194  4B 90 16 64 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80718198  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8071819C  C0 5D 00 6C */	lfs f2, 0x6c(r29)
/* 807181A0  EC 00 10 28 */	fsubs f0, f0, f2
/* 807181A4  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 807181A8  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807181AC  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 807181B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807181B4  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 807181B8  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 807181BC  EC 02 00 2A */	fadds f0, f2, f0
/* 807181C0  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 807181C4  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 807181C8  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 807181CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 807181D0  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
lbl_807181D4:
/* 807181D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807181D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807181DC  A0 03 4F A2 */	lhz r0, 0x4fa2(r3)
/* 807181E0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807181E4  41 82 00 40 */	beq lbl_80718224
/* 807181E8  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 807181EC  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 807181F0  28 04 00 FF */	cmplwi r4, 0xff
/* 807181F4  41 82 00 10 */	beq lbl_80718204
/* 807181F8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807181FC  7C 05 07 74 */	extsb r5, r0
/* 80718200  4B 91 D0 00 */	b onSwitch__10dSv_info_cFii
lbl_80718204:
/* 80718204  38 60 00 02 */	li r3, 2
/* 80718208  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8071820C  38 80 00 00 */	li r4, 0
/* 80718210  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80718214  7C 05 07 74 */	extsb r5, r0
/* 80718218  38 C0 00 00 */	li r6, 0
/* 8071821C  38 E0 FF FF */	li r7, -1
/* 80718220  4B 90 EF 50 */	b dStage_changeScene__FifUlScsi
lbl_80718224:
/* 80718224  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80718228  4B C4 9F F0 */	b _restgpr_25
/* 8071822C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80718230  7C 08 03 A6 */	mtlr r0
/* 80718234  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80718238  4E 80 00 20 */	blr 

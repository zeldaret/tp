lbl_8060D078:
/* 8060D078  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8060D07C  7C 08 02 A6 */	mflr r0
/* 8060D080  90 01 00 84 */	stw r0, 0x84(r1)
/* 8060D084  39 61 00 80 */	addi r11, r1, 0x80
/* 8060D088  4B D5 51 44 */	b _savegpr_25
/* 8060D08C  7C 7F 1B 78 */	mr r31, r3
/* 8060D090  3C 80 80 61 */	lis r4, lit_3928@ha
/* 8060D094  3B A4 FD E0 */	addi r29, r4, lit_3928@l
/* 8060D098  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8060D09C  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 8060D0A0  88 1E 5D B0 */	lbz r0, 0x5db0(r30)
/* 8060D0A4  7C 00 07 74 */	extsb r0, r0
/* 8060D0A8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8060D0AC  7C 9E 02 14 */	add r4, r30, r0
/* 8060D0B0  83 84 5D 74 */	lwz r28, 0x5d74(r4)
/* 8060D0B4  83 7E 5D AC */	lwz r27, 0x5dac(r30)
/* 8060D0B8  C0 5D 01 78 */	lfs f2, 0x178(r29)
/* 8060D0BC  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8060D0C0  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060D0C4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8060D0C8  C0 1D 01 EC */	lfs f0, 0x1ec(r29)
/* 8060D0CC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8060D0D0  88 03 0A FA */	lbz r0, 0xafa(r3)
/* 8060D0D4  2C 00 00 04 */	cmpwi r0, 4
/* 8060D0D8  41 82 06 D8 */	beq lbl_8060D7B0
/* 8060D0DC  40 80 00 28 */	bge lbl_8060D104
/* 8060D0E0  2C 00 00 01 */	cmpwi r0, 1
/* 8060D0E4  41 82 02 CC */	beq lbl_8060D3B0
/* 8060D0E8  40 80 00 10 */	bge lbl_8060D0F8
/* 8060D0EC  2C 00 00 00 */	cmpwi r0, 0
/* 8060D0F0  40 80 00 2C */	bge lbl_8060D11C
/* 8060D0F4  48 00 07 2C */	b lbl_8060D820
lbl_8060D0F8:
/* 8060D0F8  2C 00 00 03 */	cmpwi r0, 3
/* 8060D0FC  40 80 04 38 */	bge lbl_8060D534
/* 8060D100  48 00 02 E4 */	b lbl_8060D3E4
lbl_8060D104:
/* 8060D104  2C 00 00 64 */	cmpwi r0, 0x64
/* 8060D108  41 82 07 60 */	beq lbl_8060D868
/* 8060D10C  40 80 07 14 */	bge lbl_8060D820
/* 8060D110  2C 00 00 06 */	cmpwi r0, 6
/* 8060D114  40 80 07 0C */	bge lbl_8060D820
/* 8060D118  48 00 06 CC */	b lbl_8060D7E4
lbl_8060D11C:
/* 8060D11C  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8060D120  28 00 00 02 */	cmplwi r0, 2
/* 8060D124  41 82 00 28 */	beq lbl_8060D14C
/* 8060D128  38 80 00 02 */	li r4, 2
/* 8060D12C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8060D130  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8060D134  38 C0 00 00 */	li r6, 0
/* 8060D138  4B A0 E7 D0 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8060D13C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8060D140  60 00 00 02 */	ori r0, r0, 2
/* 8060D144  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8060D148  48 00 07 20 */	b lbl_8060D868
lbl_8060D14C:
/* 8060D14C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8060D150  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8060D154  80 63 00 00 */	lwz r3, 0(r3)
/* 8060D158  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8060D15C  38 80 00 1E */	li r4, 0x1e
/* 8060D160  38 A0 00 00 */	li r5, 0
/* 8060D164  4B CA 22 A4 */	b bgmStop__8Z2SeqMgrFUll
/* 8060D168  88 9F 0A FB */	lbz r4, 0xafb(r31)
/* 8060D16C  28 04 00 FF */	cmplwi r4, 0xff
/* 8060D170  41 82 00 18 */	beq lbl_8060D188
/* 8060D174  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060D178  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8060D17C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8060D180  7C 05 07 74 */	extsb r5, r0
/* 8060D184  4B A2 80 7C */	b onSwitch__10dSv_info_cFii
lbl_8060D188:
/* 8060D188  38 00 00 02 */	li r0, 2
/* 8060D18C  98 1F 0A F8 */	stb r0, 0xaf8(r31)
/* 8060D190  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8060D194  D0 1F 0A F4 */	stfs f0, 0xaf4(r31)
/* 8060D198  7F E3 FB 78 */	mr r3, r31
/* 8060D19C  38 80 00 1A */	li r4, 0x1a
/* 8060D1A0  38 A0 00 00 */	li r5, 0
/* 8060D1A4  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 8060D1A8  C0 5D 00 08 */	lfs f2, 8(r29)
/* 8060D1AC  4B FF A7 79 */	bl setBck__9daB_MGN_cFiUcff
/* 8060D1B0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060D1B4  80 63 00 04 */	lwz r3, 4(r3)
/* 8060D1B8  83 43 00 04 */	lwz r26, 4(r3)
/* 8060D1BC  38 7A 00 58 */	addi r3, r26, 0x58
/* 8060D1C0  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 8060D1C4  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8060D1C8  4B D2 26 B8 */	b removeTevRegAnimator__16J3DMaterialTableFP15J3DAnmTevRegKey
/* 8060D1CC  3C 60 80 61 */	lis r3, stringBase0@ha
/* 8060D1D0  38 63 00 84 */	addi r3, r3, stringBase0@l
/* 8060D1D4  38 63 00 07 */	addi r3, r3, 7
/* 8060D1D8  38 80 00 35 */	li r4, 0x35
/* 8060D1DC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8060D1E0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8060D1E4  3F 25 00 02 */	addis r25, r5, 2
/* 8060D1E8  3B 39 C2 F8 */	addi r25, r25, -15624
/* 8060D1EC  7F 25 CB 78 */	mr r5, r25
/* 8060D1F0  38 C0 00 80 */	li r6, 0x80
/* 8060D1F4  4B A2 F0 F8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060D1F8  7C 65 1B 78 */	mr r5, r3
/* 8060D1FC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8060D200  38 9A 00 58 */	addi r4, r26, 0x58
/* 8060D204  38 C0 00 01 */	li r6, 1
/* 8060D208  38 E0 00 00 */	li r7, 0
/* 8060D20C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8060D210  39 00 00 00 */	li r8, 0
/* 8060D214  39 20 FF FF */	li r9, -1
/* 8060D218  4B A0 04 F4 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8060D21C  3C 60 80 61 */	lis r3, stringBase0@ha
/* 8060D220  38 63 00 84 */	addi r3, r3, stringBase0@l
/* 8060D224  38 63 00 07 */	addi r3, r3, 7
/* 8060D228  38 80 00 3B */	li r4, 0x3b
/* 8060D22C  7F 25 CB 78 */	mr r5, r25
/* 8060D230  38 C0 00 80 */	li r6, 0x80
/* 8060D234  4B A2 F0 B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8060D238  7C 65 1B 78 */	mr r5, r3
/* 8060D23C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 8060D240  38 9A 00 58 */	addi r4, r26, 0x58
/* 8060D244  38 C0 00 01 */	li r6, 1
/* 8060D248  38 E0 00 00 */	li r7, 0
/* 8060D24C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8060D250  39 00 00 00 */	li r8, 0
/* 8060D254  39 20 FF FF */	li r9, -1
/* 8060D258  4B A0 03 E4 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8060D25C  38 00 00 01 */	li r0, 1
/* 8060D260  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060D264  38 7C 02 48 */	addi r3, r28, 0x248
/* 8060D268  4B B5 42 68 */	b Stop__9dCamera_cFv
/* 8060D26C  38 7C 02 48 */	addi r3, r28, 0x248
/* 8060D270  38 80 00 03 */	li r4, 3
/* 8060D274  4B B5 5D 98 */	b SetTrimSize__9dCamera_cFl
/* 8060D278  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8060D27C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8060D280  38 00 48 00 */	li r0, 0x4800
/* 8060D284  B0 1F 0A E0 */	sth r0, 0xae0(r31)
/* 8060D288  38 00 00 00 */	li r0, 0
/* 8060D28C  B0 1F 0A E2 */	sth r0, 0xae2(r31)
/* 8060D290  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 8060D294  D0 1F 0A DC */	stfs f0, 0xadc(r31)
/* 8060D298  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8060D29C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8060D2A0  A8 1F 0A E0 */	lha r0, 0xae0(r31)
/* 8060D2A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8060D2A8  7C 64 02 14 */	add r3, r4, r0
/* 8060D2AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8060D2B0  C0 5F 0A DC */	lfs f2, 0xadc(r31)
/* 8060D2B4  EC 22 00 32 */	fmuls f1, f2, f0
/* 8060D2B8  7C 04 04 2E */	lfsx f0, r4, r0
/* 8060D2BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060D2C0  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8060D2C4  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 8060D2C8  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8060D2CC  D0 3F 0A C4 */	stfs f1, 0xac4(r31)
/* 8060D2D0  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8060D2D4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8060D2D8  7C 65 1B 78 */	mr r5, r3
/* 8060D2DC  4B D3 9D B4 */	b PSVECAdd
/* 8060D2E0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8060D2E4  D0 1F 0A C8 */	stfs f0, 0xac8(r31)
/* 8060D2E8  C0 1D 01 1C */	lfs f0, 0x11c(r29)
/* 8060D2EC  D0 1F 0A CC */	stfs f0, 0xacc(r31)
/* 8060D2F0  C0 1D 01 F0 */	lfs f0, 0x1f0(r29)
/* 8060D2F4  D0 1F 0A D0 */	stfs f0, 0xad0(r31)
/* 8060D2F8  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060D2FC  38 81 00 3C */	addi r4, r1, 0x3c
/* 8060D300  7C 65 1B 78 */	mr r5, r3
/* 8060D304  4B D3 9D 8C */	b PSVECAdd
/* 8060D308  C0 1D 01 F4 */	lfs f0, 0x1f4(r29)
/* 8060D30C  D0 1F 0A D4 */	stfs f0, 0xad4(r31)
/* 8060D310  38 00 00 0A */	li r0, 0xa
/* 8060D314  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8060D318  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8060D31C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8060D320  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8060D324  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8060D328  7F E3 FB 78 */	mr r3, r31
/* 8060D32C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8060D330  4B A0 D3 E0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060D334  7C 65 1B 78 */	mr r5, r3
/* 8060D338  7F 63 DB 78 */	mr r3, r27
/* 8060D33C  38 81 00 48 */	addi r4, r1, 0x48
/* 8060D340  38 05 80 00 */	addi r0, r5, -32768
/* 8060D344  7C 05 07 34 */	extsh r5, r0
/* 8060D348  38 C0 00 00 */	li r6, 0
/* 8060D34C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8060D350  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8060D354  7D 89 03 A6 */	mtctr r12
/* 8060D358  4E 80 04 21 */	bctrl 
/* 8060D35C  38 00 00 03 */	li r0, 3
/* 8060D360  B0 1B 06 04 */	sth r0, 0x604(r27)
/* 8060D364  38 60 00 00 */	li r3, 0
/* 8060D368  90 7B 06 0C */	stw r3, 0x60c(r27)
/* 8060D36C  38 00 00 04 */	li r0, 4
/* 8060D370  90 1B 06 14 */	stw r0, 0x614(r27)
/* 8060D374  38 00 00 01 */	li r0, 1
/* 8060D378  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 8060D37C  90 7B 06 10 */	stw r3, 0x610(r27)
/* 8060D380  B0 7B 06 0A */	sth r3, 0x60a(r27)
/* 8060D384  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F5@ha */
/* 8060D388  38 03 04 F5 */	addi r0, r3, 0x04F5 /* 0x000704F5@l */
/* 8060D38C  90 01 00 08 */	stw r0, 8(r1)
/* 8060D390  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060D394  38 81 00 08 */	addi r4, r1, 8
/* 8060D398  38 A0 FF FF */	li r5, -1
/* 8060D39C  81 9F 09 E0 */	lwz r12, 0x9e0(r31)
/* 8060D3A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060D3A4  7D 89 03 A6 */	mtctr r12
/* 8060D3A8  4E 80 04 21 */	bctrl 
/* 8060D3AC  48 00 04 BC */	b lbl_8060D868
lbl_8060D3B0:
/* 8060D3B0  D0 5F 04 D0 */	stfs f2, 0x4d0(r31)
/* 8060D3B4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8060D3B8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8060D3BC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8060D3C0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8060D3C4  38 00 68 00 */	li r0, 0x6800
/* 8060D3C8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8060D3CC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8060D3D0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8060D3D4  B0 1F 0B 14 */	sth r0, 0xb14(r31)
/* 8060D3D8  B0 1F 0B 16 */	sth r0, 0xb16(r31)
/* 8060D3DC  38 00 00 02 */	li r0, 2
/* 8060D3E0  98 1F 0A FA */	stb r0, 0xafa(r31)
lbl_8060D3E4:
/* 8060D3E4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060D3E8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060D3EC  C0 1D 01 F8 */	lfs f0, 0x1f8(r29)
/* 8060D3F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060D3F4  40 80 00 1C */	bge lbl_8060D410
/* 8060D3F8  38 7F 0A F0 */	addi r3, r31, 0xaf0
/* 8060D3FC  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 8060D400  C0 5D 01 A8 */	lfs f2, 0x1a8(r29)
/* 8060D404  C0 7D 00 70 */	lfs f3, 0x70(r29)
/* 8060D408  4B C6 26 34 */	b cLib_addCalc2__FPffff
/* 8060D40C  48 00 00 18 */	b lbl_8060D424
lbl_8060D410:
/* 8060D410  38 7F 0A F0 */	addi r3, r31, 0xaf0
/* 8060D414  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060D418  C0 5D 01 A8 */	lfs f2, 0x1a8(r29)
/* 8060D41C  C0 7D 00 70 */	lfs f3, 0x70(r29)
/* 8060D420  4B C6 26 1C */	b cLib_addCalc2__FPffff
lbl_8060D424:
/* 8060D424  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060D428  80 63 00 04 */	lwz r3, 4(r3)
/* 8060D42C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8060D430  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060D434  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 8060D438  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8060D43C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8060D440  4B D3 90 70 */	b PSMTXCopy
/* 8060D444  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8060D448  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8060D44C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8060D450  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8060D454  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8060D458  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8060D45C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8060D460  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8060D464  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060D468  38 81 00 54 */	addi r4, r1, 0x54
/* 8060D46C  C0 3D 01 A8 */	lfs f1, 0x1a8(r29)
/* 8060D470  C0 5D 00 30 */	lfs f2, 0x30(r29)
/* 8060D474  4B C6 2D 04 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060D478  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060D47C  2C 00 00 00 */	cmpwi r0, 0
/* 8060D480  40 82 00 40 */	bne lbl_8060D4C0
/* 8060D484  38 7F 0A E2 */	addi r3, r31, 0xae2
/* 8060D488  38 80 00 40 */	li r4, 0x40
/* 8060D48C  38 A0 00 08 */	li r5, 8
/* 8060D490  38 C0 00 08 */	li r6, 8
/* 8060D494  4B C6 31 74 */	b cLib_addCalcAngleS2__FPssss
/* 8060D498  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 8060D49C  38 80 6E 00 */	li r4, 0x6e00
/* 8060D4A0  38 A0 00 20 */	li r5, 0x20
/* 8060D4A4  A8 DF 0A E2 */	lha r6, 0xae2(r31)
/* 8060D4A8  4B C6 31 60 */	b cLib_addCalcAngleS2__FPssss
/* 8060D4AC  38 7F 0A DC */	addi r3, r31, 0xadc
/* 8060D4B0  C0 3D 01 FC */	lfs f1, 0x1fc(r29)
/* 8060D4B4  C0 5D 01 A8 */	lfs f2, 0x1a8(r29)
/* 8060D4B8  C0 7D 00 6C */	lfs f3, 0x6c(r29)
/* 8060D4BC  4B C6 25 80 */	b cLib_addCalc2__FPffff
lbl_8060D4C0:
/* 8060D4C0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8060D4C4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8060D4C8  A8 1F 0A E0 */	lha r0, 0xae0(r31)
/* 8060D4CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8060D4D0  7C 64 02 14 */	add r3, r4, r0
/* 8060D4D4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8060D4D8  C0 5F 0A DC */	lfs f2, 0xadc(r31)
/* 8060D4DC  EC 22 00 32 */	fmuls f1, f2, f0
/* 8060D4E0  7C 04 04 2E */	lfsx f0, r4, r0
/* 8060D4E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8060D4E8  D0 1F 0A BC */	stfs f0, 0xabc(r31)
/* 8060D4EC  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 8060D4F0  D0 1F 0A C0 */	stfs f0, 0xac0(r31)
/* 8060D4F4  D0 3F 0A C4 */	stfs f1, 0xac4(r31)
/* 8060D4F8  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8060D4FC  38 81 00 3C */	addi r4, r1, 0x3c
/* 8060D500  7C 65 1B 78 */	mr r5, r3
/* 8060D504  4B D3 9B 8C */	b PSVECAdd
/* 8060D508  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060D50C  38 63 00 0C */	addi r3, r3, 0xc
/* 8060D510  C0 3D 02 00 */	lfs f1, 0x200(r29)
/* 8060D514  4B D1 AF 18 */	b checkPass__12J3DFrameCtrlFf
/* 8060D518  2C 03 00 00 */	cmpwi r3, 0
/* 8060D51C  41 82 03 04 */	beq lbl_8060D820
/* 8060D520  38 00 00 03 */	li r0, 3
/* 8060D524  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060D528  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8060D52C  D0 1F 0A D8 */	stfs f0, 0xad8(r31)
/* 8060D530  48 00 02 F0 */	b lbl_8060D820
lbl_8060D534:
/* 8060D534  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 8060D538  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 8060D53C  C0 1D 02 04 */	lfs f0, 0x204(r29)
/* 8060D540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060D544  4C 41 13 82 */	cror 2, 1, 2
/* 8060D548  40 82 00 08 */	bne lbl_8060D550
/* 8060D54C  4B FF 93 41 */	bl setFallAttackEffect__9daB_MGN_cFv
lbl_8060D550:
/* 8060D550  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060D554  38 63 00 0C */	addi r3, r3, 0xc
/* 8060D558  C0 3D 02 04 */	lfs f1, 0x204(r29)
/* 8060D55C  4B D1 AE D0 */	b checkPass__12J3DFrameCtrlFf
/* 8060D560  2C 03 00 00 */	cmpwi r3, 0
/* 8060D564  41 82 00 64 */	beq lbl_8060D5C8
/* 8060D568  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060D56C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8060D570  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8060D574  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8060D578  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8060D57C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060D580  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8060D584  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060D588  38 80 00 08 */	li r4, 8
/* 8060D58C  38 A0 00 1F */	li r5, 0x1f
/* 8060D590  38 C1 00 30 */	addi r6, r1, 0x30
/* 8060D594  4B A6 24 90 */	b StartShock__12dVibration_cFii4cXyz
/* 8060D598  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060D59C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8060D5A0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8060D5A4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8060D5A8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8060D5AC  40 82 00 1C */	bne lbl_8060D5C8
/* 8060D5B0  38 00 00 22 */	li r0, 0x22
/* 8060D5B4  90 1B 06 14 */	stw r0, 0x614(r27)
/* 8060D5B8  38 00 00 00 */	li r0, 0
/* 8060D5BC  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 8060D5C0  90 1B 06 10 */	stw r0, 0x610(r27)
/* 8060D5C4  B0 1B 06 0A */	sth r0, 0x60a(r27)
lbl_8060D5C8:
/* 8060D5C8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060D5CC  38 63 00 0C */	addi r3, r3, 0xc
/* 8060D5D0  C0 3D 02 08 */	lfs f1, 0x208(r29)
/* 8060D5D4  4B D1 AE 58 */	b checkPass__12J3DFrameCtrlFf
/* 8060D5D8  2C 03 00 00 */	cmpwi r3, 0
/* 8060D5DC  41 82 00 34 */	beq lbl_8060D610
/* 8060D5E0  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060D5E4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8060D5E8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8060D5EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8060D5F0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8060D5F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060D5F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8060D5FC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060D600  38 80 00 04 */	li r4, 4
/* 8060D604  38 A0 00 1F */	li r5, 0x1f
/* 8060D608  38 C1 00 24 */	addi r6, r1, 0x24
/* 8060D60C  4B A6 24 18 */	b StartShock__12dVibration_cFii4cXyz
lbl_8060D610:
/* 8060D610  38 61 00 3C */	addi r3, r1, 0x3c
/* 8060D614  4B 9F F7 50 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8060D618  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8060D61C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8060D620  38 80 68 00 */	li r4, 0x6800
/* 8060D624  4B 9F EE 10 */	b mDoMtx_YrotM__FPA4_fs
/* 8060D628  C0 3D 02 0C */	lfs f1, 0x20c(r29)
/* 8060D62C  C0 5D 00 04 */	lfs f2, 4(r29)
/* 8060D630  C0 7D 00 E8 */	lfs f3, 0xe8(r29)
/* 8060D634  4B 9F F7 68 */	b transM__14mDoMtx_stack_cFfff
/* 8060D638  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8060D63C  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
/* 8060D640  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8060D644  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8060D648  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 8060D64C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8060D650  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 8060D654  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8060D658  7F E3 FB 78 */	mr r3, r31
/* 8060D65C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8060D660  4B A0 D0 B0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060D664  7C 65 1B 78 */	mr r5, r3
/* 8060D668  7F 63 DB 78 */	mr r3, r27
/* 8060D66C  38 81 00 48 */	addi r4, r1, 0x48
/* 8060D670  38 05 80 00 */	addi r0, r5, -32768
/* 8060D674  7C 05 07 34 */	extsh r5, r0
/* 8060D678  38 C0 00 00 */	li r6, 0
/* 8060D67C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8060D680  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8060D684  7D 89 03 A6 */	mtctr r12
/* 8060D688  4E 80 04 21 */	bctrl 
/* 8060D68C  38 61 00 3C */	addi r3, r1, 0x3c
/* 8060D690  4B 9F F6 D4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8060D694  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8060D698  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8060D69C  38 80 68 00 */	li r4, 0x6800
/* 8060D6A0  4B 9F ED 94 */	b mDoMtx_YrotM__FPA4_fs
/* 8060D6A4  C0 3D 02 0C */	lfs f1, 0x20c(r29)
/* 8060D6A8  C0 5D 00 34 */	lfs f2, 0x34(r29)
/* 8060D6AC  C0 7D 02 10 */	lfs f3, 0x210(r29)
/* 8060D6B0  4B 9F F6 EC */	b transM__14mDoMtx_stack_cFfff
/* 8060D6B4  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8060D6B8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8060D6BC  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 8060D6C0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8060D6C4  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 8060D6C8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8060D6CC  38 7F 0A D8 */	addi r3, r31, 0xad8
/* 8060D6D0  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 8060D6D4  C0 5D 01 A8 */	lfs f2, 0x1a8(r29)
/* 8060D6D8  C0 7D 01 2C */	lfs f3, 0x12c(r29)
/* 8060D6DC  4B C6 23 60 */	b cLib_addCalc2__FPffff
/* 8060D6E0  38 7F 0A BC */	addi r3, r31, 0xabc
/* 8060D6E4  38 81 00 54 */	addi r4, r1, 0x54
/* 8060D6E8  C0 3D 01 A8 */	lfs f1, 0x1a8(r29)
/* 8060D6EC  C0 5F 0A D8 */	lfs f2, 0xad8(r31)
/* 8060D6F0  4B C6 2A 88 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060D6F4  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060D6F8  80 63 00 04 */	lwz r3, 4(r3)
/* 8060D6FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8060D700  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8060D704  38 63 04 B0 */	addi r3, r3, 0x4b0
/* 8060D708  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8060D70C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8060D710  4B D3 8D A0 */	b PSMTXCopy
/* 8060D714  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 8060D718  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8060D71C  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 8060D720  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8060D724  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 8060D728  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8060D72C  38 7F 0A C8 */	addi r3, r31, 0xac8
/* 8060D730  38 81 00 54 */	addi r4, r1, 0x54
/* 8060D734  C0 3D 01 A8 */	lfs f1, 0x1a8(r29)
/* 8060D738  C0 5D 00 FC */	lfs f2, 0xfc(r29)
/* 8060D73C  4B C6 2A 3C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8060D740  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8060D744  38 80 00 01 */	li r4, 1
/* 8060D748  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060D74C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060D750  40 82 00 18 */	bne lbl_8060D768
/* 8060D754  C0 3D 00 04 */	lfs f1, 4(r29)
/* 8060D758  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060D75C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060D760  41 82 00 08 */	beq lbl_8060D768
/* 8060D764  38 80 00 00 */	li r4, 0
lbl_8060D768:
/* 8060D768  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060D76C  41 82 00 B4 */	beq lbl_8060D820
/* 8060D770  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8060D774  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8060D778  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8060D77C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8060D780  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8060D784  40 82 00 18 */	bne lbl_8060D79C
/* 8060D788  38 00 00 04 */	li r0, 4
/* 8060D78C  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060D790  38 00 00 3C */	li r0, 0x3c
/* 8060D794  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8060D798  48 00 00 88 */	b lbl_8060D820
lbl_8060D79C:
/* 8060D79C  38 00 00 05 */	li r0, 5
/* 8060D7A0  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060D7A4  38 00 00 1E */	li r0, 0x1e
/* 8060D7A8  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8060D7AC  48 00 00 74 */	b lbl_8060D820
lbl_8060D7B0:
/* 8060D7B0  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060D7B4  2C 00 00 00 */	cmpwi r0, 0
/* 8060D7B8  40 82 00 68 */	bne lbl_8060D820
/* 8060D7BC  38 00 00 64 */	li r0, 0x64
/* 8060D7C0  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060D7C4  38 60 00 02 */	li r3, 2
/* 8060D7C8  38 80 00 00 */	li r4, 0
/* 8060D7CC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8060D7D0  7C 05 07 74 */	extsb r5, r0
/* 8060D7D4  38 C0 00 00 */	li r6, 0
/* 8060D7D8  38 E0 FF FF */	li r7, -1
/* 8060D7DC  4B A1 99 94 */	b dStage_changeScene__FifUlScsi
/* 8060D7E0  48 00 00 40 */	b lbl_8060D820
lbl_8060D7E4:
/* 8060D7E4  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060D7E8  2C 00 00 00 */	cmpwi r0, 0
/* 8060D7EC  40 82 00 34 */	bne lbl_8060D820
/* 8060D7F0  38 00 00 3A */	li r0, 0x3a
/* 8060D7F4  90 1B 06 14 */	stw r0, 0x614(r27)
/* 8060D7F8  38 00 00 00 */	li r0, 0
/* 8060D7FC  90 1B 06 0C */	stw r0, 0x60c(r27)
/* 8060D800  90 1B 06 10 */	stw r0, 0x610(r27)
/* 8060D804  B0 1B 06 0A */	sth r0, 0x60a(r27)
/* 8060D808  38 00 00 04 */	li r0, 4
/* 8060D80C  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060D810  38 00 00 64 */	li r0, 0x64
/* 8060D814  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8060D818  48 00 00 08 */	b lbl_8060D820
/* 8060D81C  48 00 00 4C */	b lbl_8060D868
lbl_8060D820:
/* 8060D820  C0 1F 0A C8 */	lfs f0, 0xac8(r31)
/* 8060D824  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8060D828  C0 1F 0A CC */	lfs f0, 0xacc(r31)
/* 8060D82C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8060D830  C0 1F 0A D0 */	lfs f0, 0xad0(r31)
/* 8060D834  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8060D838  C0 1F 0A BC */	lfs f0, 0xabc(r31)
/* 8060D83C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8060D840  C0 1F 0A C0 */	lfs f0, 0xac0(r31)
/* 8060D844  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8060D848  C0 1F 0A C4 */	lfs f0, 0xac4(r31)
/* 8060D84C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8060D850  38 7C 02 48 */	addi r3, r28, 0x248
/* 8060D854  38 81 00 18 */	addi r4, r1, 0x18
/* 8060D858  38 A1 00 0C */	addi r5, r1, 0xc
/* 8060D85C  C0 3F 0A D4 */	lfs f1, 0xad4(r31)
/* 8060D860  38 C0 00 00 */	li r6, 0
/* 8060D864  4B B7 32 7C */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_8060D868:
/* 8060D868  39 61 00 80 */	addi r11, r1, 0x80
/* 8060D86C  4B D5 49 AC */	b _restgpr_25
/* 8060D870  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8060D874  7C 08 03 A6 */	mtlr r0
/* 8060D878  38 21 00 80 */	addi r1, r1, 0x80
/* 8060D87C  4E 80 00 20 */	blr 

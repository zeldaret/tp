lbl_806331CC:
/* 806331CC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806331D0  7C 08 02 A6 */	mflr r0
/* 806331D4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806331D8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806331DC  4B D2 EF F4 */	b _savegpr_26
/* 806331E0  7C 7D 1B 78 */	mr r29, r3
/* 806331E4  3C 80 80 64 */	lis r4, lit_3788@ha
/* 806331E8  3B E4 97 F4 */	addi r31, r4, lit_3788@l
/* 806331EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806331F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806331F4  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 806331F8  7C 00 07 74 */	extsb r0, r0
/* 806331FC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80633200  7C 84 02 14 */	add r4, r4, r0
/* 80633204  83 C4 5D 74 */	lwz r30, 0x5d74(r4)
/* 80633208  80 03 0F 74 */	lwz r0, 0xf74(r3)
/* 8063320C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80633210  41 82 07 40 */	beq lbl_80633950
/* 80633214  40 80 00 34 */	bge lbl_80633248
/* 80633218  2C 00 00 03 */	cmpwi r0, 3
/* 8063321C  41 82 05 94 */	beq lbl_806337B0
/* 80633220  40 80 00 1C */	bge lbl_8063323C
/* 80633224  2C 00 00 01 */	cmpwi r0, 1
/* 80633228  41 82 02 34 */	beq lbl_8063345C
/* 8063322C  40 80 03 38 */	bge lbl_80633564
/* 80633230  2C 00 00 00 */	cmpwi r0, 0
/* 80633234  40 80 00 44 */	bge lbl_80633278
/* 80633238  48 00 0C 44 */	b lbl_80633E7C
lbl_8063323C:
/* 8063323C  2C 00 00 05 */	cmpwi r0, 5
/* 80633240  41 82 06 20 */	beq lbl_80633860
/* 80633244  48 00 0C 38 */	b lbl_80633E7C
lbl_80633248:
/* 80633248  2C 00 00 12 */	cmpwi r0, 0x12
/* 8063324C  41 82 0A E8 */	beq lbl_80633D34
/* 80633250  40 80 00 1C */	bge lbl_8063326C
/* 80633254  2C 00 00 0C */	cmpwi r0, 0xc
/* 80633258  41 82 09 4C */	beq lbl_80633BA4
/* 8063325C  41 80 07 B8 */	blt lbl_80633A14
/* 80633260  2C 00 00 11 */	cmpwi r0, 0x11
/* 80633264  40 80 09 98 */	bge lbl_80633BFC
/* 80633268  48 00 0C 14 */	b lbl_80633E7C
lbl_8063326C:
/* 8063326C  2C 00 00 64 */	cmpwi r0, 0x64
/* 80633270  41 82 01 BC */	beq lbl_8063342C
/* 80633274  48 00 0C 08 */	b lbl_80633E7C
lbl_80633278:
/* 80633278  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 8063327C  28 00 00 02 */	cmplwi r0, 2
/* 80633280  41 82 00 28 */	beq lbl_806332A8
/* 80633284  38 80 00 02 */	li r4, 2
/* 80633288  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8063328C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80633290  38 C0 00 00 */	li r6, 0
/* 80633294  4B 9E 86 74 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80633298  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 8063329C  60 00 00 02 */	ori r0, r0, 2
/* 806332A0  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 806332A4  48 00 0C 20 */	b lbl_80633EC4
lbl_806332A8:
/* 806332A8  38 60 00 07 */	li r3, 7
/* 806332AC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806332B0  7C 04 07 74 */	extsb r4, r0
/* 806332B4  4B 9F A7 E8 */	b dComIfGs_onOneZoneSwitch__Fii
/* 806332B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806332BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806332C0  80 63 00 00 */	lwz r3, 0(r3)
/* 806332C4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 806332C8  38 80 00 1E */	li r4, 0x1e
/* 806332CC  38 A0 00 00 */	li r5, 0
/* 806332D0  4B C7 C1 38 */	b bgmStop__8Z2SeqMgrFUll
/* 806332D4  80 1D 12 AC */	lwz r0, 0x12ac(r29)
/* 806332D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806332DC  90 1D 12 AC */	stw r0, 0x12ac(r29)
/* 806332E0  38 00 00 00 */	li r0, 0
/* 806332E4  98 1D 0F AF */	stb r0, 0xfaf(r29)
/* 806332E8  38 00 00 64 */	li r0, 0x64
/* 806332EC  90 1D 0F 74 */	stw r0, 0xf74(r29)
/* 806332F0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806332F4  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806332F8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 806332FC  38 7E 02 48 */	addi r3, r30, 0x248
/* 80633300  4B B2 E1 D0 */	b Stop__9dCamera_cFv
/* 80633304  38 7E 02 48 */	addi r3, r30, 0x248
/* 80633308  38 80 00 03 */	li r4, 3
/* 8063330C  4B B2 FD 00 */	b SetTrimSize__9dCamera_cFl
/* 80633310  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80633314  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80633318  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063331C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80633320  C0 1F 01 80 */	lfs f0, 0x180(r31)
/* 80633324  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80633328  7F A3 EB 78 */	mr r3, r29
/* 8063332C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80633330  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80633334  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80633338  4B 9E 73 D8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8063333C  7C 65 1B 78 */	mr r5, r3
/* 80633340  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80633344  38 81 00 78 */	addi r4, r1, 0x78
/* 80633348  3C A5 00 01 */	addis r5, r5, 1
/* 8063334C  38 05 80 00 */	addi r0, r5, -32768
/* 80633350  7C 05 07 34 */	extsh r5, r0
/* 80633354  38 C0 00 00 */	li r6, 0
/* 80633358  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8063335C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80633360  7D 89 03 A6 */	mtctr r12
/* 80633364  4E 80 04 21 */	bctrl 
/* 80633368  38 00 00 64 */	li r0, 0x64
/* 8063336C  90 1D 0F 74 */	stw r0, 0xf74(r29)
/* 80633370  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80633374  D0 3D 07 24 */	stfs f1, 0x724(r29)
/* 80633378  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8063337C  D0 1D 07 28 */	stfs f0, 0x728(r29)
/* 80633380  D0 3D 07 2C */	stfs f1, 0x72c(r29)
/* 80633384  D0 3D 07 18 */	stfs f1, 0x718(r29)
/* 80633388  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 8063338C  D0 1D 07 1C */	stfs f0, 0x71c(r29)
/* 80633390  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80633394  D0 1D 07 20 */	stfs f0, 0x720(r29)
/* 80633398  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8063339C  D0 1D 07 30 */	stfs f0, 0x730(r29)
/* 806333A0  7F A3 EB 78 */	mr r3, r29
/* 806333A4  4B FF D3 4D */	bl setBreakIceEffect__8daB_YO_cFv
/* 806333A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070400@ha */
/* 806333AC  38 03 04 00 */	addi r0, r3, 0x0400 /* 0x00070400@l */
/* 806333B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 806333B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806333B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806333BC  80 63 00 00 */	lwz r3, 0(r3)
/* 806333C0  38 81 00 20 */	addi r4, r1, 0x20
/* 806333C4  38 A0 00 00 */	li r5, 0
/* 806333C8  38 C0 00 00 */	li r6, 0
/* 806333CC  38 E0 00 00 */	li r7, 0
/* 806333D0  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 806333D4  FC 40 08 90 */	fmr f2, f1
/* 806333D8  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 806333DC  FC 80 18 90 */	fmr f4, f3
/* 806333E0  39 00 00 00 */	li r8, 0
/* 806333E4  4B C7 85 A0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806333E8  3C 60 80 63 */	lis r3, s_frizad_delete__FPvPv@ha
/* 806333EC  38 63 0D 6C */	addi r3, r3, s_frizad_delete__FPvPv@l
/* 806333F0  7F A4 EB 78 */	mr r4, r29
/* 806333F4  4B 9E DF 44 */	b fpcEx_Search__FPFPvPv_PvPv
/* 806333F8  38 00 00 01 */	li r0, 1
/* 806333FC  98 1D 0F B5 */	stb r0, 0xfb5(r29)
/* 80633400  7F A3 EB 78 */	mr r3, r29
/* 80633404  38 80 00 0B */	li r4, 0xb
/* 80633408  38 A0 00 02 */	li r5, 2
/* 8063340C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80633410  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80633414  4B FF C7 F5 */	bl setBck__8daB_YO_cFiUcff
/* 80633418  38 00 00 05 */	li r0, 5
/* 8063341C  98 1D 0F C0 */	stb r0, 0xfc0(r29)
/* 80633420  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80633424  D0 1D 0F C4 */	stfs f0, 0xfc4(r29)
/* 80633428  48 00 0A 9C */	b lbl_80633EC4
lbl_8063342C:
/* 8063342C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80633430  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80633434  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80633438  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8063343C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80633440  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80633444  38 00 00 00 */	li r0, 0
/* 80633448  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8063344C  38 00 80 00 */	li r0, -32768
/* 80633450  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80633454  38 00 00 01 */	li r0, 1
/* 80633458  90 1D 0F 74 */	stw r0, 0xf74(r29)
lbl_8063345C:
/* 8063345C  3C 60 80 63 */	lis r3, s_frizad_delete__FPvPv@ha
/* 80633460  38 63 0D 6C */	addi r3, r3, s_frizad_delete__FPvPv@l
/* 80633464  7F A4 EB 78 */	mr r4, r29
/* 80633468  4B 9E DE D0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8063346C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80633470  D0 1D 07 24 */	stfs f0, 0x724(r29)
/* 80633474  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80633478  D0 1D 07 28 */	stfs f0, 0x728(r29)
/* 8063347C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80633480  D0 1D 07 2C */	stfs f0, 0x72c(r29)
/* 80633484  C0 3D 07 28 */	lfs f1, 0x728(r29)
/* 80633488  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8063348C  EC 01 00 2A */	fadds f0, f1, f0
/* 80633490  D0 1D 07 28 */	stfs f0, 0x728(r29)
/* 80633494  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80633498  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8063349C  C0 1F 01 84 */	lfs f0, 0x184(r31)
/* 806334A0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806334A4  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 806334A8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806334AC  38 7D 07 18 */	addi r3, r29, 0x718
/* 806334B0  38 81 00 78 */	addi r4, r1, 0x78
/* 806334B4  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806334B8  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 806334BC  4B C3 CC BC */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 806334C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FE@ha */
/* 806334C4  38 03 02 FE */	addi r0, r3, 0x02FE /* 0x000702FE@l */
/* 806334C8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806334CC  38 7D 06 34 */	addi r3, r29, 0x634
/* 806334D0  38 81 00 1C */	addi r4, r1, 0x1c
/* 806334D4  38 A0 00 00 */	li r5, 0
/* 806334D8  38 C0 FF FF */	li r6, -1
/* 806334DC  81 9D 06 34 */	lwz r12, 0x634(r29)
/* 806334E0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806334E4  7D 89 03 A6 */	mtctr r12
/* 806334E8  4E 80 04 21 */	bctrl 
/* 806334EC  80 1D 10 88 */	lwz r0, 0x1088(r29)
/* 806334F0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806334F4  41 82 09 88 */	beq lbl_80633E7C
/* 806334F8  7F A3 EB 78 */	mr r3, r29
/* 806334FC  4B FF D5 A1 */	bl setChillEffect__8daB_YO_cFv
/* 80633500  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80633504  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80633508  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8063350C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80633510  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80633514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80633518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063351C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80633520  38 80 00 08 */	li r4, 8
/* 80633524  38 A0 00 1F */	li r5, 0x1f
/* 80633528  38 C1 00 6C */	addi r6, r1, 0x6c
/* 8063352C  4B A3 C4 F8 */	b StartShock__12dVibration_cFii4cXyz
/* 80633530  7F A3 EB 78 */	mr r3, r29
/* 80633534  4B FF D1 BD */	bl setBreakIceEffect__8daB_YO_cFv
/* 80633538  38 00 00 02 */	li r0, 2
/* 8063353C  90 1D 0F 74 */	stw r0, 0xf74(r29)
/* 80633540  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80633544  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80633548  38 00 00 03 */	li r0, 3
/* 8063354C  98 1D 0F B5 */	stb r0, 0xfb5(r29)
/* 80633550  38 00 00 3C */	li r0, 0x3c
/* 80633554  90 1D 0F 8C */	stw r0, 0xf8c(r29)
/* 80633558  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8063355C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80633560  48 00 09 1C */	b lbl_80633E7C
lbl_80633564:
/* 80633564  80 1D 0F 8C */	lwz r0, 0xf8c(r29)
/* 80633568  2C 00 00 00 */	cmpwi r0, 0
/* 8063356C  41 82 09 10 */	beq lbl_80633E7C
/* 80633570  4B FF D5 2D */	bl setChillEffect__8daB_YO_cFv
/* 80633574  38 00 00 82 */	li r0, 0x82
/* 80633578  90 1D 0F 8C */	stw r0, 0xf8c(r29)
/* 8063357C  38 00 00 03 */	li r0, 3
/* 80633580  90 1D 0F 74 */	stw r0, 0xf74(r29)
/* 80633584  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80633588  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8063358C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80633590  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80633594  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80633598  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8063359C  38 61 00 78 */	addi r3, r1, 0x78
/* 806335A0  38 9D 07 24 */	addi r4, r29, 0x724
/* 806335A4  4B D1 3D F8 */	b PSVECSquareDistance
/* 806335A8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806335AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806335B0  40 81 00 58 */	ble lbl_80633608
/* 806335B4  FC 00 08 34 */	frsqrte f0, f1
/* 806335B8  C8 9F 01 40 */	lfd f4, 0x140(r31)
/* 806335BC  FC 44 00 32 */	fmul f2, f4, f0
/* 806335C0  C8 7F 01 48 */	lfd f3, 0x148(r31)
/* 806335C4  FC 00 00 32 */	fmul f0, f0, f0
/* 806335C8  FC 01 00 32 */	fmul f0, f1, f0
/* 806335CC  FC 03 00 28 */	fsub f0, f3, f0
/* 806335D0  FC 02 00 32 */	fmul f0, f2, f0
/* 806335D4  FC 44 00 32 */	fmul f2, f4, f0
/* 806335D8  FC 00 00 32 */	fmul f0, f0, f0
/* 806335DC  FC 01 00 32 */	fmul f0, f1, f0
/* 806335E0  FC 03 00 28 */	fsub f0, f3, f0
/* 806335E4  FC 02 00 32 */	fmul f0, f2, f0
/* 806335E8  FC 44 00 32 */	fmul f2, f4, f0
/* 806335EC  FC 00 00 32 */	fmul f0, f0, f0
/* 806335F0  FC 01 00 32 */	fmul f0, f1, f0
/* 806335F4  FC 03 00 28 */	fsub f0, f3, f0
/* 806335F8  FC 02 00 32 */	fmul f0, f2, f0
/* 806335FC  FC 21 00 32 */	fmul f1, f1, f0
/* 80633600  FC 20 08 18 */	frsp f1, f1
/* 80633604  48 00 00 88 */	b lbl_8063368C
lbl_80633608:
/* 80633608  C8 1F 01 50 */	lfd f0, 0x150(r31)
/* 8063360C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80633610  40 80 00 10 */	bge lbl_80633620
/* 80633614  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80633618  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8063361C  48 00 00 70 */	b lbl_8063368C
lbl_80633620:
/* 80633620  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80633624  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80633628  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063362C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80633630  7C 03 00 00 */	cmpw r3, r0
/* 80633634  41 82 00 14 */	beq lbl_80633648
/* 80633638  40 80 00 40 */	bge lbl_80633678
/* 8063363C  2C 03 00 00 */	cmpwi r3, 0
/* 80633640  41 82 00 20 */	beq lbl_80633660
/* 80633644  48 00 00 34 */	b lbl_80633678
lbl_80633648:
/* 80633648  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063364C  41 82 00 0C */	beq lbl_80633658
/* 80633650  38 00 00 01 */	li r0, 1
/* 80633654  48 00 00 28 */	b lbl_8063367C
lbl_80633658:
/* 80633658  38 00 00 02 */	li r0, 2
/* 8063365C  48 00 00 20 */	b lbl_8063367C
lbl_80633660:
/* 80633660  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80633664  41 82 00 0C */	beq lbl_80633670
/* 80633668  38 00 00 05 */	li r0, 5
/* 8063366C  48 00 00 10 */	b lbl_8063367C
lbl_80633670:
/* 80633670  38 00 00 03 */	li r0, 3
/* 80633674  48 00 00 08 */	b lbl_8063367C
lbl_80633678:
/* 80633678  38 00 00 04 */	li r0, 4
lbl_8063367C:
/* 8063367C  2C 00 00 01 */	cmpwi r0, 1
/* 80633680  40 82 00 0C */	bne lbl_8063368C
/* 80633684  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80633688  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8063368C:
/* 8063368C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80633690  EC 01 00 24 */	fdivs f0, f1, f0
/* 80633694  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 80633698  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 8063369C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806336A0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 806336A4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806336A8  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 806336AC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 806336B0  38 61 00 78 */	addi r3, r1, 0x78
/* 806336B4  38 9D 07 18 */	addi r4, r29, 0x718
/* 806336B8  4B D1 3C E4 */	b PSVECSquareDistance
/* 806336BC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806336C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806336C4  40 81 00 58 */	ble lbl_8063371C
/* 806336C8  FC 00 08 34 */	frsqrte f0, f1
/* 806336CC  C8 9F 01 40 */	lfd f4, 0x140(r31)
/* 806336D0  FC 44 00 32 */	fmul f2, f4, f0
/* 806336D4  C8 7F 01 48 */	lfd f3, 0x148(r31)
/* 806336D8  FC 00 00 32 */	fmul f0, f0, f0
/* 806336DC  FC 01 00 32 */	fmul f0, f1, f0
/* 806336E0  FC 03 00 28 */	fsub f0, f3, f0
/* 806336E4  FC 02 00 32 */	fmul f0, f2, f0
/* 806336E8  FC 44 00 32 */	fmul f2, f4, f0
/* 806336EC  FC 00 00 32 */	fmul f0, f0, f0
/* 806336F0  FC 01 00 32 */	fmul f0, f1, f0
/* 806336F4  FC 03 00 28 */	fsub f0, f3, f0
/* 806336F8  FC 02 00 32 */	fmul f0, f2, f0
/* 806336FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80633700  FC 00 00 32 */	fmul f0, f0, f0
/* 80633704  FC 01 00 32 */	fmul f0, f1, f0
/* 80633708  FC 03 00 28 */	fsub f0, f3, f0
/* 8063370C  FC 02 00 32 */	fmul f0, f2, f0
/* 80633710  FC 21 00 32 */	fmul f1, f1, f0
/* 80633714  FC 20 08 18 */	frsp f1, f1
/* 80633718  48 00 00 88 */	b lbl_806337A0
lbl_8063371C:
/* 8063371C  C8 1F 01 50 */	lfd f0, 0x150(r31)
/* 80633720  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80633724  40 80 00 10 */	bge lbl_80633734
/* 80633728  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063372C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80633730  48 00 00 70 */	b lbl_806337A0
lbl_80633734:
/* 80633734  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80633738  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8063373C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80633740  3C 00 7F 80 */	lis r0, 0x7f80
/* 80633744  7C 03 00 00 */	cmpw r3, r0
/* 80633748  41 82 00 14 */	beq lbl_8063375C
/* 8063374C  40 80 00 40 */	bge lbl_8063378C
/* 80633750  2C 03 00 00 */	cmpwi r3, 0
/* 80633754  41 82 00 20 */	beq lbl_80633774
/* 80633758  48 00 00 34 */	b lbl_8063378C
lbl_8063375C:
/* 8063375C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80633760  41 82 00 0C */	beq lbl_8063376C
/* 80633764  38 00 00 01 */	li r0, 1
/* 80633768  48 00 00 28 */	b lbl_80633790
lbl_8063376C:
/* 8063376C  38 00 00 02 */	li r0, 2
/* 80633770  48 00 00 20 */	b lbl_80633790
lbl_80633774:
/* 80633774  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80633778  41 82 00 0C */	beq lbl_80633784
/* 8063377C  38 00 00 05 */	li r0, 5
/* 80633780  48 00 00 10 */	b lbl_80633790
lbl_80633784:
/* 80633784  38 00 00 03 */	li r0, 3
/* 80633788  48 00 00 08 */	b lbl_80633790
lbl_8063378C:
/* 8063378C  38 00 00 04 */	li r0, 4
lbl_80633790:
/* 80633790  2C 00 00 01 */	cmpwi r0, 1
/* 80633794  40 82 00 0C */	bne lbl_806337A0
/* 80633798  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063379C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806337A0:
/* 806337A0  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 806337A4  EC 01 00 24 */	fdivs f0, f1, f0
/* 806337A8  D0 1D 07 38 */	stfs f0, 0x738(r29)
/* 806337AC  48 00 06 D0 */	b lbl_80633E7C
lbl_806337B0:
/* 806337B0  80 1D 0F 8C */	lwz r0, 0xf8c(r29)
/* 806337B4  2C 00 00 46 */	cmpwi r0, 0x46
/* 806337B8  40 80 00 5C */	bge lbl_80633814
/* 806337BC  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 806337C0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806337C4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806337C8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 806337CC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806337D0  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 806337D4  38 7D 07 24 */	addi r3, r29, 0x724
/* 806337D8  38 81 00 78 */	addi r4, r1, 0x78
/* 806337DC  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806337E0  C0 5D 07 3C */	lfs f2, 0x73c(r29)
/* 806337E4  4B C3 C9 94 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 806337E8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806337EC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 806337F0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 806337F4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 806337F8  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 806337FC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80633800  38 7D 07 18 */	addi r3, r29, 0x718
/* 80633804  38 81 00 78 */	addi r4, r1, 0x78
/* 80633808  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8063380C  C0 5D 07 38 */	lfs f2, 0x738(r29)
/* 80633810  4B C3 C9 68 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
lbl_80633814:
/* 80633814  80 1D 0F 8C */	lwz r0, 0xf8c(r29)
/* 80633818  2C 00 00 00 */	cmpwi r0, 0
/* 8063381C  40 82 06 60 */	bne lbl_80633E7C
/* 80633820  38 00 00 00 */	li r0, 0
/* 80633824  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80633828  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8063382C  7F A3 EB 78 */	mr r3, r29
/* 80633830  38 80 00 0D */	li r4, 0xd
/* 80633834  38 A0 00 02 */	li r5, 2
/* 80633838  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 8063383C  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80633840  4B FF C3 C9 */	bl setBck__8daB_YO_cFiUcff
/* 80633844  38 00 00 5A */	li r0, 0x5a
/* 80633848  90 1D 0F 8C */	stw r0, 0xf8c(r29)
/* 8063384C  38 00 00 05 */	li r0, 5
/* 80633850  90 1D 0F 74 */	stw r0, 0xf74(r29)
/* 80633854  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80633858  D0 1D 07 3C */	stfs f0, 0x73c(r29)
/* 8063385C  48 00 06 20 */	b lbl_80633E7C
lbl_80633860:
/* 80633860  80 1D 0F 8C */	lwz r0, 0xf8c(r29)
/* 80633864  2C 00 00 50 */	cmpwi r0, 0x50
/* 80633868  40 80 00 60 */	bge lbl_806338C8
/* 8063386C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80633870  40 80 00 14 */	bge lbl_80633884
/* 80633874  38 7D 07 3C */	addi r3, r29, 0x73c
/* 80633878  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 8063387C  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80633880  4B C3 CE C0 */	b cLib_chaseF__FPfff
lbl_80633884:
/* 80633884  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80633888  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 8063388C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80633890  EC 21 00 2A */	fadds f1, f1, f0
/* 80633894  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80633898  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8063389C  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 806338A0  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 806338A4  38 7D 07 24 */	addi r3, r29, 0x724
/* 806338A8  38 81 00 78 */	addi r4, r1, 0x78
/* 806338AC  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806338B0  C0 5D 07 3C */	lfs f2, 0x73c(r29)
/* 806338B4  4B C3 C8 C4 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 806338B8  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 806338BC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806338C0  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 806338C4  4B C3 CE 7C */	b cLib_chaseF__FPfff
lbl_806338C8:
/* 806338C8  80 1D 0F 8C */	lwz r0, 0xf8c(r29)
/* 806338CC  2C 00 00 00 */	cmpwi r0, 0
/* 806338D0  40 82 05 AC */	bne lbl_80633E7C
/* 806338D4  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 806338D8  D0 5D 04 D0 */	stfs f2, 0x4d0(r29)
/* 806338DC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 806338E0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806338E4  C0 1F 01 90 */	lfs f0, 0x190(r31)
/* 806338E8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 806338EC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806338F0  D0 1D 07 24 */	stfs f0, 0x724(r29)
/* 806338F4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806338F8  D0 1D 07 28 */	stfs f0, 0x728(r29)
/* 806338FC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80633900  D0 1D 07 2C */	stfs f0, 0x72c(r29)
/* 80633904  C0 3D 07 28 */	lfs f1, 0x728(r29)
/* 80633908  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8063390C  EC 01 00 2A */	fadds f0, f1, f0
/* 80633910  D0 1D 07 28 */	stfs f0, 0x728(r29)
/* 80633914  D0 5D 07 18 */	stfs f2, 0x718(r29)
/* 80633918  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 8063391C  D0 1D 07 1C */	stfs f0, 0x71c(r29)
/* 80633920  C0 1F 01 98 */	lfs f0, 0x198(r31)
/* 80633924  D0 1D 07 20 */	stfs f0, 0x720(r29)
/* 80633928  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 8063392C  D0 1D 07 30 */	stfs f0, 0x730(r29)
/* 80633930  38 00 00 78 */	li r0, 0x78
/* 80633934  90 1D 0F 8C */	stw r0, 0xf8c(r29)
/* 80633938  38 00 00 0A */	li r0, 0xa
/* 8063393C  90 1D 0F 74 */	stw r0, 0xf74(r29)
/* 80633940  38 00 00 00 */	li r0, 0
/* 80633944  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80633948  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8063394C  48 00 05 30 */	b lbl_80633E7C
lbl_80633950:
/* 80633950  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80633954  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80633958  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8063395C  EC 21 00 2A */	fadds f1, f1, f0
/* 80633960  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80633964  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80633968  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 8063396C  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80633970  38 7D 07 24 */	addi r3, r29, 0x724
/* 80633974  38 81 00 78 */	addi r4, r1, 0x78
/* 80633978  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8063397C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80633980  4B C3 C7 F8 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80633984  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80633988  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 8063398C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80633990  41 82 00 54 */	beq lbl_806339E4
/* 80633994  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80633998  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 8063399C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806339A0  40 80 00 18 */	bge lbl_806339B8
/* 806339A4  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 806339A8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806339AC  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 806339B0  4B C3 CD 90 */	b cLib_chaseF__FPfff
/* 806339B4  48 00 00 30 */	b lbl_806339E4
lbl_806339B8:
/* 806339B8  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 806339BC  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 806339C0  4B C3 CD 80 */	b cLib_chaseF__FPfff
/* 806339C4  2C 03 00 00 */	cmpwi r3, 0
/* 806339C8  41 82 00 1C */	beq lbl_806339E4
/* 806339CC  7F A3 EB 78 */	mr r3, r29
/* 806339D0  38 80 00 0C */	li r4, 0xc
/* 806339D4  38 A0 00 02 */	li r5, 2
/* 806339D8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806339DC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 806339E0  4B FF C2 29 */	bl setBck__8daB_YO_cFiUcff
lbl_806339E4:
/* 806339E4  80 1D 0F 8C */	lwz r0, 0xf8c(r29)
/* 806339E8  2C 00 00 00 */	cmpwi r0, 0
/* 806339EC  40 82 04 90 */	bne lbl_80633E7C
/* 806339F0  7F A3 EB 78 */	mr r3, r29
/* 806339F4  38 80 00 09 */	li r4, 9
/* 806339F8  38 A0 00 00 */	li r5, 0
/* 806339FC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80633A00  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80633A04  4B FF C2 05 */	bl setBck__8daB_YO_cFiUcff
/* 80633A08  38 00 00 0B */	li r0, 0xb
/* 80633A0C  90 1D 0F 74 */	stw r0, 0xf74(r29)
/* 80633A10  48 00 04 6C */	b lbl_80633E7C
lbl_80633A14:
/* 80633A14  80 7D 05 F4 */	lwz r3, 0x5f4(r29)
/* 80633A18  38 63 00 0C */	addi r3, r3, 0xc
/* 80633A1C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80633A20  4B CF 4A 0C */	b checkPass__12J3DFrameCtrlFf
/* 80633A24  2C 03 00 00 */	cmpwi r3, 0
/* 80633A28  41 82 04 54 */	beq lbl_80633E7C
/* 80633A2C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80633A30  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80633A34  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80633A38  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80633A3C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 80633A40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80633A44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80633A48  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80633A4C  38 80 00 08 */	li r4, 8
/* 80633A50  38 A0 00 1F */	li r5, 0x1f
/* 80633A54  38 C1 00 60 */	addi r6, r1, 0x60
/* 80633A58  4B A3 C0 B8 */	b StartQuake__12dVibration_cFii4cXyz
/* 80633A5C  38 00 00 46 */	li r0, 0x46
/* 80633A60  90 1D 0F 9C */	stw r0, 0xf9c(r29)
/* 80633A64  38 00 00 78 */	li r0, 0x78
/* 80633A68  90 1D 0F 8C */	stw r0, 0xf8c(r29)
/* 80633A6C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80633A70  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80633A74  38 00 00 0C */	li r0, 0xc
/* 80633A78  90 1D 0F 74 */	stw r0, 0xf74(r29)
/* 80633A7C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80633A80  D0 1D 0F 4C */	stfs f0, 0xf4c(r29)
/* 80633A84  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80633A88  D0 1D 0F 34 */	stfs f0, 0xf34(r29)
/* 80633A8C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80633A90  D0 1D 0F 38 */	stfs f0, 0xf38(r29)
/* 80633A94  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80633A98  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80633A9C  C0 3D 0F 38 */	lfs f1, 0xf38(r29)
/* 80633AA0  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80633AA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80633AA8  D0 1D 0F 38 */	stfs f0, 0xf38(r29)
/* 80633AAC  3B 60 00 00 */	li r27, 0
/* 80633AB0  B3 7D 0F 5C */	sth r27, 0xf5c(r29)
/* 80633AB4  3B 40 00 00 */	li r26, 0
/* 80633AB8  7F 7C DB 78 */	mr r28, r27
lbl_80633ABC:
/* 80633ABC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80633AC0  7C 07 07 74 */	extsb r7, r0
/* 80633AC4  93 61 00 08 */	stw r27, 8(r1)
/* 80633AC8  38 60 02 12 */	li r3, 0x212
/* 80633ACC  28 1D 00 00 */	cmplwi r29, 0
/* 80633AD0  41 82 00 0C */	beq lbl_80633ADC
/* 80633AD4  80 9D 00 04 */	lwz r4, 4(r29)
/* 80633AD8  48 00 00 08 */	b lbl_80633AE0
lbl_80633ADC:
/* 80633ADC  38 80 FF FF */	li r4, -1
lbl_80633AE0:
/* 80633AE0  7F 45 D3 78 */	mr r5, r26
/* 80633AE4  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80633AE8  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80633AEC  39 20 00 00 */	li r9, 0
/* 80633AF0  39 40 FF FF */	li r10, -1
/* 80633AF4  4B 9E 63 FC */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80633AF8  38 1C 06 08 */	addi r0, r28, 0x608
/* 80633AFC  7C 7D 01 2E */	stwx r3, r29, r0
/* 80633B00  3B 5A 00 01 */	addi r26, r26, 1
/* 80633B04  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80633B08  3B 9C 00 04 */	addi r28, r28, 4
/* 80633B0C  41 80 FF B0 */	blt lbl_80633ABC
/* 80633B10  88 7D 0F A8 */	lbz r3, 0xfa8(r29)
/* 80633B14  38 03 00 01 */	addi r0, r3, 1
/* 80633B18  98 1D 0F A8 */	stb r0, 0xfa8(r29)
/* 80633B1C  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80633B20  28 00 00 07 */	cmplwi r0, 7
/* 80633B24  40 82 00 28 */	bne lbl_80633B4C
/* 80633B28  80 7D 05 F0 */	lwz r3, 0x5f0(r29)
/* 80633B2C  38 03 00 24 */	addi r0, r3, 0x24
/* 80633B30  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80633B34  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 80633B38  80 63 00 04 */	lwz r3, 4(r3)
/* 80633B3C  38 63 00 58 */	addi r3, r3, 0x58
/* 80633B40  80 9D 05 D4 */	lwz r4, 0x5d4(r29)
/* 80633B44  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80633B48  4B CF BC 6C */	b removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
lbl_80633B4C:
/* 80633B4C  38 7D 10 1C */	addi r3, r29, 0x101c
/* 80633B50  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80633B54  C0 5F 01 64 */	lfs f2, 0x164(r31)
/* 80633B58  3C 80 80 64 */	lis r4, l_HIO@ha
/* 80633B5C  38 84 9F 84 */	addi r4, r4, l_HIO@l
/* 80633B60  3B 64 00 08 */	addi r27, r4, 8
/* 80633B64  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80633B68  54 00 10 3A */	slwi r0, r0, 2
/* 80633B6C  7C 1B 04 2E */	lfsx f0, r27, r0
/* 80633B70  EC 42 00 32 */	fmuls f2, f2, f0
/* 80633B74  4B A4 23 E4 */	b SetWall__12dBgS_AcchCirFff
/* 80633B78  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 80633B7C  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80633B80  54 00 10 3A */	slwi r0, r0, 2
/* 80633B84  7C 1B 04 2E */	lfsx f0, r27, r0
/* 80633B88  EC 21 00 32 */	fmuls f1, f1, f0
/* 80633B8C  3C 60 80 64 */	lis r3, l_HIO@ha
/* 80633B90  38 63 9F 84 */	addi r3, r3, l_HIO@l
/* 80633B94  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80633B98  EC 01 00 2A */	fadds f0, f1, f0
/* 80633B9C  D0 1D 0F 54 */	stfs f0, 0xf54(r29)
/* 80633BA0  48 00 02 DC */	b lbl_80633E7C
lbl_80633BA4:
/* 80633BA4  38 00 00 78 */	li r0, 0x78
/* 80633BA8  90 1D 0F 8C */	stw r0, 0xf8c(r29)
/* 80633BAC  80 7D 05 F4 */	lwz r3, 0x5f4(r29)
/* 80633BB0  38 80 00 01 */	li r4, 1
/* 80633BB4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80633BB8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80633BBC  40 82 00 18 */	bne lbl_80633BD4
/* 80633BC0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80633BC4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80633BC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80633BCC  41 82 00 08 */	beq lbl_80633BD4
/* 80633BD0  38 80 00 00 */	li r4, 0
lbl_80633BD4:
/* 80633BD4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80633BD8  41 82 00 24 */	beq lbl_80633BFC
/* 80633BDC  7F A3 EB 78 */	mr r3, r29
/* 80633BE0  38 80 00 0A */	li r4, 0xa
/* 80633BE4  38 A0 00 02 */	li r5, 2
/* 80633BE8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80633BEC  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80633BF0  4B FF C0 19 */	bl setBck__8daB_YO_cFiUcff
/* 80633BF4  38 00 00 11 */	li r0, 0x11
/* 80633BF8  90 1D 0F 74 */	stw r0, 0xf74(r29)
lbl_80633BFC:
/* 80633BFC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80633C00  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 80633C04  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80633C08  EC 21 00 2A */	fadds f1, f1, f0
/* 80633C0C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80633C10  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80633C14  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80633C18  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80633C1C  38 7D 07 24 */	addi r3, r29, 0x724
/* 80633C20  38 81 00 78 */	addi r4, r1, 0x78
/* 80633C24  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80633C28  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80633C2C  4B C3 C5 4C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80633C30  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80633C34  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80633C38  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80633C3C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80633C40  C0 1F 01 A8 */	lfs f0, 0x1a8(r31)
/* 80633C44  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80633C48  38 7D 07 18 */	addi r3, r29, 0x718
/* 80633C4C  38 81 00 78 */	addi r4, r1, 0x78
/* 80633C50  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80633C54  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80633C58  4B C3 C5 20 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80633C5C  38 7D 07 30 */	addi r3, r29, 0x730
/* 80633C60  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80633C64  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 80633C68  4B C3 CA D8 */	b cLib_chaseF__FPfff
/* 80633C6C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80633C70  D0 1D 0F 34 */	stfs f0, 0xf34(r29)
/* 80633C74  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80633C78  D0 1D 0F 38 */	stfs f0, 0xf38(r29)
/* 80633C7C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80633C80  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80633C84  C0 3D 0F 38 */	lfs f1, 0xf38(r29)
/* 80633C88  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80633C8C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80633C90  D0 1D 0F 38 */	stfs f0, 0xf38(r29)
/* 80633C94  7F A3 EB 78 */	mr r3, r29
/* 80633C98  4B FF CF 59 */	bl setApperEffect__8daB_YO_cFv
/* 80633C9C  80 1D 0F 8C */	lwz r0, 0xf8c(r29)
/* 80633CA0  2C 00 00 00 */	cmpwi r0, 0
/* 80633CA4  40 82 01 D8 */	bne lbl_80633E7C
/* 80633CA8  7F A3 EB 78 */	mr r3, r29
/* 80633CAC  4B FF CF F5 */	bl setApperEffect2__8daB_YO_cFv
/* 80633CB0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80633CB4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80633CB8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80633CBC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80633CC0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80633CC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80633CC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80633CCC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80633CD0  38 80 00 06 */	li r4, 6
/* 80633CD4  38 A0 00 1F */	li r5, 0x1f
/* 80633CD8  38 C1 00 54 */	addi r6, r1, 0x54
/* 80633CDC  4B A3 BD 48 */	b StartShock__12dVibration_cFii4cXyz
/* 80633CE0  38 00 00 12 */	li r0, 0x12
/* 80633CE4  90 1D 0F 74 */	stw r0, 0xf74(r29)
/* 80633CE8  38 00 00 00 */	li r0, 0
/* 80633CEC  98 1D 0F B5 */	stb r0, 0xfb5(r29)
/* 80633CF0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80633CF4  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 80633CF8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80633CFC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80633D00  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80633D04  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80633D08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80633D0C  D0 1D 0F 38 */	stfs f0, 0xf38(r29)
/* 80633D10  38 00 00 5A */	li r0, 0x5a
/* 80633D14  90 1D 0F 8C */	stw r0, 0xf8c(r29)
/* 80633D18  7F A3 EB 78 */	mr r3, r29
/* 80633D1C  38 80 00 0E */	li r4, 0xe
/* 80633D20  38 A0 00 02 */	li r5, 2
/* 80633D24  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80633D28  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80633D2C  4B FF BE DD */	bl setBck__8daB_YO_cFiUcff
/* 80633D30  48 00 01 4C */	b lbl_80633E7C
lbl_80633D34:
/* 80633D34  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070305@ha */
/* 80633D38  38 03 03 05 */	addi r0, r3, 0x0305 /* 0x00070305@l */
/* 80633D3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80633D40  38 7D 06 34 */	addi r3, r29, 0x634
/* 80633D44  38 81 00 18 */	addi r4, r1, 0x18
/* 80633D48  38 A0 00 00 */	li r5, 0
/* 80633D4C  38 C0 FF FF */	li r6, -1
/* 80633D50  81 9D 06 34 */	lwz r12, 0x634(r29)
/* 80633D54  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80633D58  7D 89 03 A6 */	mtctr r12
/* 80633D5C  4E 80 04 21 */	bctrl 
/* 80633D60  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80633D64  D0 1D 0F 34 */	stfs f0, 0xf34(r29)
/* 80633D68  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80633D6C  D0 1D 0F 38 */	stfs f0, 0xf38(r29)
/* 80633D70  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80633D74  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80633D78  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80633D7C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80633D80  EC 01 00 28 */	fsubs f0, f1, f0
/* 80633D84  D0 1D 0F 38 */	stfs f0, 0xf38(r29)
/* 80633D88  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80633D8C  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80633D90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80633D94  40 80 00 18 */	bge lbl_80633DAC
/* 80633D98  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80633D9C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80633DA0  C0 5F 01 B0 */	lfs f2, 0x1b0(r31)
/* 80633DA4  4B C3 C9 9C */	b cLib_chaseF__FPfff
/* 80633DA8  48 00 00 14 */	b lbl_80633DBC
lbl_80633DAC:
/* 80633DAC  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80633DB0  C0 3F 01 B4 */	lfs f1, 0x1b4(r31)
/* 80633DB4  C0 5F 01 B0 */	lfs f2, 0x1b0(r31)
/* 80633DB8  4B C3 C9 88 */	b cLib_chaseF__FPfff
lbl_80633DBC:
/* 80633DBC  80 1D 0F 8C */	lwz r0, 0xf8c(r29)
/* 80633DC0  2C 00 00 00 */	cmpwi r0, 0
/* 80633DC4  40 82 00 B8 */	bne lbl_80633E7C
/* 80633DC8  38 00 00 06 */	li r0, 6
/* 80633DCC  98 1D 0F C0 */	stb r0, 0xfc0(r29)
/* 80633DD0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80633DD4  D0 1D 0F C4 */	stfs f0, 0xfc4(r29)
/* 80633DD8  7F A3 EB 78 */	mr r3, r29
/* 80633DDC  38 80 00 03 */	li r4, 3
/* 80633DE0  4B FF C4 4D */	bl setIcicleOperate__8daB_YO_cFi
/* 80633DE4  7F A3 EB 78 */	mr r3, r29
/* 80633DE8  38 80 00 03 */	li r4, 3
/* 80633DEC  38 A0 00 00 */	li r5, 0
/* 80633DF0  4B FF C0 1D */	bl setActionMode__8daB_YO_cFii
/* 80633DF4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80633DF8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80633DFC  80 63 00 00 */	lwz r3, 0(r3)
/* 80633E00  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80633E04  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100004D@ha */
/* 80633E08  38 84 00 4D */	addi r4, r4, 0x004D /* 0x0100004D@l */
/* 80633E0C  38 A0 00 00 */	li r5, 0
/* 80633E10  38 C0 00 00 */	li r6, 0
/* 80633E14  4B C7 B1 FC */	b bgmStart__8Z2SeqMgrFUlUll
/* 80633E18  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80633E1C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80633E20  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 80633E24  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80633E28  C0 1D 07 2C */	lfs f0, 0x72c(r29)
/* 80633E2C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80633E30  C0 1D 07 18 */	lfs f0, 0x718(r29)
/* 80633E34  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80633E38  C0 1D 07 1C */	lfs f0, 0x71c(r29)
/* 80633E3C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80633E40  C0 1D 07 20 */	lfs f0, 0x720(r29)
/* 80633E44  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80633E48  38 7E 02 48 */	addi r3, r30, 0x248
/* 80633E4C  38 81 00 48 */	addi r4, r1, 0x48
/* 80633E50  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80633E54  4B B4 CD C4 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80633E58  38 7E 02 48 */	addi r3, r30, 0x248
/* 80633E5C  4B B2 D6 50 */	b Start__9dCamera_cFv
/* 80633E60  38 7E 02 48 */	addi r3, r30, 0x248
/* 80633E64  38 80 00 00 */	li r4, 0
/* 80633E68  4B B2 F1 A4 */	b SetTrimSize__9dCamera_cFl
/* 80633E6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80633E70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80633E74  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80633E78  4B A0 E5 F0 */	b reset__14dEvt_control_cFv
lbl_80633E7C:
/* 80633E7C  C0 1D 07 24 */	lfs f0, 0x724(r29)
/* 80633E80  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80633E84  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 80633E88  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80633E8C  C0 1D 07 2C */	lfs f0, 0x72c(r29)
/* 80633E90  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80633E94  C0 1D 07 18 */	lfs f0, 0x718(r29)
/* 80633E98  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80633E9C  C0 1D 07 1C */	lfs f0, 0x71c(r29)
/* 80633EA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80633EA4  C0 1D 07 20 */	lfs f0, 0x720(r29)
/* 80633EA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80633EAC  38 7E 02 48 */	addi r3, r30, 0x248
/* 80633EB0  38 81 00 30 */	addi r4, r1, 0x30
/* 80633EB4  38 A1 00 24 */	addi r5, r1, 0x24
/* 80633EB8  C0 3D 07 30 */	lfs f1, 0x730(r29)
/* 80633EBC  38 C0 00 00 */	li r6, 0
/* 80633EC0  4B B4 CC 20 */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_80633EC4:
/* 80633EC4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80633EC8  4B D2 E3 54 */	b _restgpr_26
/* 80633ECC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80633ED0  7C 08 03 A6 */	mtlr r0
/* 80633ED4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80633ED8  4E 80 00 20 */	blr 

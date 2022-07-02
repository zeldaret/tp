lbl_8046CFE8:
/* 8046CFE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8046CFEC  7C 08 02 A6 */	mflr r0
/* 8046CFF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8046CFF4  39 61 00 30 */	addi r11, r1, 0x30
/* 8046CFF8  4B EF 51 E5 */	bl _savegpr_29
/* 8046CFFC  7C 7E 1B 78 */	mr r30, r3
/* 8046D000  3C 60 80 47 */	lis r3, lit_3960@ha /* 0x8046DA18@ha */
/* 8046D004  3B E3 DA 18 */	addi r31, r3, lit_3960@l /* 0x8046DA18@l */
/* 8046D008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D00C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D010  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8046D014  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8046D018  2C 00 00 04 */	cmpwi r0, 4
/* 8046D01C  41 82 00 14 */	beq lbl_8046D030
/* 8046D020  40 80 03 18 */	bge lbl_8046D338
/* 8046D024  2C 00 00 01 */	cmpwi r0, 1
/* 8046D028  41 82 02 1C */	beq lbl_8046D244
/* 8046D02C  48 00 03 0C */	b lbl_8046D338
lbl_8046D030:
/* 8046D030  88 1E 05 D1 */	lbz r0, 0x5d1(r30)
/* 8046D034  28 00 00 00 */	cmplwi r0, 0
/* 8046D038  40 82 00 DC */	bne lbl_8046D114
/* 8046D03C  88 9E 05 B5 */	lbz r4, 0x5b5(r30)
/* 8046D040  28 04 00 FF */	cmplwi r4, 0xff
/* 8046D044  41 82 00 D0 */	beq lbl_8046D114
/* 8046D048  3C A0 80 45 */	lis r5, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8046D04C  38 A5 0D 64 */	addi r5, r5, mStayNo__20dStage_roomControl_c+0x0@l /* 0x80450D64@l */
/* 8046D050  88 A5 00 00 */	lbz r5, 0(r5)
/* 8046D054  7C A5 07 74 */	extsb r5, r5
/* 8046D058  4B BC 83 09 */	bl isSwitch__10dSv_info_cCFii
/* 8046D05C  2C 03 00 00 */	cmpwi r3, 0
/* 8046D060  41 82 00 B4 */	beq lbl_8046D114
/* 8046D064  88 1E 05 D0 */	lbz r0, 0x5d0(r30)
/* 8046D068  28 00 00 00 */	cmplwi r0, 0
/* 8046D06C  40 82 00 A8 */	bne lbl_8046D114
/* 8046D070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D078  38 00 00 00 */	li r0, 0
/* 8046D07C  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 8046D080  28 03 00 00 */	cmplwi r3, 0
/* 8046D084  41 82 00 0C */	beq lbl_8046D090
/* 8046D088  28 03 00 02 */	cmplwi r3, 2
/* 8046D08C  40 82 00 08 */	bne lbl_8046D094
lbl_8046D090:
/* 8046D090  38 00 00 01 */	li r0, 1
lbl_8046D094:
/* 8046D094  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8046D098  41 82 00 7C */	beq lbl_8046D114
/* 8046D09C  7F C3 F3 78 */	mr r3, r30
/* 8046D0A0  3C 80 80 47 */	lis r4, d_a_kytag04__stringBase0@ha /* 0x8046DA50@ha */
/* 8046D0A4  38 84 DA 50 */	addi r4, r4, d_a_kytag04__stringBase0@l /* 0x8046DA50@l */
/* 8046D0A8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8046D0AC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8046D0B0  38 C0 00 01 */	li r6, 1
/* 8046D0B4  38 E0 00 00 */	li r7, 0
/* 8046D0B8  4B BA E3 15 */	bl fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs
/* 8046D0BC  2C 03 00 00 */	cmpwi r3, 0
/* 8046D0C0  41 82 00 54 */	beq lbl_8046D114
/* 8046D0C4  38 00 00 01 */	li r0, 1
/* 8046D0C8  98 1E 05 D1 */	stb r0, 0x5d1(r30)
/* 8046D0CC  98 1E 05 D0 */	stb r0, 0x5d0(r30)
/* 8046D0D0  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 8046D0D4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800EA@ha */
/* 8046D0D8  38 03 00 EA */	addi r0, r3, 0x00EA /* 0x000800EA@l */
/* 8046D0DC  90 01 00 08 */	stw r0, 8(r1)
/* 8046D0E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8046D0E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8046D0E8  80 63 00 00 */	lwz r3, 0(r3)
/* 8046D0EC  38 81 00 08 */	addi r4, r1, 8
/* 8046D0F0  38 A0 00 00 */	li r5, 0
/* 8046D0F4  38 C0 00 00 */	li r6, 0
/* 8046D0F8  38 E0 00 00 */	li r7, 0
/* 8046D0FC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8046D100  FC 40 08 90 */	fmr f2, f1
/* 8046D104  C0 7F 00 28 */	lfs f3, 0x28(r31)
/* 8046D108  FC 80 18 90 */	fmr f4, f3
/* 8046D10C  39 00 00 00 */	li r8, 0
/* 8046D110  4B E3 E8 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8046D114:
/* 8046D114  88 1E 05 D0 */	lbz r0, 0x5d0(r30)
/* 8046D118  28 00 00 00 */	cmplwi r0, 0
/* 8046D11C  41 82 02 1C */	beq lbl_8046D338
/* 8046D120  28 00 00 0A */	cmplwi r0, 0xa
/* 8046D124  40 82 00 B4 */	bne lbl_8046D1D8
/* 8046D128  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8046D12C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8046D130  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8046D134  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8046D138  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8046D13C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8046D140  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8046D144  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8046D148  88 7E 05 C6 */	lbz r3, 0x5c6(r30)
/* 8046D14C  28 03 00 FF */	cmplwi r3, 0xff
/* 8046D150  40 82 00 28 */	bne lbl_8046D178
/* 8046D154  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 8046D158  3C 80 80 45 */	lis r4, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8046D15C  38 84 0D 64 */	addi r4, r4, mStayNo__20dStage_roomControl_c+0x0@l /* 0x80450D64@l */
/* 8046D160  88 84 00 00 */	lbz r4, 0(r4)
/* 8046D164  7C 84 07 74 */	extsb r4, r4
/* 8046D168  38 A1 00 14 */	addi r5, r1, 0x14
/* 8046D16C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8046D170  4B CE 86 05 */	bl daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz
/* 8046D174  48 00 00 20 */	b lbl_8046D194
lbl_8046D178:
/* 8046D178  3C 80 80 45 */	lis r4, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8046D17C  38 84 0D 64 */	addi r4, r4, mStayNo__20dStage_roomControl_c+0x0@l /* 0x80450D64@l */
/* 8046D180  88 84 00 00 */	lbz r4, 0(r4)
/* 8046D184  7C 84 07 74 */	extsb r4, r4
/* 8046D188  38 A1 00 14 */	addi r5, r1, 0x14
/* 8046D18C  38 C1 00 0C */	addi r6, r1, 0xc
/* 8046D190  4B CE 85 E5 */	bl daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz
lbl_8046D194:
/* 8046D194  7F A3 EB 78 */	mr r3, r29
/* 8046D198  38 81 00 14 */	addi r4, r1, 0x14
/* 8046D19C  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 8046D1A0  38 C0 00 00 */	li r6, 0
/* 8046D1A4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8046D1A8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8046D1AC  7D 89 03 A6 */	mtctr r12
/* 8046D1B0  4E 80 04 21 */	bctrl 
/* 8046D1B4  38 00 00 03 */	li r0, 3
/* 8046D1B8  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 8046D1BC  38 60 00 00 */	li r3, 0
/* 8046D1C0  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 8046D1C4  38 00 00 04 */	li r0, 4
/* 8046D1C8  90 1D 06 14 */	stw r0, 0x614(r29)
/* 8046D1CC  90 7D 06 0C */	stw r3, 0x60c(r29)
/* 8046D1D0  90 7D 06 10 */	stw r3, 0x610(r29)
/* 8046D1D4  B0 7D 06 0A */	sth r3, 0x60a(r29)
lbl_8046D1D8:
/* 8046D1D8  88 7E 05 D0 */	lbz r3, 0x5d0(r30)
/* 8046D1DC  28 03 00 50 */	cmplwi r3, 0x50
/* 8046D1E0  40 80 00 10 */	bge lbl_8046D1F0
/* 8046D1E4  38 03 00 01 */	addi r0, r3, 1
/* 8046D1E8  98 1E 05 D0 */	stb r0, 0x5d0(r30)
/* 8046D1EC  48 00 01 4C */	b lbl_8046D338
lbl_8046D1F0:
/* 8046D1F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D1F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D1F8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8046D1FC  3C 80 80 47 */	lis r4, d_a_kytag04__stringBase0@ha /* 0x8046DA50@ha */
/* 8046D200  38 84 DA 50 */	addi r4, r4, d_a_kytag04__stringBase0@l /* 0x8046DA50@l */
/* 8046D204  38 84 00 0E */	addi r4, r4, 0xe
/* 8046D208  4B EF B7 8D */	bl strcmp
/* 8046D20C  2C 03 00 00 */	cmpwi r3, 0
/* 8046D210  40 82 00 28 */	bne lbl_8046D238
/* 8046D214  38 60 00 03 */	li r3, 3
/* 8046D218  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8046D21C  38 80 00 00 */	li r4, 0
/* 8046D220  3C A0 80 45 */	lis r5, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8046D224  88 05 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r5)  /* 0x80450D64@l */
/* 8046D228  7C 05 07 74 */	extsb r5, r0
/* 8046D22C  38 C0 00 00 */	li r6, 0
/* 8046D230  38 E0 FF FF */	li r7, -1
/* 8046D234  4B BB 9F 3D */	bl dStage_changeScene__FifUlScsi
lbl_8046D238:
/* 8046D238  38 00 00 00 */	li r0, 0
/* 8046D23C  98 1E 05 D0 */	stb r0, 0x5d0(r30)
/* 8046D240  48 00 00 F8 */	b lbl_8046D338
lbl_8046D244:
/* 8046D244  88 9E 05 B5 */	lbz r4, 0x5b5(r30)
/* 8046D248  28 04 00 FF */	cmplwi r4, 0xff
/* 8046D24C  41 82 00 EC */	beq lbl_8046D338
/* 8046D250  3C A0 80 45 */	lis r5, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8046D254  38 A5 0D 64 */	addi r5, r5, mStayNo__20dStage_roomControl_c+0x0@l /* 0x80450D64@l */
/* 8046D258  88 A5 00 00 */	lbz r5, 0(r5)
/* 8046D25C  7C A5 07 74 */	extsb r5, r5
/* 8046D260  4B BC 81 01 */	bl isSwitch__10dSv_info_cCFii
/* 8046D264  2C 03 00 00 */	cmpwi r3, 0
/* 8046D268  41 82 00 D0 */	beq lbl_8046D338
/* 8046D26C  88 7E 05 B7 */	lbz r3, 0x5b7(r30)
/* 8046D270  7C 60 07 75 */	extsb. r0, r3
/* 8046D274  41 82 00 C4 */	beq lbl_8046D338
/* 8046D278  7C 60 07 74 */	extsb r0, r3
/* 8046D27C  2C 00 00 01 */	cmpwi r0, 1
/* 8046D280  41 82 00 B8 */	beq lbl_8046D338
/* 8046D284  88 1E 05 C4 */	lbz r0, 0x5c4(r30)
/* 8046D288  2C 00 00 01 */	cmpwi r0, 1
/* 8046D28C  41 82 00 70 */	beq lbl_8046D2FC
/* 8046D290  40 80 00 A8 */	bge lbl_8046D338
/* 8046D294  2C 00 00 00 */	cmpwi r0, 0
/* 8046D298  40 80 00 08 */	bge lbl_8046D2A0
/* 8046D29C  48 00 00 9C */	b lbl_8046D338
lbl_8046D2A0:
/* 8046D2A0  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 8046D2A4  28 00 00 02 */	cmplwi r0, 2
/* 8046D2A8  41 82 00 34 */	beq lbl_8046D2DC
/* 8046D2AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D2B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D2B4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8046D2B8  7F C4 F3 78 */	mr r4, r30
/* 8046D2BC  4B BD 52 5D */	bl reset__14dEvt_control_cFPv
/* 8046D2C0  7F C3 F3 78 */	mr r3, r30
/* 8046D2C4  38 80 04 00 */	li r4, 0x400
/* 8046D2C8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8046D2CC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8046D2D0  38 C0 00 00 */	li r6, 0
/* 8046D2D4  4B BA E6 35 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8046D2D8  48 00 00 60 */	b lbl_8046D338
lbl_8046D2DC:
/* 8046D2DC  38 00 00 01 */	li r0, 1
/* 8046D2E0  98 1E 05 C5 */	stb r0, 0x5c5(r30)
/* 8046D2E4  38 00 00 0A */	li r0, 0xa
/* 8046D2E8  90 1E 05 C0 */	stw r0, 0x5c0(r30)
/* 8046D2EC  88 7E 05 C4 */	lbz r3, 0x5c4(r30)
/* 8046D2F0  38 03 00 01 */	addi r0, r3, 1
/* 8046D2F4  98 1E 05 C4 */	stb r0, 0x5c4(r30)
/* 8046D2F8  48 00 00 40 */	b lbl_8046D338
lbl_8046D2FC:
/* 8046D2FC  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8046D300  2C 03 00 00 */	cmpwi r3, 0
/* 8046D304  41 81 00 2C */	bgt lbl_8046D330
/* 8046D308  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8046D30C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8046D310  38 80 00 00 */	li r4, 0
/* 8046D314  88 BE 04 E2 */	lbz r5, 0x4e2(r30)
/* 8046D318  38 C0 00 00 */	li r6, 0
/* 8046D31C  38 E0 FF FF */	li r7, -1
/* 8046D320  4B BB 9E 51 */	bl dStage_changeScene__FifUlScsi
/* 8046D324  38 00 00 01 */	li r0, 1
/* 8046D328  98 1E 05 B7 */	stb r0, 0x5b7(r30)
/* 8046D32C  48 00 00 0C */	b lbl_8046D338
lbl_8046D330:
/* 8046D330  38 03 FF FF */	addi r0, r3, -1
/* 8046D334  90 1E 05 C0 */	stw r0, 0x5c0(r30)
lbl_8046D338:
/* 8046D338  38 60 00 01 */	li r3, 1
/* 8046D33C  39 61 00 30 */	addi r11, r1, 0x30
/* 8046D340  4B EF 4E E9 */	bl _restgpr_29
/* 8046D344  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046D348  7C 08 03 A6 */	mtlr r0
/* 8046D34C  38 21 00 30 */	addi r1, r1, 0x30
/* 8046D350  4E 80 00 20 */	blr 

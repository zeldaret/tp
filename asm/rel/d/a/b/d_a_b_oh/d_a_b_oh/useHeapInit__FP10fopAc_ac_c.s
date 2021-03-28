lbl_8061D0B8:
/* 8061D0B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061D0BC  7C 08 02 A6 */	mflr r0
/* 8061D0C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061D0C4  39 61 00 30 */	addi r11, r1, 0x30
/* 8061D0C8  4B D4 51 10 */	b _savegpr_28
/* 8061D0CC  7C 7E 1B 78 */	mr r30, r3
/* 8061D0D0  3C 60 80 62 */	lis r3, lit_3650@ha
/* 8061D0D4  3B E3 D9 D4 */	addi r31, r3, lit_3650@l
/* 8061D0D8  38 60 00 54 */	li r3, 0x54
/* 8061D0DC  4B CB 1B 70 */	b __nw__FUl
/* 8061D0E0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8061D0E4  41 82 00 74 */	beq lbl_8061D158
/* 8061D0E8  3C 60 80 62 */	lis r3, stringBase0@ha
/* 8061D0EC  38 63 DA 74 */	addi r3, r3, stringBase0@l
/* 8061D0F0  38 80 00 29 */	li r4, 0x29
/* 8061D0F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8061D0F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8061D0FC  3C A5 00 02 */	addis r5, r5, 2
/* 8061D100  38 C0 00 80 */	li r6, 0x80
/* 8061D104  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8061D108  4B A1 F1 E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8061D10C  7C 64 1B 78 */	mr r4, r3
/* 8061D110  38 00 00 01 */	li r0, 1
/* 8061D114  90 01 00 08 */	stw r0, 8(r1)
/* 8061D118  38 00 00 00 */	li r0, 0
/* 8061D11C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061D120  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061D124  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 8061D128  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 8061D12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061D130  7F A3 EB 78 */	mr r3, r29
/* 8061D134  38 A0 00 00 */	li r5, 0
/* 8061D138  38 C0 00 00 */	li r6, 0
/* 8061D13C  38 E0 00 00 */	li r7, 0
/* 8061D140  39 00 00 02 */	li r8, 2
/* 8061D144  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8061D148  39 20 00 00 */	li r9, 0
/* 8061D14C  39 40 FF FF */	li r10, -1
/* 8061D150  4B 9F 2A FC */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 8061D154  7C 7D 1B 78 */	mr r29, r3
lbl_8061D158:
/* 8061D158  93 BE 05 B4 */	stw r29, 0x5b4(r30)
/* 8061D15C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061D160  28 03 00 00 */	cmplwi r3, 0
/* 8061D164  41 82 00 10 */	beq lbl_8061D174
/* 8061D168  80 83 00 04 */	lwz r4, 4(r3)
/* 8061D16C  28 04 00 00 */	cmplwi r4, 0
/* 8061D170  40 82 00 0C */	bne lbl_8061D17C
lbl_8061D174:
/* 8061D174  38 60 00 00 */	li r3, 0
/* 8061D178  48 00 02 0C */	b lbl_8061D384
lbl_8061D17C:
/* 8061D17C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 8061D180  38 A0 00 01 */	li r5, 1
/* 8061D184  4B 9F 13 B8 */	b create__21mDoExt_invisibleModelFP8J3DModelUc
/* 8061D188  2C 03 00 00 */	cmpwi r3, 0
/* 8061D18C  40 82 00 0C */	bne lbl_8061D198
/* 8061D190  38 60 00 00 */	li r3, 0
/* 8061D194  48 00 01 F0 */	b lbl_8061D384
lbl_8061D198:
/* 8061D198  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061D19C  80 63 00 04 */	lwz r3, 4(r3)
/* 8061D1A0  93 C3 00 14 */	stw r30, 0x14(r3)
/* 8061D1A4  38 C0 00 00 */	li r6, 0
/* 8061D1A8  3C 60 80 62 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 8061D1AC  38 83 B7 5C */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 8061D1B0  48 00 00 1C */	b lbl_8061D1CC
lbl_8061D1B4:
/* 8061D1B4  80 65 00 04 */	lwz r3, 4(r5)
/* 8061D1B8  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8061D1BC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8061D1C0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8061D1C4  90 83 00 04 */	stw r4, 4(r3)
/* 8061D1C8  38 C6 00 01 */	addi r6, r6, 1
lbl_8061D1CC:
/* 8061D1CC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061D1D0  80 A3 00 04 */	lwz r5, 4(r3)
/* 8061D1D4  80 65 00 04 */	lwz r3, 4(r5)
/* 8061D1D8  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 8061D1DC  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8061D1E0  7C 00 18 40 */	cmplw r0, r3
/* 8061D1E4  41 80 FF D0 */	blt lbl_8061D1B4
/* 8061D1E8  38 60 00 18 */	li r3, 0x18
/* 8061D1EC  4B CB 1A 60 */	b __nw__FUl
/* 8061D1F0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8061D1F4  41 82 00 20 */	beq lbl_8061D214
/* 8061D1F8  3C 80 80 62 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8061D1FC  38 04 DB 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8061D200  90 1D 00 00 */	stw r0, 0(r29)
/* 8061D204  38 80 00 00 */	li r4, 0
/* 8061D208  4B D0 B1 F4 */	b init__12J3DFrameCtrlFs
/* 8061D20C  38 00 00 00 */	li r0, 0
/* 8061D210  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8061D214:
/* 8061D214  93 BE 05 C0 */	stw r29, 0x5c0(r30)
/* 8061D218  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 8061D21C  28 00 00 00 */	cmplwi r0, 0
/* 8061D220  40 82 00 0C */	bne lbl_8061D22C
/* 8061D224  38 60 00 00 */	li r3, 0
/* 8061D228  48 00 01 5C */	b lbl_8061D384
lbl_8061D22C:
/* 8061D22C  3C 60 80 62 */	lis r3, stringBase0@ha
/* 8061D230  38 63 DA 74 */	addi r3, r3, stringBase0@l
/* 8061D234  38 80 00 36 */	li r4, 0x36
/* 8061D238  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8061D23C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8061D240  3F 85 00 02 */	addis r28, r5, 2
/* 8061D244  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8061D248  7F 85 E3 78 */	mr r5, r28
/* 8061D24C  38 C0 00 80 */	li r6, 0x80
/* 8061D250  4B A1 F0 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8061D254  7C 65 1B 78 */	mr r5, r3
/* 8061D258  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061D25C  80 63 00 04 */	lwz r3, 4(r3)
/* 8061D260  80 83 00 04 */	lwz r4, 4(r3)
/* 8061D264  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8061D268  38 84 00 58 */	addi r4, r4, 0x58
/* 8061D26C  38 C0 00 01 */	li r6, 1
/* 8061D270  38 E0 00 02 */	li r7, 2
/* 8061D274  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8061D278  39 00 00 00 */	li r8, 0
/* 8061D27C  39 20 FF FF */	li r9, -1
/* 8061D280  4B 9F 03 BC */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8061D284  2C 03 00 00 */	cmpwi r3, 0
/* 8061D288  40 82 00 0C */	bne lbl_8061D294
/* 8061D28C  38 60 00 00 */	li r3, 0
/* 8061D290  48 00 00 F4 */	b lbl_8061D384
lbl_8061D294:
/* 8061D294  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8061D298  4B C4 A6 BC */	b cM_rndF__Ff
/* 8061D29C  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8061D2A0  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8061D2A4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8061D2A8  4B C4 A6 E4 */	b cM_rndFX__Ff
/* 8061D2AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8061D2B0  EC 00 08 2A */	fadds f0, f0, f1
/* 8061D2B4  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8061D2B8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8061D2BC  38 60 00 18 */	li r3, 0x18
/* 8061D2C0  4B CB 19 8C */	b __nw__FUl
/* 8061D2C4  7C 7D 1B 79 */	or. r29, r3, r3
/* 8061D2C8  41 82 00 20 */	beq lbl_8061D2E8
/* 8061D2CC  3C 80 80 62 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8061D2D0  38 04 DB 54 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8061D2D4  90 1D 00 00 */	stw r0, 0(r29)
/* 8061D2D8  38 80 00 00 */	li r4, 0
/* 8061D2DC  4B D0 B1 20 */	b init__12J3DFrameCtrlFs
/* 8061D2E0  38 00 00 00 */	li r0, 0
/* 8061D2E4  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8061D2E8:
/* 8061D2E8  93 BE 05 C4 */	stw r29, 0x5c4(r30)
/* 8061D2EC  80 1E 05 C4 */	lwz r0, 0x5c4(r30)
/* 8061D2F0  28 00 00 00 */	cmplwi r0, 0
/* 8061D2F4  40 82 00 0C */	bne lbl_8061D300
/* 8061D2F8  38 60 00 00 */	li r3, 0
/* 8061D2FC  48 00 00 88 */	b lbl_8061D384
lbl_8061D300:
/* 8061D300  3C 60 80 62 */	lis r3, stringBase0@ha
/* 8061D304  38 63 DA 74 */	addi r3, r3, stringBase0@l
/* 8061D308  38 80 00 2F */	li r4, 0x2f
/* 8061D30C  7F 85 E3 78 */	mr r5, r28
/* 8061D310  38 C0 00 80 */	li r6, 0x80
/* 8061D314  4B A1 EF D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8061D318  7C 65 1B 78 */	mr r5, r3
/* 8061D31C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061D320  80 63 00 04 */	lwz r3, 4(r3)
/* 8061D324  80 83 00 04 */	lwz r4, 4(r3)
/* 8061D328  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8061D32C  38 84 00 58 */	addi r4, r4, 0x58
/* 8061D330  38 C0 00 01 */	li r6, 1
/* 8061D334  38 E0 00 02 */	li r7, 2
/* 8061D338  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8061D33C  39 00 00 00 */	li r8, 0
/* 8061D340  39 20 FF FF */	li r9, -1
/* 8061D344  4B 9F 03 C8 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8061D348  2C 03 00 00 */	cmpwi r3, 0
/* 8061D34C  40 82 00 0C */	bne lbl_8061D358
/* 8061D350  38 60 00 00 */	li r3, 0
/* 8061D354  48 00 00 30 */	b lbl_8061D384
lbl_8061D358:
/* 8061D358  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 8061D35C  4B C4 A5 F8 */	b cM_rndF__Ff
/* 8061D360  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8061D364  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8061D368  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8061D36C  4B C4 A6 20 */	b cM_rndFX__Ff
/* 8061D370  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8061D374  EC 00 08 2A */	fadds f0, f0, f1
/* 8061D378  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8061D37C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8061D380  38 60 00 01 */	li r3, 1
lbl_8061D384:
/* 8061D384  39 61 00 30 */	addi r11, r1, 0x30
/* 8061D388  4B D4 4E 9C */	b _restgpr_28
/* 8061D38C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061D390  7C 08 03 A6 */	mtlr r0
/* 8061D394  38 21 00 30 */	addi r1, r1, 0x30
/* 8061D398  4E 80 00 20 */	blr 

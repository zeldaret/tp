lbl_804A4F74:
/* 804A4F74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A4F78  7C 08 02 A6 */	mflr r0
/* 804A4F7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A4F80  39 61 00 30 */	addi r11, r1, 0x30
/* 804A4F84  4B EB D2 4C */	b _savegpr_26
/* 804A4F88  7C 7F 1B 78 */	mr r31, r3
/* 804A4F8C  3C 60 80 4B */	lis r3, lit_3727@ha
/* 804A4F90  3B 63 88 60 */	addi r27, r3, lit_3727@l
/* 804A4F94  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 804A4F98  3C 04 00 01 */	addis r0, r4, 1
/* 804A4F9C  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A4FA0  41 82 06 B8 */	beq lbl_804A5658
/* 804A4FA4  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804A4FA8  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804A4FAC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804A4FB0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804A4FB4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804A4FB8  3F 85 00 02 */	addis r28, r5, 2
/* 804A4FBC  3B 9C C2 F8 */	addi r28, r28, -15624
/* 804A4FC0  7F 85 E3 78 */	mr r5, r28
/* 804A4FC4  38 C0 00 80 */	li r6, 0x80
/* 804A4FC8  4B B9 74 38 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A4FCC  7C 7D 1B 78 */	mr r29, r3
/* 804A4FD0  80 63 00 28 */	lwz r3, 0x28(r3)
/* 804A4FD4  80 63 00 00 */	lwz r3, 0(r3)
/* 804A4FD8  38 00 00 00 */	li r0, 0
/* 804A4FDC  90 03 00 54 */	stw r0, 0x54(r3)
/* 804A4FE0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 804A4FE4  3B C3 00 84 */	addi r30, r3, 0x0084 /* 0x11000084@l */
/* 804A4FE8  38 80 00 00 */	li r4, 0
/* 804A4FEC  A0 1D 00 7C */	lhz r0, 0x7c(r29)
/* 804A4FF0  7C 09 03 A6 */	mtctr r0
/* 804A4FF4  2C 00 00 00 */	cmpwi r0, 0
/* 804A4FF8  40 81 00 34 */	ble lbl_804A502C
lbl_804A4FFC:
/* 804A4FFC  80 7D 00 80 */	lwz r3, 0x80(r29)
/* 804A5000  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 804A5004  7C 63 00 2E */	lwzx r3, r3, r0
/* 804A5008  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A500C  54 00 04 26 */	rlwinm r0, r0, 0, 0x10, 0x13
/* 804A5010  28 00 20 00 */	cmplwi r0, 0x2000
/* 804A5014  40 82 00 10 */	bne lbl_804A5024
/* 804A5018  38 00 00 01 */	li r0, 1
/* 804A501C  98 1F 06 AD */	stb r0, 0x6ad(r31)
/* 804A5020  48 00 00 0C */	b lbl_804A502C
lbl_804A5024:
/* 804A5024  38 84 00 01 */	addi r4, r4, 1
/* 804A5028  42 00 FF D4 */	bdnz lbl_804A4FFC
lbl_804A502C:
/* 804A502C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 804A5030  3C 03 00 01 */	addis r0, r3, 1
/* 804A5034  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A5038  41 82 00 A8 */	beq lbl_804A50E0
/* 804A503C  38 60 00 18 */	li r3, 0x18
/* 804A5040  4B E2 9C 0C */	b __nw__FUl
/* 804A5044  7C 7A 1B 79 */	or. r26, r3, r3
/* 804A5048  41 82 00 20 */	beq lbl_804A5068
/* 804A504C  3C 80 80 4B */	lis r4, __vt__12J3DFrameCtrl@ha
/* 804A5050  38 04 8B F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 804A5054  90 1A 00 00 */	stw r0, 0(r26)
/* 804A5058  38 80 00 00 */	li r4, 0
/* 804A505C  4B E8 33 A0 */	b init__12J3DFrameCtrlFs
/* 804A5060  38 00 00 00 */	li r0, 0
/* 804A5064  90 1A 00 14 */	stw r0, 0x14(r26)
lbl_804A5068:
/* 804A5068  93 5F 05 E0 */	stw r26, 0x5e0(r31)
/* 804A506C  80 1F 05 E0 */	lwz r0, 0x5e0(r31)
/* 804A5070  28 00 00 00 */	cmplwi r0, 0
/* 804A5074  40 82 00 0C */	bne lbl_804A5080
/* 804A5078  38 60 00 00 */	li r3, 0
/* 804A507C  48 00 06 BC */	b lbl_804A5738
lbl_804A5080:
/* 804A5080  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804A5084  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804A5088  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 804A508C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804A5090  7F 85 E3 78 */	mr r5, r28
/* 804A5094  38 C0 00 80 */	li r6, 0x80
/* 804A5098  4B B9 73 68 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A509C  7C 65 1B 79 */	or. r5, r3, r3
/* 804A50A0  40 82 00 0C */	bne lbl_804A50AC
/* 804A50A4  38 60 00 01 */	li r3, 1
/* 804A50A8  48 00 06 90 */	b lbl_804A5738
lbl_804A50AC:
/* 804A50AC  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 804A50B0  38 9D 00 58 */	addi r4, r29, 0x58
/* 804A50B4  38 C0 00 01 */	li r6, 1
/* 804A50B8  38 E0 FF FF */	li r7, -1
/* 804A50BC  C0 3B 00 4C */	lfs f1, 0x4c(r27)
/* 804A50C0  39 00 00 00 */	li r8, 0
/* 804A50C4  39 20 FF FF */	li r9, -1
/* 804A50C8  4B B6 84 84 */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 804A50CC  2C 03 00 00 */	cmpwi r3, 0
/* 804A50D0  40 82 00 0C */	bne lbl_804A50DC
/* 804A50D4  38 60 00 00 */	li r3, 0
/* 804A50D8  48 00 06 60 */	b lbl_804A5738
lbl_804A50DC:
/* 804A50DC  67 DE 04 02 */	oris r30, r30, 0x402
lbl_804A50E0:
/* 804A50E0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 804A50E4  3C 03 00 01 */	addis r0, r3, 1
/* 804A50E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A50EC  41 82 00 BC */	beq lbl_804A51A8
/* 804A50F0  38 60 00 18 */	li r3, 0x18
/* 804A50F4  4B E2 9B 58 */	b __nw__FUl
/* 804A50F8  7C 7A 1B 79 */	or. r26, r3, r3
/* 804A50FC  41 82 00 20 */	beq lbl_804A511C
/* 804A5100  3C 80 80 4B */	lis r4, __vt__12J3DFrameCtrl@ha
/* 804A5104  38 04 8B F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 804A5108  90 1A 00 00 */	stw r0, 0(r26)
/* 804A510C  38 80 00 00 */	li r4, 0
/* 804A5110  4B E8 32 EC */	b init__12J3DFrameCtrlFs
/* 804A5114  38 00 00 00 */	li r0, 0
/* 804A5118  90 1A 00 14 */	stw r0, 0x14(r26)
lbl_804A511C:
/* 804A511C  93 5F 05 E4 */	stw r26, 0x5e4(r31)
/* 804A5120  80 1F 05 E4 */	lwz r0, 0x5e4(r31)
/* 804A5124  28 00 00 00 */	cmplwi r0, 0
/* 804A5128  40 82 00 0C */	bne lbl_804A5134
/* 804A512C  38 60 00 00 */	li r3, 0
/* 804A5130  48 00 06 08 */	b lbl_804A5738
lbl_804A5134:
/* 804A5134  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804A5138  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804A513C  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 804A5140  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804A5144  7F 85 E3 78 */	mr r5, r28
/* 804A5148  38 C0 00 80 */	li r6, 0x80
/* 804A514C  4B B9 72 B4 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A5150  7C 65 1B 79 */	or. r5, r3, r3
/* 804A5154  40 82 00 0C */	bne lbl_804A5160
/* 804A5158  38 60 00 01 */	li r3, 1
/* 804A515C  48 00 05 DC */	b lbl_804A5738
lbl_804A5160:
/* 804A5160  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 804A5164  38 9D 00 58 */	addi r4, r29, 0x58
/* 804A5168  38 C0 00 01 */	li r6, 1
/* 804A516C  38 E0 FF FF */	li r7, -1
/* 804A5170  C0 3B 00 4C */	lfs f1, 0x4c(r27)
/* 804A5174  39 00 00 00 */	li r8, 0
/* 804A5178  39 20 FF FF */	li r9, -1
/* 804A517C  4B B6 84 C0 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 804A5180  2C 03 00 00 */	cmpwi r3, 0
/* 804A5184  40 82 00 0C */	bne lbl_804A5190
/* 804A5188  38 60 00 00 */	li r3, 0
/* 804A518C  48 00 05 AC */	b lbl_804A5738
lbl_804A5190:
/* 804A5190  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 804A5194  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 804A5198  41 82 00 0C */	beq lbl_804A51A4
/* 804A519C  63 DE 12 00 */	ori r30, r30, 0x1200
/* 804A51A0  48 00 00 08 */	b lbl_804A51A8
lbl_804A51A4:
/* 804A51A4  63 DE 02 00 */	ori r30, r30, 0x200
lbl_804A51A8:
/* 804A51A8  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 804A51AC  3C 03 00 01 */	addis r0, r3, 1
/* 804A51B0  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A51B4  41 82 00 A4 */	beq lbl_804A5258
/* 804A51B8  38 60 00 18 */	li r3, 0x18
/* 804A51BC  4B E2 9A 90 */	b __nw__FUl
/* 804A51C0  7C 7A 1B 79 */	or. r26, r3, r3
/* 804A51C4  41 82 00 20 */	beq lbl_804A51E4
/* 804A51C8  3C 80 80 4B */	lis r4, __vt__12J3DFrameCtrl@ha
/* 804A51CC  38 04 8B F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 804A51D0  90 1A 00 00 */	stw r0, 0(r26)
/* 804A51D4  38 80 00 00 */	li r4, 0
/* 804A51D8  4B E8 32 24 */	b init__12J3DFrameCtrlFs
/* 804A51DC  38 00 00 00 */	li r0, 0
/* 804A51E0  90 1A 00 14 */	stw r0, 0x14(r26)
lbl_804A51E4:
/* 804A51E4  93 5F 05 E8 */	stw r26, 0x5e8(r31)
/* 804A51E8  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 804A51EC  28 00 00 00 */	cmplwi r0, 0
/* 804A51F0  40 82 00 0C */	bne lbl_804A51FC
/* 804A51F4  38 60 00 00 */	li r3, 0
/* 804A51F8  48 00 05 40 */	b lbl_804A5738
lbl_804A51FC:
/* 804A51FC  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804A5200  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804A5204  80 1F 05 C0 */	lwz r0, 0x5c0(r31)
/* 804A5208  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804A520C  7F 85 E3 78 */	mr r5, r28
/* 804A5210  38 C0 00 80 */	li r6, 0x80
/* 804A5214  4B B9 71 EC */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A5218  7C 65 1B 79 */	or. r5, r3, r3
/* 804A521C  40 82 00 0C */	bne lbl_804A5228
/* 804A5220  38 60 00 01 */	li r3, 1
/* 804A5224  48 00 05 14 */	b lbl_804A5738
lbl_804A5228:
/* 804A5228  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 804A522C  38 9D 00 58 */	addi r4, r29, 0x58
/* 804A5230  38 C0 00 01 */	li r6, 1
/* 804A5234  38 E0 FF FF */	li r7, -1
/* 804A5238  C0 3B 00 4C */	lfs f1, 0x4c(r27)
/* 804A523C  39 00 00 00 */	li r8, 0
/* 804A5240  39 20 FF FF */	li r9, -1
/* 804A5244  4B B6 84 C8 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 804A5248  2C 03 00 00 */	cmpwi r3, 0
/* 804A524C  40 82 00 0C */	bne lbl_804A5258
/* 804A5250  38 60 00 00 */	li r3, 0
/* 804A5254  48 00 04 E4 */	b lbl_804A5738
lbl_804A5258:
/* 804A5258  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 804A525C  3C 03 00 01 */	addis r0, r3, 1
/* 804A5260  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A5264  41 82 00 A8 */	beq lbl_804A530C
/* 804A5268  38 60 00 18 */	li r3, 0x18
/* 804A526C  4B E2 99 E0 */	b __nw__FUl
/* 804A5270  7C 7A 1B 79 */	or. r26, r3, r3
/* 804A5274  41 82 00 20 */	beq lbl_804A5294
/* 804A5278  3C 80 80 4B */	lis r4, __vt__12J3DFrameCtrl@ha
/* 804A527C  38 04 8B F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 804A5280  90 1A 00 00 */	stw r0, 0(r26)
/* 804A5284  38 80 00 00 */	li r4, 0
/* 804A5288  4B E8 31 74 */	b init__12J3DFrameCtrlFs
/* 804A528C  38 00 00 00 */	li r0, 0
/* 804A5290  90 1A 00 14 */	stw r0, 0x14(r26)
lbl_804A5294:
/* 804A5294  93 5F 05 DC */	stw r26, 0x5dc(r31)
/* 804A5298  80 1F 05 DC */	lwz r0, 0x5dc(r31)
/* 804A529C  28 00 00 00 */	cmplwi r0, 0
/* 804A52A0  40 82 00 0C */	bne lbl_804A52AC
/* 804A52A4  38 60 00 00 */	li r3, 0
/* 804A52A8  48 00 04 90 */	b lbl_804A5738
lbl_804A52AC:
/* 804A52AC  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804A52B0  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804A52B4  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 804A52B8  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804A52BC  7F 85 E3 78 */	mr r5, r28
/* 804A52C0  38 C0 00 80 */	li r6, 0x80
/* 804A52C4  4B B9 71 3C */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A52C8  7C 65 1B 79 */	or. r5, r3, r3
/* 804A52CC  40 82 00 0C */	bne lbl_804A52D8
/* 804A52D0  38 60 00 01 */	li r3, 1
/* 804A52D4  48 00 04 64 */	b lbl_804A5738
lbl_804A52D8:
/* 804A52D8  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804A52DC  38 9D 00 58 */	addi r4, r29, 0x58
/* 804A52E0  38 C0 00 01 */	li r6, 1
/* 804A52E4  38 E0 FF FF */	li r7, -1
/* 804A52E8  C0 3B 00 4C */	lfs f1, 0x4c(r27)
/* 804A52EC  39 00 00 00 */	li r8, 0
/* 804A52F0  39 20 FF FF */	li r9, -1
/* 804A52F4  4B B6 81 88 */	b init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 804A52F8  2C 03 00 00 */	cmpwi r3, 0
/* 804A52FC  40 82 00 0C */	bne lbl_804A5308
/* 804A5300  38 60 00 00 */	li r3, 0
/* 804A5304  48 00 04 34 */	b lbl_804A5738
lbl_804A5308:
/* 804A5308  63 DE 00 01 */	ori r30, r30, 1
lbl_804A530C:
/* 804A530C  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 804A5310  3C 04 00 01 */	addis r0, r4, 1
/* 804A5314  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A5318  40 82 00 58 */	bne lbl_804A5370
/* 804A531C  38 00 00 00 */	li r0, 0
/* 804A5320  90 1F 05 D0 */	stw r0, 0x5d0(r31)
/* 804A5324  88 1F 06 AD */	lbz r0, 0x6ad(r31)
/* 804A5328  28 00 00 00 */	cmplwi r0, 0
/* 804A532C  40 82 00 1C */	bne lbl_804A5348
/* 804A5330  7F A3 EB 78 */	mr r3, r29
/* 804A5334  3C 80 00 08 */	lis r4, 8
/* 804A5338  7F C5 F3 78 */	mr r5, r30
/* 804A533C  4B B6 F9 18 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804A5340  90 7F 05 D4 */	stw r3, 0x5d4(r31)
/* 804A5344  48 00 00 18 */	b lbl_804A535C
lbl_804A5348:
/* 804A5348  7F A3 EB 78 */	mr r3, r29
/* 804A534C  38 80 00 00 */	li r4, 0
/* 804A5350  7F C5 F3 78 */	mr r5, r30
/* 804A5354  4B B6 F9 00 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804A5358  90 7F 05 D4 */	stw r3, 0x5d4(r31)
lbl_804A535C:
/* 804A535C  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 804A5360  28 00 00 00 */	cmplwi r0, 0
/* 804A5364  40 82 01 24 */	bne lbl_804A5488
/* 804A5368  38 60 00 00 */	li r3, 0
/* 804A536C  48 00 03 CC */	b lbl_804A5738
lbl_804A5370:
/* 804A5370  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804A5374  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804A5378  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804A537C  7F 85 E3 78 */	mr r5, r28
/* 804A5380  38 C0 00 80 */	li r6, 0x80
/* 804A5384  4B B9 70 7C */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A5388  7C 7A 1B 78 */	mr r26, r3
/* 804A538C  88 1F 06 A5 */	lbz r0, 0x6a5(r31)
/* 804A5390  28 00 00 00 */	cmplwi r0, 0
/* 804A5394  41 82 00 08 */	beq lbl_804A539C
/* 804A5398  67 DE 20 00 */	oris r30, r30, 0x2000
lbl_804A539C:
/* 804A539C  88 1F 06 AD */	lbz r0, 0x6ad(r31)
/* 804A53A0  28 00 00 00 */	cmplwi r0, 0
/* 804A53A4  40 82 00 58 */	bne lbl_804A53FC
/* 804A53A8  38 60 00 58 */	li r3, 0x58
/* 804A53AC  4B E2 98 A0 */	b __nw__FUl
/* 804A53B0  7C 60 1B 79 */	or. r0, r3, r3
/* 804A53B4  41 82 00 40 */	beq lbl_804A53F4
/* 804A53B8  38 1F 05 FC */	addi r0, r31, 0x5fc
/* 804A53BC  90 01 00 08 */	stw r0, 8(r1)
/* 804A53C0  3C 00 00 08 */	lis r0, 8
/* 804A53C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A53C8  93 C1 00 10 */	stw r30, 0x10(r1)
/* 804A53CC  7F A4 EB 78 */	mr r4, r29
/* 804A53D0  38 A0 00 00 */	li r5, 0
/* 804A53D4  38 C0 00 00 */	li r6, 0
/* 804A53D8  7F 47 D3 78 */	mr r7, r26
/* 804A53DC  39 00 FF FF */	li r8, -1
/* 804A53E0  C0 3B 00 4C */	lfs f1, 0x4c(r27)
/* 804A53E4  39 20 00 00 */	li r9, 0
/* 804A53E8  39 40 FF FF */	li r10, -1
/* 804A53EC  4B B6 B3 E4 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 804A53F0  7C 60 1B 78 */	mr r0, r3
lbl_804A53F4:
/* 804A53F4  90 1F 05 D0 */	stw r0, 0x5d0(r31)
/* 804A53F8  48 00 00 54 */	b lbl_804A544C
lbl_804A53FC:
/* 804A53FC  38 60 00 58 */	li r3, 0x58
/* 804A5400  4B E2 98 4C */	b __nw__FUl
/* 804A5404  7C 60 1B 79 */	or. r0, r3, r3
/* 804A5408  41 82 00 40 */	beq lbl_804A5448
/* 804A540C  38 1F 05 FC */	addi r0, r31, 0x5fc
/* 804A5410  90 01 00 08 */	stw r0, 8(r1)
/* 804A5414  38 00 00 00 */	li r0, 0
/* 804A5418  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A541C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 804A5420  7F A4 EB 78 */	mr r4, r29
/* 804A5424  38 A0 00 00 */	li r5, 0
/* 804A5428  38 C0 00 00 */	li r6, 0
/* 804A542C  7F 47 D3 78 */	mr r7, r26
/* 804A5430  39 00 FF FF */	li r8, -1
/* 804A5434  C0 3B 00 4C */	lfs f1, 0x4c(r27)
/* 804A5438  39 20 00 00 */	li r9, 0
/* 804A543C  39 40 FF FF */	li r10, -1
/* 804A5440  4B B6 B3 90 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 804A5444  7C 60 1B 78 */	mr r0, r3
lbl_804A5448:
/* 804A5448  90 1F 05 D0 */	stw r0, 0x5d0(r31)
lbl_804A544C:
/* 804A544C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 804A5450  28 03 00 00 */	cmplwi r3, 0
/* 804A5454  41 82 00 10 */	beq lbl_804A5464
/* 804A5458  80 03 00 04 */	lwz r0, 4(r3)
/* 804A545C  28 00 00 00 */	cmplwi r0, 0
/* 804A5460  40 82 00 0C */	bne lbl_804A546C
lbl_804A5464:
/* 804A5464  38 60 00 00 */	li r3, 0
/* 804A5468  48 00 02 D0 */	b lbl_804A5738
lbl_804A546C:
/* 804A546C  90 1F 05 D4 */	stw r0, 0x5d4(r31)
/* 804A5470  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A5474  4B FF F8 D5 */	bl awaCheck__FP8J3DModel
/* 804A5478  2C 03 00 00 */	cmpwi r3, 0
/* 804A547C  40 82 00 0C */	bne lbl_804A5488
/* 804A5480  38 60 00 00 */	li r3, 0
/* 804A5484  48 00 02 B4 */	b lbl_804A5738
lbl_804A5488:
/* 804A5488  88 1F 06 B4 */	lbz r0, 0x6b4(r31)
/* 804A548C  7C 00 07 75 */	extsb. r0, r0
/* 804A5490  41 82 00 40 */	beq lbl_804A54D0
/* 804A5494  38 60 00 08 */	li r3, 8
/* 804A5498  4B E2 97 B4 */	b __nw__FUl
/* 804A549C  90 7F 05 D8 */	stw r3, 0x5d8(r31)
/* 804A54A0  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 804A54A4  28 03 00 00 */	cmplwi r3, 0
/* 804A54A8  40 82 00 0C */	bne lbl_804A54B4
/* 804A54AC  38 60 00 00 */	li r3, 0
/* 804A54B0  48 00 02 88 */	b lbl_804A5738
lbl_804A54B4:
/* 804A54B4  80 9F 05 D4 */	lwz r4, 0x5d4(r31)
/* 804A54B8  38 A0 00 01 */	li r5, 1
/* 804A54BC  4B B6 90 80 */	b create__21mDoExt_invisibleModelFP8J3DModelUc
/* 804A54C0  2C 03 00 00 */	cmpwi r3, 0
/* 804A54C4  40 82 00 14 */	bne lbl_804A54D8
/* 804A54C8  38 60 00 00 */	li r3, 0
/* 804A54CC  48 00 02 6C */	b lbl_804A5738
lbl_804A54D0:
/* 804A54D0  38 00 00 00 */	li r0, 0
/* 804A54D4  90 1F 05 D8 */	stw r0, 0x5d8(r31)
lbl_804A54D8:
/* 804A54D8  38 00 00 01 */	li r0, 1
/* 804A54DC  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 804A54E0  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 804A54E4  3C 03 00 01 */	addis r0, r3, 1
/* 804A54E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A54EC  41 82 00 40 */	beq lbl_804A552C
/* 804A54F0  38 60 00 24 */	li r3, 0x24
/* 804A54F4  4B E2 97 58 */	b __nw__FUl
/* 804A54F8  90 7F 05 EC */	stw r3, 0x5ec(r31)
/* 804A54FC  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 804A5500  28 00 00 00 */	cmplwi r0, 0
/* 804A5504  40 82 00 0C */	bne lbl_804A5510
/* 804A5508  38 60 00 00 */	li r3, 0
/* 804A550C  48 00 02 2C */	b lbl_804A5738
lbl_804A5510:
/* 804A5510  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A5514  81 83 00 00 */	lwz r12, 0(r3)
/* 804A5518  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804A551C  7D 89 03 A6 */	mtctr r12
/* 804A5520  4E 80 04 21 */	bctrl 
/* 804A5524  7F E3 FB 78 */	mr r3, r31
/* 804A5528  4B FF F4 21 */	bl setShadowSize__10daDemo00_cFv
lbl_804A552C:
/* 804A552C  38 60 00 58 */	li r3, 0x58
/* 804A5530  4B E2 97 1C */	b __nw__FUl
/* 804A5534  7C 7D 1B 79 */	or. r29, r3, r3
/* 804A5538  41 82 00 08 */	beq lbl_804A5540
/* 804A553C  4B BD 20 40 */	b __ct__11dBgS_GndChkFv
lbl_804A5540:
/* 804A5540  93 BF 05 F8 */	stw r29, 0x5f8(r31)
/* 804A5544  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 804A5548  28 03 00 00 */	cmplwi r3, 0
/* 804A554C  40 82 00 0C */	bne lbl_804A5558
/* 804A5550  38 60 00 00 */	li r3, 0
/* 804A5554  48 00 01 E4 */	b lbl_804A5738
lbl_804A5558:
/* 804A5558  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804A555C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 804A5560  90 03 00 30 */	stw r0, 0x30(r3)
/* 804A5564  80 9F 05 C8 */	lwz r4, 0x5c8(r31)
/* 804A5568  3C 04 00 01 */	addis r0, r4, 1
/* 804A556C  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A5570  41 82 00 E8 */	beq lbl_804A5658
/* 804A5574  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804A5578  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804A557C  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 804A5580  7F 85 E3 78 */	mr r5, r28
/* 804A5584  38 C0 00 80 */	li r6, 0x80
/* 804A5588  4B B9 6E 78 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A558C  90 7F 05 F0 */	stw r3, 0x5f0(r31)
/* 804A5590  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 804A5594  3C 03 00 01 */	addis r0, r3, 1
/* 804A5598  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A559C  41 82 00 9C */	beq lbl_804A5638
/* 804A55A0  38 60 00 18 */	li r3, 0x18
/* 804A55A4  4B E2 96 A8 */	b __nw__FUl
/* 804A55A8  7C 7D 1B 79 */	or. r29, r3, r3
/* 804A55AC  41 82 00 20 */	beq lbl_804A55CC
/* 804A55B0  3C 80 80 4B */	lis r4, __vt__12J3DFrameCtrl@ha
/* 804A55B4  38 04 8B F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 804A55B8  90 1D 00 00 */	stw r0, 0(r29)
/* 804A55BC  38 80 00 00 */	li r4, 0
/* 804A55C0  4B E8 2E 3C */	b init__12J3DFrameCtrlFs
/* 804A55C4  38 00 00 00 */	li r0, 0
/* 804A55C8  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_804A55CC:
/* 804A55CC  93 BF 05 F4 */	stw r29, 0x5f4(r31)
/* 804A55D0  80 1F 05 F4 */	lwz r0, 0x5f4(r31)
/* 804A55D4  28 00 00 00 */	cmplwi r0, 0
/* 804A55D8  40 82 00 0C */	bne lbl_804A55E4
/* 804A55DC  38 60 00 00 */	li r3, 0
/* 804A55E0  48 00 01 58 */	b lbl_804A5738
lbl_804A55E4:
/* 804A55E4  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804A55E8  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804A55EC  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 804A55F0  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804A55F4  7F 85 E3 78 */	mr r5, r28
/* 804A55F8  38 C0 00 80 */	li r6, 0x80
/* 804A55FC  4B B9 6E 04 */	b getIDRes__14dRes_control_cFPCcUsP11dRes_info_ci
/* 804A5600  7C 65 1B 79 */	or. r5, r3, r3
/* 804A5604  41 82 00 34 */	beq lbl_804A5638
/* 804A5608  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 804A560C  80 9F 05 F0 */	lwz r4, 0x5f0(r31)
/* 804A5610  38 C0 00 01 */	li r6, 1
/* 804A5614  38 E0 FF FF */	li r7, -1
/* 804A5618  C0 3B 00 4C */	lfs f1, 0x4c(r27)
/* 804A561C  39 00 00 00 */	li r8, 0
/* 804A5620  39 20 FF FF */	li r9, -1
/* 804A5624  4B B6 83 E4 */	b init__13mDoExt_blkAnmFP13J3DDeformDataP13J3DAnmClusteriifss
/* 804A5628  2C 03 00 00 */	cmpwi r3, 0
/* 804A562C  40 82 00 0C */	bne lbl_804A5638
/* 804A5630  38 60 00 00 */	li r3, 0
/* 804A5634  48 00 01 04 */	b lbl_804A5738
lbl_804A5638:
/* 804A5638  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 804A563C  80 9F 05 F0 */	lwz r4, 0x5f0(r31)
/* 804A5640  38 A0 00 01 */	li r5, 1
/* 804A5644  4B E8 23 E8 */	b setDeformData__8J3DModelFP13J3DDeformDataUl
/* 804A5648  2C 03 00 00 */	cmpwi r3, 0
/* 804A564C  41 82 00 0C */	beq lbl_804A5658
/* 804A5650  38 60 00 00 */	li r3, 0
/* 804A5654  48 00 00 E4 */	b lbl_804A5738
lbl_804A5658:
/* 804A5658  88 7F 06 A7 */	lbz r3, 0x6a7(r31)
/* 804A565C  7C 60 07 75 */	extsb. r0, r3
/* 804A5660  41 80 00 A4 */	blt lbl_804A5704
/* 804A5664  7C 60 07 74 */	extsb r0, r3
/* 804A5668  2C 00 00 05 */	cmpwi r0, 5
/* 804A566C  41 81 00 98 */	bgt lbl_804A5704
/* 804A5670  3C 60 80 4B */	lis r3, stringBase0@ha
/* 804A5674  38 63 89 98 */	addi r3, r3, stringBase0@l
/* 804A5678  38 63 00 21 */	addi r3, r3, 0x21
/* 804A567C  38 80 00 54 */	li r4, 0x54
/* 804A5680  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804A5684  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804A5688  3C A5 00 02 */	addis r5, r5, 2
/* 804A568C  38 C0 00 80 */	li r6, 0x80
/* 804A5690  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804A5694  4B B9 6C 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804A5698  7C 66 1B 78 */	mr r6, r3
/* 804A569C  38 7F 06 BC */	addi r3, r31, 0x6bc
/* 804A56A0  38 80 00 01 */	li r4, 1
/* 804A56A4  38 A0 00 20 */	li r5, 0x20
/* 804A56A8  38 E0 00 01 */	li r7, 1
/* 804A56AC  4B B6 DC B4 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 804A56B0  2C 03 00 00 */	cmpwi r3, 0
/* 804A56B4  40 82 00 0C */	bne lbl_804A56C0
/* 804A56B8  38 60 00 00 */	li r3, 0
/* 804A56BC  48 00 00 7C */	b lbl_804A5738
lbl_804A56C0:
/* 804A56C0  80 7F 06 F4 */	lwz r3, 0x6f4(r31)
/* 804A56C4  80 63 00 04 */	lwz r3, 4(r3)
/* 804A56C8  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 804A56CC  C0 1B 00 44 */	lfs f0, 0x44(r27)
/* 804A56D0  38 00 00 20 */	li r0, 0x20
/* 804A56D4  7C 09 03 A6 */	mtctr r0
lbl_804A56D8:
/* 804A56D8  88 1F 06 A7 */	lbz r0, 0x6a7(r31)
/* 804A56DC  7C 00 07 74 */	extsb r0, r0
/* 804A56E0  2C 00 00 02 */	cmpwi r0, 2
/* 804A56E4  41 80 00 14 */	blt lbl_804A56F8
/* 804A56E8  2C 00 00 04 */	cmpwi r0, 4
/* 804A56EC  41 81 00 0C */	bgt lbl_804A56F8
/* 804A56F0  D0 23 00 00 */	stfs f1, 0(r3)
/* 804A56F4  48 00 00 08 */	b lbl_804A56FC
lbl_804A56F8:
/* 804A56F8  D0 03 00 00 */	stfs f0, 0(r3)
lbl_804A56FC:
/* 804A56FC  38 63 00 04 */	addi r3, r3, 4
/* 804A5700  42 00 FF D8 */	bdnz lbl_804A56D8
lbl_804A5704:
/* 804A5704  88 1F 06 A7 */	lbz r0, 0x6a7(r31)
/* 804A5708  2C 00 00 08 */	cmpwi r0, 8
/* 804A570C  40 82 00 28 */	bne lbl_804A5734
/* 804A5710  38 7F 29 00 */	addi r3, r31, 0x2900
/* 804A5714  38 80 00 16 */	li r4, 0x16
/* 804A5718  38 A0 00 10 */	li r5, 0x10
/* 804A571C  38 C0 00 01 */	li r6, 1
/* 804A5720  4B B6 CE C0 */	b init__19mDoExt_3DlineMat0_cFUsUsi
/* 804A5724  2C 03 00 00 */	cmpwi r3, 0
/* 804A5728  40 82 00 0C */	bne lbl_804A5734
/* 804A572C  38 60 00 00 */	li r3, 0
/* 804A5730  48 00 00 08 */	b lbl_804A5738
lbl_804A5734:
/* 804A5734  38 60 00 01 */	li r3, 1
lbl_804A5738:
/* 804A5738  39 61 00 30 */	addi r11, r1, 0x30
/* 804A573C  4B EB CA E0 */	b _restgpr_26
/* 804A5740  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A5744  7C 08 03 A6 */	mtlr r0
/* 804A5748  38 21 00 30 */	addi r1, r1, 0x30
/* 804A574C  4E 80 00 20 */	blr 

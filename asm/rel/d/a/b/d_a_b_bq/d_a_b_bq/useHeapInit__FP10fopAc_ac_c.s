lbl_805B9370:
/* 805B9370  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B9374  7C 08 02 A6 */	mflr r0
/* 805B9378  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B937C  39 61 00 30 */	addi r11, r1, 0x30
/* 805B9380  4B DA 8E 58 */	b _savegpr_28
/* 805B9384  7C 7D 1B 78 */	mr r29, r3
/* 805B9388  3C 60 80 5C */	lis r3, lit_3816@ha
/* 805B938C  3B E3 A5 88 */	addi r31, r3, lit_3816@l
/* 805B9390  38 60 00 58 */	li r3, 0x58
/* 805B9394  4B D1 58 B8 */	b __nw__FUl
/* 805B9398  7C 7C 1B 79 */	or. r28, r3, r3
/* 805B939C  41 82 00 70 */	beq lbl_805B940C
/* 805B93A0  3C 60 80 5C */	lis r3, stringBase0@ha
/* 805B93A4  38 63 A8 6C */	addi r3, r3, stringBase0@l
/* 805B93A8  38 80 00 1D */	li r4, 0x1d
/* 805B93AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805B93B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805B93B4  3C A5 00 02 */	addis r5, r5, 2
/* 805B93B8  38 C0 00 80 */	li r6, 0x80
/* 805B93BC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805B93C0  4B A8 2F 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805B93C4  7C 64 1B 78 */	mr r4, r3
/* 805B93C8  38 1D 05 E0 */	addi r0, r29, 0x5e0
/* 805B93CC  90 01 00 08 */	stw r0, 8(r1)
/* 805B93D0  38 00 00 00 */	li r0, 0
/* 805B93D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B93D8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 805B93DC  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 805B93E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B93E4  7F 83 E3 78 */	mr r3, r28
/* 805B93E8  38 A0 00 00 */	li r5, 0
/* 805B93EC  38 C0 00 00 */	li r6, 0
/* 805B93F0  38 E0 00 00 */	li r7, 0
/* 805B93F4  39 00 00 02 */	li r8, 2
/* 805B93F8  C0 3F 01 6C */	lfs f1, 0x16c(r31)
/* 805B93FC  39 20 00 00 */	li r9, 0
/* 805B9400  39 40 FF FF */	li r10, -1
/* 805B9404  4B A5 73 CC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805B9408  7C 7C 1B 78 */	mr r28, r3
lbl_805B940C:
/* 805B940C  93 9D 05 B4 */	stw r28, 0x5b4(r29)
/* 805B9410  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B9414  28 03 00 00 */	cmplwi r3, 0
/* 805B9418  41 82 00 10 */	beq lbl_805B9428
/* 805B941C  80 A3 00 04 */	lwz r5, 4(r3)
/* 805B9420  28 05 00 00 */	cmplwi r5, 0
/* 805B9424  40 82 00 0C */	bne lbl_805B9430
lbl_805B9428:
/* 805B9428  38 60 00 00 */	li r3, 0
/* 805B942C  48 00 02 10 */	b lbl_805B963C
lbl_805B9430:
/* 805B9430  93 A5 00 14 */	stw r29, 0x14(r5)
/* 805B9434  38 E0 00 00 */	li r7, 0
/* 805B9438  3C 60 80 5B */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 805B943C  38 83 36 4C */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 805B9440  48 00 00 18 */	b lbl_805B9458
lbl_805B9444:
/* 805B9444  80 66 00 28 */	lwz r3, 0x28(r6)
/* 805B9448  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 805B944C  7C 63 00 2E */	lwzx r3, r3, r0
/* 805B9450  90 83 00 04 */	stw r4, 4(r3)
/* 805B9454  38 E7 00 01 */	addi r7, r7, 1
lbl_805B9458:
/* 805B9458  80 C5 00 04 */	lwz r6, 4(r5)
/* 805B945C  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 805B9460  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 805B9464  7C 00 18 40 */	cmplw r0, r3
/* 805B9468  41 80 FF DC */	blt lbl_805B9444
/* 805B946C  38 60 00 18 */	li r3, 0x18
/* 805B9470  4B D1 57 DC */	b __nw__FUl
/* 805B9474  7C 7C 1B 79 */	or. r28, r3, r3
/* 805B9478  41 82 00 20 */	beq lbl_805B9498
/* 805B947C  3C 80 80 5C */	lis r4, __vt__12J3DFrameCtrl@ha
/* 805B9480  38 04 AD 2C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 805B9484  90 1C 00 00 */	stw r0, 0(r28)
/* 805B9488  38 80 00 00 */	li r4, 0
/* 805B948C  4B D6 EF 70 */	b init__12J3DFrameCtrlFs
/* 805B9490  38 00 00 00 */	li r0, 0
/* 805B9494  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_805B9498:
/* 805B9498  93 9D 05 B8 */	stw r28, 0x5b8(r29)
/* 805B949C  80 1D 05 B8 */	lwz r0, 0x5b8(r29)
/* 805B94A0  28 00 00 00 */	cmplwi r0, 0
/* 805B94A4  40 82 00 0C */	bne lbl_805B94B0
/* 805B94A8  38 60 00 00 */	li r3, 0
/* 805B94AC  48 00 01 90 */	b lbl_805B963C
lbl_805B94B0:
/* 805B94B0  3C 60 80 5C */	lis r3, stringBase0@ha
/* 805B94B4  38 63 A8 6C */	addi r3, r3, stringBase0@l
/* 805B94B8  38 80 00 20 */	li r4, 0x20
/* 805B94BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805B94C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805B94C4  3F C5 00 02 */	addis r30, r5, 2
/* 805B94C8  3B DE C2 F8 */	addi r30, r30, -15624
/* 805B94CC  7F C5 F3 78 */	mr r5, r30
/* 805B94D0  38 C0 00 80 */	li r6, 0x80
/* 805B94D4  4B A8 2E 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805B94D8  7C 65 1B 78 */	mr r5, r3
/* 805B94DC  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B94E0  80 63 00 04 */	lwz r3, 4(r3)
/* 805B94E4  80 83 00 04 */	lwz r4, 4(r3)
/* 805B94E8  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 805B94EC  38 84 00 58 */	addi r4, r4, 0x58
/* 805B94F0  38 C0 00 01 */	li r6, 1
/* 805B94F4  38 E0 00 00 */	li r7, 0
/* 805B94F8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805B94FC  39 00 00 00 */	li r8, 0
/* 805B9500  39 20 FF FF */	li r9, -1
/* 805B9504  4B A5 42 08 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805B9508  2C 03 00 00 */	cmpwi r3, 0
/* 805B950C  40 82 00 0C */	bne lbl_805B9518
/* 805B9510  38 60 00 00 */	li r3, 0
/* 805B9514  48 00 01 28 */	b lbl_805B963C
lbl_805B9518:
/* 805B9518  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805B951C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 805B9520  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 805B9524  38 60 00 18 */	li r3, 0x18
/* 805B9528  4B D1 57 24 */	b __nw__FUl
/* 805B952C  7C 7C 1B 79 */	or. r28, r3, r3
/* 805B9530  41 82 00 20 */	beq lbl_805B9550
/* 805B9534  3C 80 80 5C */	lis r4, __vt__12J3DFrameCtrl@ha
/* 805B9538  38 04 AD 2C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 805B953C  90 1C 00 00 */	stw r0, 0(r28)
/* 805B9540  38 80 00 00 */	li r4, 0
/* 805B9544  4B D6 EE B8 */	b init__12J3DFrameCtrlFs
/* 805B9548  38 00 00 00 */	li r0, 0
/* 805B954C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_805B9550:
/* 805B9550  93 9D 05 BC */	stw r28, 0x5bc(r29)
/* 805B9554  80 1D 05 BC */	lwz r0, 0x5bc(r29)
/* 805B9558  28 00 00 00 */	cmplwi r0, 0
/* 805B955C  40 82 00 0C */	bne lbl_805B9568
/* 805B9560  38 60 00 00 */	li r3, 0
/* 805B9564  48 00 00 D8 */	b lbl_805B963C
lbl_805B9568:
/* 805B9568  3C 60 80 5C */	lis r3, stringBase0@ha
/* 805B956C  38 63 A8 6C */	addi r3, r3, stringBase0@l
/* 805B9570  38 80 00 23 */	li r4, 0x23
/* 805B9574  7F C5 F3 78 */	mr r5, r30
/* 805B9578  38 C0 00 80 */	li r6, 0x80
/* 805B957C  4B A8 2D 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805B9580  7C 65 1B 78 */	mr r5, r3
/* 805B9584  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805B9588  80 63 00 04 */	lwz r3, 4(r3)
/* 805B958C  80 83 00 04 */	lwz r4, 4(r3)
/* 805B9590  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 805B9594  38 84 00 58 */	addi r4, r4, 0x58
/* 805B9598  38 C0 00 01 */	li r6, 1
/* 805B959C  38 E0 00 00 */	li r7, 0
/* 805B95A0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805B95A4  39 00 00 00 */	li r8, 0
/* 805B95A8  39 20 FF FF */	li r9, -1
/* 805B95AC  4B A5 40 90 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805B95B0  2C 03 00 00 */	cmpwi r3, 0
/* 805B95B4  40 82 00 0C */	bne lbl_805B95C0
/* 805B95B8  38 60 00 00 */	li r3, 0
/* 805B95BC  48 00 00 80 */	b lbl_805B963C
lbl_805B95C0:
/* 805B95C0  3C 60 80 5C */	lis r3, stringBase0@ha
/* 805B95C4  38 63 A8 6C */	addi r3, r3, stringBase0@l
/* 805B95C8  38 80 00 1A */	li r4, 0x1a
/* 805B95CC  7F C5 F3 78 */	mr r5, r30
/* 805B95D0  38 C0 00 80 */	li r6, 0x80
/* 805B95D4  4B A8 2D 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805B95D8  3C 80 00 08 */	lis r4, 8
/* 805B95DC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805B95E0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 805B95E4  4B A5 B6 70 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805B95E8  90 7D 05 C4 */	stw r3, 0x5c4(r29)
/* 805B95EC  80 1D 05 C4 */	lwz r0, 0x5c4(r29)
/* 805B95F0  28 00 00 00 */	cmplwi r0, 0
/* 805B95F4  40 82 00 0C */	bne lbl_805B9600
/* 805B95F8  38 60 00 00 */	li r3, 0
/* 805B95FC  48 00 00 40 */	b lbl_805B963C
lbl_805B9600:
/* 805B9600  38 7D 06 84 */	addi r3, r29, 0x684
/* 805B9604  38 9D 11 38 */	addi r4, r29, 0x1138
/* 805B9608  38 A0 00 01 */	li r5, 1
/* 805B960C  81 9D 06 94 */	lwz r12, 0x694(r29)
/* 805B9610  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805B9614  7D 89 03 A6 */	mtctr r12
/* 805B9618  4E 80 04 21 */	bctrl 
/* 805B961C  38 7D 06 A4 */	addi r3, r29, 0x6a4
/* 805B9620  38 9D 11 44 */	addi r4, r29, 0x1144
/* 805B9624  38 A0 00 01 */	li r5, 1
/* 805B9628  81 9D 06 B4 */	lwz r12, 0x6b4(r29)
/* 805B962C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805B9630  7D 89 03 A6 */	mtctr r12
/* 805B9634  4E 80 04 21 */	bctrl 
/* 805B9638  38 60 00 01 */	li r3, 1
lbl_805B963C:
/* 805B963C  39 61 00 30 */	addi r11, r1, 0x30
/* 805B9640  4B DA 8B E4 */	b _restgpr_28
/* 805B9644  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B9648  7C 08 03 A6 */	mtlr r0
/* 805B964C  38 21 00 30 */	addi r1, r1, 0x30
/* 805B9650  4E 80 00 20 */	blr 

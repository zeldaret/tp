lbl_80A91798:
/* 80A91798  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A9179C  7C 08 02 A6 */	mflr r0
/* 80A917A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A917A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A917A8  4B 8D 0A 30 */	b _savegpr_28
/* 80A917AC  7C 7F 1B 78 */	mr r31, r3
/* 80A917B0  38 60 00 54 */	li r3, 0x54
/* 80A917B4  4B 83 D4 98 */	b __nw__FUl
/* 80A917B8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A917BC  41 82 00 94 */	beq lbl_80A91850
/* 80A917C0  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 80A917C4  38 80 00 18 */	li r4, 0x18
/* 80A917C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A917CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A917D0  3F 85 00 02 */	addis r28, r5, 2
/* 80A917D4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80A917D8  7F 85 E3 78 */	mr r5, r28
/* 80A917DC  38 C0 00 80 */	li r6, 0x80
/* 80A917E0  4B 5A AB 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A917E4  7C 7E 1B 78 */	mr r30, r3
/* 80A917E8  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 80A917EC  38 80 00 1C */	li r4, 0x1c
/* 80A917F0  7F 85 E3 78 */	mr r5, r28
/* 80A917F4  38 C0 00 80 */	li r6, 0x80
/* 80A917F8  4B 5A AA F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A917FC  7C 64 1B 78 */	mr r4, r3
/* 80A91800  38 00 00 01 */	li r0, 1
/* 80A91804  90 01 00 08 */	stw r0, 8(r1)
/* 80A91808  38 00 00 00 */	li r0, 0
/* 80A9180C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A91810  3C 00 00 08 */	lis r0, 8
/* 80A91814  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A91818  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020284@ha */
/* 80A9181C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11020284@l */
/* 80A91820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A91824  7F A3 EB 78 */	mr r3, r29
/* 80A91828  38 A0 00 00 */	li r5, 0
/* 80A9182C  38 C0 00 00 */	li r6, 0
/* 80A91830  7F C7 F3 78 */	mr r7, r30
/* 80A91834  39 00 00 02 */	li r8, 2
/* 80A91838  3D 20 80 A9 */	lis r9, lit_3990@ha
/* 80A9183C  C0 29 24 1C */	lfs f1, lit_3990@l(r9)
/* 80A91840  39 20 00 00 */	li r9, 0
/* 80A91844  39 40 FF FF */	li r10, -1
/* 80A91848  4B 57 E4 04 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80A9184C  7C 7D 1B 78 */	mr r29, r3
lbl_80A91850:
/* 80A91850  93 BF 05 E8 */	stw r29, 0x5e8(r31)
/* 80A91854  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A91858  28 03 00 00 */	cmplwi r3, 0
/* 80A9185C  41 82 00 10 */	beq lbl_80A9186C
/* 80A91860  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A91864  28 05 00 00 */	cmplwi r5, 0
/* 80A91868  40 82 00 0C */	bne lbl_80A91874
lbl_80A9186C:
/* 80A9186C  38 60 00 00 */	li r3, 0
/* 80A91870  48 00 02 B8 */	b lbl_80A91B28
lbl_80A91874:
/* 80A91874  90 BF 05 24 */	stw r5, 0x524(r31)
/* 80A91878  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80A9187C  38 E0 00 00 */	li r7, 0
/* 80A91880  3C 60 80 A9 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80A91884  38 83 8D C0 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80A91888  48 00 00 3C */	b lbl_80A918C4
lbl_80A9188C:
/* 80A9188C  38 07 FF FF */	addi r0, r7, -1
/* 80A91890  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80A91894  28 00 00 03 */	cmplwi r0, 3
/* 80A91898  40 81 00 18 */	ble lbl_80A918B0
/* 80A9189C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80A918A0  28 00 00 14 */	cmplwi r0, 0x14
/* 80A918A4  41 82 00 0C */	beq lbl_80A918B0
/* 80A918A8  28 00 00 15 */	cmplwi r0, 0x15
/* 80A918AC  40 82 00 14 */	bne lbl_80A918C0
lbl_80A918B0:
/* 80A918B0  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80A918B4  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80A918B8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A918BC  90 83 00 04 */	stw r4, 4(r3)
lbl_80A918C0:
/* 80A918C0  38 E7 00 01 */	addi r7, r7, 1
lbl_80A918C4:
/* 80A918C4  80 C5 00 04 */	lwz r6, 4(r5)
/* 80A918C8  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80A918CC  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80A918D0  7C 00 18 40 */	cmplw r0, r3
/* 80A918D4  41 80 FF B8 */	blt lbl_80A9188C
/* 80A918D8  38 60 00 18 */	li r3, 0x18
/* 80A918DC  4B 83 D3 70 */	b __nw__FUl
/* 80A918E0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A918E4  41 82 00 20 */	beq lbl_80A91904
/* 80A918E8  3C 80 80 A9 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80A918EC  38 04 2A 5C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80A918F0  90 1D 00 00 */	stw r0, 0(r29)
/* 80A918F4  38 80 00 00 */	li r4, 0
/* 80A918F8  4B 89 6B 04 */	b init__12J3DFrameCtrlFs
/* 80A918FC  38 00 00 00 */	li r0, 0
/* 80A91900  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80A91904:
/* 80A91904  93 BF 05 EC */	stw r29, 0x5ec(r31)
/* 80A91908  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 80A9190C  28 00 00 00 */	cmplwi r0, 0
/* 80A91910  40 82 00 0C */	bne lbl_80A9191C
/* 80A91914  38 60 00 00 */	li r3, 0
/* 80A91918  48 00 02 10 */	b lbl_80A91B28
lbl_80A9191C:
/* 80A9191C  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 80A91920  38 80 00 20 */	li r4, 0x20
/* 80A91924  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A91928  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A9192C  3F C5 00 02 */	addis r30, r5, 2
/* 80A91930  3B DE C2 F8 */	addi r30, r30, -15624
/* 80A91934  7F C5 F3 78 */	mr r5, r30
/* 80A91938  38 C0 00 80 */	li r6, 0x80
/* 80A9193C  4B 5A A9 B0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A91940  7C 65 1B 78 */	mr r5, r3
/* 80A91944  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A91948  80 63 00 04 */	lwz r3, 4(r3)
/* 80A9194C  80 83 00 04 */	lwz r4, 4(r3)
/* 80A91950  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 80A91954  38 84 00 58 */	addi r4, r4, 0x58
/* 80A91958  38 C0 00 01 */	li r6, 1
/* 80A9195C  38 E0 00 00 */	li r7, 0
/* 80A91960  3D 00 80 A9 */	lis r8, lit_3990@ha
/* 80A91964  C0 28 24 1C */	lfs f1, lit_3990@l(r8)
/* 80A91968  39 00 00 00 */	li r8, 0
/* 80A9196C  39 20 FF FF */	li r9, -1
/* 80A91970  4B 57 BC CC */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80A91974  2C 03 00 00 */	cmpwi r3, 0
/* 80A91978  40 82 00 0C */	bne lbl_80A91984
/* 80A9197C  38 60 00 00 */	li r3, 0
/* 80A91980  48 00 01 A8 */	b lbl_80A91B28
lbl_80A91984:
/* 80A91984  38 60 00 18 */	li r3, 0x18
/* 80A91988  4B 83 D2 C4 */	b __nw__FUl
/* 80A9198C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A91990  41 82 00 20 */	beq lbl_80A919B0
/* 80A91994  3C 80 80 A9 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80A91998  38 04 2A 5C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80A9199C  90 1D 00 00 */	stw r0, 0(r29)
/* 80A919A0  38 80 00 00 */	li r4, 0
/* 80A919A4  4B 89 6A 58 */	b init__12J3DFrameCtrlFs
/* 80A919A8  38 00 00 00 */	li r0, 0
/* 80A919AC  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80A919B0:
/* 80A919B0  93 BF 05 F0 */	stw r29, 0x5f0(r31)
/* 80A919B4  80 1F 05 F0 */	lwz r0, 0x5f0(r31)
/* 80A919B8  28 00 00 00 */	cmplwi r0, 0
/* 80A919BC  40 82 00 0C */	bne lbl_80A919C8
/* 80A919C0  38 60 00 00 */	li r3, 0
/* 80A919C4  48 00 01 64 */	b lbl_80A91B28
lbl_80A919C8:
/* 80A919C8  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 80A919CC  38 80 00 23 */	li r4, 0x23
/* 80A919D0  7F C5 F3 78 */	mr r5, r30
/* 80A919D4  38 C0 00 80 */	li r6, 0x80
/* 80A919D8  4B 5A A9 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A919DC  7C 65 1B 78 */	mr r5, r3
/* 80A919E0  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 80A919E4  80 63 00 04 */	lwz r3, 4(r3)
/* 80A919E8  80 83 00 04 */	lwz r4, 4(r3)
/* 80A919EC  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80A919F0  38 84 00 58 */	addi r4, r4, 0x58
/* 80A919F4  38 C0 00 01 */	li r6, 1
/* 80A919F8  38 E0 00 00 */	li r7, 0
/* 80A919FC  3D 00 80 A9 */	lis r8, lit_3990@ha
/* 80A91A00  C0 28 24 1C */	lfs f1, lit_3990@l(r8)
/* 80A91A04  39 00 00 00 */	li r8, 0
/* 80A91A08  39 20 FF FF */	li r9, -1
/* 80A91A0C  4B 57 BB 40 */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80A91A10  2C 03 00 00 */	cmpwi r3, 0
/* 80A91A14  40 82 00 0C */	bne lbl_80A91A20
/* 80A91A18  38 60 00 00 */	li r3, 0
/* 80A91A1C  48 00 01 0C */	b lbl_80A91B28
lbl_80A91A20:
/* 80A91A20  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80A91A24  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80A91A28  38 A0 00 01 */	li r5, 1
/* 80A91A2C  81 9F 06 1C */	lwz r12, 0x61c(r31)
/* 80A91A30  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80A91A34  7D 89 03 A6 */	mtctr r12
/* 80A91A38  4E 80 04 21 */	bctrl 
/* 80A91A3C  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80A91A40  28 00 00 03 */	cmplwi r0, 3
/* 80A91A44  40 82 00 E0 */	bne lbl_80A91B24
/* 80A91A48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A91A4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A91A50  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80A91A54  38 80 10 01 */	li r4, 0x1001
/* 80A91A58  4B 5A 2F 64 */	b isEventBit__11dSv_event_cCFUs
/* 80A91A5C  30 03 FF FF */	addic r0, r3, -1
/* 80A91A60  7F 80 19 10 */	subfe r28, r0, r3
/* 80A91A64  38 60 00 54 */	li r3, 0x54
/* 80A91A68  4B 83 D1 E4 */	b __nw__FUl
/* 80A91A6C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A91A70  41 82 00 90 */	beq lbl_80A91B00
/* 80A91A74  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 80A91A78  57 80 10 3A */	slwi r0, r28, 2
/* 80A91A7C  3C 80 80 A9 */	lis r4, dish_bck@ha
/* 80A91A80  38 84 29 48 */	addi r4, r4, dish_bck@l
/* 80A91A84  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A91A88  7F C5 F3 78 */	mr r5, r30
/* 80A91A8C  38 C0 00 80 */	li r6, 0x80
/* 80A91A90  4B 5A A8 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A91A94  7C 7C 1B 78 */	mr r28, r3
/* 80A91A98  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 80A91A9C  38 80 00 1D */	li r4, 0x1d
/* 80A91AA0  7F C5 F3 78 */	mr r5, r30
/* 80A91AA4  38 C0 00 80 */	li r6, 0x80
/* 80A91AA8  4B 5A A8 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A91AAC  7C 64 1B 78 */	mr r4, r3
/* 80A91AB0  38 00 00 01 */	li r0, 1
/* 80A91AB4  90 01 00 08 */	stw r0, 8(r1)
/* 80A91AB8  38 00 00 00 */	li r0, 0
/* 80A91ABC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A91AC0  3C 00 00 08 */	lis r0, 8
/* 80A91AC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A91AC8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80A91ACC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80A91AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A91AD4  7F A3 EB 78 */	mr r3, r29
/* 80A91AD8  38 A0 00 00 */	li r5, 0
/* 80A91ADC  38 C0 00 00 */	li r6, 0
/* 80A91AE0  7F 87 E3 78 */	mr r7, r28
/* 80A91AE4  39 00 00 02 */	li r8, 2
/* 80A91AE8  3D 20 80 A9 */	lis r9, lit_3990@ha
/* 80A91AEC  C0 29 24 1C */	lfs f1, lit_3990@l(r9)
/* 80A91AF0  39 20 00 00 */	li r9, 0
/* 80A91AF4  39 40 FF FF */	li r10, -1
/* 80A91AF8  4B 57 E1 54 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80A91AFC  7C 7D 1B 78 */	mr r29, r3
lbl_80A91B00:
/* 80A91B00  93 BF 05 FC */	stw r29, 0x5fc(r31)
/* 80A91B04  80 7F 05 FC */	lwz r3, 0x5fc(r31)
/* 80A91B08  28 03 00 00 */	cmplwi r3, 0
/* 80A91B0C  41 82 00 10 */	beq lbl_80A91B1C
/* 80A91B10  80 03 00 04 */	lwz r0, 4(r3)
/* 80A91B14  28 00 00 00 */	cmplwi r0, 0
/* 80A91B18  40 82 00 0C */	bne lbl_80A91B24
lbl_80A91B1C:
/* 80A91B1C  38 60 00 00 */	li r3, 0
/* 80A91B20  48 00 00 08 */	b lbl_80A91B28
lbl_80A91B24:
/* 80A91B24  38 60 00 01 */	li r3, 1
lbl_80A91B28:
/* 80A91B28  39 61 00 30 */	addi r11, r1, 0x30
/* 80A91B2C  4B 8D 06 F8 */	b _restgpr_28
/* 80A91B30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A91B34  7C 08 03 A6 */	mtlr r0
/* 80A91B38  38 21 00 30 */	addi r1, r1, 0x30
/* 80A91B3C  4E 80 00 20 */	blr 

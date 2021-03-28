lbl_80D088B8:
/* 80D088B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D088BC  7C 08 02 A6 */	mflr r0
/* 80D088C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D088C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D088C8  4B 65 99 10 */	b _savegpr_28
/* 80D088CC  7C 7F 1B 78 */	mr r31, r3
/* 80D088D0  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D088D4  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D088D8  38 80 00 0A */	li r4, 0xa
/* 80D088DC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D088E0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D088E4  3F A5 00 02 */	addis r29, r5, 2
/* 80D088E8  3B BD C2 F8 */	addi r29, r29, -15624
/* 80D088EC  7F A5 EB 78 */	mr r5, r29
/* 80D088F0  38 C0 00 80 */	li r6, 0x80
/* 80D088F4  4B 33 39 F8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D088F8  7C 7C 1B 78 */	mr r28, r3
/* 80D088FC  38 60 00 58 */	li r3, 0x58
/* 80D08900  4B 5C 63 4C */	b __nw__FUl
/* 80D08904  7C 60 1B 79 */	or. r0, r3, r3
/* 80D08908  41 82 00 4C */	beq lbl_80D08954
/* 80D0890C  38 1F 09 C4 */	addi r0, r31, 0x9c4
/* 80D08910  90 01 00 08 */	stw r0, 8(r1)
/* 80D08914  38 00 00 00 */	li r0, 0
/* 80D08918  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D0891C  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000284@ha */
/* 80D08920  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11000284@l */
/* 80D08924  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D08928  7F 84 E3 78 */	mr r4, r28
/* 80D0892C  38 A0 00 00 */	li r5, 0
/* 80D08930  38 C0 00 00 */	li r6, 0
/* 80D08934  38 E0 00 00 */	li r7, 0
/* 80D08938  39 00 00 02 */	li r8, 2
/* 80D0893C  3D 20 80 D1 */	lis r9, lit_3775@ha
/* 80D08940  C0 29 B8 F0 */	lfs f1, lit_3775@l(r9)
/* 80D08944  39 20 00 00 */	li r9, 0
/* 80D08948  39 40 FF FF */	li r10, -1
/* 80D0894C  4B 30 7E 84 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80D08950  7C 60 1B 78 */	mr r0, r3
lbl_80D08954:
/* 80D08954  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80D08958  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80D0895C  28 03 00 00 */	cmplwi r3, 0
/* 80D08960  41 82 00 10 */	beq lbl_80D08970
/* 80D08964  83 C3 00 04 */	lwz r30, 4(r3)
/* 80D08968  28 1E 00 00 */	cmplwi r30, 0
/* 80D0896C  40 82 00 0C */	bne lbl_80D08978
lbl_80D08970:
/* 80D08970  38 60 00 00 */	li r3, 0
/* 80D08974  48 00 01 F8 */	b lbl_80D08B6C
lbl_80D08978:
/* 80D08978  38 60 00 18 */	li r3, 0x18
/* 80D0897C  4B 5C 62 D0 */	b __nw__FUl
/* 80D08980  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D08984  41 82 00 20 */	beq lbl_80D089A4
/* 80D08988  3C 80 80 D1 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D0898C  38 04 BA 98 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D08990  90 1C 00 00 */	stw r0, 0(r28)
/* 80D08994  38 80 00 00 */	li r4, 0
/* 80D08998  4B 61 FA 64 */	b init__12J3DFrameCtrlFs
/* 80D0899C  38 00 00 00 */	li r0, 0
/* 80D089A0  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80D089A4:
/* 80D089A4  93 9F 06 10 */	stw r28, 0x610(r31)
/* 80D089A8  80 1F 06 10 */	lwz r0, 0x610(r31)
/* 80D089AC  28 00 00 00 */	cmplwi r0, 0
/* 80D089B0  40 82 00 0C */	bne lbl_80D089BC
/* 80D089B4  38 60 00 00 */	li r3, 0
/* 80D089B8  48 00 01 B4 */	b lbl_80D08B6C
lbl_80D089BC:
/* 80D089BC  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D089C0  28 00 00 01 */	cmplwi r0, 1
/* 80D089C4  40 82 00 58 */	bne lbl_80D08A1C
/* 80D089C8  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D089CC  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D089D0  38 80 00 0D */	li r4, 0xd
/* 80D089D4  7F A5 EB 78 */	mr r5, r29
/* 80D089D8  38 C0 00 80 */	li r6, 0x80
/* 80D089DC  4B 33 39 10 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D089E0  7C 65 1B 78 */	mr r5, r3
/* 80D089E4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80D089E8  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 80D089EC  38 84 00 58 */	addi r4, r4, 0x58
/* 80D089F0  38 C0 00 01 */	li r6, 1
/* 80D089F4  38 E0 00 02 */	li r7, 2
/* 80D089F8  3D 00 80 D1 */	lis r8, lit_3775@ha
/* 80D089FC  C0 28 B8 F0 */	lfs f1, lit_3775@l(r8)
/* 80D08A00  39 00 00 00 */	li r8, 0
/* 80D08A04  39 20 FF FF */	li r9, -1
/* 80D08A08  4B 30 4D 04 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D08A0C  2C 03 00 00 */	cmpwi r3, 0
/* 80D08A10  40 82 00 60 */	bne lbl_80D08A70
/* 80D08A14  38 60 00 00 */	li r3, 0
/* 80D08A18  48 00 01 54 */	b lbl_80D08B6C
lbl_80D08A1C:
/* 80D08A1C  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D08A20  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D08A24  38 80 00 0E */	li r4, 0xe
/* 80D08A28  7F A5 EB 78 */	mr r5, r29
/* 80D08A2C  38 C0 00 80 */	li r6, 0x80
/* 80D08A30  4B 33 38 BC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D08A34  7C 65 1B 78 */	mr r5, r3
/* 80D08A38  80 9E 00 04 */	lwz r4, 4(r30)
/* 80D08A3C  80 7F 06 10 */	lwz r3, 0x610(r31)
/* 80D08A40  38 84 00 58 */	addi r4, r4, 0x58
/* 80D08A44  38 C0 00 01 */	li r6, 1
/* 80D08A48  38 E0 00 02 */	li r7, 2
/* 80D08A4C  3D 00 80 D1 */	lis r8, lit_3775@ha
/* 80D08A50  C0 28 B8 F0 */	lfs f1, lit_3775@l(r8)
/* 80D08A54  39 00 00 00 */	li r8, 0
/* 80D08A58  39 20 FF FF */	li r9, -1
/* 80D08A5C  4B 30 4C B0 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D08A60  2C 03 00 00 */	cmpwi r3, 0
/* 80D08A64  40 82 00 0C */	bne lbl_80D08A70
/* 80D08A68  38 60 00 00 */	li r3, 0
/* 80D08A6C  48 00 01 00 */	b lbl_80D08B6C
lbl_80D08A70:
/* 80D08A70  38 60 00 18 */	li r3, 0x18
/* 80D08A74  4B 5C 61 D8 */	b __nw__FUl
/* 80D08A78  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D08A7C  41 82 00 20 */	beq lbl_80D08A9C
/* 80D08A80  3C 80 80 D1 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D08A84  38 04 BA 98 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D08A88  90 1C 00 00 */	stw r0, 0(r28)
/* 80D08A8C  38 80 00 00 */	li r4, 0
/* 80D08A90  4B 61 F9 6C */	b init__12J3DFrameCtrlFs
/* 80D08A94  38 00 00 00 */	li r0, 0
/* 80D08A98  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80D08A9C:
/* 80D08A9C  93 9F 06 14 */	stw r28, 0x614(r31)
/* 80D08AA0  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80D08AA4  28 00 00 00 */	cmplwi r0, 0
/* 80D08AA8  40 82 00 0C */	bne lbl_80D08AB4
/* 80D08AAC  38 60 00 00 */	li r3, 0
/* 80D08AB0  48 00 00 BC */	b lbl_80D08B6C
lbl_80D08AB4:
/* 80D08AB4  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D08AB8  28 00 00 01 */	cmplwi r0, 1
/* 80D08ABC  40 82 00 58 */	bne lbl_80D08B14
/* 80D08AC0  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D08AC4  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D08AC8  38 80 00 11 */	li r4, 0x11
/* 80D08ACC  7F A5 EB 78 */	mr r5, r29
/* 80D08AD0  38 C0 00 80 */	li r6, 0x80
/* 80D08AD4  4B 33 38 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D08AD8  7C 65 1B 78 */	mr r5, r3
/* 80D08ADC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80D08AE0  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80D08AE4  38 84 00 58 */	addi r4, r4, 0x58
/* 80D08AE8  38 C0 00 01 */	li r6, 1
/* 80D08AEC  38 E0 00 02 */	li r7, 2
/* 80D08AF0  3D 00 80 D1 */	lis r8, lit_3775@ha
/* 80D08AF4  C0 28 B8 F0 */	lfs f1, lit_3775@l(r8)
/* 80D08AF8  39 00 00 00 */	li r8, 0
/* 80D08AFC  39 20 FF FF */	li r9, -1
/* 80D08B00  4B 30 4B 3C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D08B04  2C 03 00 00 */	cmpwi r3, 0
/* 80D08B08  40 82 00 60 */	bne lbl_80D08B68
/* 80D08B0C  38 60 00 00 */	li r3, 0
/* 80D08B10  48 00 00 5C */	b lbl_80D08B6C
lbl_80D08B14:
/* 80D08B14  3C 60 80 D1 */	lis r3, stringBase0@ha
/* 80D08B18  38 63 B9 E4 */	addi r3, r3, stringBase0@l
/* 80D08B1C  38 80 00 12 */	li r4, 0x12
/* 80D08B20  7F A5 EB 78 */	mr r5, r29
/* 80D08B24  38 C0 00 80 */	li r6, 0x80
/* 80D08B28  4B 33 37 C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D08B2C  7C 65 1B 78 */	mr r5, r3
/* 80D08B30  80 9E 00 04 */	lwz r4, 4(r30)
/* 80D08B34  80 7F 06 14 */	lwz r3, 0x614(r31)
/* 80D08B38  38 84 00 58 */	addi r4, r4, 0x58
/* 80D08B3C  38 C0 00 01 */	li r6, 1
/* 80D08B40  38 E0 00 02 */	li r7, 2
/* 80D08B44  3D 00 80 D1 */	lis r8, lit_3775@ha
/* 80D08B48  C0 28 B8 F0 */	lfs f1, lit_3775@l(r8)
/* 80D08B4C  39 00 00 00 */	li r8, 0
/* 80D08B50  39 20 FF FF */	li r9, -1
/* 80D08B54  4B 30 4A E8 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D08B58  2C 03 00 00 */	cmpwi r3, 0
/* 80D08B5C  40 82 00 0C */	bne lbl_80D08B68
/* 80D08B60  38 60 00 00 */	li r3, 0
/* 80D08B64  48 00 00 08 */	b lbl_80D08B6C
lbl_80D08B68:
/* 80D08B68  38 60 00 01 */	li r3, 1
lbl_80D08B6C:
/* 80D08B6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D08B70  4B 65 96 B4 */	b _restgpr_28
/* 80D08B74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D08B78  7C 08 03 A6 */	mtlr r0
/* 80D08B7C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D08B80  4E 80 00 20 */	blr 

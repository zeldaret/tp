lbl_80D3E7B8:
/* 80D3E7B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D3E7BC  7C 08 02 A6 */	mflr r0
/* 80D3E7C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D3E7C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80D3E7C8  4B 62 3A 0C */	b _savegpr_27
/* 80D3E7CC  7C 7C 1B 78 */	mr r28, r3
/* 80D3E7D0  3C 60 80 D4 */	lis r3, l_bmdIndex@ha
/* 80D3E7D4  3B E3 EC 0C */	addi r31, r3, l_bmdIndex@l
/* 80D3E7D8  88 1C 05 99 */	lbz r0, 0x599(r28)
/* 80D3E7DC  54 00 10 3A */	slwi r0, r0, 2
/* 80D3E7E0  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3E7E4  38 63 EC BC */	addi r3, r3, l_arcName@l
/* 80D3E7E8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D3E7EC  38 9F 00 00 */	addi r4, r31, 0
/* 80D3E7F0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3E7F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D3E7F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D3E7FC  3F A5 00 02 */	addis r29, r5, 2
/* 80D3E800  3B BD C2 F8 */	addi r29, r29, -15624
/* 80D3E804  7F A5 EB 78 */	mr r5, r29
/* 80D3E808  38 C0 00 80 */	li r6, 0x80
/* 80D3E80C  4B 2F DA E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D3E810  7C 7E 1B 78 */	mr r30, r3
/* 80D3E814  88 1C 05 99 */	lbz r0, 0x599(r28)
/* 80D3E818  28 00 00 03 */	cmplwi r0, 3
/* 80D3E81C  40 80 00 C4 */	bge lbl_80D3E8E0
/* 80D3E820  3C 80 00 08 */	lis r4, 8
/* 80D3E824  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D3E828  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D3E82C  4B 2D 64 28 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D3E830  90 7C 05 70 */	stw r3, 0x570(r28)
/* 80D3E834  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 80D3E838  28 00 00 00 */	cmplwi r0, 0
/* 80D3E83C  40 82 00 0C */	bne lbl_80D3E848
/* 80D3E840  38 60 00 00 */	li r3, 0
/* 80D3E844  48 00 01 DC */	b lbl_80D3EA20
lbl_80D3E848:
/* 80D3E848  88 1C 05 99 */	lbz r0, 0x599(r28)
/* 80D3E84C  54 00 10 3A */	slwi r0, r0, 2
/* 80D3E850  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3E854  38 63 EC BC */	addi r3, r3, l_arcName@l
/* 80D3E858  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D3E85C  38 9F 00 1C */	addi r4, r31, 0x1c
/* 80D3E860  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3E864  7F A5 EB 78 */	mr r5, r29
/* 80D3E868  38 C0 00 80 */	li r6, 0x80
/* 80D3E86C  4B 2F DA 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D3E870  7C 7D 1B 78 */	mr r29, r3
/* 80D3E874  38 60 00 18 */	li r3, 0x18
/* 80D3E878  4B 59 03 D4 */	b __nw__FUl
/* 80D3E87C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80D3E880  41 82 00 20 */	beq lbl_80D3E8A0
/* 80D3E884  3C 80 80 D4 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D3E888  38 04 ED 7C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D3E88C  90 1B 00 00 */	stw r0, 0(r27)
/* 80D3E890  38 80 00 00 */	li r4, 0
/* 80D3E894  4B 5E 9B 68 */	b init__12J3DFrameCtrlFs
/* 80D3E898  38 00 00 00 */	li r0, 0
/* 80D3E89C  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80D3E8A0:
/* 80D3E8A0  93 7C 05 74 */	stw r27, 0x574(r28)
/* 80D3E8A4  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80D3E8A8  28 03 00 00 */	cmplwi r3, 0
/* 80D3E8AC  41 82 00 2C */	beq lbl_80D3E8D8
/* 80D3E8B0  38 9E 00 58 */	addi r4, r30, 0x58
/* 80D3E8B4  7F A5 EB 78 */	mr r5, r29
/* 80D3E8B8  38 C0 00 01 */	li r6, 1
/* 80D3E8BC  38 E0 00 02 */	li r7, 2
/* 80D3E8C0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80D3E8C4  39 00 00 00 */	li r8, 0
/* 80D3E8C8  39 20 FF FF */	li r9, -1
/* 80D3E8CC  4B 2C EE 40 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D3E8D0  2C 03 00 00 */	cmpwi r3, 0
/* 80D3E8D4  40 82 01 48 */	bne lbl_80D3EA1C
lbl_80D3E8D8:
/* 80D3E8D8  38 60 00 00 */	li r3, 0
/* 80D3E8DC  48 00 01 44 */	b lbl_80D3EA20
lbl_80D3E8E0:
/* 80D3E8E0  38 60 00 58 */	li r3, 0x58
/* 80D3E8E4  4B 59 03 68 */	b __nw__FUl
/* 80D3E8E8  7C 7B 1B 79 */	or. r27, r3, r3
/* 80D3E8EC  41 82 00 6C */	beq lbl_80D3E958
/* 80D3E8F0  88 1C 05 99 */	lbz r0, 0x599(r28)
/* 80D3E8F4  54 00 10 3A */	slwi r0, r0, 2
/* 80D3E8F8  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3E8FC  38 63 EC BC */	addi r3, r3, l_arcName@l
/* 80D3E900  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D3E904  38 80 00 05 */	li r4, 5
/* 80D3E908  7F A5 EB 78 */	mr r5, r29
/* 80D3E90C  38 C0 00 80 */	li r6, 0x80
/* 80D3E910  4B 2F D9 DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D3E914  7C 67 1B 78 */	mr r7, r3
/* 80D3E918  38 00 00 00 */	li r0, 0
/* 80D3E91C  90 01 00 08 */	stw r0, 8(r1)
/* 80D3E920  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D3E924  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80D3E928  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80D3E92C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D3E930  7F 63 DB 78 */	mr r3, r27
/* 80D3E934  7F C4 F3 78 */	mr r4, r30
/* 80D3E938  38 A0 00 00 */	li r5, 0
/* 80D3E93C  38 C0 00 00 */	li r6, 0
/* 80D3E940  39 00 00 00 */	li r8, 0
/* 80D3E944  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80D3E948  39 20 00 00 */	li r9, 0
/* 80D3E94C  39 40 FF FF */	li r10, -1
/* 80D3E950  4B 2D 1E 80 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80D3E954  7C 7B 1B 78 */	mr r27, r3
lbl_80D3E958:
/* 80D3E958  93 7C 05 7C */	stw r27, 0x57c(r28)
/* 80D3E95C  80 7C 05 7C */	lwz r3, 0x57c(r28)
/* 80D3E960  28 03 00 00 */	cmplwi r3, 0
/* 80D3E964  41 82 00 10 */	beq lbl_80D3E974
/* 80D3E968  80 03 00 04 */	lwz r0, 4(r3)
/* 80D3E96C  28 00 00 00 */	cmplwi r0, 0
/* 80D3E970  40 82 00 0C */	bne lbl_80D3E97C
lbl_80D3E974:
/* 80D3E974  38 60 00 00 */	li r3, 0
/* 80D3E978  48 00 00 A8 */	b lbl_80D3EA20
lbl_80D3E97C:
/* 80D3E97C  38 60 00 18 */	li r3, 0x18
/* 80D3E980  4B 59 02 CC */	b __nw__FUl
/* 80D3E984  7C 7B 1B 79 */	or. r27, r3, r3
/* 80D3E988  41 82 00 20 */	beq lbl_80D3E9A8
/* 80D3E98C  3C 80 80 D4 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D3E990  38 04 ED 7C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D3E994  90 1B 00 00 */	stw r0, 0(r27)
/* 80D3E998  38 80 00 00 */	li r4, 0
/* 80D3E99C  4B 5E 9A 60 */	b init__12J3DFrameCtrlFs
/* 80D3E9A0  38 00 00 00 */	li r0, 0
/* 80D3E9A4  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80D3E9A8:
/* 80D3E9A8  93 7C 05 78 */	stw r27, 0x578(r28)
/* 80D3E9AC  80 1C 05 78 */	lwz r0, 0x578(r28)
/* 80D3E9B0  28 00 00 00 */	cmplwi r0, 0
/* 80D3E9B4  40 82 00 0C */	bne lbl_80D3E9C0
/* 80D3E9B8  38 60 00 00 */	li r3, 0
/* 80D3E9BC  48 00 00 64 */	b lbl_80D3EA20
lbl_80D3E9C0:
/* 80D3E9C0  88 1C 05 99 */	lbz r0, 0x599(r28)
/* 80D3E9C4  54 00 10 3A */	slwi r0, r0, 2
/* 80D3E9C8  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3E9CC  38 63 EC BC */	addi r3, r3, l_arcName@l
/* 80D3E9D0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D3E9D4  38 9F 00 28 */	addi r4, r31, 0x28
/* 80D3E9D8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3E9DC  7F A5 EB 78 */	mr r5, r29
/* 80D3E9E0  38 C0 00 80 */	li r6, 0x80
/* 80D3E9E4  4B 2F D9 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D3E9E8  7C 65 1B 78 */	mr r5, r3
/* 80D3E9EC  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80D3E9F0  38 9E 00 58 */	addi r4, r30, 0x58
/* 80D3E9F4  38 C0 00 00 */	li r6, 0
/* 80D3E9F8  38 E0 00 02 */	li r7, 2
/* 80D3E9FC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80D3EA00  39 00 00 00 */	li r8, 0
/* 80D3EA04  39 20 FF FF */	li r9, -1
/* 80D3EA08  4B 2C EC 34 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D3EA0C  2C 03 00 00 */	cmpwi r3, 0
/* 80D3EA10  40 82 00 0C */	bne lbl_80D3EA1C
/* 80D3EA14  38 60 00 00 */	li r3, 0
/* 80D3EA18  48 00 00 08 */	b lbl_80D3EA20
lbl_80D3EA1C:
/* 80D3EA1C  38 60 00 01 */	li r3, 1
lbl_80D3EA20:
/* 80D3EA20  39 61 00 30 */	addi r11, r1, 0x30
/* 80D3EA24  4B 62 37 FC */	b _restgpr_27
/* 80D3EA28  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D3EA2C  7C 08 03 A6 */	mtlr r0
/* 80D3EA30  38 21 00 30 */	addi r1, r1, 0x30
/* 80D3EA34  4E 80 00 20 */	blr 

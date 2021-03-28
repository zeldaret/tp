lbl_80D244E0:
/* 80D244E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D244E4  7C 08 02 A6 */	mflr r0
/* 80D244E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D244EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D244F0  4B 63 DC E4 */	b _savegpr_27
/* 80D244F4  7C 7F 1B 78 */	mr r31, r3
/* 80D244F8  3C 60 80 D2 */	lis r3, l_arcName@ha
/* 80D244FC  38 63 6C 74 */	addi r3, r3, l_arcName@l
/* 80D24500  80 63 00 00 */	lwz r3, 0(r3)
/* 80D24504  38 80 00 0C */	li r4, 0xc
/* 80D24508  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D2450C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D24510  3F A5 00 02 */	addis r29, r5, 2
/* 80D24514  3B BD C2 F8 */	addi r29, r29, -15624
/* 80D24518  7F A5 EB 78 */	mr r5, r29
/* 80D2451C  38 C0 00 80 */	li r6, 0x80
/* 80D24520  4B 31 7D CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D24524  7C 7E 1B 78 */	mr r30, r3
/* 80D24528  3C 80 00 08 */	lis r4, 8
/* 80D2452C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80D24530  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80D24534  4B 2F 07 20 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D24538  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D2453C  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80D24540  28 00 00 00 */	cmplwi r0, 0
/* 80D24544  40 82 00 0C */	bne lbl_80D24550
/* 80D24548  38 60 00 00 */	li r3, 0
/* 80D2454C  48 00 03 48 */	b lbl_80D24894
lbl_80D24550:
/* 80D24550  3C 60 80 D2 */	lis r3, l_arcName@ha
/* 80D24554  38 63 6C 74 */	addi r3, r3, l_arcName@l
/* 80D24558  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2455C  38 80 00 10 */	li r4, 0x10
/* 80D24560  7F A5 EB 78 */	mr r5, r29
/* 80D24564  38 C0 00 80 */	li r6, 0x80
/* 80D24568  4B 31 7D 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2456C  7C 7B 1B 78 */	mr r27, r3
/* 80D24570  38 60 00 18 */	li r3, 0x18
/* 80D24574  4B 5A A6 D8 */	b __nw__FUl
/* 80D24578  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D2457C  41 82 00 20 */	beq lbl_80D2459C
/* 80D24580  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D24584  38 04 6E 74 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D24588  90 1C 00 00 */	stw r0, 0(r28)
/* 80D2458C  38 80 00 00 */	li r4, 0
/* 80D24590  4B 60 3E 6C */	b init__12J3DFrameCtrlFs
/* 80D24594  38 00 00 00 */	li r0, 0
/* 80D24598  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80D2459C:
/* 80D2459C  93 9F 05 B0 */	stw r28, 0x5b0(r31)
/* 80D245A0  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D245A4  28 03 00 00 */	cmplwi r3, 0
/* 80D245A8  41 82 00 30 */	beq lbl_80D245D8
/* 80D245AC  38 9E 00 58 */	addi r4, r30, 0x58
/* 80D245B0  7F 65 DB 78 */	mr r5, r27
/* 80D245B4  38 C0 00 01 */	li r6, 1
/* 80D245B8  38 E0 00 02 */	li r7, 2
/* 80D245BC  3D 00 80 D2 */	lis r8, lit_3785@ha
/* 80D245C0  C0 28 6B 7C */	lfs f1, lit_3785@l(r8)
/* 80D245C4  39 00 00 00 */	li r8, 0
/* 80D245C8  39 20 FF FF */	li r9, -1
/* 80D245CC  4B 2E 91 40 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D245D0  2C 03 00 00 */	cmpwi r3, 0
/* 80D245D4  40 82 00 0C */	bne lbl_80D245E0
lbl_80D245D8:
/* 80D245D8  38 60 00 00 */	li r3, 0
/* 80D245DC  48 00 02 B8 */	b lbl_80D24894
lbl_80D245E0:
/* 80D245E0  3C 60 80 D2 */	lis r3, l_arcName@ha
/* 80D245E4  38 63 6C 74 */	addi r3, r3, l_arcName@l
/* 80D245E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D245EC  38 80 00 15 */	li r4, 0x15
/* 80D245F0  7F A5 EB 78 */	mr r5, r29
/* 80D245F4  38 C0 00 80 */	li r6, 0x80
/* 80D245F8  4B 31 7C F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D245FC  7C 7B 1B 78 */	mr r27, r3
/* 80D24600  38 60 00 18 */	li r3, 0x18
/* 80D24604  4B 5A A6 48 */	b __nw__FUl
/* 80D24608  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D2460C  41 82 00 20 */	beq lbl_80D2462C
/* 80D24610  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D24614  38 04 6E 74 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D24618  90 1C 00 00 */	stw r0, 0(r28)
/* 80D2461C  38 80 00 00 */	li r4, 0
/* 80D24620  4B 60 3D DC */	b init__12J3DFrameCtrlFs
/* 80D24624  38 00 00 00 */	li r0, 0
/* 80D24628  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80D2462C:
/* 80D2462C  93 9F 05 AC */	stw r28, 0x5ac(r31)
/* 80D24630  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D24634  28 03 00 00 */	cmplwi r3, 0
/* 80D24638  41 82 00 30 */	beq lbl_80D24668
/* 80D2463C  38 9E 00 58 */	addi r4, r30, 0x58
/* 80D24640  7F 65 DB 78 */	mr r5, r27
/* 80D24644  38 C0 00 01 */	li r6, 1
/* 80D24648  38 E0 00 02 */	li r7, 2
/* 80D2464C  3D 00 80 D2 */	lis r8, lit_3785@ha
/* 80D24650  C0 28 6B 7C */	lfs f1, lit_3785@l(r8)
/* 80D24654  39 00 00 00 */	li r8, 0
/* 80D24658  39 20 FF FF */	li r9, -1
/* 80D2465C  4B 2E 8F E0 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D24660  2C 03 00 00 */	cmpwi r3, 0
/* 80D24664  40 82 00 0C */	bne lbl_80D24670
lbl_80D24668:
/* 80D24668  38 60 00 00 */	li r3, 0
/* 80D2466C  48 00 02 28 */	b lbl_80D24894
lbl_80D24670:
/* 80D24670  3C 60 80 D2 */	lis r3, l_arcName@ha
/* 80D24674  38 63 6C 74 */	addi r3, r3, l_arcName@l
/* 80D24678  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2467C  38 80 00 08 */	li r4, 8
/* 80D24680  7F A5 EB 78 */	mr r5, r29
/* 80D24684  38 C0 00 80 */	li r6, 0x80
/* 80D24688  4B 31 7C 64 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2468C  7C 7B 1B 78 */	mr r27, r3
/* 80D24690  38 60 00 1C */	li r3, 0x1c
/* 80D24694  4B 5A A5 B8 */	b __nw__FUl
/* 80D24698  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D2469C  41 82 00 20 */	beq lbl_80D246BC
/* 80D246A0  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D246A4  38 04 6E 74 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D246A8  90 1C 00 00 */	stw r0, 0(r28)
/* 80D246AC  38 80 00 00 */	li r4, 0
/* 80D246B0  4B 60 3D 4C */	b init__12J3DFrameCtrlFs
/* 80D246B4  38 00 00 00 */	li r0, 0
/* 80D246B8  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_80D246BC:
/* 80D246BC  93 9F 05 B4 */	stw r28, 0x5b4(r31)
/* 80D246C0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80D246C4  28 03 00 00 */	cmplwi r3, 0
/* 80D246C8  41 82 00 30 */	beq lbl_80D246F8
/* 80D246CC  7F 64 DB 78 */	mr r4, r27
/* 80D246D0  38 A0 00 01 */	li r5, 1
/* 80D246D4  38 C0 00 00 */	li r6, 0
/* 80D246D8  3C E0 80 D2 */	lis r7, lit_3785@ha
/* 80D246DC  C0 27 6B 7C */	lfs f1, lit_3785@l(r7)
/* 80D246E0  38 E0 00 00 */	li r7, 0
/* 80D246E4  39 00 FF FF */	li r8, -1
/* 80D246E8  39 20 00 00 */	li r9, 0
/* 80D246EC  4B 2E 90 F0 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80D246F0  2C 03 00 00 */	cmpwi r3, 0
/* 80D246F4  40 82 00 0C */	bne lbl_80D24700
lbl_80D246F8:
/* 80D246F8  38 60 00 00 */	li r3, 0
/* 80D246FC  48 00 01 98 */	b lbl_80D24894
lbl_80D24700:
/* 80D24700  38 00 00 00 */	li r0, 0
/* 80D24704  98 1F 05 CB */	stb r0, 0x5cb(r31)
/* 80D24708  3C 60 80 D2 */	lis r3, l_arcName@ha
/* 80D2470C  38 63 6C 74 */	addi r3, r3, l_arcName@l
/* 80D24710  80 63 00 00 */	lwz r3, 0(r3)
/* 80D24714  38 80 00 0B */	li r4, 0xb
/* 80D24718  7F A5 EB 78 */	mr r5, r29
/* 80D2471C  38 C0 00 80 */	li r6, 0x80
/* 80D24720  4B 31 7B CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D24724  7C 7E 1B 78 */	mr r30, r3
/* 80D24728  3C 80 00 08 */	lis r4, 8
/* 80D2472C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80D24730  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80D24734  4B 2F 05 20 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D24738  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 80D2473C  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80D24740  28 00 00 00 */	cmplwi r0, 0
/* 80D24744  40 82 00 0C */	bne lbl_80D24750
/* 80D24748  38 60 00 00 */	li r3, 0
/* 80D2474C  48 00 01 48 */	b lbl_80D24894
lbl_80D24750:
/* 80D24750  3C 60 80 D2 */	lis r3, l_arcName@ha
/* 80D24754  38 63 6C 74 */	addi r3, r3, l_arcName@l
/* 80D24758  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2475C  38 80 00 0F */	li r4, 0xf
/* 80D24760  7F A5 EB 78 */	mr r5, r29
/* 80D24764  38 C0 00 80 */	li r6, 0x80
/* 80D24768  4B 31 7B 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2476C  7C 7B 1B 78 */	mr r27, r3
/* 80D24770  38 60 00 18 */	li r3, 0x18
/* 80D24774  4B 5A A4 D8 */	b __nw__FUl
/* 80D24778  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D2477C  41 82 00 20 */	beq lbl_80D2479C
/* 80D24780  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D24784  38 04 6E 74 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D24788  90 1C 00 00 */	stw r0, 0(r28)
/* 80D2478C  38 80 00 00 */	li r4, 0
/* 80D24790  4B 60 3C 6C */	b init__12J3DFrameCtrlFs
/* 80D24794  38 00 00 00 */	li r0, 0
/* 80D24798  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80D2479C:
/* 80D2479C  93 9F 05 C0 */	stw r28, 0x5c0(r31)
/* 80D247A0  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80D247A4  28 03 00 00 */	cmplwi r3, 0
/* 80D247A8  41 82 00 30 */	beq lbl_80D247D8
/* 80D247AC  38 9E 00 58 */	addi r4, r30, 0x58
/* 80D247B0  7F 65 DB 78 */	mr r5, r27
/* 80D247B4  38 C0 00 01 */	li r6, 1
/* 80D247B8  38 E0 00 00 */	li r7, 0
/* 80D247BC  3D 00 80 D2 */	lis r8, lit_3785@ha
/* 80D247C0  C0 28 6B 7C */	lfs f1, lit_3785@l(r8)
/* 80D247C4  39 00 00 00 */	li r8, 0
/* 80D247C8  39 20 FF FF */	li r9, -1
/* 80D247CC  4B 2E 8F 40 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D247D0  2C 03 00 00 */	cmpwi r3, 0
/* 80D247D4  40 82 00 0C */	bne lbl_80D247E0
lbl_80D247D8:
/* 80D247D8  38 60 00 00 */	li r3, 0
/* 80D247DC  48 00 00 B8 */	b lbl_80D24894
lbl_80D247E0:
/* 80D247E0  3C 60 80 D2 */	lis r3, lit_3904@ha
/* 80D247E4  C0 03 6B 8C */	lfs f0, lit_3904@l(r3)
/* 80D247E8  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80D247EC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D247F0  3C 60 80 D2 */	lis r3, l_arcName@ha
/* 80D247F4  38 63 6C 74 */	addi r3, r3, l_arcName@l
/* 80D247F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D247FC  38 80 00 13 */	li r4, 0x13
/* 80D24800  7F A5 EB 78 */	mr r5, r29
/* 80D24804  38 C0 00 80 */	li r6, 0x80
/* 80D24808  4B 31 7A E4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D2480C  7C 7B 1B 78 */	mr r27, r3
/* 80D24810  38 60 00 18 */	li r3, 0x18
/* 80D24814  4B 5A A4 38 */	b __nw__FUl
/* 80D24818  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D2481C  41 82 00 20 */	beq lbl_80D2483C
/* 80D24820  3C 80 80 D2 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D24824  38 04 6E 74 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D24828  90 1D 00 00 */	stw r0, 0(r29)
/* 80D2482C  38 80 00 00 */	li r4, 0
/* 80D24830  4B 60 3B CC */	b init__12J3DFrameCtrlFs
/* 80D24834  38 00 00 00 */	li r0, 0
/* 80D24838  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D2483C:
/* 80D2483C  93 BF 05 BC */	stw r29, 0x5bc(r31)
/* 80D24840  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D24844  28 03 00 00 */	cmplwi r3, 0
/* 80D24848  41 82 00 30 */	beq lbl_80D24878
/* 80D2484C  38 9E 00 58 */	addi r4, r30, 0x58
/* 80D24850  7F 65 DB 78 */	mr r5, r27
/* 80D24854  38 C0 00 01 */	li r6, 1
/* 80D24858  38 E0 00 02 */	li r7, 2
/* 80D2485C  3D 00 80 D2 */	lis r8, lit_3785@ha
/* 80D24860  C0 28 6B 7C */	lfs f1, lit_3785@l(r8)
/* 80D24864  39 00 00 00 */	li r8, 0
/* 80D24868  39 20 FF FF */	li r9, -1
/* 80D2486C  4B 2E 8D D0 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D24870  2C 03 00 00 */	cmpwi r3, 0
/* 80D24874  40 82 00 0C */	bne lbl_80D24880
lbl_80D24878:
/* 80D24878  38 60 00 00 */	li r3, 0
/* 80D2487C  48 00 00 18 */	b lbl_80D24894
lbl_80D24880:
/* 80D24880  3C 60 80 D2 */	lis r3, lit_3904@ha
/* 80D24884  C0 03 6B 8C */	lfs f0, lit_3904@l(r3)
/* 80D24888  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80D2488C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D24890  38 60 00 01 */	li r3, 1
lbl_80D24894:
/* 80D24894  39 61 00 20 */	addi r11, r1, 0x20
/* 80D24898  4B 63 D9 88 */	b _restgpr_27
/* 80D2489C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D248A0  7C 08 03 A6 */	mtlr r0
/* 80D248A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D248A8  4E 80 00 20 */	blr 

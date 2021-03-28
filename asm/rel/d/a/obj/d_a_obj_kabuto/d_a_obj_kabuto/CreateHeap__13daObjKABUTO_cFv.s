lbl_80C2AF88:
/* 80C2AF88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C2AF8C  7C 08 02 A6 */	mflr r0
/* 80C2AF90  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2AF94  39 61 00 30 */	addi r11, r1, 0x30
/* 80C2AF98  4B 73 72 44 */	b _savegpr_29
/* 80C2AF9C  7C 7F 1B 78 */	mr r31, r3
/* 80C2AFA0  88 03 05 81 */	lbz r0, 0x581(r3)
/* 80C2AFA4  28 00 00 01 */	cmplwi r0, 1
/* 80C2AFA8  40 82 00 30 */	bne lbl_80C2AFD8
/* 80C2AFAC  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2AFB0  38 63 E2 18 */	addi r3, r3, stringBase0@l
/* 80C2AFB4  38 80 00 0A */	li r4, 0xa
/* 80C2AFB8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2AFBC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2AFC0  3C A5 00 02 */	addis r5, r5, 2
/* 80C2AFC4  38 C0 00 80 */	li r6, 0x80
/* 80C2AFC8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2AFCC  4B 41 13 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2AFD0  7C 7E 1B 78 */	mr r30, r3
/* 80C2AFD4  48 00 00 2C */	b lbl_80C2B000
lbl_80C2AFD8:
/* 80C2AFD8  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2AFDC  38 63 E2 18 */	addi r3, r3, stringBase0@l
/* 80C2AFE0  38 80 00 0B */	li r4, 0xb
/* 80C2AFE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2AFE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2AFEC  3C A5 00 02 */	addis r5, r5, 2
/* 80C2AFF0  38 C0 00 80 */	li r6, 0x80
/* 80C2AFF4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2AFF8  4B 41 12 F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2AFFC  7C 7E 1B 78 */	mr r30, r3
lbl_80C2B000:
/* 80C2B000  38 60 00 58 */	li r3, 0x58
/* 80C2B004  4B 6A 3C 48 */	b __nw__FUl
/* 80C2B008  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C2B00C  41 82 00 74 */	beq lbl_80C2B080
/* 80C2B010  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2B014  38 63 E2 18 */	addi r3, r3, stringBase0@l
/* 80C2B018  38 80 00 07 */	li r4, 7
/* 80C2B01C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2B020  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2B024  3C A5 00 02 */	addis r5, r5, 2
/* 80C2B028  38 C0 00 80 */	li r6, 0x80
/* 80C2B02C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2B030  4B 41 12 BC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2B034  7C 67 1B 78 */	mr r7, r3
/* 80C2B038  38 1F 09 70 */	addi r0, r31, 0x970
/* 80C2B03C  90 01 00 08 */	stw r0, 8(r1)
/* 80C2B040  38 00 00 00 */	li r0, 0
/* 80C2B044  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C2B048  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80C2B04C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80C2B050  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C2B054  7F A3 EB 78 */	mr r3, r29
/* 80C2B058  7F C4 F3 78 */	mr r4, r30
/* 80C2B05C  38 A0 00 00 */	li r5, 0
/* 80C2B060  38 C0 00 00 */	li r6, 0
/* 80C2B064  39 00 00 02 */	li r8, 2
/* 80C2B068  3D 20 80 C3 */	lis r9, lit_3775@ha
/* 80C2B06C  C0 29 E1 10 */	lfs f1, lit_3775@l(r9)
/* 80C2B070  39 20 00 00 */	li r9, 0
/* 80C2B074  39 40 FF FF */	li r10, -1
/* 80C2B078  4B 3E 57 58 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80C2B07C  7C 7D 1B 78 */	mr r29, r3
lbl_80C2B080:
/* 80C2B080  93 BF 0A 04 */	stw r29, 0xa04(r31)
/* 80C2B084  80 7F 0A 04 */	lwz r3, 0xa04(r31)
/* 80C2B088  28 03 00 00 */	cmplwi r3, 0
/* 80C2B08C  41 82 00 10 */	beq lbl_80C2B09C
/* 80C2B090  83 C3 00 04 */	lwz r30, 4(r3)
/* 80C2B094  28 1E 00 00 */	cmplwi r30, 0
/* 80C2B098  40 82 00 0C */	bne lbl_80C2B0A4
lbl_80C2B09C:
/* 80C2B09C  38 60 00 00 */	li r3, 0
/* 80C2B0A0  48 00 02 28 */	b lbl_80C2B2C8
lbl_80C2B0A4:
/* 80C2B0A4  38 60 00 18 */	li r3, 0x18
/* 80C2B0A8  4B 6A 3B A4 */	b __nw__FUl
/* 80C2B0AC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C2B0B0  41 82 00 20 */	beq lbl_80C2B0D0
/* 80C2B0B4  3C 80 80 C3 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C2B0B8  38 04 E2 CC */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C2B0BC  90 1D 00 00 */	stw r0, 0(r29)
/* 80C2B0C0  38 80 00 00 */	li r4, 0
/* 80C2B0C4  4B 6F D3 38 */	b init__12J3DFrameCtrlFs
/* 80C2B0C8  38 00 00 00 */	li r0, 0
/* 80C2B0CC  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C2B0D0:
/* 80C2B0D0  93 BF 07 8C */	stw r29, 0x78c(r31)
/* 80C2B0D4  80 1F 07 8C */	lwz r0, 0x78c(r31)
/* 80C2B0D8  28 00 00 00 */	cmplwi r0, 0
/* 80C2B0DC  40 82 00 0C */	bne lbl_80C2B0E8
/* 80C2B0E0  38 60 00 00 */	li r3, 0
/* 80C2B0E4  48 00 01 E4 */	b lbl_80C2B2C8
lbl_80C2B0E8:
/* 80C2B0E8  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C2B0EC  28 00 00 01 */	cmplwi r0, 1
/* 80C2B0F0  40 82 00 64 */	bne lbl_80C2B154
/* 80C2B0F4  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2B0F8  38 63 E2 18 */	addi r3, r3, stringBase0@l
/* 80C2B0FC  38 80 00 0E */	li r4, 0xe
/* 80C2B100  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2B104  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2B108  3C A5 00 02 */	addis r5, r5, 2
/* 80C2B10C  38 C0 00 80 */	li r6, 0x80
/* 80C2B110  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2B114  4B 41 11 D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2B118  7C 65 1B 78 */	mr r5, r3
/* 80C2B11C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C2B120  80 7F 07 8C */	lwz r3, 0x78c(r31)
/* 80C2B124  38 84 00 58 */	addi r4, r4, 0x58
/* 80C2B128  38 C0 00 01 */	li r6, 1
/* 80C2B12C  38 E0 00 02 */	li r7, 2
/* 80C2B130  3D 00 80 C3 */	lis r8, lit_3896@ha
/* 80C2B134  C0 28 E1 60 */	lfs f1, lit_3896@l(r8)
/* 80C2B138  39 00 00 00 */	li r8, 0
/* 80C2B13C  39 20 FF FF */	li r9, -1
/* 80C2B140  4B 3E 25 CC */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C2B144  2C 03 00 00 */	cmpwi r3, 0
/* 80C2B148  40 82 00 6C */	bne lbl_80C2B1B4
/* 80C2B14C  38 60 00 00 */	li r3, 0
/* 80C2B150  48 00 01 78 */	b lbl_80C2B2C8
lbl_80C2B154:
/* 80C2B154  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2B158  38 63 E2 18 */	addi r3, r3, stringBase0@l
/* 80C2B15C  38 80 00 0F */	li r4, 0xf
/* 80C2B160  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2B164  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2B168  3C A5 00 02 */	addis r5, r5, 2
/* 80C2B16C  38 C0 00 80 */	li r6, 0x80
/* 80C2B170  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2B174  4B 41 11 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2B178  7C 65 1B 78 */	mr r5, r3
/* 80C2B17C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C2B180  80 7F 07 8C */	lwz r3, 0x78c(r31)
/* 80C2B184  38 84 00 58 */	addi r4, r4, 0x58
/* 80C2B188  38 C0 00 01 */	li r6, 1
/* 80C2B18C  38 E0 00 02 */	li r7, 2
/* 80C2B190  3D 00 80 C3 */	lis r8, lit_3896@ha
/* 80C2B194  C0 28 E1 60 */	lfs f1, lit_3896@l(r8)
/* 80C2B198  39 00 00 00 */	li r8, 0
/* 80C2B19C  39 20 FF FF */	li r9, -1
/* 80C2B1A0  4B 3E 25 6C */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C2B1A4  2C 03 00 00 */	cmpwi r3, 0
/* 80C2B1A8  40 82 00 0C */	bne lbl_80C2B1B4
/* 80C2B1AC  38 60 00 00 */	li r3, 0
/* 80C2B1B0  48 00 01 18 */	b lbl_80C2B2C8
lbl_80C2B1B4:
/* 80C2B1B4  38 60 00 18 */	li r3, 0x18
/* 80C2B1B8  4B 6A 3A 94 */	b __nw__FUl
/* 80C2B1BC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C2B1C0  41 82 00 20 */	beq lbl_80C2B1E0
/* 80C2B1C4  3C 80 80 C3 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C2B1C8  38 04 E2 CC */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C2B1CC  90 1D 00 00 */	stw r0, 0(r29)
/* 80C2B1D0  38 80 00 00 */	li r4, 0
/* 80C2B1D4  4B 6F D2 28 */	b init__12J3DFrameCtrlFs
/* 80C2B1D8  38 00 00 00 */	li r0, 0
/* 80C2B1DC  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C2B1E0:
/* 80C2B1E0  93 BF 07 90 */	stw r29, 0x790(r31)
/* 80C2B1E4  80 1F 07 90 */	lwz r0, 0x790(r31)
/* 80C2B1E8  28 00 00 00 */	cmplwi r0, 0
/* 80C2B1EC  40 82 00 0C */	bne lbl_80C2B1F8
/* 80C2B1F0  38 60 00 00 */	li r3, 0
/* 80C2B1F4  48 00 00 D4 */	b lbl_80C2B2C8
lbl_80C2B1F8:
/* 80C2B1F8  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C2B1FC  28 00 00 01 */	cmplwi r0, 1
/* 80C2B200  40 82 00 64 */	bne lbl_80C2B264
/* 80C2B204  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2B208  38 63 E2 18 */	addi r3, r3, stringBase0@l
/* 80C2B20C  38 80 00 12 */	li r4, 0x12
/* 80C2B210  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2B214  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2B218  3C A5 00 02 */	addis r5, r5, 2
/* 80C2B21C  38 C0 00 80 */	li r6, 0x80
/* 80C2B220  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2B224  4B 41 10 C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2B228  7C 65 1B 78 */	mr r5, r3
/* 80C2B22C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C2B230  80 7F 07 90 */	lwz r3, 0x790(r31)
/* 80C2B234  38 84 00 58 */	addi r4, r4, 0x58
/* 80C2B238  38 C0 00 01 */	li r6, 1
/* 80C2B23C  38 E0 00 02 */	li r7, 2
/* 80C2B240  3D 00 80 C3 */	lis r8, lit_3896@ha
/* 80C2B244  C0 28 E1 60 */	lfs f1, lit_3896@l(r8)
/* 80C2B248  39 00 00 00 */	li r8, 0
/* 80C2B24C  39 20 FF FF */	li r9, -1
/* 80C2B250  4B 3E 23 EC */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C2B254  2C 03 00 00 */	cmpwi r3, 0
/* 80C2B258  40 82 00 6C */	bne lbl_80C2B2C4
/* 80C2B25C  38 60 00 00 */	li r3, 0
/* 80C2B260  48 00 00 68 */	b lbl_80C2B2C8
lbl_80C2B264:
/* 80C2B264  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2B268  38 63 E2 18 */	addi r3, r3, stringBase0@l
/* 80C2B26C  38 80 00 13 */	li r4, 0x13
/* 80C2B270  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2B274  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2B278  3C A5 00 02 */	addis r5, r5, 2
/* 80C2B27C  38 C0 00 80 */	li r6, 0x80
/* 80C2B280  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C2B284  4B 41 10 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2B288  7C 65 1B 78 */	mr r5, r3
/* 80C2B28C  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C2B290  80 7F 07 90 */	lwz r3, 0x790(r31)
/* 80C2B294  38 84 00 58 */	addi r4, r4, 0x58
/* 80C2B298  38 C0 00 01 */	li r6, 1
/* 80C2B29C  38 E0 00 02 */	li r7, 2
/* 80C2B2A0  3D 00 80 C3 */	lis r8, lit_3896@ha
/* 80C2B2A4  C0 28 E1 60 */	lfs f1, lit_3896@l(r8)
/* 80C2B2A8  39 00 00 00 */	li r8, 0
/* 80C2B2AC  39 20 FF FF */	li r9, -1
/* 80C2B2B0  4B 3E 23 8C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C2B2B4  2C 03 00 00 */	cmpwi r3, 0
/* 80C2B2B8  40 82 00 0C */	bne lbl_80C2B2C4
/* 80C2B2BC  38 60 00 00 */	li r3, 0
/* 80C2B2C0  48 00 00 08 */	b lbl_80C2B2C8
lbl_80C2B2C4:
/* 80C2B2C4  38 60 00 01 */	li r3, 1
lbl_80C2B2C8:
/* 80C2B2C8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C2B2CC  4B 73 6F 5C */	b _restgpr_29
/* 80C2B2D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C2B2D4  7C 08 03 A6 */	mtlr r0
/* 80C2B2D8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C2B2DC  4E 80 00 20 */	blr 

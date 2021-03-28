lbl_80C4A300:
/* 80C4A300  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C4A304  7C 08 02 A6 */	mflr r0
/* 80C4A308  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4A30C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C4A310  4B 71 7E CC */	b _savegpr_29
/* 80C4A314  7C 7F 1B 78 */	mr r31, r3
/* 80C4A318  88 03 05 81 */	lbz r0, 0x581(r3)
/* 80C4A31C  28 00 00 01 */	cmplwi r0, 1
/* 80C4A320  40 82 00 30 */	bne lbl_80C4A350
/* 80C4A324  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C4A328  38 63 D5 8C */	addi r3, r3, stringBase0@l
/* 80C4A32C  38 80 00 0A */	li r4, 0xa
/* 80C4A330  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4A334  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4A338  3C A5 00 02 */	addis r5, r5, 2
/* 80C4A33C  38 C0 00 80 */	li r6, 0x80
/* 80C4A340  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4A344  4B 3F 1F A8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4A348  7C 7E 1B 78 */	mr r30, r3
/* 80C4A34C  48 00 00 2C */	b lbl_80C4A378
lbl_80C4A350:
/* 80C4A350  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C4A354  38 63 D5 8C */	addi r3, r3, stringBase0@l
/* 80C4A358  38 80 00 0B */	li r4, 0xb
/* 80C4A35C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4A360  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4A364  3C A5 00 02 */	addis r5, r5, 2
/* 80C4A368  38 C0 00 80 */	li r6, 0x80
/* 80C4A36C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4A370  4B 3F 1F 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4A374  7C 7E 1B 78 */	mr r30, r3
lbl_80C4A378:
/* 80C4A378  38 60 00 58 */	li r3, 0x58
/* 80C4A37C  4B 68 48 D0 */	b __nw__FUl
/* 80C4A380  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C4A384  41 82 00 74 */	beq lbl_80C4A3F8
/* 80C4A388  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C4A38C  38 63 D5 8C */	addi r3, r3, stringBase0@l
/* 80C4A390  38 80 00 07 */	li r4, 7
/* 80C4A394  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4A398  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4A39C  3C A5 00 02 */	addis r5, r5, 2
/* 80C4A3A0  38 C0 00 80 */	li r6, 0x80
/* 80C4A3A4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4A3A8  4B 3F 1F 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4A3AC  7C 67 1B 78 */	mr r7, r3
/* 80C4A3B0  38 1F 09 C4 */	addi r0, r31, 0x9c4
/* 80C4A3B4  90 01 00 08 */	stw r0, 8(r1)
/* 80C4A3B8  38 00 00 00 */	li r0, 0
/* 80C4A3BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4A3C0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80C4A3C4  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80C4A3C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C4A3CC  7F A3 EB 78 */	mr r3, r29
/* 80C4A3D0  7F C4 F3 78 */	mr r4, r30
/* 80C4A3D4  38 A0 00 00 */	li r5, 0
/* 80C4A3D8  38 C0 00 00 */	li r6, 0
/* 80C4A3DC  39 00 00 02 */	li r8, 2
/* 80C4A3E0  3D 20 80 C5 */	lis r9, lit_3895@ha
/* 80C4A3E4  C0 29 D4 DC */	lfs f1, lit_3895@l(r9)
/* 80C4A3E8  39 20 00 00 */	li r9, 0
/* 80C4A3EC  39 40 FF FF */	li r10, -1
/* 80C4A3F0  4B 3C 63 E0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80C4A3F4  7C 7D 1B 78 */	mr r29, r3
lbl_80C4A3F8:
/* 80C4A3F8  93 BF 0A 58 */	stw r29, 0xa58(r31)
/* 80C4A3FC  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 80C4A400  28 03 00 00 */	cmplwi r3, 0
/* 80C4A404  41 82 00 10 */	beq lbl_80C4A414
/* 80C4A408  83 C3 00 04 */	lwz r30, 4(r3)
/* 80C4A40C  28 1E 00 00 */	cmplwi r30, 0
/* 80C4A410  40 82 00 0C */	bne lbl_80C4A41C
lbl_80C4A414:
/* 80C4A414  38 60 00 00 */	li r3, 0
/* 80C4A418  48 00 02 28 */	b lbl_80C4A640
lbl_80C4A41C:
/* 80C4A41C  38 60 00 18 */	li r3, 0x18
/* 80C4A420  4B 68 48 2C */	b __nw__FUl
/* 80C4A424  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C4A428  41 82 00 20 */	beq lbl_80C4A448
/* 80C4A42C  3C 80 80 C5 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C4A430  38 04 D6 40 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C4A434  90 1D 00 00 */	stw r0, 0(r29)
/* 80C4A438  38 80 00 00 */	li r4, 0
/* 80C4A43C  4B 6D DF C0 */	b init__12J3DFrameCtrlFs
/* 80C4A440  38 00 00 00 */	li r0, 0
/* 80C4A444  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C4A448:
/* 80C4A448  93 BF 09 B0 */	stw r29, 0x9b0(r31)
/* 80C4A44C  80 1F 09 B0 */	lwz r0, 0x9b0(r31)
/* 80C4A450  28 00 00 00 */	cmplwi r0, 0
/* 80C4A454  40 82 00 0C */	bne lbl_80C4A460
/* 80C4A458  38 60 00 00 */	li r3, 0
/* 80C4A45C  48 00 01 E4 */	b lbl_80C4A640
lbl_80C4A460:
/* 80C4A460  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C4A464  28 00 00 01 */	cmplwi r0, 1
/* 80C4A468  40 82 00 64 */	bne lbl_80C4A4CC
/* 80C4A46C  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C4A470  38 63 D5 8C */	addi r3, r3, stringBase0@l
/* 80C4A474  38 80 00 0E */	li r4, 0xe
/* 80C4A478  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4A47C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4A480  3C A5 00 02 */	addis r5, r5, 2
/* 80C4A484  38 C0 00 80 */	li r6, 0x80
/* 80C4A488  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4A48C  4B 3F 1E 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4A490  7C 65 1B 78 */	mr r5, r3
/* 80C4A494  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C4A498  80 7F 09 B0 */	lwz r3, 0x9b0(r31)
/* 80C4A49C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C4A4A0  38 C0 00 01 */	li r6, 1
/* 80C4A4A4  38 E0 00 02 */	li r7, 2
/* 80C4A4A8  3D 00 80 C5 */	lis r8, lit_3895@ha
/* 80C4A4AC  C0 28 D4 DC */	lfs f1, lit_3895@l(r8)
/* 80C4A4B0  39 00 00 00 */	li r8, 0
/* 80C4A4B4  39 20 FF FF */	li r9, -1
/* 80C4A4B8  4B 3C 32 54 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C4A4BC  2C 03 00 00 */	cmpwi r3, 0
/* 80C4A4C0  40 82 00 6C */	bne lbl_80C4A52C
/* 80C4A4C4  38 60 00 00 */	li r3, 0
/* 80C4A4C8  48 00 01 78 */	b lbl_80C4A640
lbl_80C4A4CC:
/* 80C4A4CC  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C4A4D0  38 63 D5 8C */	addi r3, r3, stringBase0@l
/* 80C4A4D4  38 80 00 0F */	li r4, 0xf
/* 80C4A4D8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4A4DC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4A4E0  3C A5 00 02 */	addis r5, r5, 2
/* 80C4A4E4  38 C0 00 80 */	li r6, 0x80
/* 80C4A4E8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4A4EC  4B 3F 1E 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4A4F0  7C 65 1B 78 */	mr r5, r3
/* 80C4A4F4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C4A4F8  80 7F 09 B0 */	lwz r3, 0x9b0(r31)
/* 80C4A4FC  38 84 00 58 */	addi r4, r4, 0x58
/* 80C4A500  38 C0 00 01 */	li r6, 1
/* 80C4A504  38 E0 00 02 */	li r7, 2
/* 80C4A508  3D 00 80 C5 */	lis r8, lit_3895@ha
/* 80C4A50C  C0 28 D4 DC */	lfs f1, lit_3895@l(r8)
/* 80C4A510  39 00 00 00 */	li r8, 0
/* 80C4A514  39 20 FF FF */	li r9, -1
/* 80C4A518  4B 3C 31 F4 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C4A51C  2C 03 00 00 */	cmpwi r3, 0
/* 80C4A520  40 82 00 0C */	bne lbl_80C4A52C
/* 80C4A524  38 60 00 00 */	li r3, 0
/* 80C4A528  48 00 01 18 */	b lbl_80C4A640
lbl_80C4A52C:
/* 80C4A52C  38 60 00 18 */	li r3, 0x18
/* 80C4A530  4B 68 47 1C */	b __nw__FUl
/* 80C4A534  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C4A538  41 82 00 20 */	beq lbl_80C4A558
/* 80C4A53C  3C 80 80 C5 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C4A540  38 04 D6 40 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C4A544  90 1D 00 00 */	stw r0, 0(r29)
/* 80C4A548  38 80 00 00 */	li r4, 0
/* 80C4A54C  4B 6D DE B0 */	b init__12J3DFrameCtrlFs
/* 80C4A550  38 00 00 00 */	li r0, 0
/* 80C4A554  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C4A558:
/* 80C4A558  93 BF 09 B4 */	stw r29, 0x9b4(r31)
/* 80C4A55C  80 1F 09 B4 */	lwz r0, 0x9b4(r31)
/* 80C4A560  28 00 00 00 */	cmplwi r0, 0
/* 80C4A564  40 82 00 0C */	bne lbl_80C4A570
/* 80C4A568  38 60 00 00 */	li r3, 0
/* 80C4A56C  48 00 00 D4 */	b lbl_80C4A640
lbl_80C4A570:
/* 80C4A570  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C4A574  28 00 00 01 */	cmplwi r0, 1
/* 80C4A578  40 82 00 64 */	bne lbl_80C4A5DC
/* 80C4A57C  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C4A580  38 63 D5 8C */	addi r3, r3, stringBase0@l
/* 80C4A584  38 80 00 12 */	li r4, 0x12
/* 80C4A588  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4A58C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4A590  3C A5 00 02 */	addis r5, r5, 2
/* 80C4A594  38 C0 00 80 */	li r6, 0x80
/* 80C4A598  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4A59C  4B 3F 1D 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4A5A0  7C 65 1B 78 */	mr r5, r3
/* 80C4A5A4  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C4A5A8  80 7F 09 B4 */	lwz r3, 0x9b4(r31)
/* 80C4A5AC  38 84 00 58 */	addi r4, r4, 0x58
/* 80C4A5B0  38 C0 00 01 */	li r6, 1
/* 80C4A5B4  38 E0 00 02 */	li r7, 2
/* 80C4A5B8  3D 00 80 C5 */	lis r8, lit_3895@ha
/* 80C4A5BC  C0 28 D4 DC */	lfs f1, lit_3895@l(r8)
/* 80C4A5C0  39 00 00 00 */	li r8, 0
/* 80C4A5C4  39 20 FF FF */	li r9, -1
/* 80C4A5C8  4B 3C 30 74 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C4A5CC  2C 03 00 00 */	cmpwi r3, 0
/* 80C4A5D0  40 82 00 6C */	bne lbl_80C4A63C
/* 80C4A5D4  38 60 00 00 */	li r3, 0
/* 80C4A5D8  48 00 00 68 */	b lbl_80C4A640
lbl_80C4A5DC:
/* 80C4A5DC  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C4A5E0  38 63 D5 8C */	addi r3, r3, stringBase0@l
/* 80C4A5E4  38 80 00 13 */	li r4, 0x13
/* 80C4A5E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C4A5EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C4A5F0  3C A5 00 02 */	addis r5, r5, 2
/* 80C4A5F4  38 C0 00 80 */	li r6, 0x80
/* 80C4A5F8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C4A5FC  4B 3F 1C F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C4A600  7C 65 1B 78 */	mr r5, r3
/* 80C4A604  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C4A608  80 7F 09 B4 */	lwz r3, 0x9b4(r31)
/* 80C4A60C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C4A610  38 C0 00 01 */	li r6, 1
/* 80C4A614  38 E0 00 02 */	li r7, 2
/* 80C4A618  3D 00 80 C5 */	lis r8, lit_3895@ha
/* 80C4A61C  C0 28 D4 DC */	lfs f1, lit_3895@l(r8)
/* 80C4A620  39 00 00 00 */	li r8, 0
/* 80C4A624  39 20 FF FF */	li r9, -1
/* 80C4A628  4B 3C 30 14 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C4A62C  2C 03 00 00 */	cmpwi r3, 0
/* 80C4A630  40 82 00 0C */	bne lbl_80C4A63C
/* 80C4A634  38 60 00 00 */	li r3, 0
/* 80C4A638  48 00 00 08 */	b lbl_80C4A640
lbl_80C4A63C:
/* 80C4A63C  38 60 00 01 */	li r3, 1
lbl_80C4A640:
/* 80C4A640  39 61 00 30 */	addi r11, r1, 0x30
/* 80C4A644  4B 71 7B E4 */	b _restgpr_29
/* 80C4A648  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C4A64C  7C 08 03 A6 */	mtlr r0
/* 80C4A650  38 21 00 30 */	addi r1, r1, 0x30
/* 80C4A654  4E 80 00 20 */	blr 

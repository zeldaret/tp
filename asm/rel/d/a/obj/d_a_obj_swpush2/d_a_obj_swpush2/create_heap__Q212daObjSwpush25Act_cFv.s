lbl_80CFE1D0:
/* 80CFE1D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CFE1D4  7C 08 02 A6 */	mflr r0
/* 80CFE1D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CFE1DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFE1E0  4B 66 3F F5 */	bl _savegpr_27
/* 80CFE1E4  7C 7F 1B 78 */	mr r31, r3
/* 80CFE1E8  4B FF FE BD */	bl getBmdName__Q212daObjSwpush25Act_cFv
/* 80CFE1EC  7C 7C 1B 78 */	mr r28, r3
/* 80CFE1F0  7F E3 FB 78 */	mr r3, r31
/* 80CFE1F4  4B FF FE A5 */	bl getArcName__Q212daObjSwpush25Act_cFv
/* 80CFE1F8  7F 84 E3 78 */	mr r4, r28
/* 80CFE1FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CFE200  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CFE204  3F C5 00 02 */	addis r30, r5, 2
/* 80CFE208  3B DE C2 F8 */	addi r30, r30, -15624
/* 80CFE20C  7F C5 F3 78 */	mr r5, r30
/* 80CFE210  38 C0 00 80 */	li r6, 0x80
/* 80CFE214  4B 33 E1 69 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CFE218  7C 7D 1B 78 */	mr r29, r3
/* 80CFE21C  3C 80 00 08 */	lis r4, 8
/* 80CFE220  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000285@ha */
/* 80CFE224  38 A5 02 85 */	addi r5, r5, 0x0285 /* 0x11000285@l */
/* 80CFE228  4B 31 6A 2D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CFE22C  90 7F 05 A4 */	stw r3, 0x5a4(r31)
/* 80CFE230  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80CFE234  28 00 00 00 */	cmplwi r0, 0
/* 80CFE238  40 82 00 0C */	bne lbl_80CFE244
/* 80CFE23C  38 60 00 00 */	li r3, 0
/* 80CFE240  48 00 04 38 */	b lbl_80CFE678
lbl_80CFE244:
/* 80CFE244  7F E3 FB 78 */	mr r3, r31
/* 80CFE248  4B FF FE 8D */	bl getNmlBrkName__Q212daObjSwpush25Act_cFv
/* 80CFE24C  7C 7C 1B 78 */	mr r28, r3
/* 80CFE250  7F E3 FB 78 */	mr r3, r31
/* 80CFE254  4B FF FE 45 */	bl getArcName__Q212daObjSwpush25Act_cFv
/* 80CFE258  7F 84 E3 78 */	mr r4, r28
/* 80CFE25C  7F C5 F3 78 */	mr r5, r30
/* 80CFE260  38 C0 00 80 */	li r6, 0x80
/* 80CFE264  4B 33 E1 19 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CFE268  7C 7B 1B 78 */	mr r27, r3
/* 80CFE26C  38 60 00 18 */	li r3, 0x18
/* 80CFE270  4B 5D 09 DD */	bl __nw__FUl
/* 80CFE274  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CFE278  41 82 00 20 */	beq lbl_80CFE298
/* 80CFE27C  3C 80 80 D0 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CFFEE8@ha */
/* 80CFE280  38 04 FE E8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CFFEE8@l */
/* 80CFE284  90 1C 00 00 */	stw r0, 0(r28)
/* 80CFE288  38 80 00 00 */	li r4, 0
/* 80CFE28C  4B 62 A1 71 */	bl init__12J3DFrameCtrlFs
/* 80CFE290  38 00 00 00 */	li r0, 0
/* 80CFE294  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80CFE298:
/* 80CFE298  93 9F 05 B8 */	stw r28, 0x5b8(r31)
/* 80CFE29C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80CFE2A0  28 03 00 00 */	cmplwi r3, 0
/* 80CFE2A4  41 82 00 34 */	beq lbl_80CFE2D8
/* 80CFE2A8  3B BD 00 58 */	addi r29, r29, 0x58
/* 80CFE2AC  7F A4 EB 78 */	mr r4, r29
/* 80CFE2B0  7F 65 DB 78 */	mr r5, r27
/* 80CFE2B4  38 C0 00 01 */	li r6, 1
/* 80CFE2B8  38 E0 00 02 */	li r7, 2
/* 80CFE2BC  3D 00 80 D0 */	lis r8, lit_3857@ha /* 0x80CFFCE0@ha */
/* 80CFE2C0  C0 28 FC E0 */	lfs f1, lit_3857@l(r8)  /* 0x80CFFCE0@l */
/* 80CFE2C4  39 00 00 00 */	li r8, 0
/* 80CFE2C8  39 20 FF FF */	li r9, -1
/* 80CFE2CC  4B 30 F4 41 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80CFE2D0  2C 03 00 00 */	cmpwi r3, 0
/* 80CFE2D4  40 82 00 0C */	bne lbl_80CFE2E0
lbl_80CFE2D8:
/* 80CFE2D8  38 60 00 00 */	li r3, 0
/* 80CFE2DC  48 00 03 9C */	b lbl_80CFE678
lbl_80CFE2E0:
/* 80CFE2E0  3C 60 80 D0 */	lis r3, lit_3857@ha /* 0x80CFFCE0@ha */
/* 80CFE2E4  C0 03 FC E0 */	lfs f0, lit_3857@l(r3)  /* 0x80CFFCE0@l */
/* 80CFE2E8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80CFE2EC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CFE2F0  7F E3 FB 78 */	mr r3, r31
/* 80CFE2F4  4B FF FD D1 */	bl getNmlBtkName__Q212daObjSwpush25Act_cFv
/* 80CFE2F8  7C 7C 1B 78 */	mr r28, r3
/* 80CFE2FC  7F E3 FB 78 */	mr r3, r31
/* 80CFE300  4B FF FD 99 */	bl getArcName__Q212daObjSwpush25Act_cFv
/* 80CFE304  7F 84 E3 78 */	mr r4, r28
/* 80CFE308  7F C5 F3 78 */	mr r5, r30
/* 80CFE30C  38 C0 00 80 */	li r6, 0x80
/* 80CFE310  4B 33 E0 6D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CFE314  7C 7B 1B 78 */	mr r27, r3
/* 80CFE318  38 60 00 18 */	li r3, 0x18
/* 80CFE31C  4B 5D 09 31 */	bl __nw__FUl
/* 80CFE320  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CFE324  41 82 00 20 */	beq lbl_80CFE344
/* 80CFE328  3C 80 80 D0 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CFFEE8@ha */
/* 80CFE32C  38 04 FE E8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CFFEE8@l */
/* 80CFE330  90 1C 00 00 */	stw r0, 0(r28)
/* 80CFE334  38 80 00 00 */	li r4, 0
/* 80CFE338  4B 62 A0 C5 */	bl init__12J3DFrameCtrlFs
/* 80CFE33C  38 00 00 00 */	li r0, 0
/* 80CFE340  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80CFE344:
/* 80CFE344  93 9F 05 BC */	stw r28, 0x5bc(r31)
/* 80CFE348  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80CFE34C  28 03 00 00 */	cmplwi r3, 0
/* 80CFE350  41 82 00 30 */	beq lbl_80CFE380
/* 80CFE354  7F A4 EB 78 */	mr r4, r29
/* 80CFE358  7F 65 DB 78 */	mr r5, r27
/* 80CFE35C  38 C0 00 01 */	li r6, 1
/* 80CFE360  38 E0 00 02 */	li r7, 2
/* 80CFE364  3D 00 80 D0 */	lis r8, lit_3857@ha /* 0x80CFFCE0@ha */
/* 80CFE368  C0 28 FC E0 */	lfs f1, lit_3857@l(r8)  /* 0x80CFFCE0@l */
/* 80CFE36C  39 00 00 00 */	li r8, 0
/* 80CFE370  39 20 FF FF */	li r9, -1
/* 80CFE374  4B 30 F2 C9 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CFE378  2C 03 00 00 */	cmpwi r3, 0
/* 80CFE37C  40 82 00 0C */	bne lbl_80CFE388
lbl_80CFE380:
/* 80CFE380  38 60 00 00 */	li r3, 0
/* 80CFE384  48 00 02 F4 */	b lbl_80CFE678
lbl_80CFE388:
/* 80CFE388  3C 60 80 D0 */	lis r3, lit_3857@ha /* 0x80CFFCE0@ha */
/* 80CFE38C  C0 03 FC E0 */	lfs f0, lit_3857@l(r3)  /* 0x80CFFCE0@l */
/* 80CFE390  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 80CFE394  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CFE398  7F E3 FB 78 */	mr r3, r31
/* 80CFE39C  4B FF FD 49 */	bl getOnBtkName__Q212daObjSwpush25Act_cFv
/* 80CFE3A0  7C 7C 1B 78 */	mr r28, r3
/* 80CFE3A4  7F E3 FB 78 */	mr r3, r31
/* 80CFE3A8  4B FF FC F1 */	bl getArcName__Q212daObjSwpush25Act_cFv
/* 80CFE3AC  7F 84 E3 78 */	mr r4, r28
/* 80CFE3B0  7F C5 F3 78 */	mr r5, r30
/* 80CFE3B4  38 C0 00 80 */	li r6, 0x80
/* 80CFE3B8  4B 33 DF C5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CFE3BC  7C 7B 1B 78 */	mr r27, r3
/* 80CFE3C0  38 60 00 18 */	li r3, 0x18
/* 80CFE3C4  4B 5D 08 89 */	bl __nw__FUl
/* 80CFE3C8  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CFE3CC  41 82 00 20 */	beq lbl_80CFE3EC
/* 80CFE3D0  3C 80 80 D0 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CFFEE8@ha */
/* 80CFE3D4  38 04 FE E8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CFFEE8@l */
/* 80CFE3D8  90 1C 00 00 */	stw r0, 0(r28)
/* 80CFE3DC  38 80 00 00 */	li r4, 0
/* 80CFE3E0  4B 62 A0 1D */	bl init__12J3DFrameCtrlFs
/* 80CFE3E4  38 00 00 00 */	li r0, 0
/* 80CFE3E8  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80CFE3EC:
/* 80CFE3EC  93 9F 05 B4 */	stw r28, 0x5b4(r31)
/* 80CFE3F0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80CFE3F4  28 03 00 00 */	cmplwi r3, 0
/* 80CFE3F8  41 82 00 30 */	beq lbl_80CFE428
/* 80CFE3FC  7F A4 EB 78 */	mr r4, r29
/* 80CFE400  7F 65 DB 78 */	mr r5, r27
/* 80CFE404  38 C0 00 01 */	li r6, 1
/* 80CFE408  38 E0 00 00 */	li r7, 0
/* 80CFE40C  3D 00 80 D0 */	lis r8, lit_3857@ha /* 0x80CFFCE0@ha */
/* 80CFE410  C0 28 FC E0 */	lfs f1, lit_3857@l(r8)  /* 0x80CFFCE0@l */
/* 80CFE414  39 00 00 00 */	li r8, 0
/* 80CFE418  39 20 FF FF */	li r9, -1
/* 80CFE41C  4B 30 F2 21 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CFE420  2C 03 00 00 */	cmpwi r3, 0
/* 80CFE424  40 82 00 0C */	bne lbl_80CFE430
lbl_80CFE428:
/* 80CFE428  38 60 00 00 */	li r3, 0
/* 80CFE42C  48 00 02 4C */	b lbl_80CFE678
lbl_80CFE430:
/* 80CFE430  3C 60 80 D0 */	lis r3, lit_3858@ha /* 0x80CFFCE4@ha */
/* 80CFE434  C0 03 FC E4 */	lfs f0, lit_3858@l(r3)  /* 0x80CFFCE4@l */
/* 80CFE438  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80CFE43C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CFE440  7F E3 FB 78 */	mr r3, r31
/* 80CFE444  4B FF FC D1 */	bl getRunBtkName__Q212daObjSwpush25Act_cFv
/* 80CFE448  7C 7C 1B 78 */	mr r28, r3
/* 80CFE44C  7F E3 FB 78 */	mr r3, r31
/* 80CFE450  4B FF FC 49 */	bl getArcName__Q212daObjSwpush25Act_cFv
/* 80CFE454  7F 84 E3 78 */	mr r4, r28
/* 80CFE458  7F C5 F3 78 */	mr r5, r30
/* 80CFE45C  38 C0 00 80 */	li r6, 0x80
/* 80CFE460  4B 33 DF 1D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CFE464  7C 7B 1B 78 */	mr r27, r3
/* 80CFE468  38 60 00 18 */	li r3, 0x18
/* 80CFE46C  4B 5D 07 E1 */	bl __nw__FUl
/* 80CFE470  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CFE474  41 82 00 20 */	beq lbl_80CFE494
/* 80CFE478  3C 80 80 D0 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CFFEE8@ha */
/* 80CFE47C  38 04 FE E8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CFFEE8@l */
/* 80CFE480  90 1C 00 00 */	stw r0, 0(r28)
/* 80CFE484  38 80 00 00 */	li r4, 0
/* 80CFE488  4B 62 9F 75 */	bl init__12J3DFrameCtrlFs
/* 80CFE48C  38 00 00 00 */	li r0, 0
/* 80CFE490  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80CFE494:
/* 80CFE494  93 9F 05 AC */	stw r28, 0x5ac(r31)
/* 80CFE498  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CFE49C  28 03 00 00 */	cmplwi r3, 0
/* 80CFE4A0  41 82 00 30 */	beq lbl_80CFE4D0
/* 80CFE4A4  7F A4 EB 78 */	mr r4, r29
/* 80CFE4A8  7F 65 DB 78 */	mr r5, r27
/* 80CFE4AC  38 C0 00 01 */	li r6, 1
/* 80CFE4B0  38 E0 00 00 */	li r7, 0
/* 80CFE4B4  3D 00 80 D0 */	lis r8, lit_3857@ha /* 0x80CFFCE0@ha */
/* 80CFE4B8  C0 28 FC E0 */	lfs f1, lit_3857@l(r8)  /* 0x80CFFCE0@l */
/* 80CFE4BC  39 00 00 00 */	li r8, 0
/* 80CFE4C0  39 20 FF FF */	li r9, -1
/* 80CFE4C4  4B 30 F1 79 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80CFE4C8  2C 03 00 00 */	cmpwi r3, 0
/* 80CFE4CC  40 82 00 0C */	bne lbl_80CFE4D8
lbl_80CFE4D0:
/* 80CFE4D0  38 60 00 00 */	li r3, 0
/* 80CFE4D4  48 00 01 A4 */	b lbl_80CFE678
lbl_80CFE4D8:
/* 80CFE4D8  3C 60 80 D0 */	lis r3, lit_3858@ha /* 0x80CFFCE4@ha */
/* 80CFE4DC  C0 03 FC E4 */	lfs f0, lit_3858@l(r3)  /* 0x80CFFCE4@l */
/* 80CFE4E0  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80CFE4E4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CFE4E8  7F E3 FB 78 */	mr r3, r31
/* 80CFE4EC  4B FF FC 19 */	bl getRunBrkName__Q212daObjSwpush25Act_cFv
/* 80CFE4F0  7C 7C 1B 78 */	mr r28, r3
/* 80CFE4F4  7F E3 FB 78 */	mr r3, r31
/* 80CFE4F8  4B FF FB A1 */	bl getArcName__Q212daObjSwpush25Act_cFv
/* 80CFE4FC  7F 84 E3 78 */	mr r4, r28
/* 80CFE500  7F C5 F3 78 */	mr r5, r30
/* 80CFE504  38 C0 00 80 */	li r6, 0x80
/* 80CFE508  4B 33 DE 75 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CFE50C  7C 7B 1B 78 */	mr r27, r3
/* 80CFE510  38 60 00 18 */	li r3, 0x18
/* 80CFE514  4B 5D 07 39 */	bl __nw__FUl
/* 80CFE518  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CFE51C  41 82 00 20 */	beq lbl_80CFE53C
/* 80CFE520  3C 80 80 D0 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CFFEE8@ha */
/* 80CFE524  38 04 FE E8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CFFEE8@l */
/* 80CFE528  90 1C 00 00 */	stw r0, 0(r28)
/* 80CFE52C  38 80 00 00 */	li r4, 0
/* 80CFE530  4B 62 9E CD */	bl init__12J3DFrameCtrlFs
/* 80CFE534  38 00 00 00 */	li r0, 0
/* 80CFE538  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80CFE53C:
/* 80CFE53C  93 9F 05 B0 */	stw r28, 0x5b0(r31)
/* 80CFE540  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80CFE544  28 03 00 00 */	cmplwi r3, 0
/* 80CFE548  41 82 00 30 */	beq lbl_80CFE578
/* 80CFE54C  7F A4 EB 78 */	mr r4, r29
/* 80CFE550  7F 65 DB 78 */	mr r5, r27
/* 80CFE554  38 C0 00 01 */	li r6, 1
/* 80CFE558  38 E0 00 00 */	li r7, 0
/* 80CFE55C  3D 00 80 D0 */	lis r8, lit_3857@ha /* 0x80CFFCE0@ha */
/* 80CFE560  C0 28 FC E0 */	lfs f1, lit_3857@l(r8)  /* 0x80CFFCE0@l */
/* 80CFE564  39 00 00 00 */	li r8, 0
/* 80CFE568  39 20 FF FF */	li r9, -1
/* 80CFE56C  4B 30 F1 A1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80CFE570  2C 03 00 00 */	cmpwi r3, 0
/* 80CFE574  40 82 00 0C */	bne lbl_80CFE580
lbl_80CFE578:
/* 80CFE578  38 60 00 00 */	li r3, 0
/* 80CFE57C  48 00 00 FC */	b lbl_80CFE678
lbl_80CFE580:
/* 80CFE580  3C 60 80 D0 */	lis r3, lit_3858@ha /* 0x80CFFCE4@ha */
/* 80CFE584  C0 03 FC E4 */	lfs f0, lit_3858@l(r3)  /* 0x80CFFCE4@l */
/* 80CFE588  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80CFE58C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CFE590  7F E3 FB 78 */	mr r3, r31
/* 80CFE594  4B FF FB 61 */	bl getRunBpkName__Q212daObjSwpush25Act_cFv
/* 80CFE598  7C 7C 1B 78 */	mr r28, r3
/* 80CFE59C  7F E3 FB 78 */	mr r3, r31
/* 80CFE5A0  4B FF FA F9 */	bl getArcName__Q212daObjSwpush25Act_cFv
/* 80CFE5A4  7F 84 E3 78 */	mr r4, r28
/* 80CFE5A8  7F C5 F3 78 */	mr r5, r30
/* 80CFE5AC  38 C0 00 80 */	li r6, 0x80
/* 80CFE5B0  4B 33 DD CD */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CFE5B4  7C 7B 1B 78 */	mr r27, r3
/* 80CFE5B8  38 60 00 18 */	li r3, 0x18
/* 80CFE5BC  4B 5D 06 91 */	bl __nw__FUl
/* 80CFE5C0  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CFE5C4  41 82 00 20 */	beq lbl_80CFE5E4
/* 80CFE5C8  3C 80 80 D0 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80CFFEE8@ha */
/* 80CFE5CC  38 04 FE E8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80CFFEE8@l */
/* 80CFE5D0  90 1C 00 00 */	stw r0, 0(r28)
/* 80CFE5D4  38 80 00 00 */	li r4, 0
/* 80CFE5D8  4B 62 9E 25 */	bl init__12J3DFrameCtrlFs
/* 80CFE5DC  38 00 00 00 */	li r0, 0
/* 80CFE5E0  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80CFE5E4:
/* 80CFE5E4  93 9F 05 A8 */	stw r28, 0x5a8(r31)
/* 80CFE5E8  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CFE5EC  28 03 00 00 */	cmplwi r3, 0
/* 80CFE5F0  41 82 00 30 */	beq lbl_80CFE620
/* 80CFE5F4  7F A4 EB 78 */	mr r4, r29
/* 80CFE5F8  7F 65 DB 78 */	mr r5, r27
/* 80CFE5FC  38 C0 00 01 */	li r6, 1
/* 80CFE600  38 E0 00 00 */	li r7, 0
/* 80CFE604  3D 00 80 D0 */	lis r8, lit_3857@ha /* 0x80CFFCE0@ha */
/* 80CFE608  C0 28 FC E0 */	lfs f1, lit_3857@l(r8)  /* 0x80CFFCE0@l */
/* 80CFE60C  39 00 00 00 */	li r8, 0
/* 80CFE610  39 20 FF FF */	li r9, -1
/* 80CFE614  4B 30 EE 69 */	bl init__13mDoExt_bpkAnmFP16J3DMaterialTableP11J3DAnmColoriifss
/* 80CFE618  2C 03 00 00 */	cmpwi r3, 0
/* 80CFE61C  40 82 00 0C */	bne lbl_80CFE628
lbl_80CFE620:
/* 80CFE620  38 60 00 00 */	li r3, 0
/* 80CFE624  48 00 00 54 */	b lbl_80CFE678
lbl_80CFE628:
/* 80CFE628  3C 60 80 D0 */	lis r3, lit_3858@ha /* 0x80CFFCE4@ha */
/* 80CFE62C  C0 03 FC E4 */	lfs f0, lit_3858@l(r3)  /* 0x80CFFCE4@l */
/* 80CFE630  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CFE634  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CFE638  7F E3 FB 78 */	mr r3, r31
/* 80CFE63C  4B FF FA 79 */	bl getDzbName__Q212daObjSwpush25Act_cFv
/* 80CFE640  7C 7C 1B 78 */	mr r28, r3
/* 80CFE644  7F E3 FB 78 */	mr r3, r31
/* 80CFE648  4B FF FA 51 */	bl getArcName__Q212daObjSwpush25Act_cFv
/* 80CFE64C  7F 84 E3 78 */	mr r4, r28
/* 80CFE650  7F C5 F3 78 */	mr r5, r30
/* 80CFE654  38 C0 00 80 */	li r6, 0x80
/* 80CFE658  4B 33 DD 25 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CFE65C  38 80 00 01 */	li r4, 1
/* 80CFE660  38 BF 05 74 */	addi r5, r31, 0x574
/* 80CFE664  4B 37 FE 5D */	bl dBgW_NewSet__FP6cBgD_tUlPA3_A4_f
/* 80CFE668  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80CFE66C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CFE670  30 03 FF FF */	addic r0, r3, -1
/* 80CFE674  7C 60 19 10 */	subfe r3, r0, r3
lbl_80CFE678:
/* 80CFE678  39 61 00 20 */	addi r11, r1, 0x20
/* 80CFE67C  4B 66 3B A5 */	bl _restgpr_27
/* 80CFE680  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CFE684  7C 08 03 A6 */	mtlr r0
/* 80CFE688  38 21 00 20 */	addi r1, r1, 0x20
/* 80CFE68C  4E 80 00 20 */	blr 

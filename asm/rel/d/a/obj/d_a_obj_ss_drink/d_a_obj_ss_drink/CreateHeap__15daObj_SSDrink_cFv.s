lbl_80CE53EC:
/* 80CE53EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE53F0  7C 08 02 A6 */	mflr r0
/* 80CE53F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE53F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE53FC  4B 67 CD D8 */	b _savegpr_27
/* 80CE5400  7C 7D 1B 78 */	mr r29, r3
/* 80CE5404  3C 80 80 CE */	lis r4, l_bmdName@ha
/* 80CE5408  83 84 69 E8 */	lwz r28, l_bmdName@l(r4)
/* 80CE540C  48 00 06 45 */	bl getResName__15daObj_SSDrink_cFv
/* 80CE5410  7F 84 E3 78 */	mr r4, r28
/* 80CE5414  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CE5418  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CE541C  3F C5 00 02 */	addis r30, r5, 2
/* 80CE5420  3B DE C2 F8 */	addi r30, r30, -15624
/* 80CE5424  7F C5 F3 78 */	mr r5, r30
/* 80CE5428  38 C0 00 80 */	li r6, 0x80
/* 80CE542C  4B 35 6F 50 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CE5430  7C 7F 1B 78 */	mr r31, r3
/* 80CE5434  38 80 00 00 */	li r4, 0
/* 80CE5438  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020084@ha */
/* 80CE543C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11020084@l */
/* 80CE5440  4B 32 F8 14 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CE5444  90 7D 05 8C */	stw r3, 0x58c(r29)
/* 80CE5448  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 80CE544C  28 00 00 00 */	cmplwi r0, 0
/* 80CE5450  40 82 00 0C */	bne lbl_80CE545C
/* 80CE5454  38 60 00 00 */	li r3, 0
/* 80CE5458  48 00 01 38 */	b lbl_80CE5590
lbl_80CE545C:
/* 80CE545C  3C 60 80 CE */	lis r3, l_resFileName@ha
/* 80CE5460  38 63 69 E4 */	addi r3, r3, l_resFileName@l
/* 80CE5464  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE5468  3C 80 80 CE */	lis r4, stringBase0@ha
/* 80CE546C  38 84 69 90 */	addi r4, r4, stringBase0@l
/* 80CE5470  38 84 00 16 */	addi r4, r4, 0x16
/* 80CE5474  7F C5 F3 78 */	mr r5, r30
/* 80CE5478  38 C0 00 80 */	li r6, 0x80
/* 80CE547C  4B 35 6F 00 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CE5480  7C 7B 1B 78 */	mr r27, r3
/* 80CE5484  38 60 00 18 */	li r3, 0x18
/* 80CE5488  4B 5E 97 C4 */	b __nw__FUl
/* 80CE548C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CE5490  41 82 00 20 */	beq lbl_80CE54B0
/* 80CE5494  3C 80 80 CE */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80CE5498  38 04 6B 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80CE549C  90 1C 00 00 */	stw r0, 0(r28)
/* 80CE54A0  38 80 00 00 */	li r4, 0
/* 80CE54A4  4B 64 2F 58 */	b init__12J3DFrameCtrlFs
/* 80CE54A8  38 00 00 00 */	li r0, 0
/* 80CE54AC  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80CE54B0:
/* 80CE54B0  93 9D 05 78 */	stw r28, 0x578(r29)
/* 80CE54B4  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80CE54B8  28 03 00 00 */	cmplwi r3, 0
/* 80CE54BC  41 82 00 30 */	beq lbl_80CE54EC
/* 80CE54C0  38 9F 00 58 */	addi r4, r31, 0x58
/* 80CE54C4  7F 65 DB 78 */	mr r5, r27
/* 80CE54C8  38 C0 00 01 */	li r6, 1
/* 80CE54CC  38 E0 00 02 */	li r7, 2
/* 80CE54D0  3D 00 80 CE */	lis r8, lit_4000@ha
/* 80CE54D4  C0 28 69 60 */	lfs f1, lit_4000@l(r8)
/* 80CE54D8  39 00 00 00 */	li r8, 0
/* 80CE54DC  39 20 FF FF */	li r9, -1
/* 80CE54E0  4B 32 80 6C */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80CE54E4  2C 03 00 00 */	cmpwi r3, 0
/* 80CE54E8  40 82 00 0C */	bne lbl_80CE54F4
lbl_80CE54EC:
/* 80CE54EC  38 60 00 00 */	li r3, 0
/* 80CE54F0  48 00 00 A0 */	b lbl_80CE5590
lbl_80CE54F4:
/* 80CE54F4  3C 60 80 CE */	lis r3, l_resFileName@ha
/* 80CE54F8  38 63 69 E4 */	addi r3, r3, l_resFileName@l
/* 80CE54FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CE5500  3C 80 80 CE */	lis r4, stringBase0@ha
/* 80CE5504  38 84 69 90 */	addi r4, r4, stringBase0@l
/* 80CE5508  38 84 00 24 */	addi r4, r4, 0x24
/* 80CE550C  7F C5 F3 78 */	mr r5, r30
/* 80CE5510  38 C0 00 80 */	li r6, 0x80
/* 80CE5514  4B 35 6E 68 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CE5518  7C 7C 1B 78 */	mr r28, r3
/* 80CE551C  38 60 00 18 */	li r3, 0x18
/* 80CE5520  4B 5E 97 2C */	b __nw__FUl
/* 80CE5524  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE5528  41 82 00 20 */	beq lbl_80CE5548
/* 80CE552C  3C 80 80 CE */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80CE5530  38 04 6B 04 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80CE5534  90 1E 00 00 */	stw r0, 0(r30)
/* 80CE5538  38 80 00 00 */	li r4, 0
/* 80CE553C  4B 64 2E C0 */	b init__12J3DFrameCtrlFs
/* 80CE5540  38 00 00 00 */	li r0, 0
/* 80CE5544  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80CE5548:
/* 80CE5548  93 DD 05 7C */	stw r30, 0x57c(r29)
/* 80CE554C  80 7D 05 7C */	lwz r3, 0x57c(r29)
/* 80CE5550  28 03 00 00 */	cmplwi r3, 0
/* 80CE5554  41 82 00 30 */	beq lbl_80CE5584
/* 80CE5558  38 9F 00 58 */	addi r4, r31, 0x58
/* 80CE555C  7F 85 E3 78 */	mr r5, r28
/* 80CE5560  38 C0 00 01 */	li r6, 1
/* 80CE5564  38 E0 00 02 */	li r7, 2
/* 80CE5568  3D 00 80 CE */	lis r8, lit_4000@ha
/* 80CE556C  C0 28 69 60 */	lfs f1, lit_4000@l(r8)
/* 80CE5570  39 00 00 00 */	li r8, 0
/* 80CE5574  39 20 FF FF */	li r9, -1
/* 80CE5578  4B 32 81 94 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80CE557C  2C 03 00 00 */	cmpwi r3, 0
/* 80CE5580  40 82 00 0C */	bne lbl_80CE558C
lbl_80CE5584:
/* 80CE5584  38 60 00 00 */	li r3, 0
/* 80CE5588  48 00 00 08 */	b lbl_80CE5590
lbl_80CE558C:
/* 80CE558C  38 60 00 01 */	li r3, 1
lbl_80CE5590:
/* 80CE5590  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE5594  4B 67 CC 8C */	b _restgpr_27
/* 80CE5598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE559C  7C 08 03 A6 */	mtlr r0
/* 80CE55A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE55A4  4E 80 00 20 */	blr 

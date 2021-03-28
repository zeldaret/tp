lbl_807A542C:
/* 807A542C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807A5430  7C 08 02 A6 */	mflr r0
/* 807A5434  90 01 00 34 */	stw r0, 0x34(r1)
/* 807A5438  39 61 00 30 */	addi r11, r1, 0x30
/* 807A543C  4B BB CD 98 */	b _savegpr_27
/* 807A5440  7C 7F 1B 78 */	mr r31, r3
/* 807A5444  3C 60 80 7A */	lis r3, small@ha
/* 807A5448  80 03 6D E0 */	lwz r0, small@l(r3)
/* 807A544C  20 00 00 00 */	subfic r0, r0, 0
/* 807A5450  7C 60 01 10 */	subfe r3, r0, r0
/* 807A5454  3B C3 00 29 */	addi r30, r3, 0x29
/* 807A5458  38 60 00 58 */	li r3, 0x58
/* 807A545C  4B B2 97 F0 */	b __nw__FUl
/* 807A5460  7C 7D 1B 79 */	or. r29, r3, r3
/* 807A5464  41 82 00 94 */	beq lbl_807A54F8
/* 807A5468  3C 60 80 7A */	lis r3, stringBase0@ha
/* 807A546C  38 63 69 E0 */	addi r3, r3, stringBase0@l
/* 807A5470  38 80 00 22 */	li r4, 0x22
/* 807A5474  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807A5478  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807A547C  3F 65 00 02 */	addis r27, r5, 2
/* 807A5480  3B 7B C2 F8 */	addi r27, r27, -15624
/* 807A5484  7F 65 DB 78 */	mr r5, r27
/* 807A5488  38 C0 00 80 */	li r6, 0x80
/* 807A548C  4B 89 6E 60 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807A5490  7C 7C 1B 78 */	mr r28, r3
/* 807A5494  3C 60 80 7A */	lis r3, stringBase0@ha
/* 807A5498  38 63 69 E0 */	addi r3, r3, stringBase0@l
/* 807A549C  7F C4 F3 78 */	mr r4, r30
/* 807A54A0  7F 65 DB 78 */	mr r5, r27
/* 807A54A4  38 C0 00 80 */	li r6, 0x80
/* 807A54A8  4B 89 6E 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807A54AC  7C 64 1B 78 */	mr r4, r3
/* 807A54B0  38 1F 05 D0 */	addi r0, r31, 0x5d0
/* 807A54B4  90 01 00 08 */	stw r0, 8(r1)
/* 807A54B8  3C 00 00 08 */	lis r0, 8
/* 807A54BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 807A54C0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807A54C4  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807A54C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 807A54CC  7F A3 EB 78 */	mr r3, r29
/* 807A54D0  38 A0 00 00 */	li r5, 0
/* 807A54D4  38 C0 00 00 */	li r6, 0
/* 807A54D8  7F 87 E3 78 */	mr r7, r28
/* 807A54DC  39 00 00 00 */	li r8, 0
/* 807A54E0  3D 20 80 7A */	lis r9, lit_3905@ha
/* 807A54E4  C0 29 68 2C */	lfs f1, lit_3905@l(r9)
/* 807A54E8  39 20 00 00 */	li r9, 0
/* 807A54EC  39 40 FF FF */	li r10, -1
/* 807A54F0  4B 86 B2 E0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807A54F4  7C 7D 1B 78 */	mr r29, r3
lbl_807A54F8:
/* 807A54F8  93 BF 05 CC */	stw r29, 0x5cc(r31)
/* 807A54FC  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A5500  28 03 00 00 */	cmplwi r3, 0
/* 807A5504  41 82 00 10 */	beq lbl_807A5514
/* 807A5508  80 03 00 04 */	lwz r0, 4(r3)
/* 807A550C  28 00 00 00 */	cmplwi r0, 0
/* 807A5510  40 82 00 0C */	bne lbl_807A551C
lbl_807A5514:
/* 807A5514  38 60 00 00 */	li r3, 0
/* 807A5518  48 00 00 E8 */	b lbl_807A5600
lbl_807A551C:
/* 807A551C  88 1F 07 20 */	lbz r0, 0x720(r31)
/* 807A5520  7C 00 07 75 */	extsb. r0, r0
/* 807A5524  41 82 00 94 */	beq lbl_807A55B8
/* 807A5528  38 7F 07 28 */	addi r3, r31, 0x728
/* 807A552C  38 80 00 01 */	li r4, 1
/* 807A5530  38 A0 00 14 */	li r5, 0x14
/* 807A5534  38 C0 00 01 */	li r6, 1
/* 807A5538  4B 86 D0 A8 */	b init__19mDoExt_3DlineMat0_cFUsUsi
/* 807A553C  2C 03 00 00 */	cmpwi r3, 0
/* 807A5540  40 82 00 0C */	bne lbl_807A554C
/* 807A5544  38 60 00 00 */	li r3, 0
/* 807A5548  48 00 00 B8 */	b lbl_807A5600
lbl_807A554C:
/* 807A554C  80 7F 07 40 */	lwz r3, 0x740(r31)
/* 807A5550  80 83 00 04 */	lwz r4, 4(r3)
/* 807A5554  3C 60 80 7A */	lis r3, lit_4268@ha
/* 807A5558  C0 03 68 84 */	lfs f0, lit_4268@l(r3)
/* 807A555C  38 00 00 14 */	li r0, 0x14
/* 807A5560  7C 09 03 A6 */	mtctr r0
lbl_807A5564:
/* 807A5564  D0 04 00 00 */	stfs f0, 0(r4)
/* 807A5568  38 84 00 04 */	addi r4, r4, 4
/* 807A556C  42 00 FF F8 */	bdnz lbl_807A5564
/* 807A5570  38 7F 07 68 */	addi r3, r31, 0x768
/* 807A5574  38 80 00 01 */	li r4, 1
/* 807A5578  38 A0 00 14 */	li r5, 0x14
/* 807A557C  38 C0 00 01 */	li r6, 1
/* 807A5580  4B 86 D0 60 */	b init__19mDoExt_3DlineMat0_cFUsUsi
/* 807A5584  2C 03 00 00 */	cmpwi r3, 0
/* 807A5588  40 82 00 0C */	bne lbl_807A5594
/* 807A558C  38 60 00 00 */	li r3, 0
/* 807A5590  48 00 00 70 */	b lbl_807A5600
lbl_807A5594:
/* 807A5594  80 7F 07 80 */	lwz r3, 0x780(r31)
/* 807A5598  80 83 00 04 */	lwz r4, 4(r3)
/* 807A559C  3C 60 80 7A */	lis r3, lit_4268@ha
/* 807A55A0  C0 03 68 84 */	lfs f0, lit_4268@l(r3)
/* 807A55A4  38 00 00 14 */	li r0, 0x14
/* 807A55A8  7C 09 03 A6 */	mtctr r0
lbl_807A55AC:
/* 807A55AC  D0 04 00 00 */	stfs f0, 0(r4)
/* 807A55B0  38 84 00 04 */	addi r4, r4, 4
/* 807A55B4  42 00 FF F8 */	bdnz lbl_807A55AC
lbl_807A55B8:
/* 807A55B8  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A55BC  80 A3 00 04 */	lwz r5, 4(r3)
/* 807A55C0  93 E5 00 14 */	stw r31, 0x14(r5)
/* 807A55C4  38 E0 00 00 */	li r7, 0
/* 807A55C8  3C 60 80 7A */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 807A55CC  38 83 DE F8 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 807A55D0  48 00 00 18 */	b lbl_807A55E8
lbl_807A55D4:
/* 807A55D4  80 66 00 28 */	lwz r3, 0x28(r6)
/* 807A55D8  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 807A55DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 807A55E0  90 83 00 04 */	stw r4, 4(r3)
/* 807A55E4  38 E7 00 01 */	addi r7, r7, 1
lbl_807A55E8:
/* 807A55E8  80 C5 00 04 */	lwz r6, 4(r5)
/* 807A55EC  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 807A55F0  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 807A55F4  7C 00 18 40 */	cmplw r0, r3
/* 807A55F8  41 80 FF DC */	blt lbl_807A55D4
/* 807A55FC  38 60 00 01 */	li r3, 1
lbl_807A5600:
/* 807A5600  39 61 00 30 */	addi r11, r1, 0x30
/* 807A5604  4B BB CC 1C */	b _restgpr_27
/* 807A5608  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807A560C  7C 08 03 A6 */	mtlr r0
/* 807A5610  38 21 00 30 */	addi r1, r1, 0x30
/* 807A5614  4E 80 00 20 */	blr 

lbl_809AE354:
/* 809AE354  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 809AE358  7C 08 02 A6 */	mflr r0
/* 809AE35C  90 01 00 54 */	stw r0, 0x54(r1)
/* 809AE360  39 61 00 50 */	addi r11, r1, 0x50
/* 809AE364  4B 9B 3E 78 */	b _savegpr_29
/* 809AE368  7C 7E 1B 78 */	mr r30, r3
/* 809AE36C  88 03 0D 39 */	lbz r0, 0xd39(r3)
/* 809AE370  54 00 10 3A */	slwi r0, r0, 2
/* 809AE374  3C 60 80 9B */	lis r3, l_arcNames@ha
/* 809AE378  38 63 FA EC */	addi r3, r3, l_arcNames@l
/* 809AE37C  7C 63 00 2E */	lwzx r3, r3, r0
/* 809AE380  3C 80 80 9B */	lis r4, l_bmdGetParamList@ha
/* 809AE384  38 84 FA CC */	addi r4, r4, l_bmdGetParamList@l
/* 809AE388  7C 84 00 2E */	lwzx r4, r4, r0
/* 809AE38C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809AE390  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809AE394  3F E5 00 02 */	addis r31, r5, 2
/* 809AE398  3B FF C2 F8 */	addi r31, r31, -15624
/* 809AE39C  7F E5 FB 78 */	mr r5, r31
/* 809AE3A0  38 C0 00 80 */	li r6, 0x80
/* 809AE3A4  4B 68 DF 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809AE3A8  7C 7D 1B 78 */	mr r29, r3
/* 809AE3AC  38 60 00 58 */	li r3, 0x58
/* 809AE3B0  4B 92 08 9C */	b __nw__FUl
/* 809AE3B4  7C 60 1B 79 */	or. r0, r3, r3
/* 809AE3B8  41 82 00 4C */	beq lbl_809AE404
/* 809AE3BC  38 1E 0B 48 */	addi r0, r30, 0xb48
/* 809AE3C0  90 01 00 08 */	stw r0, 8(r1)
/* 809AE3C4  3C 00 00 08 */	lis r0, 8
/* 809AE3C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809AE3CC  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020084@ha */
/* 809AE3D0  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11020084@l */
/* 809AE3D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 809AE3D8  7F A4 EB 78 */	mr r4, r29
/* 809AE3DC  38 A0 00 00 */	li r5, 0
/* 809AE3E0  38 C0 00 00 */	li r6, 0
/* 809AE3E4  38 E0 00 00 */	li r7, 0
/* 809AE3E8  39 00 FF FF */	li r8, -1
/* 809AE3EC  3D 20 80 9B */	lis r9, lit_4190@ha
/* 809AE3F0  C0 29 FA 38 */	lfs f1, lit_4190@l(r9)
/* 809AE3F4  39 20 00 00 */	li r9, 0
/* 809AE3F8  39 40 FF FF */	li r10, -1
/* 809AE3FC  4B 66 23 D4 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809AE400  7C 60 1B 78 */	mr r0, r3
lbl_809AE404:
/* 809AE404  90 1E 05 68 */	stw r0, 0x568(r30)
/* 809AE408  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809AE40C  28 03 00 00 */	cmplwi r3, 0
/* 809AE410  41 82 00 1C */	beq lbl_809AE42C
/* 809AE414  80 03 00 04 */	lwz r0, 4(r3)
/* 809AE418  28 00 00 00 */	cmplwi r0, 0
/* 809AE41C  40 82 00 10 */	bne lbl_809AE42C
/* 809AE420  4B 66 2E F0 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809AE424  38 00 00 00 */	li r0, 0
/* 809AE428  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_809AE42C:
/* 809AE42C  80 1E 05 68 */	lwz r0, 0x568(r30)
/* 809AE430  28 00 00 00 */	cmplwi r0, 0
/* 809AE434  40 82 00 0C */	bne lbl_809AE440
/* 809AE438  38 60 00 00 */	li r3, 0
/* 809AE43C  48 00 00 C8 */	b lbl_809AE504
lbl_809AE440:
/* 809AE440  38 A1 00 20 */	addi r5, r1, 0x20
/* 809AE444  3C 60 80 9B */	lis r3, lit_4153@ha
/* 809AE448  38 63 FA 20 */	addi r3, r3, lit_4153@l
/* 809AE44C  38 83 FF FC */	addi r4, r3, -4
/* 809AE450  38 00 00 03 */	li r0, 3
/* 809AE454  7C 09 03 A6 */	mtctr r0
lbl_809AE458:
/* 809AE458  80 64 00 04 */	lwz r3, 4(r4)
/* 809AE45C  84 04 00 08 */	lwzu r0, 8(r4)
/* 809AE460  90 65 00 04 */	stw r3, 4(r5)
/* 809AE464  94 05 00 08 */	stwu r0, 8(r5)
/* 809AE468  42 00 FF F0 */	bdnz lbl_809AE458
/* 809AE46C  88 1E 0D 39 */	lbz r0, 0xd39(r30)
/* 809AE470  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809AE474  38 61 00 24 */	addi r3, r1, 0x24
/* 809AE478  7C 63 02 14 */	add r3, r3, r0
/* 809AE47C  C0 43 00 00 */	lfs f2, 0(r3)
/* 809AE480  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 809AE484  C0 23 00 04 */	lfs f1, 4(r3)
/* 809AE488  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 809AE48C  C0 03 00 08 */	lfs f0, 8(r3)
/* 809AE490  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809AE494  38 00 00 01 */	li r0, 1
/* 809AE498  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809AE49C  98 03 00 54 */	stb r0, 0x54(r3)
/* 809AE4A0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809AE4A4  D0 43 00 40 */	stfs f2, 0x40(r3)
/* 809AE4A8  D0 23 00 44 */	stfs f1, 0x44(r3)
/* 809AE4AC  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 809AE4B0  88 1E 0D 39 */	lbz r0, 0xd39(r30)
/* 809AE4B4  28 00 00 00 */	cmplwi r0, 0
/* 809AE4B8  40 82 00 48 */	bne lbl_809AE500
/* 809AE4BC  3C 60 80 9B */	lis r3, l_arcNames@ha
/* 809AE4C0  38 63 FA EC */	addi r3, r3, l_arcNames@l
/* 809AE4C4  80 63 00 00 */	lwz r3, 0(r3)
/* 809AE4C8  38 80 00 08 */	li r4, 8
/* 809AE4CC  7F E5 FB 78 */	mr r5, r31
/* 809AE4D0  38 C0 00 80 */	li r6, 0x80
/* 809AE4D4  4B 68 DE 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809AE4D8  3C 80 00 08 */	lis r4, 8
/* 809AE4DC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 809AE4E0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 809AE4E4  4B 66 67 70 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 809AE4E8  90 7E 0B D8 */	stw r3, 0xbd8(r30)
/* 809AE4EC  80 1E 0B D8 */	lwz r0, 0xbd8(r30)
/* 809AE4F0  28 00 00 00 */	cmplwi r0, 0
/* 809AE4F4  40 82 00 0C */	bne lbl_809AE500
/* 809AE4F8  38 60 00 00 */	li r3, 0
/* 809AE4FC  48 00 00 08 */	b lbl_809AE504
lbl_809AE500:
/* 809AE500  38 60 00 01 */	li r3, 1
lbl_809AE504:
/* 809AE504  39 61 00 50 */	addi r11, r1, 0x50
/* 809AE508  4B 9B 3D 20 */	b _restgpr_29
/* 809AE50C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809AE510  7C 08 03 A6 */	mtlr r0
/* 809AE514  38 21 00 50 */	addi r1, r1, 0x50
/* 809AE518  4E 80 00 20 */	blr 

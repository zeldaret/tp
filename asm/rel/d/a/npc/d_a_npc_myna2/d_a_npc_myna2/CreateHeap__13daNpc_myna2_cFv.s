lbl_80A845AC:
/* 80A845AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A845B0  7C 08 02 A6 */	mflr r0
/* 80A845B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A845B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A845BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A845C0  7C 7F 1B 78 */	mr r31, r3
/* 80A845C4  3B C0 00 00 */	li r30, 0
/* 80A845C8  3C 60 80 A9 */	lis r3, l_bmdGetParamList@ha
/* 80A845CC  84 83 86 D4 */	lwzu r4, l_bmdGetParamList@l(r3)
/* 80A845D0  2C 04 00 00 */	cmpwi r4, 0
/* 80A845D4  41 80 00 34 */	blt lbl_80A84608
/* 80A845D8  80 03 00 04 */	lwz r0, 4(r3)
/* 80A845DC  54 00 10 3A */	slwi r0, r0, 2
/* 80A845E0  3C 60 80 A9 */	lis r3, l_resNames@ha
/* 80A845E4  38 63 87 DC */	addi r3, r3, l_resNames@l
/* 80A845E8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A845EC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A845F0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A845F4  3C A5 00 02 */	addis r5, r5, 2
/* 80A845F8  38 C0 00 80 */	li r6, 0x80
/* 80A845FC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A84600  4B 5B 7C EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A84604  7C 7E 1B 78 */	mr r30, r3
lbl_80A84608:
/* 80A84608  38 60 00 58 */	li r3, 0x58
/* 80A8460C  4B 84 A6 40 */	b __nw__FUl
/* 80A84610  7C 60 1B 79 */	or. r0, r3, r3
/* 80A84614  41 82 00 4C */	beq lbl_80A84660
/* 80A84618  38 1F 0B E8 */	addi r0, r31, 0xbe8
/* 80A8461C  90 01 00 08 */	stw r0, 8(r1)
/* 80A84620  3C 00 00 08 */	lis r0, 8
/* 80A84624  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A84628  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A8462C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A84630  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A84634  7F C4 F3 78 */	mr r4, r30
/* 80A84638  38 A0 00 00 */	li r5, 0
/* 80A8463C  38 C0 00 00 */	li r6, 0
/* 80A84640  38 E0 00 00 */	li r7, 0
/* 80A84644  39 00 FF FF */	li r8, -1
/* 80A84648  3D 20 80 A9 */	lis r9, lit_4462@ha
/* 80A8464C  C0 29 84 CC */	lfs f1, lit_4462@l(r9)
/* 80A84650  39 20 00 00 */	li r9, 0
/* 80A84654  39 40 FF FF */	li r10, -1
/* 80A84658  4B 58 C1 78 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A8465C  7C 60 1B 78 */	mr r0, r3
lbl_80A84660:
/* 80A84660  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80A84664  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A84668  28 03 00 00 */	cmplwi r3, 0
/* 80A8466C  41 82 00 1C */	beq lbl_80A84688
/* 80A84670  80 03 00 04 */	lwz r0, 4(r3)
/* 80A84674  28 00 00 00 */	cmplwi r0, 0
/* 80A84678  40 82 00 10 */	bne lbl_80A84688
/* 80A8467C  4B 58 CC 94 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A84680  38 00 00 00 */	li r0, 0
/* 80A84684  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80A84688:
/* 80A84688  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80A8468C  28 03 00 00 */	cmplwi r3, 0
/* 80A84690  40 82 00 0C */	bne lbl_80A8469C
/* 80A84694  38 60 00 00 */	li r3, 0
/* 80A84698  48 00 00 30 */	b lbl_80A846C8
lbl_80A8469C:
/* 80A8469C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A846A0  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80A846A4  7F E3 FB 78 */	mr r3, r31
/* 80A846A8  38 80 00 00 */	li r4, 0
/* 80A846AC  3C A0 80 A9 */	lis r5, lit_4463@ha
/* 80A846B0  C0 25 84 D0 */	lfs f1, lit_4463@l(r5)
/* 80A846B4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A846B8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80A846BC  7D 89 03 A6 */	mtctr r12
/* 80A846C0  4E 80 04 21 */	bctrl 
/* 80A846C4  38 60 00 01 */	li r3, 1
lbl_80A846C8:
/* 80A846C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A846CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A846D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A846D4  7C 08 03 A6 */	mtlr r0
/* 80A846D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A846DC  4E 80 00 20 */	blr 

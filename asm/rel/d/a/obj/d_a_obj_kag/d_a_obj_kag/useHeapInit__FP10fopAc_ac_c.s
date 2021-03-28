lbl_80C2E4D8:
/* 80C2E4D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C2E4DC  7C 08 02 A6 */	mflr r0
/* 80C2E4E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C2E4E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C2E4E8  4B 73 3C EC */	b _savegpr_27
/* 80C2E4EC  7C 7F 1B 78 */	mr r31, r3
/* 80C2E4F0  3C 60 80 C3 */	lis r3, lit_3774@ha
/* 80C2E4F4  3B C3 11 4C */	addi r30, r3, lit_3774@l
/* 80C2E4F8  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2E4FC  38 63 12 60 */	addi r3, r3, stringBase0@l
/* 80C2E500  38 80 00 0A */	li r4, 0xa
/* 80C2E504  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C2E508  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C2E50C  3F A5 00 02 */	addis r29, r5, 2
/* 80C2E510  3B BD C2 F8 */	addi r29, r29, -15624
/* 80C2E514  7F A5 EB 78 */	mr r5, r29
/* 80C2E518  38 C0 00 80 */	li r6, 0x80
/* 80C2E51C  4B 40 DD D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2E520  7C 7B 1B 78 */	mr r27, r3
/* 80C2E524  38 60 00 58 */	li r3, 0x58
/* 80C2E528  4B 6A 07 24 */	b __nw__FUl
/* 80C2E52C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C2E530  41 82 00 64 */	beq lbl_80C2E594
/* 80C2E534  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2E538  38 63 12 60 */	addi r3, r3, stringBase0@l
/* 80C2E53C  38 80 00 06 */	li r4, 6
/* 80C2E540  7F A5 EB 78 */	mr r5, r29
/* 80C2E544  38 C0 00 80 */	li r6, 0x80
/* 80C2E548  4B 40 DD A4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2E54C  7C 67 1B 78 */	mr r7, r3
/* 80C2E550  38 1F 05 98 */	addi r0, r31, 0x598
/* 80C2E554  90 01 00 08 */	stw r0, 8(r1)
/* 80C2E558  38 00 00 00 */	li r0, 0
/* 80C2E55C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C2E560  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80C2E564  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80C2E568  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C2E56C  7F 83 E3 78 */	mr r3, r28
/* 80C2E570  7F 64 DB 78 */	mr r4, r27
/* 80C2E574  38 A0 00 00 */	li r5, 0
/* 80C2E578  38 C0 00 00 */	li r6, 0
/* 80C2E57C  39 00 00 02 */	li r8, 2
/* 80C2E580  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80C2E584  39 20 00 00 */	li r9, 0
/* 80C2E588  39 40 FF FF */	li r10, -1
/* 80C2E58C  4B 3E 22 44 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80C2E590  7C 7C 1B 78 */	mr r28, r3
lbl_80C2E594:
/* 80C2E594  93 9F 06 28 */	stw r28, 0x628(r31)
/* 80C2E598  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80C2E59C  28 03 00 00 */	cmplwi r3, 0
/* 80C2E5A0  41 82 00 10 */	beq lbl_80C2E5B0
/* 80C2E5A4  83 83 00 04 */	lwz r28, 4(r3)
/* 80C2E5A8  28 1C 00 00 */	cmplwi r28, 0
/* 80C2E5AC  40 82 00 0C */	bne lbl_80C2E5B8
lbl_80C2E5B0:
/* 80C2E5B0  38 60 00 00 */	li r3, 0
/* 80C2E5B4  48 00 01 48 */	b lbl_80C2E6FC
lbl_80C2E5B8:
/* 80C2E5B8  38 60 00 18 */	li r3, 0x18
/* 80C2E5BC  4B 6A 06 90 */	b __nw__FUl
/* 80C2E5C0  7C 7B 1B 79 */	or. r27, r3, r3
/* 80C2E5C4  41 82 00 20 */	beq lbl_80C2E5E4
/* 80C2E5C8  3C 80 80 C3 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C2E5CC  38 04 14 10 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C2E5D0  90 1B 00 00 */	stw r0, 0(r27)
/* 80C2E5D4  38 80 00 00 */	li r4, 0
/* 80C2E5D8  4B 6F 9E 24 */	b init__12J3DFrameCtrlFs
/* 80C2E5DC  38 00 00 00 */	li r0, 0
/* 80C2E5E0  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80C2E5E4:
/* 80C2E5E4  93 7F 06 2C */	stw r27, 0x62c(r31)
/* 80C2E5E8  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 80C2E5EC  28 00 00 00 */	cmplwi r0, 0
/* 80C2E5F0  40 82 00 0C */	bne lbl_80C2E5FC
/* 80C2E5F4  38 60 00 00 */	li r3, 0
/* 80C2E5F8  48 00 01 04 */	b lbl_80C2E6FC
lbl_80C2E5FC:
/* 80C2E5FC  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2E600  38 63 12 60 */	addi r3, r3, stringBase0@l
/* 80C2E604  88 1F 08 5D */	lbz r0, 0x85d(r31)
/* 80C2E608  54 00 10 3A */	slwi r0, r0, 2
/* 80C2E60C  38 9E 00 04 */	addi r4, r30, 4
/* 80C2E610  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C2E614  7F A5 EB 78 */	mr r5, r29
/* 80C2E618  38 C0 00 80 */	li r6, 0x80
/* 80C2E61C  4B 40 DC D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2E620  7C 65 1B 78 */	mr r5, r3
/* 80C2E624  80 9C 00 04 */	lwz r4, 4(r28)
/* 80C2E628  80 7F 06 2C */	lwz r3, 0x62c(r31)
/* 80C2E62C  38 84 00 58 */	addi r4, r4, 0x58
/* 80C2E630  38 C0 00 01 */	li r6, 1
/* 80C2E634  38 E0 00 02 */	li r7, 2
/* 80C2E638  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80C2E63C  39 00 00 00 */	li r8, 0
/* 80C2E640  39 20 FF FF */	li r9, -1
/* 80C2E644  4B 3D F0 C8 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80C2E648  2C 03 00 00 */	cmpwi r3, 0
/* 80C2E64C  40 82 00 0C */	bne lbl_80C2E658
/* 80C2E650  38 60 00 00 */	li r3, 0
/* 80C2E654  48 00 00 A8 */	b lbl_80C2E6FC
lbl_80C2E658:
/* 80C2E658  38 60 00 18 */	li r3, 0x18
/* 80C2E65C  4B 6A 05 F0 */	b __nw__FUl
/* 80C2E660  7C 7B 1B 79 */	or. r27, r3, r3
/* 80C2E664  41 82 00 20 */	beq lbl_80C2E684
/* 80C2E668  3C 80 80 C3 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C2E66C  38 04 14 10 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C2E670  90 1B 00 00 */	stw r0, 0(r27)
/* 80C2E674  38 80 00 00 */	li r4, 0
/* 80C2E678  4B 6F 9D 84 */	b init__12J3DFrameCtrlFs
/* 80C2E67C  38 00 00 00 */	li r0, 0
/* 80C2E680  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80C2E684:
/* 80C2E684  93 7F 06 30 */	stw r27, 0x630(r31)
/* 80C2E688  80 1F 06 30 */	lwz r0, 0x630(r31)
/* 80C2E68C  28 00 00 00 */	cmplwi r0, 0
/* 80C2E690  40 82 00 0C */	bne lbl_80C2E69C
/* 80C2E694  38 60 00 00 */	li r3, 0
/* 80C2E698  48 00 00 64 */	b lbl_80C2E6FC
lbl_80C2E69C:
/* 80C2E69C  3C 60 80 C3 */	lis r3, stringBase0@ha
/* 80C2E6A0  38 63 12 60 */	addi r3, r3, stringBase0@l
/* 80C2E6A4  88 1F 08 5D */	lbz r0, 0x85d(r31)
/* 80C2E6A8  54 00 10 3A */	slwi r0, r0, 2
/* 80C2E6AC  38 9E 00 0C */	addi r4, r30, 0xc
/* 80C2E6B0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C2E6B4  7F A5 EB 78 */	mr r5, r29
/* 80C2E6B8  38 C0 00 80 */	li r6, 0x80
/* 80C2E6BC  4B 40 DC 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C2E6C0  7C 65 1B 78 */	mr r5, r3
/* 80C2E6C4  80 9C 00 04 */	lwz r4, 4(r28)
/* 80C2E6C8  80 7F 06 30 */	lwz r3, 0x630(r31)
/* 80C2E6CC  38 84 00 58 */	addi r4, r4, 0x58
/* 80C2E6D0  38 C0 00 01 */	li r6, 1
/* 80C2E6D4  38 E0 00 02 */	li r7, 2
/* 80C2E6D8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 80C2E6DC  39 00 00 00 */	li r8, 0
/* 80C2E6E0  39 20 FF FF */	li r9, -1
/* 80C2E6E4  4B 3D EF 58 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80C2E6E8  2C 03 00 00 */	cmpwi r3, 0
/* 80C2E6EC  40 82 00 0C */	bne lbl_80C2E6F8
/* 80C2E6F0  38 60 00 00 */	li r3, 0
/* 80C2E6F4  48 00 00 08 */	b lbl_80C2E6FC
lbl_80C2E6F8:
/* 80C2E6F8  38 60 00 01 */	li r3, 1
lbl_80C2E6FC:
/* 80C2E6FC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C2E700  4B 73 3B 20 */	b _restgpr_27
/* 80C2E704  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C2E708  7C 08 03 A6 */	mtlr r0
/* 80C2E70C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C2E710  4E 80 00 20 */	blr 

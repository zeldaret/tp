lbl_8082E4E4:
/* 8082E4E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8082E4E8  7C 08 02 A6 */	mflr r0
/* 8082E4EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8082E4F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8082E4F4  4B B3 3C E4 */	b _savegpr_28
/* 8082E4F8  7C 7E 1B 78 */	mr r30, r3
/* 8082E4FC  3C 60 80 83 */	lis r3, stringBase0@ha
/* 8082E500  38 63 F4 10 */	addi r3, r3, stringBase0@l
/* 8082E504  38 80 00 13 */	li r4, 0x13
/* 8082E508  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8082E50C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8082E510  3F E5 00 02 */	addis r31, r5, 2
/* 8082E514  3B FF C2 F8 */	addi r31, r31, -15624
/* 8082E518  7F E5 FB 78 */	mr r5, r31
/* 8082E51C  38 C0 00 80 */	li r6, 0x80
/* 8082E520  4B 80 DD CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8082E524  7C 7C 1B 78 */	mr r28, r3
/* 8082E528  38 60 00 58 */	li r3, 0x58
/* 8082E52C  4B AA 07 20 */	b __nw__FUl
/* 8082E530  7C 7D 1B 79 */	or. r29, r3, r3
/* 8082E534  41 82 00 68 */	beq lbl_8082E59C
/* 8082E538  3C 60 80 83 */	lis r3, stringBase0@ha
/* 8082E53C  38 63 F4 10 */	addi r3, r3, stringBase0@l
/* 8082E540  38 80 00 0F */	li r4, 0xf
/* 8082E544  7F E5 FB 78 */	mr r5, r31
/* 8082E548  38 C0 00 80 */	li r6, 0x80
/* 8082E54C  4B 80 DD A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8082E550  7C 67 1B 78 */	mr r7, r3
/* 8082E554  38 1E 05 C0 */	addi r0, r30, 0x5c0
/* 8082E558  90 01 00 08 */	stw r0, 8(r1)
/* 8082E55C  38 00 00 00 */	li r0, 0
/* 8082E560  90 01 00 0C */	stw r0, 0xc(r1)
/* 8082E564  3C 60 31 00 */	lis r3, 0x3100 /* 0x31000284@ha */
/* 8082E568  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x31000284@l */
/* 8082E56C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8082E570  7F A3 EB 78 */	mr r3, r29
/* 8082E574  7F 84 E3 78 */	mr r4, r28
/* 8082E578  38 A0 00 00 */	li r5, 0
/* 8082E57C  38 C0 00 00 */	li r6, 0
/* 8082E580  39 00 00 02 */	li r8, 2
/* 8082E584  3D 20 80 83 */	lis r9, lit_3778@ha
/* 8082E588  C0 29 F2 08 */	lfs f1, lit_3778@l(r9)
/* 8082E58C  39 20 00 00 */	li r9, 0
/* 8082E590  39 40 FF FF */	li r10, -1
/* 8082E594  4B 7E 22 3C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8082E598  7C 7D 1B 78 */	mr r29, r3
lbl_8082E59C:
/* 8082E59C  93 BE 05 B4 */	stw r29, 0x5b4(r30)
/* 8082E5A0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082E5A4  28 03 00 00 */	cmplwi r3, 0
/* 8082E5A8  41 82 00 10 */	beq lbl_8082E5B8
/* 8082E5AC  80 03 00 04 */	lwz r0, 4(r3)
/* 8082E5B0  28 00 00 00 */	cmplwi r0, 0
/* 8082E5B4  40 82 00 0C */	bne lbl_8082E5C0
lbl_8082E5B8:
/* 8082E5B8  38 60 00 00 */	li r3, 0
/* 8082E5BC  48 00 00 F4 */	b lbl_8082E6B0
lbl_8082E5C0:
/* 8082E5C0  38 60 00 18 */	li r3, 0x18
/* 8082E5C4  4B AA 06 88 */	b __nw__FUl
/* 8082E5C8  7C 7D 1B 79 */	or. r29, r3, r3
/* 8082E5CC  41 82 00 20 */	beq lbl_8082E5EC
/* 8082E5D0  3C 80 80 83 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8082E5D4  38 04 F6 C8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8082E5D8  90 1D 00 00 */	stw r0, 0(r29)
/* 8082E5DC  38 80 00 00 */	li r4, 0
/* 8082E5E0  4B AF 9E 1C */	b init__12J3DFrameCtrlFs
/* 8082E5E4  38 00 00 00 */	li r0, 0
/* 8082E5E8  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8082E5EC:
/* 8082E5EC  93 BE 05 BC */	stw r29, 0x5bc(r30)
/* 8082E5F0  80 1E 05 BC */	lwz r0, 0x5bc(r30)
/* 8082E5F4  28 00 00 00 */	cmplwi r0, 0
/* 8082E5F8  40 82 00 0C */	bne lbl_8082E604
/* 8082E5FC  38 60 00 00 */	li r3, 0
/* 8082E600  48 00 00 B0 */	b lbl_8082E6B0
lbl_8082E604:
/* 8082E604  3C 60 80 83 */	lis r3, stringBase0@ha
/* 8082E608  38 63 F4 10 */	addi r3, r3, stringBase0@l
/* 8082E60C  38 80 00 17 */	li r4, 0x17
/* 8082E610  7F E5 FB 78 */	mr r5, r31
/* 8082E614  38 C0 00 80 */	li r6, 0x80
/* 8082E618  4B 80 DC D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8082E61C  7C 65 1B 78 */	mr r5, r3
/* 8082E620  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8082E624  80 63 00 04 */	lwz r3, 4(r3)
/* 8082E628  80 83 00 04 */	lwz r4, 4(r3)
/* 8082E62C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8082E630  38 84 00 58 */	addi r4, r4, 0x58
/* 8082E634  38 C0 00 01 */	li r6, 1
/* 8082E638  38 E0 00 02 */	li r7, 2
/* 8082E63C  3D 00 80 83 */	lis r8, lit_3778@ha
/* 8082E640  C0 28 F2 08 */	lfs f1, lit_3778@l(r8)
/* 8082E644  39 00 00 00 */	li r8, 0
/* 8082E648  39 20 FF FF */	li r9, -1
/* 8082E64C  4B 7D EF F0 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8082E650  2C 03 00 00 */	cmpwi r3, 0
/* 8082E654  40 82 00 0C */	bne lbl_8082E660
/* 8082E658  38 60 00 00 */	li r3, 0
/* 8082E65C  48 00 00 54 */	b lbl_8082E6B0
lbl_8082E660:
/* 8082E660  88 1E 07 AB */	lbz r0, 0x7ab(r30)
/* 8082E664  28 00 00 01 */	cmplwi r0, 1
/* 8082E668  40 82 00 44 */	bne lbl_8082E6AC
/* 8082E66C  3C 60 80 83 */	lis r3, stringBase0@ha
/* 8082E670  38 63 F4 10 */	addi r3, r3, stringBase0@l
/* 8082E674  38 80 00 14 */	li r4, 0x14
/* 8082E678  7F E5 FB 78 */	mr r5, r31
/* 8082E67C  38 C0 00 80 */	li r6, 0x80
/* 8082E680  4B 80 DC 6C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8082E684  38 80 00 00 */	li r4, 0
/* 8082E688  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020203@ha */
/* 8082E68C  38 A5 02 03 */	addi r5, r5, 0x0203 /* 0x11020203@l */
/* 8082E690  4B 7E 65 C4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8082E694  90 7E 05 B8 */	stw r3, 0x5b8(r30)
/* 8082E698  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 8082E69C  28 00 00 00 */	cmplwi r0, 0
/* 8082E6A0  40 82 00 0C */	bne lbl_8082E6AC
/* 8082E6A4  38 60 00 00 */	li r3, 0
/* 8082E6A8  48 00 00 08 */	b lbl_8082E6B0
lbl_8082E6AC:
/* 8082E6AC  38 60 00 01 */	li r3, 1
lbl_8082E6B0:
/* 8082E6B0  39 61 00 30 */	addi r11, r1, 0x30
/* 8082E6B4  4B B3 3B 70 */	b _restgpr_28
/* 8082E6B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8082E6BC  7C 08 03 A6 */	mtlr r0
/* 8082E6C0  38 21 00 30 */	addi r1, r1, 0x30
/* 8082E6C4  4E 80 00 20 */	blr 

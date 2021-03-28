lbl_80BCA418:
/* 80BCA418  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BCA41C  7C 08 02 A6 */	mflr r0
/* 80BCA420  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BCA424  39 61 00 30 */	addi r11, r1, 0x30
/* 80BCA428  4B 79 7D B0 */	b _savegpr_28
/* 80BCA42C  7C 7F 1B 78 */	mr r31, r3
/* 80BCA430  3C 60 80 BD */	lis r3, stringBase0@ha
/* 80BCA434  38 63 C6 78 */	addi r3, r3, stringBase0@l
/* 80BCA438  38 80 00 0A */	li r4, 0xa
/* 80BCA43C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BCA440  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BCA444  3F C5 00 02 */	addis r30, r5, 2
/* 80BCA448  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BCA44C  7F C5 F3 78 */	mr r5, r30
/* 80BCA450  38 C0 00 80 */	li r6, 0x80
/* 80BCA454  4B 47 1E 98 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCA458  7C 7D 1B 78 */	mr r29, r3
/* 80BCA45C  38 60 00 58 */	li r3, 0x58
/* 80BCA460  4B 70 47 EC */	b __nw__FUl
/* 80BCA464  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BCA468  41 82 00 68 */	beq lbl_80BCA4D0
/* 80BCA46C  3C 60 80 BD */	lis r3, stringBase0@ha
/* 80BCA470  38 63 C6 78 */	addi r3, r3, stringBase0@l
/* 80BCA474  38 80 00 06 */	li r4, 6
/* 80BCA478  7F C5 F3 78 */	mr r5, r30
/* 80BCA47C  38 C0 00 80 */	li r6, 0x80
/* 80BCA480  4B 47 1E 6C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCA484  7C 67 1B 78 */	mr r7, r3
/* 80BCA488  38 1F 09 CC */	addi r0, r31, 0x9cc
/* 80BCA48C  90 01 00 08 */	stw r0, 8(r1)
/* 80BCA490  38 00 00 00 */	li r0, 0
/* 80BCA494  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BCA498  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 80BCA49C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 80BCA4A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BCA4A4  7F 83 E3 78 */	mr r3, r28
/* 80BCA4A8  7F A4 EB 78 */	mr r4, r29
/* 80BCA4AC  38 A0 00 00 */	li r5, 0
/* 80BCA4B0  38 C0 00 00 */	li r6, 0
/* 80BCA4B4  39 00 00 02 */	li r8, 2
/* 80BCA4B8  3D 20 80 BD */	lis r9, lit_3889@ha
/* 80BCA4BC  C0 29 C5 C0 */	lfs f1, lit_3889@l(r9)
/* 80BCA4C0  39 20 00 00 */	li r9, 0
/* 80BCA4C4  39 40 FF FF */	li r10, -1
/* 80BCA4C8  4B 44 63 08 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80BCA4CC  7C 7C 1B 78 */	mr r28, r3
lbl_80BCA4D0:
/* 80BCA4D0  93 9F 0A 60 */	stw r28, 0xa60(r31)
/* 80BCA4D4  80 7F 0A 60 */	lwz r3, 0xa60(r31)
/* 80BCA4D8  28 03 00 00 */	cmplwi r3, 0
/* 80BCA4DC  41 82 00 10 */	beq lbl_80BCA4EC
/* 80BCA4E0  83 A3 00 04 */	lwz r29, 4(r3)
/* 80BCA4E4  28 1D 00 00 */	cmplwi r29, 0
/* 80BCA4E8  40 82 00 0C */	bne lbl_80BCA4F4
lbl_80BCA4EC:
/* 80BCA4EC  38 60 00 00 */	li r3, 0
/* 80BCA4F0  48 00 01 F8 */	b lbl_80BCA6E8
lbl_80BCA4F4:
/* 80BCA4F4  38 60 00 18 */	li r3, 0x18
/* 80BCA4F8  4B 70 47 54 */	b __nw__FUl
/* 80BCA4FC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BCA500  41 82 00 20 */	beq lbl_80BCA520
/* 80BCA504  3C 80 80 BD */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80BCA508  38 04 C7 2C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80BCA50C  90 1C 00 00 */	stw r0, 0(r28)
/* 80BCA510  38 80 00 00 */	li r4, 0
/* 80BCA514  4B 75 DE E8 */	b init__12J3DFrameCtrlFs
/* 80BCA518  38 00 00 00 */	li r0, 0
/* 80BCA51C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80BCA520:
/* 80BCA520  93 9F 09 C0 */	stw r28, 0x9c0(r31)
/* 80BCA524  80 1F 09 C0 */	lwz r0, 0x9c0(r31)
/* 80BCA528  28 00 00 00 */	cmplwi r0, 0
/* 80BCA52C  40 82 00 0C */	bne lbl_80BCA538
/* 80BCA530  38 60 00 00 */	li r3, 0
/* 80BCA534  48 00 01 B4 */	b lbl_80BCA6E8
lbl_80BCA538:
/* 80BCA538  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80BCA53C  28 00 00 01 */	cmplwi r0, 1
/* 80BCA540  40 82 00 58 */	bne lbl_80BCA598
/* 80BCA544  3C 60 80 BD */	lis r3, stringBase0@ha
/* 80BCA548  38 63 C6 78 */	addi r3, r3, stringBase0@l
/* 80BCA54C  38 80 00 0D */	li r4, 0xd
/* 80BCA550  7F C5 F3 78 */	mr r5, r30
/* 80BCA554  38 C0 00 80 */	li r6, 0x80
/* 80BCA558  4B 47 1D 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCA55C  7C 65 1B 78 */	mr r5, r3
/* 80BCA560  80 9D 00 04 */	lwz r4, 4(r29)
/* 80BCA564  80 7F 09 C0 */	lwz r3, 0x9c0(r31)
/* 80BCA568  38 84 00 58 */	addi r4, r4, 0x58
/* 80BCA56C  38 C0 00 01 */	li r6, 1
/* 80BCA570  38 E0 00 02 */	li r7, 2
/* 80BCA574  3D 00 80 BD */	lis r8, lit_3889@ha
/* 80BCA578  C0 28 C5 C0 */	lfs f1, lit_3889@l(r8)
/* 80BCA57C  39 00 00 00 */	li r8, 0
/* 80BCA580  39 20 FF FF */	li r9, -1
/* 80BCA584  4B 44 31 88 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BCA588  2C 03 00 00 */	cmpwi r3, 0
/* 80BCA58C  40 82 00 60 */	bne lbl_80BCA5EC
/* 80BCA590  38 60 00 00 */	li r3, 0
/* 80BCA594  48 00 01 54 */	b lbl_80BCA6E8
lbl_80BCA598:
/* 80BCA598  3C 60 80 BD */	lis r3, stringBase0@ha
/* 80BCA59C  38 63 C6 78 */	addi r3, r3, stringBase0@l
/* 80BCA5A0  38 80 00 0E */	li r4, 0xe
/* 80BCA5A4  7F C5 F3 78 */	mr r5, r30
/* 80BCA5A8  38 C0 00 80 */	li r6, 0x80
/* 80BCA5AC  4B 47 1D 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCA5B0  7C 65 1B 78 */	mr r5, r3
/* 80BCA5B4  80 9D 00 04 */	lwz r4, 4(r29)
/* 80BCA5B8  80 7F 09 C0 */	lwz r3, 0x9c0(r31)
/* 80BCA5BC  38 84 00 58 */	addi r4, r4, 0x58
/* 80BCA5C0  38 C0 00 01 */	li r6, 1
/* 80BCA5C4  38 E0 00 02 */	li r7, 2
/* 80BCA5C8  3D 00 80 BD */	lis r8, lit_3889@ha
/* 80BCA5CC  C0 28 C5 C0 */	lfs f1, lit_3889@l(r8)
/* 80BCA5D0  39 00 00 00 */	li r8, 0
/* 80BCA5D4  39 20 FF FF */	li r9, -1
/* 80BCA5D8  4B 44 31 34 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80BCA5DC  2C 03 00 00 */	cmpwi r3, 0
/* 80BCA5E0  40 82 00 0C */	bne lbl_80BCA5EC
/* 80BCA5E4  38 60 00 00 */	li r3, 0
/* 80BCA5E8  48 00 01 00 */	b lbl_80BCA6E8
lbl_80BCA5EC:
/* 80BCA5EC  38 60 00 18 */	li r3, 0x18
/* 80BCA5F0  4B 70 46 5C */	b __nw__FUl
/* 80BCA5F4  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BCA5F8  41 82 00 20 */	beq lbl_80BCA618
/* 80BCA5FC  3C 80 80 BD */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80BCA600  38 04 C7 2C */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80BCA604  90 1C 00 00 */	stw r0, 0(r28)
/* 80BCA608  38 80 00 00 */	li r4, 0
/* 80BCA60C  4B 75 DD F0 */	b init__12J3DFrameCtrlFs
/* 80BCA610  38 00 00 00 */	li r0, 0
/* 80BCA614  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80BCA618:
/* 80BCA618  93 9F 09 C4 */	stw r28, 0x9c4(r31)
/* 80BCA61C  80 1F 09 C4 */	lwz r0, 0x9c4(r31)
/* 80BCA620  28 00 00 00 */	cmplwi r0, 0
/* 80BCA624  40 82 00 0C */	bne lbl_80BCA630
/* 80BCA628  38 60 00 00 */	li r3, 0
/* 80BCA62C  48 00 00 BC */	b lbl_80BCA6E8
lbl_80BCA630:
/* 80BCA630  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80BCA634  28 00 00 01 */	cmplwi r0, 1
/* 80BCA638  40 82 00 58 */	bne lbl_80BCA690
/* 80BCA63C  3C 60 80 BD */	lis r3, stringBase0@ha
/* 80BCA640  38 63 C6 78 */	addi r3, r3, stringBase0@l
/* 80BCA644  38 80 00 11 */	li r4, 0x11
/* 80BCA648  7F C5 F3 78 */	mr r5, r30
/* 80BCA64C  38 C0 00 80 */	li r6, 0x80
/* 80BCA650  4B 47 1C 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCA654  7C 65 1B 78 */	mr r5, r3
/* 80BCA658  80 9D 00 04 */	lwz r4, 4(r29)
/* 80BCA65C  80 7F 09 C4 */	lwz r3, 0x9c4(r31)
/* 80BCA660  38 84 00 58 */	addi r4, r4, 0x58
/* 80BCA664  38 C0 00 01 */	li r6, 1
/* 80BCA668  38 E0 00 02 */	li r7, 2
/* 80BCA66C  3D 00 80 BD */	lis r8, lit_3889@ha
/* 80BCA670  C0 28 C5 C0 */	lfs f1, lit_3889@l(r8)
/* 80BCA674  39 00 00 00 */	li r8, 0
/* 80BCA678  39 20 FF FF */	li r9, -1
/* 80BCA67C  4B 44 2F C0 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BCA680  2C 03 00 00 */	cmpwi r3, 0
/* 80BCA684  40 82 00 60 */	bne lbl_80BCA6E4
/* 80BCA688  38 60 00 00 */	li r3, 0
/* 80BCA68C  48 00 00 5C */	b lbl_80BCA6E8
lbl_80BCA690:
/* 80BCA690  3C 60 80 BD */	lis r3, stringBase0@ha
/* 80BCA694  38 63 C6 78 */	addi r3, r3, stringBase0@l
/* 80BCA698  38 80 00 12 */	li r4, 0x12
/* 80BCA69C  7F C5 F3 78 */	mr r5, r30
/* 80BCA6A0  38 C0 00 80 */	li r6, 0x80
/* 80BCA6A4  4B 47 1C 48 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BCA6A8  7C 65 1B 78 */	mr r5, r3
/* 80BCA6AC  80 9D 00 04 */	lwz r4, 4(r29)
/* 80BCA6B0  80 7F 09 C4 */	lwz r3, 0x9c4(r31)
/* 80BCA6B4  38 84 00 58 */	addi r4, r4, 0x58
/* 80BCA6B8  38 C0 00 01 */	li r6, 1
/* 80BCA6BC  38 E0 00 02 */	li r7, 2
/* 80BCA6C0  3D 00 80 BD */	lis r8, lit_3889@ha
/* 80BCA6C4  C0 28 C5 C0 */	lfs f1, lit_3889@l(r8)
/* 80BCA6C8  39 00 00 00 */	li r8, 0
/* 80BCA6CC  39 20 FF FF */	li r9, -1
/* 80BCA6D0  4B 44 2F 6C */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80BCA6D4  2C 03 00 00 */	cmpwi r3, 0
/* 80BCA6D8  40 82 00 0C */	bne lbl_80BCA6E4
/* 80BCA6DC  38 60 00 00 */	li r3, 0
/* 80BCA6E0  48 00 00 08 */	b lbl_80BCA6E8
lbl_80BCA6E4:
/* 80BCA6E4  38 60 00 01 */	li r3, 1
lbl_80BCA6E8:
/* 80BCA6E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80BCA6EC  4B 79 7B 38 */	b _restgpr_28
/* 80BCA6F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BCA6F4  7C 08 03 A6 */	mtlr r0
/* 80BCA6F8  38 21 00 30 */	addi r1, r1, 0x30
/* 80BCA6FC  4E 80 00 20 */	blr 

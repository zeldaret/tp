lbl_8061E540:
/* 8061E540  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061E544  7C 08 02 A6 */	mflr r0
/* 8061E548  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061E54C  39 61 00 30 */	addi r11, r1, 0x30
/* 8061E550  4B D4 3C 88 */	b _savegpr_28
/* 8061E554  7C 7E 1B 78 */	mr r30, r3
/* 8061E558  3C 60 80 62 */	lis r3, lit_3678@ha
/* 8061E55C  3B E3 EA 38 */	addi r31, r3, lit_3678@l
/* 8061E560  38 60 00 58 */	li r3, 0x58
/* 8061E564  4B CB 06 E8 */	b __nw__FUl
/* 8061E568  7C 7D 1B 79 */	or. r29, r3, r3
/* 8061E56C  41 82 00 70 */	beq lbl_8061E5DC
/* 8061E570  3C 60 80 62 */	lis r3, stringBase0@ha
/* 8061E574  38 63 EA 84 */	addi r3, r3, stringBase0@l
/* 8061E578  38 80 00 29 */	li r4, 0x29
/* 8061E57C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8061E580  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8061E584  3C A5 00 02 */	addis r5, r5, 2
/* 8061E588  38 C0 00 80 */	li r6, 0x80
/* 8061E58C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8061E590  4B A1 DD 5C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8061E594  7C 64 1B 78 */	mr r4, r3
/* 8061E598  38 1E 08 98 */	addi r0, r30, 0x898
/* 8061E59C  90 01 00 08 */	stw r0, 8(r1)
/* 8061E5A0  38 00 00 00 */	li r0, 0
/* 8061E5A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8061E5A8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 8061E5AC  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 8061E5B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8061E5B4  7F A3 EB 78 */	mr r3, r29
/* 8061E5B8  38 A0 00 00 */	li r5, 0
/* 8061E5BC  38 C0 00 00 */	li r6, 0
/* 8061E5C0  38 E0 00 00 */	li r7, 0
/* 8061E5C4  39 00 00 02 */	li r8, 2
/* 8061E5C8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8061E5CC  39 20 00 00 */	li r9, 0
/* 8061E5D0  39 40 FF FF */	li r10, -1
/* 8061E5D4  4B 9F 21 FC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8061E5D8  7C 7D 1B 78 */	mr r29, r3
lbl_8061E5DC:
/* 8061E5DC  93 BE 05 B4 */	stw r29, 0x5b4(r30)
/* 8061E5E0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061E5E4  28 03 00 00 */	cmplwi r3, 0
/* 8061E5E8  41 82 00 10 */	beq lbl_8061E5F8
/* 8061E5EC  80 83 00 04 */	lwz r4, 4(r3)
/* 8061E5F0  28 04 00 00 */	cmplwi r4, 0
/* 8061E5F4  40 82 00 0C */	bne lbl_8061E600
lbl_8061E5F8:
/* 8061E5F8  38 60 00 00 */	li r3, 0
/* 8061E5FC  48 00 02 0C */	b lbl_8061E808
lbl_8061E600:
/* 8061E600  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 8061E604  38 A0 00 01 */	li r5, 1
/* 8061E608  4B 9E FF 34 */	b create__21mDoExt_invisibleModelFP8J3DModelUc
/* 8061E60C  2C 03 00 00 */	cmpwi r3, 0
/* 8061E610  40 82 00 0C */	bne lbl_8061E61C
/* 8061E614  38 60 00 00 */	li r3, 0
/* 8061E618  48 00 01 F0 */	b lbl_8061E808
lbl_8061E61C:
/* 8061E61C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061E620  80 63 00 04 */	lwz r3, 4(r3)
/* 8061E624  93 C3 00 14 */	stw r30, 0x14(r3)
/* 8061E628  38 C0 00 00 */	li r6, 0
/* 8061E62C  3C 60 80 62 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 8061E630  38 83 DC B8 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 8061E634  48 00 00 1C */	b lbl_8061E650
lbl_8061E638:
/* 8061E638  80 65 00 04 */	lwz r3, 4(r5)
/* 8061E63C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8061E640  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8061E644  7C 63 00 2E */	lwzx r3, r3, r0
/* 8061E648  90 83 00 04 */	stw r4, 4(r3)
/* 8061E64C  38 C6 00 01 */	addi r6, r6, 1
lbl_8061E650:
/* 8061E650  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061E654  80 A3 00 04 */	lwz r5, 4(r3)
/* 8061E658  80 65 00 04 */	lwz r3, 4(r5)
/* 8061E65C  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 8061E660  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8061E664  7C 00 18 40 */	cmplw r0, r3
/* 8061E668  41 80 FF D0 */	blt lbl_8061E638
/* 8061E66C  38 60 00 18 */	li r3, 0x18
/* 8061E670  4B CB 05 DC */	b __nw__FUl
/* 8061E674  7C 7D 1B 79 */	or. r29, r3, r3
/* 8061E678  41 82 00 20 */	beq lbl_8061E698
/* 8061E67C  3C 80 80 62 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8061E680  38 04 EA DC */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8061E684  90 1D 00 00 */	stw r0, 0(r29)
/* 8061E688  38 80 00 00 */	li r4, 0
/* 8061E68C  4B D0 9D 70 */	b init__12J3DFrameCtrlFs
/* 8061E690  38 00 00 00 */	li r0, 0
/* 8061E694  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8061E698:
/* 8061E698  93 BE 05 C0 */	stw r29, 0x5c0(r30)
/* 8061E69C  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 8061E6A0  28 00 00 00 */	cmplwi r0, 0
/* 8061E6A4  40 82 00 0C */	bne lbl_8061E6B0
/* 8061E6A8  38 60 00 00 */	li r3, 0
/* 8061E6AC  48 00 01 5C */	b lbl_8061E808
lbl_8061E6B0:
/* 8061E6B0  3C 60 80 62 */	lis r3, stringBase0@ha
/* 8061E6B4  38 63 EA 84 */	addi r3, r3, stringBase0@l
/* 8061E6B8  38 80 00 36 */	li r4, 0x36
/* 8061E6BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8061E6C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8061E6C4  3F 85 00 02 */	addis r28, r5, 2
/* 8061E6C8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8061E6CC  7F 85 E3 78 */	mr r5, r28
/* 8061E6D0  38 C0 00 80 */	li r6, 0x80
/* 8061E6D4  4B A1 DC 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8061E6D8  7C 65 1B 78 */	mr r5, r3
/* 8061E6DC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061E6E0  80 63 00 04 */	lwz r3, 4(r3)
/* 8061E6E4  80 83 00 04 */	lwz r4, 4(r3)
/* 8061E6E8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8061E6EC  38 84 00 58 */	addi r4, r4, 0x58
/* 8061E6F0  38 C0 00 01 */	li r6, 1
/* 8061E6F4  38 E0 00 02 */	li r7, 2
/* 8061E6F8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8061E6FC  39 00 00 00 */	li r8, 0
/* 8061E700  39 20 FF FF */	li r9, -1
/* 8061E704  4B 9E EF 38 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8061E708  2C 03 00 00 */	cmpwi r3, 0
/* 8061E70C  40 82 00 0C */	bne lbl_8061E718
/* 8061E710  38 60 00 00 */	li r3, 0
/* 8061E714  48 00 00 F4 */	b lbl_8061E808
lbl_8061E718:
/* 8061E718  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8061E71C  4B C4 92 38 */	b cM_rndF__Ff
/* 8061E720  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8061E724  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8061E728  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8061E72C  4B C4 92 60 */	b cM_rndFX__Ff
/* 8061E730  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8061E734  EC 00 08 2A */	fadds f0, f0, f1
/* 8061E738  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8061E73C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8061E740  38 60 00 18 */	li r3, 0x18
/* 8061E744  4B CB 05 08 */	b __nw__FUl
/* 8061E748  7C 7D 1B 79 */	or. r29, r3, r3
/* 8061E74C  41 82 00 20 */	beq lbl_8061E76C
/* 8061E750  3C 80 80 62 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8061E754  38 04 EA DC */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8061E758  90 1D 00 00 */	stw r0, 0(r29)
/* 8061E75C  38 80 00 00 */	li r4, 0
/* 8061E760  4B D0 9C 9C */	b init__12J3DFrameCtrlFs
/* 8061E764  38 00 00 00 */	li r0, 0
/* 8061E768  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_8061E76C:
/* 8061E76C  93 BE 05 C4 */	stw r29, 0x5c4(r30)
/* 8061E770  80 1E 05 C4 */	lwz r0, 0x5c4(r30)
/* 8061E774  28 00 00 00 */	cmplwi r0, 0
/* 8061E778  40 82 00 0C */	bne lbl_8061E784
/* 8061E77C  38 60 00 00 */	li r3, 0
/* 8061E780  48 00 00 88 */	b lbl_8061E808
lbl_8061E784:
/* 8061E784  3C 60 80 62 */	lis r3, stringBase0@ha
/* 8061E788  38 63 EA 84 */	addi r3, r3, stringBase0@l
/* 8061E78C  38 80 00 2F */	li r4, 0x2f
/* 8061E790  7F 85 E3 78 */	mr r5, r28
/* 8061E794  38 C0 00 80 */	li r6, 0x80
/* 8061E798  4B A1 DB 54 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8061E79C  7C 65 1B 78 */	mr r5, r3
/* 8061E7A0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8061E7A4  80 63 00 04 */	lwz r3, 4(r3)
/* 8061E7A8  80 83 00 04 */	lwz r4, 4(r3)
/* 8061E7AC  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8061E7B0  38 84 00 58 */	addi r4, r4, 0x58
/* 8061E7B4  38 C0 00 01 */	li r6, 1
/* 8061E7B8  38 E0 00 02 */	li r7, 2
/* 8061E7BC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8061E7C0  39 00 00 00 */	li r8, 0
/* 8061E7C4  39 20 FF FF */	li r9, -1
/* 8061E7C8  4B 9E EF 44 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8061E7CC  2C 03 00 00 */	cmpwi r3, 0
/* 8061E7D0  40 82 00 0C */	bne lbl_8061E7DC
/* 8061E7D4  38 60 00 00 */	li r3, 0
/* 8061E7D8  48 00 00 30 */	b lbl_8061E808
lbl_8061E7DC:
/* 8061E7DC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8061E7E0  4B C4 91 74 */	b cM_rndF__Ff
/* 8061E7E4  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8061E7E8  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 8061E7EC  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 8061E7F0  4B C4 91 9C */	b cM_rndFX__Ff
/* 8061E7F4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8061E7F8  EC 00 08 2A */	fadds f0, f0, f1
/* 8061E7FC  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 8061E800  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8061E804  38 60 00 01 */	li r3, 1
lbl_8061E808:
/* 8061E808  39 61 00 30 */	addi r11, r1, 0x30
/* 8061E80C  4B D4 3A 18 */	b _restgpr_28
/* 8061E810  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061E814  7C 08 03 A6 */	mtlr r0
/* 8061E818  38 21 00 30 */	addi r1, r1, 0x30
/* 8061E81C  4E 80 00 20 */	blr 

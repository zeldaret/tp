lbl_805A7230:
/* 805A7230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A7234  7C 08 02 A6 */	mflr r0
/* 805A7238  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A723C  39 61 00 20 */	addi r11, r1, 0x20
/* 805A7240  4B DB AF 94 */	b _savegpr_27
/* 805A7244  7C 7E 1B 78 */	mr r30, r3
/* 805A7248  3C 60 80 5B */	lis r3, l_arcName@ha
/* 805A724C  38 63 82 1C */	addi r3, r3, l_arcName@l
/* 805A7250  80 63 00 00 */	lwz r3, 0(r3)
/* 805A7254  38 80 00 06 */	li r4, 6
/* 805A7258  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805A725C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805A7260  3F 85 00 02 */	addis r28, r5, 2
/* 805A7264  3B 9C C2 F8 */	addi r28, r28, -15624
/* 805A7268  7F 85 E3 78 */	mr r5, r28
/* 805A726C  38 C0 00 80 */	li r6, 0x80
/* 805A7270  4B A9 50 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805A7274  7C 7F 1B 78 */	mr r31, r3
/* 805A7278  3C 80 00 08 */	lis r4, 8
/* 805A727C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 805A7280  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 805A7284  4B A6 D9 D0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805A7288  90 7E 05 78 */	stw r3, 0x578(r30)
/* 805A728C  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 805A7290  28 00 00 00 */	cmplwi r0, 0
/* 805A7294  40 82 00 0C */	bne lbl_805A72A0
/* 805A7298  38 60 00 00 */	li r3, 0
/* 805A729C  48 00 01 28 */	b lbl_805A73C4
lbl_805A72A0:
/* 805A72A0  3C 60 80 5B */	lis r3, l_arcName@ha
/* 805A72A4  38 63 82 1C */	addi r3, r3, l_arcName@l
/* 805A72A8  80 63 00 00 */	lwz r3, 0(r3)
/* 805A72AC  38 80 00 0C */	li r4, 0xc
/* 805A72B0  7F 85 E3 78 */	mr r5, r28
/* 805A72B4  38 C0 00 80 */	li r6, 0x80
/* 805A72B8  4B A9 50 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805A72BC  7C 7B 1B 78 */	mr r27, r3
/* 805A72C0  38 60 00 18 */	li r3, 0x18
/* 805A72C4  4B D2 79 88 */	b __nw__FUl
/* 805A72C8  7C 7D 1B 79 */	or. r29, r3, r3
/* 805A72CC  41 82 00 20 */	beq lbl_805A72EC
/* 805A72D0  3C 80 80 5B */	lis r4, __vt__12J3DFrameCtrl@ha
/* 805A72D4  38 04 83 80 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 805A72D8  90 1D 00 00 */	stw r0, 0(r29)
/* 805A72DC  38 80 00 00 */	li r4, 0
/* 805A72E0  4B D8 11 1C */	b init__12J3DFrameCtrlFs
/* 805A72E4  38 00 00 00 */	li r0, 0
/* 805A72E8  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_805A72EC:
/* 805A72EC  93 BE 05 7C */	stw r29, 0x57c(r30)
/* 805A72F0  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 805A72F4  28 03 00 00 */	cmplwi r3, 0
/* 805A72F8  41 82 00 30 */	beq lbl_805A7328
/* 805A72FC  38 9F 00 58 */	addi r4, r31, 0x58
/* 805A7300  7F 65 DB 78 */	mr r5, r27
/* 805A7304  38 C0 00 01 */	li r6, 1
/* 805A7308  38 E0 00 00 */	li r7, 0
/* 805A730C  3D 00 80 5B */	lis r8, lit_3690@ha
/* 805A7310  C0 28 81 10 */	lfs f1, lit_3690@l(r8)
/* 805A7314  39 00 00 00 */	li r8, 0
/* 805A7318  39 20 FF FF */	li r9, -1
/* 805A731C  4B A6 63 20 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 805A7320  2C 03 00 00 */	cmpwi r3, 0
/* 805A7324  40 82 00 0C */	bne lbl_805A7330
lbl_805A7328:
/* 805A7328  38 60 00 00 */	li r3, 0
/* 805A732C  48 00 00 98 */	b lbl_805A73C4
lbl_805A7330:
/* 805A7330  3C 60 80 5B */	lis r3, l_arcName@ha
/* 805A7334  38 63 82 1C */	addi r3, r3, l_arcName@l
/* 805A7338  80 63 00 00 */	lwz r3, 0(r3)
/* 805A733C  38 80 00 09 */	li r4, 9
/* 805A7340  7F 85 E3 78 */	mr r5, r28
/* 805A7344  38 C0 00 80 */	li r6, 0x80
/* 805A7348  4B A9 4F A4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805A734C  7C 7B 1B 78 */	mr r27, r3
/* 805A7350  38 60 00 18 */	li r3, 0x18
/* 805A7354  4B D2 78 F8 */	b __nw__FUl
/* 805A7358  7C 7D 1B 79 */	or. r29, r3, r3
/* 805A735C  41 82 00 20 */	beq lbl_805A737C
/* 805A7360  3C 80 80 5B */	lis r4, __vt__12J3DFrameCtrl@ha
/* 805A7364  38 04 83 80 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 805A7368  90 1D 00 00 */	stw r0, 0(r29)
/* 805A736C  38 80 00 00 */	li r4, 0
/* 805A7370  4B D8 10 8C */	b init__12J3DFrameCtrlFs
/* 805A7374  38 00 00 00 */	li r0, 0
/* 805A7378  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_805A737C:
/* 805A737C  93 BE 05 80 */	stw r29, 0x580(r30)
/* 805A7380  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 805A7384  28 03 00 00 */	cmplwi r3, 0
/* 805A7388  41 82 00 30 */	beq lbl_805A73B8
/* 805A738C  38 9F 00 58 */	addi r4, r31, 0x58
/* 805A7390  7F 65 DB 78 */	mr r5, r27
/* 805A7394  38 C0 00 01 */	li r6, 1
/* 805A7398  38 E0 00 00 */	li r7, 0
/* 805A739C  3D 00 80 5B */	lis r8, lit_3690@ha
/* 805A73A0  C0 28 81 10 */	lfs f1, lit_3690@l(r8)
/* 805A73A4  39 00 00 00 */	li r8, 0
/* 805A73A8  39 20 FF FF */	li r9, -1
/* 805A73AC  4B A6 63 60 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805A73B0  2C 03 00 00 */	cmpwi r3, 0
/* 805A73B4  40 82 00 0C */	bne lbl_805A73C0
lbl_805A73B8:
/* 805A73B8  38 60 00 00 */	li r3, 0
/* 805A73BC  48 00 00 08 */	b lbl_805A73C4
lbl_805A73C0:
/* 805A73C0  38 60 00 01 */	li r3, 1
lbl_805A73C4:
/* 805A73C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805A73C8  4B DB AE 58 */	b _restgpr_27
/* 805A73CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A73D0  7C 08 03 A6 */	mtlr r0
/* 805A73D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805A73D8  4E 80 00 20 */	blr 

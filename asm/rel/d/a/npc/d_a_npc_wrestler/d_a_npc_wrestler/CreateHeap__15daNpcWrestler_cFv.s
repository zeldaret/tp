lbl_80B2F974:
/* 80B2F974  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B2F978  7C 08 02 A6 */	mflr r0
/* 80B2F97C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B2F980  39 61 00 30 */	addi r11, r1, 0x30
/* 80B2F984  4B 83 28 58 */	b _savegpr_29
/* 80B2F988  7C 7F 1B 78 */	mr r31, r3
/* 80B2F98C  88 03 0E 9B */	lbz r0, 0xe9b(r3)
/* 80B2F990  54 00 10 3A */	slwi r0, r0, 2
/* 80B2F994  3C 60 80 B4 */	lis r3, l_resName@ha
/* 80B2F998  38 63 1E 1C */	addi r3, r3, l_resName@l
/* 80B2F99C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B2F9A0  3C 80 80 B4 */	lis r4, l_bmdGetParamList@ha
/* 80B2F9A4  38 84 1E 30 */	addi r4, r4, l_bmdGetParamList@l
/* 80B2F9A8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B2F9AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B2F9B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B2F9B4  3C A5 00 02 */	addis r5, r5, 2
/* 80B2F9B8  38 C0 00 80 */	li r6, 0x80
/* 80B2F9BC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B2F9C0  4B 50 C9 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B2F9C4  7C 7E 1B 78 */	mr r30, r3
/* 80B2F9C8  38 60 00 58 */	li r3, 0x58
/* 80B2F9CC  4B 79 F2 80 */	b __nw__FUl
/* 80B2F9D0  7C 60 1B 79 */	or. r0, r3, r3
/* 80B2F9D4  41 82 00 4C */	beq lbl_80B2FA20
/* 80B2F9D8  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80B2F9DC  90 01 00 08 */	stw r0, 8(r1)
/* 80B2F9E0  3C 00 00 08 */	lis r0, 8
/* 80B2F9E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B2F9E8  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B2F9EC  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B2F9F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B2F9F4  7F C4 F3 78 */	mr r4, r30
/* 80B2F9F8  38 A0 00 00 */	li r5, 0
/* 80B2F9FC  38 C0 00 00 */	li r6, 0
/* 80B2FA00  38 E0 00 00 */	li r7, 0
/* 80B2FA04  39 00 FF FF */	li r8, -1
/* 80B2FA08  3D 20 80 B4 */	lis r9, lit_4417@ha
/* 80B2FA0C  C0 29 18 90 */	lfs f1, lit_4417@l(r9)
/* 80B2FA10  39 20 00 00 */	li r9, 0
/* 80B2FA14  39 40 FF FF */	li r10, -1
/* 80B2FA18  4B 4E 0D B8 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B2FA1C  7C 60 1B 78 */	mr r0, r3
lbl_80B2FA20:
/* 80B2FA20  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80B2FA24  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B2FA28  28 03 00 00 */	cmplwi r3, 0
/* 80B2FA2C  41 82 00 1C */	beq lbl_80B2FA48
/* 80B2FA30  80 03 00 04 */	lwz r0, 4(r3)
/* 80B2FA34  28 00 00 00 */	cmplwi r0, 0
/* 80B2FA38  40 82 00 10 */	bne lbl_80B2FA48
/* 80B2FA3C  4B 4E 18 D4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B2FA40  38 00 00 00 */	li r0, 0
/* 80B2FA44  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80B2FA48:
/* 80B2FA48  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B2FA4C  28 03 00 00 */	cmplwi r3, 0
/* 80B2FA50  40 82 00 0C */	bne lbl_80B2FA5C
/* 80B2FA54  38 60 00 00 */	li r3, 0
/* 80B2FA58  48 00 01 84 */	b lbl_80B2FBDC
lbl_80B2FA5C:
/* 80B2FA5C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B2FA60  38 C0 00 00 */	li r6, 0
/* 80B2FA64  3C 60 80 B3 */	lis r3, ctrlJointCallBack__15daNpcWrestler_cFP8J3DJointi@ha
/* 80B2FA68  38 83 01 70 */	addi r4, r3, ctrlJointCallBack__15daNpcWrestler_cFP8J3DJointi@l
/* 80B2FA6C  48 00 00 18 */	b lbl_80B2FA84
lbl_80B2FA70:
/* 80B2FA70  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80B2FA74  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B2FA78  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B2FA7C  90 83 00 04 */	stw r4, 4(r3)
/* 80B2FA80  38 C6 00 01 */	addi r6, r6, 1
lbl_80B2FA84:
/* 80B2FA84  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B2FA88  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80B2FA8C  7C 03 00 40 */	cmplw r3, r0
/* 80B2FA90  41 80 FF E0 */	blt lbl_80B2FA70
/* 80B2FA94  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B2FA98  38 60 01 08 */	li r3, 0x108
/* 80B2FA9C  4B 79 F1 B0 */	b __nw__FUl
/* 80B2FAA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B2FAA4  41 82 00 D0 */	beq lbl_80B2FB74
/* 80B2FAA8  7F DD F3 78 */	mr r29, r30
/* 80B2FAAC  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B2FAB0  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B2FAB4  90 1E 00 00 */	stw r0, 0(r30)
/* 80B2FAB8  38 7E 00 04 */	addi r3, r30, 4
/* 80B2FABC  3C 80 80 B3 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B2FAC0  38 84 FD 98 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B2FAC4  3C A0 80 B3 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B2FAC8  38 A5 FD 5C */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B2FACC  38 C0 00 08 */	li r6, 8
/* 80B2FAD0  38 E0 00 02 */	li r7, 2
/* 80B2FAD4  4B 83 22 8C */	b __construct_array
/* 80B2FAD8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B2FADC  3C 80 80 B3 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B2FAE0  38 84 FD 44 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B2FAE4  3C A0 80 B3 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B2FAE8  38 A5 FD 08 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B2FAEC  38 C0 00 08 */	li r6, 8
/* 80B2FAF0  38 E0 00 08 */	li r7, 8
/* 80B2FAF4  4B 83 22 6C */	b __construct_array
/* 80B2FAF8  38 7E 00 54 */	addi r3, r30, 0x54
/* 80B2FAFC  3C 80 80 B3 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B2FB00  38 84 FC E4 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B2FB04  3C A0 80 B3 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B2FB08  38 A5 FC 9C */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B2FB0C  38 C0 00 0C */	li r6, 0xc
/* 80B2FB10  38 E0 00 08 */	li r7, 8
/* 80B2FB14  4B 83 22 4C */	b __construct_array
/* 80B2FB18  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80B2FB1C  3C 80 80 B3 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B2FB20  38 84 FC 84 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B2FB24  3C A0 80 B3 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B2FB28  38 A5 FC 48 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B2FB2C  38 C0 00 08 */	li r6, 8
/* 80B2FB30  38 E0 00 04 */	li r7, 4
/* 80B2FB34  4B 83 22 2C */	b __construct_array
/* 80B2FB38  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80B2FB3C  3C 80 80 B3 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B2FB40  38 84 FC 30 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B2FB44  3C A0 80 B3 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B2FB48  38 A5 FB F4 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B2FB4C  38 C0 00 08 */	li r6, 8
/* 80B2FB50  38 E0 00 04 */	li r7, 4
/* 80B2FB54  4B 83 22 0C */	b __construct_array
/* 80B2FB58  7F C3 F3 78 */	mr r3, r30
/* 80B2FB5C  4B 7F C7 C4 */	b initialize__14J3DMaterialAnmFv
/* 80B2FB60  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80B2FB64  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80B2FB68  90 1D 00 00 */	stw r0, 0(r29)
/* 80B2FB6C  7F A3 EB 78 */	mr r3, r29
/* 80B2FB70  4B 62 0B C8 */	b initialize__15daNpcF_MatAnm_cFv
lbl_80B2FB74:
/* 80B2FB74  93 DF 0B E0 */	stw r30, 0xbe0(r31)
/* 80B2FB78  80 1F 0B E0 */	lwz r0, 0xbe0(r31)
/* 80B2FB7C  28 00 00 00 */	cmplwi r0, 0
/* 80B2FB80  40 82 00 0C */	bne lbl_80B2FB8C
/* 80B2FB84  38 60 00 00 */	li r3, 0
/* 80B2FB88  48 00 00 54 */	b lbl_80B2FBDC
lbl_80B2FB8C:
/* 80B2FB8C  7F E3 FB 78 */	mr r3, r31
/* 80B2FB90  38 80 00 14 */	li r4, 0x14
/* 80B2FB94  38 A0 00 00 */	li r5, 0
/* 80B2FB98  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B2FB9C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B2FBA0  7D 89 03 A6 */	mtctr r12
/* 80B2FBA4  4E 80 04 21 */	bctrl 
/* 80B2FBA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B2FBAC  40 82 00 0C */	bne lbl_80B2FBB8
/* 80B2FBB0  38 60 00 00 */	li r3, 0
/* 80B2FBB4  48 00 00 28 */	b lbl_80B2FBDC
lbl_80B2FBB8:
/* 80B2FBB8  7F E3 FB 78 */	mr r3, r31
/* 80B2FBBC  38 80 00 39 */	li r4, 0x39
/* 80B2FBC0  3C A0 80 B4 */	lis r5, lit_4418@ha
/* 80B2FBC4  C0 25 18 94 */	lfs f1, lit_4418@l(r5)
/* 80B2FBC8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B2FBCC  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B2FBD0  7D 89 03 A6 */	mtctr r12
/* 80B2FBD4  4E 80 04 21 */	bctrl 
/* 80B2FBD8  38 60 00 01 */	li r3, 1
lbl_80B2FBDC:
/* 80B2FBDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B2FBE0  4B 83 26 48 */	b _restgpr_29
/* 80B2FBE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B2FBE8  7C 08 03 A6 */	mtlr r0
/* 80B2FBEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80B2FBF0  4E 80 00 20 */	blr 

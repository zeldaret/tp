lbl_80B1EA60:
/* 80B1EA60  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B1EA64  7C 08 02 A6 */	mflr r0
/* 80B1EA68  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B1EA6C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1EA70  4B 84 37 65 */	bl _savegpr_27
/* 80B1EA74  7C 7F 1B 78 */	mr r31, r3
/* 80B1EA78  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha /* 0x80B249E4@ha */
/* 80B1EA7C  3B A3 49 E4 */	addi r29, r3, m__18daNpc_Toby_Param_c@l /* 0x80B249E4@l */
/* 80B1EA80  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B1EA84  20 00 00 01 */	subfic r0, r0, 1
/* 80B1EA88  7C 00 00 34 */	cntlzw r0, r0
/* 80B1EA8C  54 05 F0 B8 */	rlwinm r5, r0, 0x1e, 2, 0x1c
/* 80B1EA90  3C 60 80 B2 */	lis r3, l_bmdData@ha /* 0x80B24C68@ha */
/* 80B1EA94  38 83 4C 68 */	addi r4, r3, l_bmdData@l /* 0x80B24C68@l */
/* 80B1EA98  7C 64 2A 14 */	add r3, r4, r5
/* 80B1EA9C  80 03 00 04 */	lwz r0, 4(r3)
/* 80B1EAA0  54 00 10 3A */	slwi r0, r0, 2
/* 80B1EAA4  3C 60 80 B2 */	lis r3, l_resNameList@ha /* 0x80B24CB8@ha */
/* 80B1EAA8  38 63 4C B8 */	addi r3, r3, l_resNameList@l /* 0x80B24CB8@l */
/* 80B1EAAC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B1EAB0  7C 84 28 2E */	lwzx r4, r4, r5
/* 80B1EAB4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B1EAB8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B1EABC  3F C5 00 02 */	addis r30, r5, 2
/* 80B1EAC0  3B DE C2 F8 */	addi r30, r30, -15624
/* 80B1EAC4  7F C5 F3 78 */	mr r5, r30
/* 80B1EAC8  38 C0 00 80 */	li r6, 0x80
/* 80B1EACC  4B 51 D8 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B1EAD0  7C 7B 1B 79 */	or. r27, r3, r3
/* 80B1EAD4  40 82 00 0C */	bne lbl_80B1EAE0
/* 80B1EAD8  38 60 00 00 */	li r3, 0
/* 80B1EADC  48 00 02 78 */	b lbl_80B1ED54
lbl_80B1EAE0:
/* 80B1EAE0  38 60 00 58 */	li r3, 0x58
/* 80B1EAE4  4B 7B 01 69 */	bl __nw__FUl
/* 80B1EAE8  7C 60 1B 79 */	or. r0, r3, r3
/* 80B1EAEC  41 82 00 48 */	beq lbl_80B1EB34
/* 80B1EAF0  38 1F 05 80 */	addi r0, r31, 0x580
/* 80B1EAF4  90 01 00 08 */	stw r0, 8(r1)
/* 80B1EAF8  3C 00 00 08 */	lis r0, 8
/* 80B1EAFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B1EB00  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B1EB04  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B1EB08  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B1EB0C  7F 64 DB 78 */	mr r4, r27
/* 80B1EB10  38 A0 00 00 */	li r5, 0
/* 80B1EB14  38 C0 00 00 */	li r6, 0
/* 80B1EB18  38 E0 00 00 */	li r7, 0
/* 80B1EB1C  39 00 FF FF */	li r8, -1
/* 80B1EB20  C0 3D 00 DC */	lfs f1, 0xdc(r29)
/* 80B1EB24  39 20 00 00 */	li r9, 0
/* 80B1EB28  39 40 FF FF */	li r10, -1
/* 80B1EB2C  4B 4F 1C A5 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B1EB30  7C 60 1B 78 */	mr r0, r3
lbl_80B1EB34:
/* 80B1EB34  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80B1EB38  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B1EB3C  28 03 00 00 */	cmplwi r3, 0
/* 80B1EB40  41 82 00 10 */	beq lbl_80B1EB50
/* 80B1EB44  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B1EB48  28 05 00 00 */	cmplwi r5, 0
/* 80B1EB4C  40 82 00 0C */	bne lbl_80B1EB58
lbl_80B1EB50:
/* 80B1EB50  38 60 00 00 */	li r3, 0
/* 80B1EB54  48 00 02 00 */	b lbl_80B1ED54
lbl_80B1EB58:
/* 80B1EB58  38 C0 00 00 */	li r6, 0
/* 80B1EB5C  3C 60 80 B2 */	lis r3, ctrlJointCallBack__12daNpc_Toby_cFP8J3DJointi@ha /* 0x80B1F030@ha */
/* 80B1EB60  38 83 F0 30 */	addi r4, r3, ctrlJointCallBack__12daNpc_Toby_cFP8J3DJointi@l /* 0x80B1F030@l */
/* 80B1EB64  48 00 00 18 */	b lbl_80B1EB7C
lbl_80B1EB68:
/* 80B1EB68  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 80B1EB6C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B1EB70  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B1EB74  90 83 00 04 */	stw r4, 4(r3)
/* 80B1EB78  38 C6 00 01 */	addi r6, r6, 1
lbl_80B1EB7C:
/* 80B1EB7C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B1EB80  A0 1B 00 2C */	lhz r0, 0x2c(r27)
/* 80B1EB84  7C 03 00 40 */	cmplw r3, r0
/* 80B1EB88  41 80 FF E0 */	blt lbl_80B1EB68
/* 80B1EB8C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B1EB90  38 60 01 08 */	li r3, 0x108
/* 80B1EB94  4B 7B 00 B9 */	bl __nw__FUl
/* 80B1EB98  7C 7C 1B 79 */	or. r28, r3, r3
/* 80B1EB9C  41 82 00 D0 */	beq lbl_80B1EC6C
/* 80B1EBA0  7F 9B E3 78 */	mr r27, r28
/* 80B1EBA4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80B1EBA8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80B1EBAC  90 1C 00 00 */	stw r0, 0(r28)
/* 80B1EBB0  38 7C 00 04 */	addi r3, r28, 4
/* 80B1EBB4  3C 80 80 B2 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80B1EF10@ha */
/* 80B1EBB8  38 84 EF 10 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80B1EF10@l */
/* 80B1EBBC  3C A0 80 B2 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80B1EED4@ha */
/* 80B1EBC0  38 A5 EE D4 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80B1EED4@l */
/* 80B1EBC4  38 C0 00 08 */	li r6, 8
/* 80B1EBC8  38 E0 00 02 */	li r7, 2
/* 80B1EBCC  4B 84 31 95 */	bl __construct_array
/* 80B1EBD0  38 7C 00 14 */	addi r3, r28, 0x14
/* 80B1EBD4  3C 80 80 B2 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80B1EEBC@ha */
/* 80B1EBD8  38 84 EE BC */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80B1EEBC@l */
/* 80B1EBDC  3C A0 80 B2 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80B1EE80@ha */
/* 80B1EBE0  38 A5 EE 80 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80B1EE80@l */
/* 80B1EBE4  38 C0 00 08 */	li r6, 8
/* 80B1EBE8  38 E0 00 08 */	li r7, 8
/* 80B1EBEC  4B 84 31 75 */	bl __construct_array
/* 80B1EBF0  38 7C 00 54 */	addi r3, r28, 0x54
/* 80B1EBF4  3C 80 80 B2 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80B1EE5C@ha */
/* 80B1EBF8  38 84 EE 5C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80B1EE5C@l */
/* 80B1EBFC  3C A0 80 B2 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80B1EE14@ha */
/* 80B1EC00  38 A5 EE 14 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80B1EE14@l */
/* 80B1EC04  38 C0 00 0C */	li r6, 0xc
/* 80B1EC08  38 E0 00 08 */	li r7, 8
/* 80B1EC0C  4B 84 31 55 */	bl __construct_array
/* 80B1EC10  38 7C 00 B4 */	addi r3, r28, 0xb4
/* 80B1EC14  3C 80 80 B2 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80B1EDFC@ha */
/* 80B1EC18  38 84 ED FC */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80B1EDFC@l */
/* 80B1EC1C  3C A0 80 B2 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80B1EDC0@ha */
/* 80B1EC20  38 A5 ED C0 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80B1EDC0@l */
/* 80B1EC24  38 C0 00 08 */	li r6, 8
/* 80B1EC28  38 E0 00 04 */	li r7, 4
/* 80B1EC2C  4B 84 31 35 */	bl __construct_array
/* 80B1EC30  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 80B1EC34  3C 80 80 B2 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80B1EDA8@ha */
/* 80B1EC38  38 84 ED A8 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80B1EDA8@l */
/* 80B1EC3C  3C A0 80 B2 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80B1ED6C@ha */
/* 80B1EC40  38 A5 ED 6C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80B1ED6C@l */
/* 80B1EC44  38 C0 00 08 */	li r6, 8
/* 80B1EC48  38 E0 00 04 */	li r7, 4
/* 80B1EC4C  4B 84 31 15 */	bl __construct_array
/* 80B1EC50  7F 83 E3 78 */	mr r3, r28
/* 80B1EC54  4B 80 D6 CD */	bl initialize__14J3DMaterialAnmFv
/* 80B1EC58  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80B1EC5C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80B1EC60  90 1B 00 00 */	stw r0, 0(r27)
/* 80B1EC64  7F 63 DB 78 */	mr r3, r27
/* 80B1EC68  4B 62 6A FD */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B1EC6C:
/* 80B1EC6C  93 9F 09 6C */	stw r28, 0x96c(r31)
/* 80B1EC70  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80B1EC74  28 00 00 00 */	cmplwi r0, 0
/* 80B1EC78  40 82 00 0C */	bne lbl_80B1EC84
/* 80B1EC7C  38 60 00 00 */	li r3, 0
/* 80B1EC80  48 00 00 D4 */	b lbl_80B1ED54
lbl_80B1EC84:
/* 80B1EC84  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80B1EC88  28 00 00 03 */	cmplwi r0, 3
/* 80B1EC8C  41 82 00 0C */	beq lbl_80B1EC98
/* 80B1EC90  28 00 00 04 */	cmplwi r0, 4
/* 80B1EC94  40 82 00 74 */	bne lbl_80B1ED08
lbl_80B1EC98:
/* 80B1EC98  3C 60 80 B2 */	lis r3, l_bmdData@ha /* 0x80B24C68@ha */
/* 80B1EC9C  38 03 4C 68 */	addi r0, r3, l_bmdData@l /* 0x80B24C68@l */
/* 80B1ECA0  80 7D 00 D8 */	lwz r3, 0xd8(r29)
/* 80B1ECA4  54 63 18 38 */	slwi r3, r3, 3
/* 80B1ECA8  7C 60 1A 14 */	add r3, r0, r3
/* 80B1ECAC  80 83 00 00 */	lwz r4, 0(r3)
/* 80B1ECB0  2C 04 00 00 */	cmpwi r4, 0
/* 80B1ECB4  41 80 00 28 */	blt lbl_80B1ECDC
/* 80B1ECB8  80 03 00 04 */	lwz r0, 4(r3)
/* 80B1ECBC  54 00 10 3A */	slwi r0, r0, 2
/* 80B1ECC0  3C 60 80 B2 */	lis r3, l_resNameList@ha /* 0x80B24CB8@ha */
/* 80B1ECC4  38 63 4C B8 */	addi r3, r3, l_resNameList@l /* 0x80B24CB8@l */
/* 80B1ECC8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B1ECCC  7F C5 F3 78 */	mr r5, r30
/* 80B1ECD0  38 C0 00 80 */	li r6, 0x80
/* 80B1ECD4  4B 51 D6 19 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B1ECD8  48 00 00 08 */	b lbl_80B1ECE0
lbl_80B1ECDC:
/* 80B1ECDC  38 60 00 00 */	li r3, 0
lbl_80B1ECE0:
/* 80B1ECE0  28 03 00 00 */	cmplwi r3, 0
/* 80B1ECE4  41 82 00 1C */	beq lbl_80B1ED00
/* 80B1ECE8  3C 80 00 08 */	lis r4, 8
/* 80B1ECEC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B1ECF0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B1ECF4  4B 4F 5F 61 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B1ECF8  90 7F 0E 44 */	stw r3, 0xe44(r31)
/* 80B1ECFC  48 00 00 0C */	b lbl_80B1ED08
lbl_80B1ED00:
/* 80B1ED00  38 00 00 00 */	li r0, 0
/* 80B1ED04  90 1F 0E 44 */	stw r0, 0xe44(r31)
lbl_80B1ED08:
/* 80B1ED08  7F E3 FB 78 */	mr r3, r31
/* 80B1ED0C  38 80 00 01 */	li r4, 1
/* 80B1ED10  38 A0 00 00 */	li r5, 0
/* 80B1ED14  4B 62 B6 75 */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80B1ED18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B1ED1C  41 82 00 34 */	beq lbl_80B1ED50
/* 80B1ED20  7F E3 FB 78 */	mr r3, r31
/* 80B1ED24  38 80 00 00 */	li r4, 0
/* 80B1ED28  C0 3D 00 C8 */	lfs f1, 0xc8(r29)
/* 80B1ED2C  38 A0 00 00 */	li r5, 0
/* 80B1ED30  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80B1ED34  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B1ED38  7D 89 03 A6 */	mtctr r12
/* 80B1ED3C  4E 80 04 21 */	bctrl 
/* 80B1ED40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B1ED44  41 82 00 0C */	beq lbl_80B1ED50
/* 80B1ED48  38 60 00 01 */	li r3, 1
/* 80B1ED4C  48 00 00 08 */	b lbl_80B1ED54
lbl_80B1ED50:
/* 80B1ED50  38 60 00 00 */	li r3, 0
lbl_80B1ED54:
/* 80B1ED54  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1ED58  4B 84 34 C9 */	bl _restgpr_27
/* 80B1ED5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B1ED60  7C 08 03 A6 */	mtlr r0
/* 80B1ED64  38 21 00 30 */	addi r1, r1, 0x30
/* 80B1ED68  4E 80 00 20 */	blr 

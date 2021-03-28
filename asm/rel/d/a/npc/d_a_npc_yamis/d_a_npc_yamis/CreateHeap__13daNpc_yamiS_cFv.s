lbl_80B46958:
/* 80B46958  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B4695C  7C 08 02 A6 */	mflr r0
/* 80B46960  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B46964  39 61 00 30 */	addi r11, r1, 0x30
/* 80B46968  4B 81 B8 74 */	b _savegpr_29
/* 80B4696C  7C 7F 1B 78 */	mr r31, r3
/* 80B46970  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80B46974  28 00 00 01 */	cmplwi r0, 1
/* 80B46978  38 00 00 00 */	li r0, 0
/* 80B4697C  54 05 18 38 */	slwi r5, r0, 3
/* 80B46980  3C 60 80 B5 */	lis r3, l_bmdData@ha
/* 80B46984  38 83 97 C8 */	addi r4, r3, l_bmdData@l
/* 80B46988  7C 64 2A 14 */	add r3, r4, r5
/* 80B4698C  80 03 00 04 */	lwz r0, 4(r3)
/* 80B46990  54 00 10 3A */	slwi r0, r0, 2
/* 80B46994  3C 60 80 B5 */	lis r3, l_resNameList@ha
/* 80B46998  38 63 97 E0 */	addi r3, r3, l_resNameList@l
/* 80B4699C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B469A0  7C 84 28 2E */	lwzx r4, r4, r5
/* 80B469A4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B469A8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B469AC  3C A5 00 02 */	addis r5, r5, 2
/* 80B469B0  38 C0 00 80 */	li r6, 0x80
/* 80B469B4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B469B8  4B 4F 59 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B469BC  7C 7E 1B 78 */	mr r30, r3
/* 80B469C0  38 60 00 58 */	li r3, 0x58
/* 80B469C4  4B 78 82 88 */	b __nw__FUl
/* 80B469C8  7C 60 1B 79 */	or. r0, r3, r3
/* 80B469CC  41 82 00 4C */	beq lbl_80B46A18
/* 80B469D0  38 1F 05 80 */	addi r0, r31, 0x580
/* 80B469D4  90 01 00 08 */	stw r0, 8(r1)
/* 80B469D8  3C 00 00 08 */	lis r0, 8
/* 80B469DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B469E0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B469E4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B469E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B469EC  7F C4 F3 78 */	mr r4, r30
/* 80B469F0  38 A0 00 00 */	li r5, 0
/* 80B469F4  38 C0 00 00 */	li r6, 0
/* 80B469F8  38 E0 00 00 */	li r7, 0
/* 80B469FC  39 00 FF FF */	li r8, -1
/* 80B46A00  3D 20 80 B5 */	lis r9, lit_4345@ha
/* 80B46A04  C0 29 97 60 */	lfs f1, lit_4345@l(r9)
/* 80B46A08  39 20 00 00 */	li r9, 0
/* 80B46A0C  39 40 FF FF */	li r10, -1
/* 80B46A10  4B 4C 9D C0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B46A14  7C 60 1B 78 */	mr r0, r3
lbl_80B46A18:
/* 80B46A18  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80B46A1C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B46A20  28 03 00 00 */	cmplwi r3, 0
/* 80B46A24  41 82 00 1C */	beq lbl_80B46A40
/* 80B46A28  80 03 00 04 */	lwz r0, 4(r3)
/* 80B46A2C  28 00 00 00 */	cmplwi r0, 0
/* 80B46A30  40 82 00 10 */	bne lbl_80B46A40
/* 80B46A34  4B 4C A8 DC */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80B46A38  38 00 00 00 */	li r0, 0
/* 80B46A3C  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80B46A40:
/* 80B46A40  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B46A44  28 03 00 00 */	cmplwi r3, 0
/* 80B46A48  40 82 00 0C */	bne lbl_80B46A54
/* 80B46A4C  38 60 00 00 */	li r3, 0
/* 80B46A50  48 00 01 84 */	b lbl_80B46BD4
lbl_80B46A54:
/* 80B46A54  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B46A58  38 C0 00 00 */	li r6, 0
/* 80B46A5C  3C 60 80 B4 */	lis r3, ctrlJointCallBack__13daNpc_yamiS_cFP8J3DJointi@ha
/* 80B46A60  38 83 6E C4 */	addi r4, r3, ctrlJointCallBack__13daNpc_yamiS_cFP8J3DJointi@l
/* 80B46A64  48 00 00 18 */	b lbl_80B46A7C
lbl_80B46A68:
/* 80B46A68  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80B46A6C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B46A70  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B46A74  90 83 00 04 */	stw r4, 4(r3)
/* 80B46A78  38 C6 00 01 */	addi r6, r6, 1
lbl_80B46A7C:
/* 80B46A7C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B46A80  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80B46A84  7C 03 00 40 */	cmplw r3, r0
/* 80B46A88  41 80 FF E0 */	blt lbl_80B46A68
/* 80B46A8C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B46A90  38 60 01 08 */	li r3, 0x108
/* 80B46A94  4B 78 81 B8 */	b __nw__FUl
/* 80B46A98  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B46A9C  41 82 00 D0 */	beq lbl_80B46B6C
/* 80B46AA0  7F DD F3 78 */	mr r29, r30
/* 80B46AA4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B46AA8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B46AAC  90 1E 00 00 */	stw r0, 0(r30)
/* 80B46AB0  38 7E 00 04 */	addi r3, r30, 4
/* 80B46AB4  3C 80 80 B4 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B46AB8  38 84 6D 90 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B46ABC  3C A0 80 B4 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B46AC0  38 A5 6D 54 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B46AC4  38 C0 00 08 */	li r6, 8
/* 80B46AC8  38 E0 00 02 */	li r7, 2
/* 80B46ACC  4B 81 B2 94 */	b __construct_array
/* 80B46AD0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B46AD4  3C 80 80 B4 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B46AD8  38 84 6D 3C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B46ADC  3C A0 80 B4 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B46AE0  38 A5 6D 00 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B46AE4  38 C0 00 08 */	li r6, 8
/* 80B46AE8  38 E0 00 08 */	li r7, 8
/* 80B46AEC  4B 81 B2 74 */	b __construct_array
/* 80B46AF0  38 7E 00 54 */	addi r3, r30, 0x54
/* 80B46AF4  3C 80 80 B4 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B46AF8  38 84 6C DC */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B46AFC  3C A0 80 B4 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B46B00  38 A5 6C 94 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B46B04  38 C0 00 0C */	li r6, 0xc
/* 80B46B08  38 E0 00 08 */	li r7, 8
/* 80B46B0C  4B 81 B2 54 */	b __construct_array
/* 80B46B10  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80B46B14  3C 80 80 B4 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B46B18  38 84 6C 7C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B46B1C  3C A0 80 B4 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B46B20  38 A5 6C 40 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B46B24  38 C0 00 08 */	li r6, 8
/* 80B46B28  38 E0 00 04 */	li r7, 4
/* 80B46B2C  4B 81 B2 34 */	b __construct_array
/* 80B46B30  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80B46B34  3C 80 80 B4 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B46B38  38 84 6C 28 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B46B3C  3C A0 80 B4 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B46B40  38 A5 6B EC */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B46B44  38 C0 00 08 */	li r6, 8
/* 80B46B48  38 E0 00 04 */	li r7, 4
/* 80B46B4C  4B 81 B2 14 */	b __construct_array
/* 80B46B50  7F C3 F3 78 */	mr r3, r30
/* 80B46B54  4B 7E 57 CC */	b initialize__14J3DMaterialAnmFv
/* 80B46B58  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80B46B5C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80B46B60  90 1D 00 00 */	stw r0, 0(r29)
/* 80B46B64  7F A3 EB 78 */	mr r3, r29
/* 80B46B68  4B 5F EB FC */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B46B6C:
/* 80B46B6C  93 DF 09 6C */	stw r30, 0x96c(r31)
/* 80B46B70  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80B46B74  28 00 00 00 */	cmplwi r0, 0
/* 80B46B78  40 82 00 0C */	bne lbl_80B46B84
/* 80B46B7C  38 60 00 00 */	li r3, 0
/* 80B46B80  48 00 00 54 */	b lbl_80B46BD4
lbl_80B46B84:
/* 80B46B84  7F E3 FB 78 */	mr r3, r31
/* 80B46B88  38 80 00 01 */	li r4, 1
/* 80B46B8C  38 A0 00 00 */	li r5, 0
/* 80B46B90  4B 60 37 F8 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80B46B94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B46B98  41 82 00 38 */	beq lbl_80B46BD0
/* 80B46B9C  7F E3 FB 78 */	mr r3, r31
/* 80B46BA0  38 80 00 00 */	li r4, 0
/* 80B46BA4  3C A0 80 B5 */	lis r5, lit_4194@ha
/* 80B46BA8  C0 25 97 54 */	lfs f1, lit_4194@l(r5)
/* 80B46BAC  38 A0 00 00 */	li r5, 0
/* 80B46BB0  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80B46BB4  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B46BB8  7D 89 03 A6 */	mtctr r12
/* 80B46BBC  4E 80 04 21 */	bctrl 
/* 80B46BC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B46BC4  41 82 00 0C */	beq lbl_80B46BD0
/* 80B46BC8  38 60 00 01 */	li r3, 1
/* 80B46BCC  48 00 00 08 */	b lbl_80B46BD4
lbl_80B46BD0:
/* 80B46BD0  38 60 00 00 */	li r3, 0
lbl_80B46BD4:
/* 80B46BD4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B46BD8  4B 81 B6 50 */	b _restgpr_29
/* 80B46BDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B46BE0  7C 08 03 A6 */	mtlr r0
/* 80B46BE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80B46BE8  4E 80 00 20 */	blr 

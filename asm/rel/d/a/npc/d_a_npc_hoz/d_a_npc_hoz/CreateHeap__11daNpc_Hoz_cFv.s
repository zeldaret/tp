lbl_80A01904:
/* 80A01904  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A01908  7C 08 02 A6 */	mflr r0
/* 80A0190C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A01910  39 61 00 30 */	addi r11, r1, 0x30
/* 80A01914  4B 96 08 C9 */	bl _savegpr_29
/* 80A01918  7C 7F 1B 78 */	mr r31, r3
/* 80A0191C  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80A01920  20 00 00 01 */	subfic r0, r0, 1
/* 80A01924  7C 00 00 34 */	cntlzw r0, r0
/* 80A01928  54 05 F0 B8 */	rlwinm r5, r0, 0x1e, 2, 0x1c
/* 80A0192C  3C 60 80 A0 */	lis r3, l_bmdData@ha /* 0x80A06824@ha */
/* 80A01930  38 83 68 24 */	addi r4, r3, l_bmdData@l /* 0x80A06824@l */
/* 80A01934  7C 64 2A 14 */	add r3, r4, r5
/* 80A01938  80 03 00 04 */	lwz r0, 4(r3)
/* 80A0193C  54 00 10 3A */	slwi r0, r0, 2
/* 80A01940  3C 60 80 A0 */	lis r3, l_resNameList@ha /* 0x80A0687C@ha */
/* 80A01944  38 63 68 7C */	addi r3, r3, l_resNameList@l /* 0x80A0687C@l */
/* 80A01948  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A0194C  7C 84 28 2E */	lwzx r4, r4, r5
/* 80A01950  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A01954  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A01958  3C A5 00 02 */	addis r5, r5, 2
/* 80A0195C  38 C0 00 80 */	li r6, 0x80
/* 80A01960  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A01964  4B 63 A9 89 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A01968  7C 7E 1B 78 */	mr r30, r3
/* 80A0196C  38 60 00 58 */	li r3, 0x58
/* 80A01970  4B 8C D2 DD */	bl __nw__FUl
/* 80A01974  7C 60 1B 79 */	or. r0, r3, r3
/* 80A01978  41 82 00 4C */	beq lbl_80A019C4
/* 80A0197C  38 1F 05 80 */	addi r0, r31, 0x580
/* 80A01980  90 01 00 08 */	stw r0, 8(r1)
/* 80A01984  3C 00 00 08 */	lis r0, 8
/* 80A01988  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A0198C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A01990  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A01994  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A01998  7F C4 F3 78 */	mr r4, r30
/* 80A0199C  38 A0 00 00 */	li r5, 0
/* 80A019A0  38 C0 00 00 */	li r6, 0
/* 80A019A4  38 E0 00 00 */	li r7, 0
/* 80A019A8  39 00 FF FF */	li r8, -1
/* 80A019AC  3D 20 80 A0 */	lis r9, lit_4486@ha /* 0x80A06718@ha */
/* 80A019B0  C0 29 67 18 */	lfs f1, lit_4486@l(r9)  /* 0x80A06718@l */
/* 80A019B4  39 20 00 00 */	li r9, 0
/* 80A019B8  39 40 FF FF */	li r10, -1
/* 80A019BC  4B 60 EE 15 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A019C0  7C 60 1B 78 */	mr r0, r3
lbl_80A019C4:
/* 80A019C4  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80A019C8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A019CC  28 03 00 00 */	cmplwi r3, 0
/* 80A019D0  41 82 00 1C */	beq lbl_80A019EC
/* 80A019D4  80 03 00 04 */	lwz r0, 4(r3)
/* 80A019D8  28 00 00 00 */	cmplwi r0, 0
/* 80A019DC  40 82 00 10 */	bne lbl_80A019EC
/* 80A019E0  4B 60 F9 31 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80A019E4  38 00 00 00 */	li r0, 0
/* 80A019E8  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80A019EC:
/* 80A019EC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80A019F0  28 03 00 00 */	cmplwi r3, 0
/* 80A019F4  40 82 00 0C */	bne lbl_80A01A00
/* 80A019F8  38 60 00 00 */	li r3, 0
/* 80A019FC  48 00 01 84 */	b lbl_80A01B80
lbl_80A01A00:
/* 80A01A00  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A01A04  38 C0 00 00 */	li r6, 0
/* 80A01A08  3C 60 80 A0 */	lis r3, ctrlJointCallBack__11daNpc_Hoz_cFP8J3DJointi@ha /* 0x80A01E64@ha */
/* 80A01A0C  38 83 1E 64 */	addi r4, r3, ctrlJointCallBack__11daNpc_Hoz_cFP8J3DJointi@l /* 0x80A01E64@l */
/* 80A01A10  48 00 00 18 */	b lbl_80A01A28
lbl_80A01A14:
/* 80A01A14  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80A01A18  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A01A1C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A01A20  90 83 00 04 */	stw r4, 4(r3)
/* 80A01A24  38 C6 00 01 */	addi r6, r6, 1
lbl_80A01A28:
/* 80A01A28  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A01A2C  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80A01A30  7C 03 00 40 */	cmplw r3, r0
/* 80A01A34  41 80 FF E0 */	blt lbl_80A01A14
/* 80A01A38  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80A01A3C  38 60 01 08 */	li r3, 0x108
/* 80A01A40  4B 8C D2 0D */	bl __nw__FUl
/* 80A01A44  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A01A48  41 82 00 D0 */	beq lbl_80A01B18
/* 80A01A4C  7F DD F3 78 */	mr r29, r30
/* 80A01A50  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80A01A54  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80A01A58  90 1E 00 00 */	stw r0, 0(r30)
/* 80A01A5C  38 7E 00 04 */	addi r3, r30, 4
/* 80A01A60  3C 80 80 A0 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80A01D3C@ha */
/* 80A01A64  38 84 1D 3C */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80A01D3C@l */
/* 80A01A68  3C A0 80 A0 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80A01D00@ha */
/* 80A01A6C  38 A5 1D 00 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80A01D00@l */
/* 80A01A70  38 C0 00 08 */	li r6, 8
/* 80A01A74  38 E0 00 02 */	li r7, 2
/* 80A01A78  4B 96 02 E9 */	bl __construct_array
/* 80A01A7C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A01A80  3C 80 80 A0 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80A01CE8@ha */
/* 80A01A84  38 84 1C E8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80A01CE8@l */
/* 80A01A88  3C A0 80 A0 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80A01CAC@ha */
/* 80A01A8C  38 A5 1C AC */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80A01CAC@l */
/* 80A01A90  38 C0 00 08 */	li r6, 8
/* 80A01A94  38 E0 00 08 */	li r7, 8
/* 80A01A98  4B 96 02 C9 */	bl __construct_array
/* 80A01A9C  38 7E 00 54 */	addi r3, r30, 0x54
/* 80A01AA0  3C 80 80 A0 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80A01C88@ha */
/* 80A01AA4  38 84 1C 88 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80A01C88@l */
/* 80A01AA8  3C A0 80 A0 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80A01C40@ha */
/* 80A01AAC  38 A5 1C 40 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80A01C40@l */
/* 80A01AB0  38 C0 00 0C */	li r6, 0xc
/* 80A01AB4  38 E0 00 08 */	li r7, 8
/* 80A01AB8  4B 96 02 A9 */	bl __construct_array
/* 80A01ABC  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80A01AC0  3C 80 80 A0 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80A01C28@ha */
/* 80A01AC4  38 84 1C 28 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80A01C28@l */
/* 80A01AC8  3C A0 80 A0 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80A01BEC@ha */
/* 80A01ACC  38 A5 1B EC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80A01BEC@l */
/* 80A01AD0  38 C0 00 08 */	li r6, 8
/* 80A01AD4  38 E0 00 04 */	li r7, 4
/* 80A01AD8  4B 96 02 89 */	bl __construct_array
/* 80A01ADC  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80A01AE0  3C 80 80 A0 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80A01BD4@ha */
/* 80A01AE4  38 84 1B D4 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80A01BD4@l */
/* 80A01AE8  3C A0 80 A0 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80A01B98@ha */
/* 80A01AEC  38 A5 1B 98 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80A01B98@l */
/* 80A01AF0  38 C0 00 08 */	li r6, 8
/* 80A01AF4  38 E0 00 04 */	li r7, 4
/* 80A01AF8  4B 96 02 69 */	bl __construct_array
/* 80A01AFC  7F C3 F3 78 */	mr r3, r30
/* 80A01B00  4B 92 A8 21 */	bl initialize__14J3DMaterialAnmFv
/* 80A01B04  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha /* 0x803B3B6C@ha */
/* 80A01B08  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l /* 0x803B3B6C@l */
/* 80A01B0C  90 1D 00 00 */	stw r0, 0(r29)
/* 80A01B10  7F A3 EB 78 */	mr r3, r29
/* 80A01B14  4B 74 3C 51 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80A01B18:
/* 80A01B18  93 DF 09 6C */	stw r30, 0x96c(r31)
/* 80A01B1C  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80A01B20  28 00 00 00 */	cmplwi r0, 0
/* 80A01B24  40 82 00 0C */	bne lbl_80A01B30
/* 80A01B28  38 60 00 00 */	li r3, 0
/* 80A01B2C  48 00 00 54 */	b lbl_80A01B80
lbl_80A01B30:
/* 80A01B30  7F E3 FB 78 */	mr r3, r31
/* 80A01B34  38 80 00 01 */	li r4, 1
/* 80A01B38  38 A0 00 00 */	li r5, 0
/* 80A01B3C  4B 74 88 4D */	bl setFaceMotionAnm__8daNpcT_cFib
/* 80A01B40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A01B44  41 82 00 38 */	beq lbl_80A01B7C
/* 80A01B48  7F E3 FB 78 */	mr r3, r31
/* 80A01B4C  38 80 00 00 */	li r4, 0
/* 80A01B50  3C A0 80 A0 */	lis r5, lit_4337@ha /* 0x80A0670C@ha */
/* 80A01B54  C0 25 67 0C */	lfs f1, lit_4337@l(r5)  /* 0x80A0670C@l */
/* 80A01B58  38 A0 00 00 */	li r5, 0
/* 80A01B5C  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80A01B60  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A01B64  7D 89 03 A6 */	mtctr r12
/* 80A01B68  4E 80 04 21 */	bctrl 
/* 80A01B6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A01B70  41 82 00 0C */	beq lbl_80A01B7C
/* 80A01B74  38 60 00 01 */	li r3, 1
/* 80A01B78  48 00 00 08 */	b lbl_80A01B80
lbl_80A01B7C:
/* 80A01B7C  38 60 00 00 */	li r3, 0
lbl_80A01B80:
/* 80A01B80  39 61 00 30 */	addi r11, r1, 0x30
/* 80A01B84  4B 96 06 A5 */	bl _restgpr_29
/* 80A01B88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A01B8C  7C 08 03 A6 */	mtlr r0
/* 80A01B90  38 21 00 30 */	addi r1, r1, 0x30
/* 80A01B94  4E 80 00 20 */	blr 

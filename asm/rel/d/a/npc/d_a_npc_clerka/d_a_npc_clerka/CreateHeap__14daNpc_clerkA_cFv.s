lbl_80992914:
/* 80992914  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80992918  7C 08 02 A6 */	mflr r0
/* 8099291C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80992920  39 61 00 30 */	addi r11, r1, 0x30
/* 80992924  4B 9C F8 B8 */	b _savegpr_29
/* 80992928  7C 7F 1B 78 */	mr r31, r3
/* 8099292C  3C 60 80 99 */	lis r3, l_bmdData@ha
/* 80992930  38 83 59 B4 */	addi r4, r3, l_bmdData@l
/* 80992934  80 04 00 04 */	lwz r0, 4(r4)
/* 80992938  54 00 10 3A */	slwi r0, r0, 2
/* 8099293C  3C 60 80 99 */	lis r3, l_resNameList@ha
/* 80992940  38 63 59 D4 */	addi r3, r3, l_resNameList@l
/* 80992944  7C 63 00 2E */	lwzx r3, r3, r0
/* 80992948  80 84 00 00 */	lwz r4, 0(r4)
/* 8099294C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80992950  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80992954  3C A5 00 02 */	addis r5, r5, 2
/* 80992958  38 C0 00 80 */	li r6, 0x80
/* 8099295C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80992960  4B 6A 99 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80992964  7C 7E 1B 78 */	mr r30, r3
/* 80992968  38 60 00 58 */	li r3, 0x58
/* 8099296C  4B 93 C2 E0 */	b __nw__FUl
/* 80992970  7C 60 1B 79 */	or. r0, r3, r3
/* 80992974  41 82 00 4C */	beq lbl_809929C0
/* 80992978  38 1F 05 80 */	addi r0, r31, 0x580
/* 8099297C  90 01 00 08 */	stw r0, 8(r1)
/* 80992980  38 00 00 00 */	li r0, 0
/* 80992984  90 01 00 0C */	stw r0, 0xc(r1)
/* 80992988  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 8099298C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80992990  90 01 00 10 */	stw r0, 0x10(r1)
/* 80992994  7F C4 F3 78 */	mr r4, r30
/* 80992998  38 A0 00 00 */	li r5, 0
/* 8099299C  38 C0 00 00 */	li r6, 0
/* 809929A0  38 E0 00 00 */	li r7, 0
/* 809929A4  39 00 FF FF */	li r8, -1
/* 809929A8  3D 20 80 99 */	lis r9, lit_4490@ha
/* 809929AC  C0 29 59 34 */	lfs f1, lit_4490@l(r9)
/* 809929B0  39 20 00 00 */	li r9, 0
/* 809929B4  39 40 FF FF */	li r10, -1
/* 809929B8  4B 67 DE 18 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809929BC  7C 60 1B 78 */	mr r0, r3
lbl_809929C0:
/* 809929C0  90 1F 05 78 */	stw r0, 0x578(r31)
/* 809929C4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 809929C8  28 03 00 00 */	cmplwi r3, 0
/* 809929CC  41 82 00 1C */	beq lbl_809929E8
/* 809929D0  80 03 00 04 */	lwz r0, 4(r3)
/* 809929D4  28 00 00 00 */	cmplwi r0, 0
/* 809929D8  40 82 00 10 */	bne lbl_809929E8
/* 809929DC  4B 67 E9 34 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809929E0  38 00 00 00 */	li r0, 0
/* 809929E4  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_809929E8:
/* 809929E8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 809929EC  28 03 00 00 */	cmplwi r3, 0
/* 809929F0  40 82 00 0C */	bne lbl_809929FC
/* 809929F4  38 60 00 00 */	li r3, 0
/* 809929F8  48 00 01 84 */	b lbl_80992B7C
lbl_809929FC:
/* 809929FC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80992A00  38 C0 00 00 */	li r6, 0
/* 80992A04  3C 60 80 99 */	lis r3, ctrlJointCallBack__14daNpc_clerkA_cFP8J3DJointi@ha
/* 80992A08  38 83 2F 10 */	addi r4, r3, ctrlJointCallBack__14daNpc_clerkA_cFP8J3DJointi@l
/* 80992A0C  48 00 00 18 */	b lbl_80992A24
lbl_80992A10:
/* 80992A10  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80992A14  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80992A18  7C 63 00 2E */	lwzx r3, r3, r0
/* 80992A1C  90 83 00 04 */	stw r4, 4(r3)
/* 80992A20  38 C6 00 01 */	addi r6, r6, 1
lbl_80992A24:
/* 80992A24  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80992A28  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80992A2C  7C 03 00 40 */	cmplw r3, r0
/* 80992A30  41 80 FF E0 */	blt lbl_80992A10
/* 80992A34  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80992A38  38 60 01 08 */	li r3, 0x108
/* 80992A3C  4B 93 C2 10 */	b __nw__FUl
/* 80992A40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80992A44  41 82 00 D0 */	beq lbl_80992B14
/* 80992A48  7F DD F3 78 */	mr r29, r30
/* 80992A4C  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80992A50  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80992A54  90 1E 00 00 */	stw r0, 0(r30)
/* 80992A58  38 7E 00 04 */	addi r3, r30, 4
/* 80992A5C  3C 80 80 99 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80992A60  38 84 2D 38 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80992A64  3C A0 80 99 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80992A68  38 A5 2C FC */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80992A6C  38 C0 00 08 */	li r6, 8
/* 80992A70  38 E0 00 02 */	li r7, 2
/* 80992A74  4B 9C F2 EC */	b __construct_array
/* 80992A78  38 7E 00 14 */	addi r3, r30, 0x14
/* 80992A7C  3C 80 80 99 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80992A80  38 84 2C E4 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80992A84  3C A0 80 99 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80992A88  38 A5 2C A8 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80992A8C  38 C0 00 08 */	li r6, 8
/* 80992A90  38 E0 00 08 */	li r7, 8
/* 80992A94  4B 9C F2 CC */	b __construct_array
/* 80992A98  38 7E 00 54 */	addi r3, r30, 0x54
/* 80992A9C  3C 80 80 99 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80992AA0  38 84 2C 84 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80992AA4  3C A0 80 99 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80992AA8  38 A5 2C 3C */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80992AAC  38 C0 00 0C */	li r6, 0xc
/* 80992AB0  38 E0 00 08 */	li r7, 8
/* 80992AB4  4B 9C F2 AC */	b __construct_array
/* 80992AB8  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80992ABC  3C 80 80 99 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80992AC0  38 84 2C 24 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80992AC4  3C A0 80 99 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80992AC8  38 A5 2B E8 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80992ACC  38 C0 00 08 */	li r6, 8
/* 80992AD0  38 E0 00 04 */	li r7, 4
/* 80992AD4  4B 9C F2 8C */	b __construct_array
/* 80992AD8  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80992ADC  3C 80 80 99 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80992AE0  38 84 2B D0 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80992AE4  3C A0 80 99 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80992AE8  38 A5 2B 94 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80992AEC  38 C0 00 08 */	li r6, 8
/* 80992AF0  38 E0 00 04 */	li r7, 4
/* 80992AF4  4B 9C F2 6C */	b __construct_array
/* 80992AF8  7F C3 F3 78 */	mr r3, r30
/* 80992AFC  4B 99 98 24 */	b initialize__14J3DMaterialAnmFv
/* 80992B00  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80992B04  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80992B08  90 1D 00 00 */	stw r0, 0(r29)
/* 80992B0C  7F A3 EB 78 */	mr r3, r29
/* 80992B10  4B 7B 2C 54 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80992B14:
/* 80992B14  93 DF 09 6C */	stw r30, 0x96c(r31)
/* 80992B18  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80992B1C  28 00 00 00 */	cmplwi r0, 0
/* 80992B20  40 82 00 0C */	bne lbl_80992B2C
/* 80992B24  38 60 00 00 */	li r3, 0
/* 80992B28  48 00 00 54 */	b lbl_80992B7C
lbl_80992B2C:
/* 80992B2C  7F E3 FB 78 */	mr r3, r31
/* 80992B30  38 80 00 01 */	li r4, 1
/* 80992B34  38 A0 00 00 */	li r5, 0
/* 80992B38  4B 7B 78 50 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80992B3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80992B40  41 82 00 38 */	beq lbl_80992B78
/* 80992B44  7F E3 FB 78 */	mr r3, r31
/* 80992B48  38 80 00 00 */	li r4, 0
/* 80992B4C  3C A0 80 99 */	lis r5, lit_4123@ha
/* 80992B50  C0 25 59 20 */	lfs f1, lit_4123@l(r5)
/* 80992B54  38 A0 00 00 */	li r5, 0
/* 80992B58  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80992B5C  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80992B60  7D 89 03 A6 */	mtctr r12
/* 80992B64  4E 80 04 21 */	bctrl 
/* 80992B68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80992B6C  41 82 00 0C */	beq lbl_80992B78
/* 80992B70  38 60 00 01 */	li r3, 1
/* 80992B74  48 00 00 08 */	b lbl_80992B7C
lbl_80992B78:
/* 80992B78  38 60 00 00 */	li r3, 0
lbl_80992B7C:
/* 80992B7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80992B80  4B 9C F6 A8 */	b _restgpr_29
/* 80992B84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80992B88  7C 08 03 A6 */	mtlr r0
/* 80992B8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80992B90  4E 80 00 20 */	blr 

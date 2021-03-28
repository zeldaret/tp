lbl_80D0F904:
/* 80D0F904  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0F908  7C 08 02 A6 */	mflr r0
/* 80D0F90C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D0F910  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0F914  4B 65 28 C8 */	b _savegpr_29
/* 80D0F918  7C 7F 1B 78 */	mr r31, r3
/* 80D0F91C  3C 60 80 D1 */	lis r3, l_arcName@ha
/* 80D0F920  38 63 29 54 */	addi r3, r3, l_arcName@l
/* 80D0F924  80 63 00 00 */	lwz r3, 0(r3)
/* 80D0F928  38 80 00 0E */	li r4, 0xe
/* 80D0F92C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D0F930  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D0F934  3C A5 00 02 */	addis r5, r5, 2
/* 80D0F938  38 C0 00 80 */	li r6, 0x80
/* 80D0F93C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D0F940  4B 32 C9 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D0F944  7C 7E 1B 78 */	mr r30, r3
/* 80D0F948  38 60 00 58 */	li r3, 0x58
/* 80D0F94C  4B 5B F3 00 */	b __nw__FUl
/* 80D0F950  7C 60 1B 79 */	or. r0, r3, r3
/* 80D0F954  41 82 00 4C */	beq lbl_80D0F9A0
/* 80D0F958  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80D0F95C  90 01 00 08 */	stw r0, 8(r1)
/* 80D0F960  3C 00 00 08 */	lis r0, 8
/* 80D0F964  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D0F968  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80D0F96C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80D0F970  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D0F974  7F C4 F3 78 */	mr r4, r30
/* 80D0F978  38 A0 00 00 */	li r5, 0
/* 80D0F97C  38 C0 00 00 */	li r6, 0
/* 80D0F980  38 E0 00 00 */	li r7, 0
/* 80D0F984  39 00 FF FF */	li r8, -1
/* 80D0F988  3D 20 80 D1 */	lis r9, lit_4323@ha
/* 80D0F98C  C0 29 27 D0 */	lfs f1, lit_4323@l(r9)
/* 80D0F990  39 20 00 00 */	li r9, 0
/* 80D0F994  39 40 FF FF */	li r10, -1
/* 80D0F998  4B 30 0E 38 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80D0F99C  7C 60 1B 78 */	mr r0, r3
lbl_80D0F9A0:
/* 80D0F9A0  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80D0F9A4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D0F9A8  28 03 00 00 */	cmplwi r3, 0
/* 80D0F9AC  41 82 00 1C */	beq lbl_80D0F9C8
/* 80D0F9B0  80 03 00 04 */	lwz r0, 4(r3)
/* 80D0F9B4  28 00 00 00 */	cmplwi r0, 0
/* 80D0F9B8  40 82 00 10 */	bne lbl_80D0F9C8
/* 80D0F9BC  4B 30 19 54 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80D0F9C0  38 00 00 00 */	li r0, 0
/* 80D0F9C4  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80D0F9C8:
/* 80D0F9C8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D0F9CC  28 03 00 00 */	cmplwi r3, 0
/* 80D0F9D0  40 82 00 0C */	bne lbl_80D0F9DC
/* 80D0F9D4  38 60 00 00 */	li r3, 0
/* 80D0F9D8  48 00 01 88 */	b lbl_80D0FB60
lbl_80D0F9DC:
/* 80D0F9DC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80D0F9E0  38 C0 00 00 */	li r6, 0
/* 80D0F9E4  3C 60 80 D1 */	lis r3, ctrlJointCallBack__10daObjTks_cFP8J3DJointi@ha
/* 80D0F9E8  38 83 00 B4 */	addi r4, r3, ctrlJointCallBack__10daObjTks_cFP8J3DJointi@l
/* 80D0F9EC  48 00 00 18 */	b lbl_80D0FA04
lbl_80D0F9F0:
/* 80D0F9F0  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80D0F9F4  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80D0F9F8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D0F9FC  90 83 00 04 */	stw r4, 4(r3)
/* 80D0FA00  38 C6 00 01 */	addi r6, r6, 1
lbl_80D0FA04:
/* 80D0FA04  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80D0FA08  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80D0FA0C  7C 03 00 40 */	cmplw r3, r0
/* 80D0FA10  41 80 FF E0 */	blt lbl_80D0F9F0
/* 80D0FA14  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80D0FA18  38 60 01 08 */	li r3, 0x108
/* 80D0FA1C  4B 5B F2 30 */	b __nw__FUl
/* 80D0FA20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D0FA24  41 82 00 D0 */	beq lbl_80D0FAF4
/* 80D0FA28  7F DD F3 78 */	mr r29, r30
/* 80D0FA2C  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80D0FA30  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80D0FA34  90 1E 00 00 */	stw r0, 0(r30)
/* 80D0FA38  38 7E 00 04 */	addi r3, r30, 4
/* 80D0FA3C  3C 80 80 D1 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80D0FA40  38 84 FD 1C */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80D0FA44  3C A0 80 D1 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80D0FA48  38 A5 FC E0 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80D0FA4C  38 C0 00 08 */	li r6, 8
/* 80D0FA50  38 E0 00 02 */	li r7, 2
/* 80D0FA54  4B 65 23 0C */	b __construct_array
/* 80D0FA58  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D0FA5C  3C 80 80 D1 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80D0FA60  38 84 FC C8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80D0FA64  3C A0 80 D1 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80D0FA68  38 A5 FC 8C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80D0FA6C  38 C0 00 08 */	li r6, 8
/* 80D0FA70  38 E0 00 08 */	li r7, 8
/* 80D0FA74  4B 65 22 EC */	b __construct_array
/* 80D0FA78  38 7E 00 54 */	addi r3, r30, 0x54
/* 80D0FA7C  3C 80 80 D1 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80D0FA80  38 84 FC 68 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80D0FA84  3C A0 80 D1 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80D0FA88  38 A5 FC 20 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80D0FA8C  38 C0 00 0C */	li r6, 0xc
/* 80D0FA90  38 E0 00 08 */	li r7, 8
/* 80D0FA94  4B 65 22 CC */	b __construct_array
/* 80D0FA98  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80D0FA9C  3C 80 80 D1 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80D0FAA0  38 84 FC 08 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80D0FAA4  3C A0 80 D1 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80D0FAA8  38 A5 FB CC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80D0FAAC  38 C0 00 08 */	li r6, 8
/* 80D0FAB0  38 E0 00 04 */	li r7, 4
/* 80D0FAB4  4B 65 22 AC */	b __construct_array
/* 80D0FAB8  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80D0FABC  3C 80 80 D1 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80D0FAC0  38 84 FB B4 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80D0FAC4  3C A0 80 D1 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80D0FAC8  38 A5 FB 78 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80D0FACC  38 C0 00 08 */	li r6, 8
/* 80D0FAD0  38 E0 00 04 */	li r7, 4
/* 80D0FAD4  4B 65 22 8C */	b __construct_array
/* 80D0FAD8  7F C3 F3 78 */	mr r3, r30
/* 80D0FADC  4B 61 C8 44 */	b initialize__14J3DMaterialAnmFv
/* 80D0FAE0  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80D0FAE4  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80D0FAE8  90 1D 00 00 */	stw r0, 0(r29)
/* 80D0FAEC  7F A3 EB 78 */	mr r3, r29
/* 80D0FAF0  4B 44 0C 48 */	b initialize__15daNpcF_MatAnm_cFv
lbl_80D0FAF4:
/* 80D0FAF4  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 80D0FAF8  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80D0FAFC  28 00 00 00 */	cmplwi r0, 0
/* 80D0FB00  40 82 00 0C */	bne lbl_80D0FB0C
/* 80D0FB04  38 60 00 00 */	li r3, 0
/* 80D0FB08  48 00 00 58 */	b lbl_80D0FB60
lbl_80D0FB0C:
/* 80D0FB0C  7F E3 FB 78 */	mr r3, r31
/* 80D0FB10  38 80 00 01 */	li r4, 1
/* 80D0FB14  38 A0 00 00 */	li r5, 0
/* 80D0FB18  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80D0FB1C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80D0FB20  7D 89 03 A6 */	mtctr r12
/* 80D0FB24  4E 80 04 21 */	bctrl 
/* 80D0FB28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0FB2C  40 82 00 0C */	bne lbl_80D0FB38
/* 80D0FB30  38 60 00 00 */	li r3, 0
/* 80D0FB34  48 00 00 2C */	b lbl_80D0FB60
lbl_80D0FB38:
/* 80D0FB38  7F E3 FB 78 */	mr r3, r31
/* 80D0FB3C  38 80 00 00 */	li r4, 0
/* 80D0FB40  3C A0 80 D1 */	lis r5, lit_4324@ha
/* 80D0FB44  C0 25 27 D4 */	lfs f1, lit_4324@l(r5)
/* 80D0FB48  38 A0 00 00 */	li r5, 0
/* 80D0FB4C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80D0FB50  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80D0FB54  7D 89 03 A6 */	mtctr r12
/* 80D0FB58  4E 80 04 21 */	bctrl 
/* 80D0FB5C  38 60 00 01 */	li r3, 1
lbl_80D0FB60:
/* 80D0FB60  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0FB64  4B 65 26 C4 */	b _restgpr_29
/* 80D0FB68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D0FB6C  7C 08 03 A6 */	mtlr r0
/* 80D0FB70  38 21 00 30 */	addi r1, r1, 0x30
/* 80D0FB74  4E 80 00 20 */	blr 

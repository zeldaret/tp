lbl_80B69330:
/* 80B69330  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B69334  7C 08 02 A6 */	mflr r0
/* 80B69338  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B6933C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B69340  4B 7F 8E 9C */	b _savegpr_29
/* 80B69344  7C 7E 1B 78 */	mr r30, r3
/* 80B69348  3C 60 80 B7 */	lis r3, l_bmdData@ha
/* 80B6934C  38 83 BD F0 */	addi r4, r3, l_bmdData@l
/* 80B69350  80 04 00 04 */	lwz r0, 4(r4)
/* 80B69354  54 00 10 3A */	slwi r0, r0, 2
/* 80B69358  3C 60 80 B7 */	lis r3, l_resNameList@ha
/* 80B6935C  38 63 BE 08 */	addi r3, r3, l_resNameList@l
/* 80B69360  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B69364  80 84 00 00 */	lwz r4, 0(r4)
/* 80B69368  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B6936C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B69370  3C A5 00 02 */	addis r5, r5, 2
/* 80B69374  38 C0 00 80 */	li r6, 0x80
/* 80B69378  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80B6937C  4B 4D 2F 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B69380  7C 7D 1B 79 */	or. r29, r3, r3
/* 80B69384  40 82 00 0C */	bne lbl_80B69390
/* 80B69388  38 60 00 00 */	li r3, 0
/* 80B6938C  48 00 01 FC */	b lbl_80B69588
lbl_80B69390:
/* 80B69390  38 60 00 58 */	li r3, 0x58
/* 80B69394  4B 76 58 B8 */	b __nw__FUl
/* 80B69398  7C 60 1B 79 */	or. r0, r3, r3
/* 80B6939C  41 82 00 4C */	beq lbl_80B693E8
/* 80B693A0  38 1E 05 80 */	addi r0, r30, 0x580
/* 80B693A4  90 01 00 08 */	stw r0, 8(r1)
/* 80B693A8  3C 00 00 08 */	lis r0, 8
/* 80B693AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B693B0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B693B4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B693B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B693BC  7F A4 EB 78 */	mr r4, r29
/* 80B693C0  38 A0 00 00 */	li r5, 0
/* 80B693C4  38 C0 00 00 */	li r6, 0
/* 80B693C8  38 E0 00 00 */	li r7, 0
/* 80B693CC  39 00 FF FF */	li r8, -1
/* 80B693D0  3D 20 80 B7 */	lis r9, lit_4336@ha
/* 80B693D4  C0 29 BD 78 */	lfs f1, lit_4336@l(r9)
/* 80B693D8  39 20 00 00 */	li r9, 0
/* 80B693DC  39 40 FF FF */	li r10, -1
/* 80B693E0  4B 4A 73 F0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B693E4  7C 60 1B 78 */	mr r0, r3
lbl_80B693E8:
/* 80B693E8  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80B693EC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B693F0  28 03 00 00 */	cmplwi r3, 0
/* 80B693F4  41 82 00 10 */	beq lbl_80B69404
/* 80B693F8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B693FC  28 05 00 00 */	cmplwi r5, 0
/* 80B69400  40 82 00 0C */	bne lbl_80B6940C
lbl_80B69404:
/* 80B69404  38 60 00 00 */	li r3, 0
/* 80B69408  48 00 01 80 */	b lbl_80B69588
lbl_80B6940C:
/* 80B6940C  38 C0 00 00 */	li r6, 0
/* 80B69410  3C 60 80 B7 */	lis r3, ctrlJointCallBack__12daNpc_zanB_cFP8J3DJointi@ha
/* 80B69414  38 83 98 64 */	addi r4, r3, ctrlJointCallBack__12daNpc_zanB_cFP8J3DJointi@l
/* 80B69418  48 00 00 18 */	b lbl_80B69430
lbl_80B6941C:
/* 80B6941C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80B69420  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B69424  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B69428  90 83 00 04 */	stw r4, 4(r3)
/* 80B6942C  38 C6 00 01 */	addi r6, r6, 1
lbl_80B69430:
/* 80B69430  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B69434  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80B69438  7C 03 00 40 */	cmplw r3, r0
/* 80B6943C  41 80 FF E0 */	blt lbl_80B6941C
/* 80B69440  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80B69444  38 60 01 08 */	li r3, 0x108
/* 80B69448  4B 76 58 04 */	b __nw__FUl
/* 80B6944C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B69450  41 82 00 D0 */	beq lbl_80B69520
/* 80B69454  7F FD FB 78 */	mr r29, r31
/* 80B69458  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B6945C  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B69460  90 1F 00 00 */	stw r0, 0(r31)
/* 80B69464  38 7F 00 04 */	addi r3, r31, 4
/* 80B69468  3C 80 80 B7 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B6946C  38 84 97 44 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B69470  3C A0 80 B7 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B69474  38 A5 97 08 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B69478  38 C0 00 08 */	li r6, 8
/* 80B6947C  38 E0 00 02 */	li r7, 2
/* 80B69480  4B 7F 88 E0 */	b __construct_array
/* 80B69484  38 7F 00 14 */	addi r3, r31, 0x14
/* 80B69488  3C 80 80 B7 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B6948C  38 84 96 F0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B69490  3C A0 80 B7 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B69494  38 A5 96 B4 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B69498  38 C0 00 08 */	li r6, 8
/* 80B6949C  38 E0 00 08 */	li r7, 8
/* 80B694A0  4B 7F 88 C0 */	b __construct_array
/* 80B694A4  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B694A8  3C 80 80 B7 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B694AC  38 84 96 90 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B694B0  3C A0 80 B7 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B694B4  38 A5 96 48 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B694B8  38 C0 00 0C */	li r6, 0xc
/* 80B694BC  38 E0 00 08 */	li r7, 8
/* 80B694C0  4B 7F 88 A0 */	b __construct_array
/* 80B694C4  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80B694C8  3C 80 80 B7 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B694CC  38 84 96 30 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B694D0  3C A0 80 B7 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B694D4  38 A5 95 F4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B694D8  38 C0 00 08 */	li r6, 8
/* 80B694DC  38 E0 00 04 */	li r7, 4
/* 80B694E0  4B 7F 88 80 */	b __construct_array
/* 80B694E4  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80B694E8  3C 80 80 B7 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B694EC  38 84 95 DC */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B694F0  3C A0 80 B7 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B694F4  38 A5 95 A0 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B694F8  38 C0 00 08 */	li r6, 8
/* 80B694FC  38 E0 00 04 */	li r7, 4
/* 80B69500  4B 7F 88 60 */	b __construct_array
/* 80B69504  7F E3 FB 78 */	mr r3, r31
/* 80B69508  4B 7C 2E 18 */	b initialize__14J3DMaterialAnmFv
/* 80B6950C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80B69510  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80B69514  90 1D 00 00 */	stw r0, 0(r29)
/* 80B69518  7F A3 EB 78 */	mr r3, r29
/* 80B6951C  4B 5D C2 48 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B69520:
/* 80B69520  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 80B69524  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80B69528  28 00 00 00 */	cmplwi r0, 0
/* 80B6952C  40 82 00 0C */	bne lbl_80B69538
/* 80B69530  38 60 00 00 */	li r3, 0
/* 80B69534  48 00 00 54 */	b lbl_80B69588
lbl_80B69538:
/* 80B69538  7F C3 F3 78 */	mr r3, r30
/* 80B6953C  38 80 00 00 */	li r4, 0
/* 80B69540  38 A0 00 00 */	li r5, 0
/* 80B69544  4B 5E 0E 44 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80B69548  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B6954C  41 82 00 38 */	beq lbl_80B69584
/* 80B69550  7F C3 F3 78 */	mr r3, r30
/* 80B69554  38 80 00 00 */	li r4, 0
/* 80B69558  3C A0 80 B7 */	lis r5, lit_4190@ha
/* 80B6955C  C0 25 BD 6C */	lfs f1, lit_4190@l(r5)
/* 80B69560  38 A0 00 00 */	li r5, 0
/* 80B69564  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B69568  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B6956C  7D 89 03 A6 */	mtctr r12
/* 80B69570  4E 80 04 21 */	bctrl 
/* 80B69574  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B69578  41 82 00 0C */	beq lbl_80B69584
/* 80B6957C  38 60 00 01 */	li r3, 1
/* 80B69580  48 00 00 08 */	b lbl_80B69588
lbl_80B69584:
/* 80B69584  38 60 00 00 */	li r3, 0
lbl_80B69588:
/* 80B69588  39 61 00 30 */	addi r11, r1, 0x30
/* 80B6958C  4B 7F 8C 9C */	b _restgpr_29
/* 80B69590  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B69594  7C 08 03 A6 */	mtlr r0
/* 80B69598  38 21 00 30 */	addi r1, r1, 0x30
/* 80B6959C  4E 80 00 20 */	blr 

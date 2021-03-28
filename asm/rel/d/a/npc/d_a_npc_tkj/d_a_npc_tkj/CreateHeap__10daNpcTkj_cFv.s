lbl_80573B18:
/* 80573B18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80573B1C  7C 08 02 A6 */	mflr r0
/* 80573B20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80573B24  39 61 00 30 */	addi r11, r1, 0x30
/* 80573B28  4B DE E6 B4 */	b _savegpr_29
/* 80573B2C  7C 7F 1B 78 */	mr r31, r3
/* 80573B30  88 03 0A 89 */	lbz r0, 0xa89(r3)
/* 80573B34  28 00 00 01 */	cmplwi r0, 1
/* 80573B38  38 00 00 00 */	li r0, 0
/* 80573B3C  54 05 18 38 */	slwi r5, r0, 3
/* 80573B40  3C 60 80 57 */	lis r3, l_bmdData@ha
/* 80573B44  38 83 66 D4 */	addi r4, r3, l_bmdData@l
/* 80573B48  7C 64 2A 14 */	add r3, r4, r5
/* 80573B4C  80 03 00 04 */	lwz r0, 4(r3)
/* 80573B50  54 00 10 3A */	slwi r0, r0, 2
/* 80573B54  3C 60 80 57 */	lis r3, l_resNameList@ha
/* 80573B58  38 63 66 EC */	addi r3, r3, l_resNameList@l
/* 80573B5C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80573B60  7C 84 28 2E */	lwzx r4, r4, r5
/* 80573B64  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80573B68  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80573B6C  3C A5 00 02 */	addis r5, r5, 2
/* 80573B70  38 C0 00 80 */	li r6, 0x80
/* 80573B74  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80573B78  4B AC 87 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80573B7C  7C 7E 1B 78 */	mr r30, r3
/* 80573B80  38 60 00 58 */	li r3, 0x58
/* 80573B84  4B D5 B0 C8 */	b __nw__FUl
/* 80573B88  7C 60 1B 79 */	or. r0, r3, r3
/* 80573B8C  41 82 00 4C */	beq lbl_80573BD8
/* 80573B90  38 1F 05 80 */	addi r0, r31, 0x580
/* 80573B94  90 01 00 08 */	stw r0, 8(r1)
/* 80573B98  3C 00 00 08 */	lis r0, 8
/* 80573B9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80573BA0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80573BA4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80573BA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80573BAC  7F C4 F3 78 */	mr r4, r30
/* 80573BB0  38 A0 00 00 */	li r5, 0
/* 80573BB4  38 C0 00 00 */	li r6, 0
/* 80573BB8  38 E0 00 00 */	li r7, 0
/* 80573BBC  39 00 FF FF */	li r8, -1
/* 80573BC0  3D 20 80 57 */	lis r9, lit_4437@ha
/* 80573BC4  C0 29 66 40 */	lfs f1, lit_4437@l(r9)
/* 80573BC8  39 20 00 00 */	li r9, 0
/* 80573BCC  39 40 FF FF */	li r10, -1
/* 80573BD0  4B A9 CC 00 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80573BD4  7C 60 1B 78 */	mr r0, r3
lbl_80573BD8:
/* 80573BD8  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80573BDC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80573BE0  28 03 00 00 */	cmplwi r3, 0
/* 80573BE4  41 82 00 1C */	beq lbl_80573C00
/* 80573BE8  80 03 00 04 */	lwz r0, 4(r3)
/* 80573BEC  28 00 00 00 */	cmplwi r0, 0
/* 80573BF0  40 82 00 10 */	bne lbl_80573C00
/* 80573BF4  4B A9 D7 1C */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80573BF8  38 00 00 00 */	li r0, 0
/* 80573BFC  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_80573C00:
/* 80573C00  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80573C04  28 03 00 00 */	cmplwi r3, 0
/* 80573C08  40 82 00 0C */	bne lbl_80573C14
/* 80573C0C  38 60 00 00 */	li r3, 0
/* 80573C10  48 00 01 84 */	b lbl_80573D94
lbl_80573C14:
/* 80573C14  80 A3 00 04 */	lwz r5, 4(r3)
/* 80573C18  38 C0 00 00 */	li r6, 0
/* 80573C1C  3C 60 80 57 */	lis r3, ctrlJointCallBack__10daNpcTkj_cFP8J3DJointi@ha
/* 80573C20  38 83 40 78 */	addi r4, r3, ctrlJointCallBack__10daNpcTkj_cFP8J3DJointi@l
/* 80573C24  48 00 00 18 */	b lbl_80573C3C
lbl_80573C28:
/* 80573C28  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80573C2C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80573C30  7C 63 00 2E */	lwzx r3, r3, r0
/* 80573C34  90 83 00 04 */	stw r4, 4(r3)
/* 80573C38  38 C6 00 01 */	addi r6, r6, 1
lbl_80573C3C:
/* 80573C3C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80573C40  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80573C44  7C 03 00 40 */	cmplw r3, r0
/* 80573C48  41 80 FF E0 */	blt lbl_80573C28
/* 80573C4C  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80573C50  38 60 01 08 */	li r3, 0x108
/* 80573C54  4B D5 AF F8 */	b __nw__FUl
/* 80573C58  7C 7E 1B 79 */	or. r30, r3, r3
/* 80573C5C  41 82 00 D0 */	beq lbl_80573D2C
/* 80573C60  7F DD F3 78 */	mr r29, r30
/* 80573C64  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80573C68  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80573C6C  90 1E 00 00 */	stw r0, 0(r30)
/* 80573C70  38 7E 00 04 */	addi r3, r30, 4
/* 80573C74  3C 80 80 57 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80573C78  38 84 3F 50 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80573C7C  3C A0 80 57 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80573C80  38 A5 3F 14 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80573C84  38 C0 00 08 */	li r6, 8
/* 80573C88  38 E0 00 02 */	li r7, 2
/* 80573C8C  4B DE E0 D4 */	b __construct_array
/* 80573C90  38 7E 00 14 */	addi r3, r30, 0x14
/* 80573C94  3C 80 80 57 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80573C98  38 84 3E FC */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80573C9C  3C A0 80 57 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80573CA0  38 A5 3E C0 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80573CA4  38 C0 00 08 */	li r6, 8
/* 80573CA8  38 E0 00 08 */	li r7, 8
/* 80573CAC  4B DE E0 B4 */	b __construct_array
/* 80573CB0  38 7E 00 54 */	addi r3, r30, 0x54
/* 80573CB4  3C 80 80 57 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80573CB8  38 84 3E 9C */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80573CBC  3C A0 80 57 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80573CC0  38 A5 3E 54 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80573CC4  38 C0 00 0C */	li r6, 0xc
/* 80573CC8  38 E0 00 08 */	li r7, 8
/* 80573CCC  4B DE E0 94 */	b __construct_array
/* 80573CD0  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80573CD4  3C 80 80 57 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80573CD8  38 84 3E 3C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80573CDC  3C A0 80 57 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80573CE0  38 A5 3E 00 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80573CE4  38 C0 00 08 */	li r6, 8
/* 80573CE8  38 E0 00 04 */	li r7, 4
/* 80573CEC  4B DE E0 74 */	b __construct_array
/* 80573CF0  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80573CF4  3C 80 80 57 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80573CF8  38 84 3D E8 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80573CFC  3C A0 80 57 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80573D00  38 A5 3D AC */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80573D04  38 C0 00 08 */	li r6, 8
/* 80573D08  38 E0 00 04 */	li r7, 4
/* 80573D0C  4B DE E0 54 */	b __construct_array
/* 80573D10  7F C3 F3 78 */	mr r3, r30
/* 80573D14  4B DB 86 0C */	b initialize__14J3DMaterialAnmFv
/* 80573D18  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80573D1C  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80573D20  90 1D 00 00 */	stw r0, 0(r29)
/* 80573D24  7F A3 EB 78 */	mr r3, r29
/* 80573D28  4B BD 1A 3C */	b initialize__15daNpcT_MatAnm_cFv
lbl_80573D2C:
/* 80573D2C  93 DF 09 6C */	stw r30, 0x96c(r31)
/* 80573D30  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80573D34  28 00 00 00 */	cmplwi r0, 0
/* 80573D38  40 82 00 0C */	bne lbl_80573D44
/* 80573D3C  38 60 00 00 */	li r3, 0
/* 80573D40  48 00 00 54 */	b lbl_80573D94
lbl_80573D44:
/* 80573D44  7F E3 FB 78 */	mr r3, r31
/* 80573D48  38 80 00 01 */	li r4, 1
/* 80573D4C  38 A0 00 00 */	li r5, 0
/* 80573D50  4B BD 66 38 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80573D54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80573D58  41 82 00 38 */	beq lbl_80573D90
/* 80573D5C  7F E3 FB 78 */	mr r3, r31
/* 80573D60  38 80 00 00 */	li r4, 0
/* 80573D64  3C A0 80 57 */	lis r5, lit_4286@ha
/* 80573D68  C0 25 66 34 */	lfs f1, lit_4286@l(r5)
/* 80573D6C  38 A0 00 00 */	li r5, 0
/* 80573D70  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80573D74  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80573D78  7D 89 03 A6 */	mtctr r12
/* 80573D7C  4E 80 04 21 */	bctrl 
/* 80573D80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80573D84  41 82 00 0C */	beq lbl_80573D90
/* 80573D88  38 60 00 01 */	li r3, 1
/* 80573D8C  48 00 00 08 */	b lbl_80573D94
lbl_80573D90:
/* 80573D90  38 60 00 00 */	li r3, 0
lbl_80573D94:
/* 80573D94  39 61 00 30 */	addi r11, r1, 0x30
/* 80573D98  4B DE E4 90 */	b _restgpr_29
/* 80573D9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80573DA0  7C 08 03 A6 */	mtlr r0
/* 80573DA4  38 21 00 30 */	addi r1, r1, 0x30
/* 80573DA8  4E 80 00 20 */	blr 

lbl_80951BB0:
/* 80951BB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80951BB4  7C 08 02 A6 */	mflr r0
/* 80951BB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80951BBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80951BC0  4B A1 06 1C */	b _savegpr_29
/* 80951BC4  7C 7E 1B 78 */	mr r30, r3
/* 80951BC8  3C 60 80 95 */	lis r3, l_bmdData@ha
/* 80951BCC  38 83 79 08 */	addi r4, r3, l_bmdData@l
/* 80951BD0  80 04 00 04 */	lwz r0, 4(r4)
/* 80951BD4  54 00 10 3A */	slwi r0, r0, 2
/* 80951BD8  3C 60 80 95 */	lis r3, l_resNameList@ha
/* 80951BDC  38 63 79 70 */	addi r3, r3, l_resNameList@l
/* 80951BE0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80951BE4  80 84 00 00 */	lwz r4, 0(r4)
/* 80951BE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80951BEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80951BF0  3C A5 00 02 */	addis r5, r5, 2
/* 80951BF4  38 C0 00 80 */	li r6, 0x80
/* 80951BF8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80951BFC  4B 6E A6 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80951C00  7C 7D 1B 79 */	or. r29, r3, r3
/* 80951C04  40 82 00 0C */	bne lbl_80951C10
/* 80951C08  38 60 00 01 */	li r3, 1
/* 80951C0C  48 00 01 FC */	b lbl_80951E08
lbl_80951C10:
/* 80951C10  38 60 00 58 */	li r3, 0x58
/* 80951C14  4B 97 D0 38 */	b __nw__FUl
/* 80951C18  7C 60 1B 79 */	or. r0, r3, r3
/* 80951C1C  41 82 00 4C */	beq lbl_80951C68
/* 80951C20  38 1E 05 80 */	addi r0, r30, 0x580
/* 80951C24  90 01 00 08 */	stw r0, 8(r1)
/* 80951C28  3C 00 00 08 */	lis r0, 8
/* 80951C2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80951C30  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80951C34  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80951C38  90 01 00 10 */	stw r0, 0x10(r1)
/* 80951C3C  7F A4 EB 78 */	mr r4, r29
/* 80951C40  38 A0 00 00 */	li r5, 0
/* 80951C44  38 C0 00 00 */	li r6, 0
/* 80951C48  38 E0 00 00 */	li r7, 0
/* 80951C4C  39 00 FF FF */	li r8, -1
/* 80951C50  3D 20 80 95 */	lis r9, lit_4399@ha
/* 80951C54  C0 29 77 A8 */	lfs f1, lit_4399@l(r9)
/* 80951C58  39 20 00 00 */	li r9, 0
/* 80951C5C  39 40 FF FF */	li r10, -1
/* 80951C60  4B 6B EB 70 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80951C64  7C 60 1B 78 */	mr r0, r3
lbl_80951C68:
/* 80951C68  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80951C6C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80951C70  28 03 00 00 */	cmplwi r3, 0
/* 80951C74  41 82 00 10 */	beq lbl_80951C84
/* 80951C78  80 A3 00 04 */	lwz r5, 4(r3)
/* 80951C7C  28 05 00 00 */	cmplwi r5, 0
/* 80951C80  40 82 00 0C */	bne lbl_80951C8C
lbl_80951C84:
/* 80951C84  38 60 00 00 */	li r3, 0
/* 80951C88  48 00 01 80 */	b lbl_80951E08
lbl_80951C8C:
/* 80951C8C  38 C0 00 00 */	li r6, 0
/* 80951C90  3C 60 80 95 */	lis r3, ctrlJointCallBack__11daNpc_Aru_cFP8J3DJointi@ha
/* 80951C94  38 83 20 E4 */	addi r4, r3, ctrlJointCallBack__11daNpc_Aru_cFP8J3DJointi@l
/* 80951C98  48 00 00 18 */	b lbl_80951CB0
lbl_80951C9C:
/* 80951C9C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80951CA0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80951CA4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80951CA8  90 83 00 04 */	stw r4, 4(r3)
/* 80951CAC  38 C6 00 01 */	addi r6, r6, 1
lbl_80951CB0:
/* 80951CB0  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80951CB4  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80951CB8  7C 03 00 40 */	cmplw r3, r0
/* 80951CBC  41 80 FF E0 */	blt lbl_80951C9C
/* 80951CC0  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80951CC4  38 60 01 08 */	li r3, 0x108
/* 80951CC8  4B 97 CF 84 */	b __nw__FUl
/* 80951CCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80951CD0  41 82 00 D0 */	beq lbl_80951DA0
/* 80951CD4  7F FD FB 78 */	mr r29, r31
/* 80951CD8  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80951CDC  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80951CE0  90 1F 00 00 */	stw r0, 0(r31)
/* 80951CE4  38 7F 00 04 */	addi r3, r31, 4
/* 80951CE8  3C 80 80 95 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80951CEC  38 84 1F C4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80951CF0  3C A0 80 95 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80951CF4  38 A5 1F 88 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80951CF8  38 C0 00 08 */	li r6, 8
/* 80951CFC  38 E0 00 02 */	li r7, 2
/* 80951D00  4B A1 00 60 */	b __construct_array
/* 80951D04  38 7F 00 14 */	addi r3, r31, 0x14
/* 80951D08  3C 80 80 95 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80951D0C  38 84 1F 70 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80951D10  3C A0 80 95 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80951D14  38 A5 1F 34 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80951D18  38 C0 00 08 */	li r6, 8
/* 80951D1C  38 E0 00 08 */	li r7, 8
/* 80951D20  4B A1 00 40 */	b __construct_array
/* 80951D24  38 7F 00 54 */	addi r3, r31, 0x54
/* 80951D28  3C 80 80 95 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80951D2C  38 84 1F 10 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80951D30  3C A0 80 95 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80951D34  38 A5 1E C8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80951D38  38 C0 00 0C */	li r6, 0xc
/* 80951D3C  38 E0 00 08 */	li r7, 8
/* 80951D40  4B A1 00 20 */	b __construct_array
/* 80951D44  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80951D48  3C 80 80 95 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80951D4C  38 84 1E B0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80951D50  3C A0 80 95 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80951D54  38 A5 1E 74 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80951D58  38 C0 00 08 */	li r6, 8
/* 80951D5C  38 E0 00 04 */	li r7, 4
/* 80951D60  4B A1 00 00 */	b __construct_array
/* 80951D64  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80951D68  3C 80 80 95 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80951D6C  38 84 1E 5C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80951D70  3C A0 80 95 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80951D74  38 A5 1E 20 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80951D78  38 C0 00 08 */	li r6, 8
/* 80951D7C  38 E0 00 04 */	li r7, 4
/* 80951D80  4B A0 FF E0 */	b __construct_array
/* 80951D84  7F E3 FB 78 */	mr r3, r31
/* 80951D88  4B 9D A5 98 */	b initialize__14J3DMaterialAnmFv
/* 80951D8C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80951D90  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80951D94  90 1D 00 00 */	stw r0, 0(r29)
/* 80951D98  7F A3 EB 78 */	mr r3, r29
/* 80951D9C  4B 7F 39 C8 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80951DA0:
/* 80951DA0  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 80951DA4  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80951DA8  28 00 00 00 */	cmplwi r0, 0
/* 80951DAC  40 82 00 0C */	bne lbl_80951DB8
/* 80951DB0  38 60 00 00 */	li r3, 0
/* 80951DB4  48 00 00 54 */	b lbl_80951E08
lbl_80951DB8:
/* 80951DB8  7F C3 F3 78 */	mr r3, r30
/* 80951DBC  38 80 00 01 */	li r4, 1
/* 80951DC0  38 A0 00 00 */	li r5, 0
/* 80951DC4  4B 7F 85 C4 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80951DC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80951DCC  41 82 00 38 */	beq lbl_80951E04
/* 80951DD0  7F C3 F3 78 */	mr r3, r30
/* 80951DD4  38 80 00 00 */	li r4, 0
/* 80951DD8  3C A0 80 95 */	lis r5, lit_4100@ha
/* 80951DDC  C0 25 77 98 */	lfs f1, lit_4100@l(r5)
/* 80951DE0  38 A0 00 00 */	li r5, 0
/* 80951DE4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80951DE8  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80951DEC  7D 89 03 A6 */	mtctr r12
/* 80951DF0  4E 80 04 21 */	bctrl 
/* 80951DF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80951DF8  41 82 00 0C */	beq lbl_80951E04
/* 80951DFC  38 60 00 01 */	li r3, 1
/* 80951E00  48 00 00 08 */	b lbl_80951E08
lbl_80951E04:
/* 80951E04  38 60 00 00 */	li r3, 0
lbl_80951E08:
/* 80951E08  39 61 00 30 */	addi r11, r1, 0x30
/* 80951E0C  4B A1 04 1C */	b _restgpr_29
/* 80951E10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80951E14  7C 08 03 A6 */	mtlr r0
/* 80951E18  38 21 00 30 */	addi r1, r1, 0x30
/* 80951E1C  4E 80 00 20 */	blr 

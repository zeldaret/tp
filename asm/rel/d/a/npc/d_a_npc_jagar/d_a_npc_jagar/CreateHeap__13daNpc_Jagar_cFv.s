lbl_80A14B20:
/* 80A14B20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A14B24  7C 08 02 A6 */	mflr r0
/* 80A14B28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A14B2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A14B30  4B 94 D6 AC */	b _savegpr_29
/* 80A14B34  7C 7E 1B 78 */	mr r30, r3
/* 80A14B38  3C 60 80 A2 */	lis r3, l_bmdData@ha
/* 80A14B3C  38 83 A5 68 */	addi r4, r3, l_bmdData@l
/* 80A14B40  80 04 00 04 */	lwz r0, 4(r4)
/* 80A14B44  54 00 10 3A */	slwi r0, r0, 2
/* 80A14B48  3C 60 80 A2 */	lis r3, l_resNameList@ha
/* 80A14B4C  38 63 A5 B8 */	addi r3, r3, l_resNameList@l
/* 80A14B50  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A14B54  80 84 00 00 */	lwz r4, 0(r4)
/* 80A14B58  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80A14B5C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80A14B60  3C A5 00 02 */	addis r5, r5, 2
/* 80A14B64  38 C0 00 80 */	li r6, 0x80
/* 80A14B68  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80A14B6C  4B 62 77 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80A14B70  7C 7D 1B 79 */	or. r29, r3, r3
/* 80A14B74  40 82 00 0C */	bne lbl_80A14B80
/* 80A14B78  38 60 00 00 */	li r3, 0
/* 80A14B7C  48 00 01 FC */	b lbl_80A14D78
lbl_80A14B80:
/* 80A14B80  38 60 00 58 */	li r3, 0x58
/* 80A14B84  4B 8B A0 C8 */	b __nw__FUl
/* 80A14B88  7C 60 1B 79 */	or. r0, r3, r3
/* 80A14B8C  41 82 00 4C */	beq lbl_80A14BD8
/* 80A14B90  38 1E 05 80 */	addi r0, r30, 0x580
/* 80A14B94  90 01 00 08 */	stw r0, 8(r1)
/* 80A14B98  3C 00 00 08 */	lis r0, 8
/* 80A14B9C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A14BA0  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80A14BA4  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80A14BA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A14BAC  7F A4 EB 78 */	mr r4, r29
/* 80A14BB0  38 A0 00 00 */	li r5, 0
/* 80A14BB4  38 C0 00 00 */	li r6, 0
/* 80A14BB8  38 E0 00 00 */	li r7, 0
/* 80A14BBC  39 00 FF FF */	li r8, -1
/* 80A14BC0  3D 20 80 A2 */	lis r9, lit_4475@ha
/* 80A14BC4  C0 29 A4 00 */	lfs f1, lit_4475@l(r9)
/* 80A14BC8  39 20 00 00 */	li r9, 0
/* 80A14BCC  39 40 FF FF */	li r10, -1
/* 80A14BD0  4B 5F BC 00 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80A14BD4  7C 60 1B 78 */	mr r0, r3
lbl_80A14BD8:
/* 80A14BD8  90 1E 05 78 */	stw r0, 0x578(r30)
/* 80A14BDC  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A14BE0  28 03 00 00 */	cmplwi r3, 0
/* 80A14BE4  41 82 00 10 */	beq lbl_80A14BF4
/* 80A14BE8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A14BEC  28 05 00 00 */	cmplwi r5, 0
/* 80A14BF0  40 82 00 0C */	bne lbl_80A14BFC
lbl_80A14BF4:
/* 80A14BF4  38 60 00 00 */	li r3, 0
/* 80A14BF8  48 00 01 80 */	b lbl_80A14D78
lbl_80A14BFC:
/* 80A14BFC  38 C0 00 00 */	li r6, 0
/* 80A14C00  3C 60 80 A1 */	lis r3, ctrlJointCallBack__13daNpc_Jagar_cFP8J3DJointi@ha
/* 80A14C04  38 83 50 54 */	addi r4, r3, ctrlJointCallBack__13daNpc_Jagar_cFP8J3DJointi@l
/* 80A14C08  48 00 00 18 */	b lbl_80A14C20
lbl_80A14C0C:
/* 80A14C0C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80A14C10  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80A14C14  7C 63 00 2E */	lwzx r3, r3, r0
/* 80A14C18  90 83 00 04 */	stw r4, 4(r3)
/* 80A14C1C  38 C6 00 01 */	addi r6, r6, 1
lbl_80A14C20:
/* 80A14C20  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80A14C24  A0 1D 00 2C */	lhz r0, 0x2c(r29)
/* 80A14C28  7C 03 00 40 */	cmplw r3, r0
/* 80A14C2C  41 80 FF E0 */	blt lbl_80A14C0C
/* 80A14C30  93 C5 00 14 */	stw r30, 0x14(r5)
/* 80A14C34  38 60 01 08 */	li r3, 0x108
/* 80A14C38  4B 8B A0 14 */	b __nw__FUl
/* 80A14C3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A14C40  41 82 00 D0 */	beq lbl_80A14D10
/* 80A14C44  7F FD FB 78 */	mr r29, r31
/* 80A14C48  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80A14C4C  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80A14C50  90 1F 00 00 */	stw r0, 0(r31)
/* 80A14C54  38 7F 00 04 */	addi r3, r31, 4
/* 80A14C58  3C 80 80 A1 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80A14C5C  38 84 4F 34 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80A14C60  3C A0 80 A1 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80A14C64  38 A5 4E F8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80A14C68  38 C0 00 08 */	li r6, 8
/* 80A14C6C  38 E0 00 02 */	li r7, 2
/* 80A14C70  4B 94 D0 F0 */	b __construct_array
/* 80A14C74  38 7F 00 14 */	addi r3, r31, 0x14
/* 80A14C78  3C 80 80 A1 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80A14C7C  38 84 4E E0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80A14C80  3C A0 80 A1 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80A14C84  38 A5 4E A4 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80A14C88  38 C0 00 08 */	li r6, 8
/* 80A14C8C  38 E0 00 08 */	li r7, 8
/* 80A14C90  4B 94 D0 D0 */	b __construct_array
/* 80A14C94  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A14C98  3C 80 80 A1 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80A14C9C  38 84 4E 80 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80A14CA0  3C A0 80 A1 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80A14CA4  38 A5 4E 38 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80A14CA8  38 C0 00 0C */	li r6, 0xc
/* 80A14CAC  38 E0 00 08 */	li r7, 8
/* 80A14CB0  4B 94 D0 B0 */	b __construct_array
/* 80A14CB4  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80A14CB8  3C 80 80 A1 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80A14CBC  38 84 4E 20 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80A14CC0  3C A0 80 A1 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80A14CC4  38 A5 4D E4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80A14CC8  38 C0 00 08 */	li r6, 8
/* 80A14CCC  38 E0 00 04 */	li r7, 4
/* 80A14CD0  4B 94 D0 90 */	b __construct_array
/* 80A14CD4  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80A14CD8  3C 80 80 A1 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80A14CDC  38 84 4D CC */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80A14CE0  3C A0 80 A1 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80A14CE4  38 A5 4D 90 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80A14CE8  38 C0 00 08 */	li r6, 8
/* 80A14CEC  38 E0 00 04 */	li r7, 4
/* 80A14CF0  4B 94 D0 70 */	b __construct_array
/* 80A14CF4  7F E3 FB 78 */	mr r3, r31
/* 80A14CF8  4B 91 76 28 */	b initialize__14J3DMaterialAnmFv
/* 80A14CFC  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80A14D00  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80A14D04  90 1D 00 00 */	stw r0, 0(r29)
/* 80A14D08  7F A3 EB 78 */	mr r3, r29
/* 80A14D0C  4B 73 0A 58 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80A14D10:
/* 80A14D10  93 FE 09 6C */	stw r31, 0x96c(r30)
/* 80A14D14  80 1E 09 6C */	lwz r0, 0x96c(r30)
/* 80A14D18  28 00 00 00 */	cmplwi r0, 0
/* 80A14D1C  40 82 00 0C */	bne lbl_80A14D28
/* 80A14D20  38 60 00 00 */	li r3, 0
/* 80A14D24  48 00 00 54 */	b lbl_80A14D78
lbl_80A14D28:
/* 80A14D28  7F C3 F3 78 */	mr r3, r30
/* 80A14D2C  38 80 00 01 */	li r4, 1
/* 80A14D30  38 A0 00 00 */	li r5, 0
/* 80A14D34  4B 73 56 54 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80A14D38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A14D3C  41 82 00 38 */	beq lbl_80A14D74
/* 80A14D40  7F C3 F3 78 */	mr r3, r30
/* 80A14D44  38 80 00 00 */	li r4, 0
/* 80A14D48  3C A0 80 A2 */	lis r5, lit_4169@ha
/* 80A14D4C  C0 25 A3 F0 */	lfs f1, lit_4169@l(r5)
/* 80A14D50  38 A0 00 00 */	li r5, 0
/* 80A14D54  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A14D58  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80A14D5C  7D 89 03 A6 */	mtctr r12
/* 80A14D60  4E 80 04 21 */	bctrl 
/* 80A14D64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A14D68  41 82 00 0C */	beq lbl_80A14D74
/* 80A14D6C  38 60 00 01 */	li r3, 1
/* 80A14D70  48 00 00 08 */	b lbl_80A14D78
lbl_80A14D74:
/* 80A14D74  38 60 00 00 */	li r3, 0
lbl_80A14D78:
/* 80A14D78  39 61 00 30 */	addi r11, r1, 0x30
/* 80A14D7C  4B 94 D4 AC */	b _restgpr_29
/* 80A14D80  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A14D84  7C 08 03 A6 */	mtlr r0
/* 80A14D88  38 21 00 30 */	addi r1, r1, 0x30
/* 80A14D8C  4E 80 00 20 */	blr 

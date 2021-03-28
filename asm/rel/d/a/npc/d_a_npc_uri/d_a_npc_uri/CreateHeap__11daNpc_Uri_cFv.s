lbl_80B26BE4:
/* 80B26BE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B26BE8  7C 08 02 A6 */	mflr r0
/* 80B26BEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B26BF0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B26BF4  4B 83 B5 E4 */	b _savegpr_28
/* 80B26BF8  7C 7F 1B 78 */	mr r31, r3
/* 80B26BFC  3C 60 80 B3 */	lis r3, l_bmdData@ha
/* 80B26C00  38 83 D0 68 */	addi r4, r3, l_bmdData@l
/* 80B26C04  80 04 00 04 */	lwz r0, 4(r4)
/* 80B26C08  54 00 10 3A */	slwi r0, r0, 2
/* 80B26C0C  3C 60 80 B3 */	lis r3, l_resNameList@ha
/* 80B26C10  38 63 D0 D0 */	addi r3, r3, l_resNameList@l
/* 80B26C14  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B26C18  80 84 00 00 */	lwz r4, 0(r4)
/* 80B26C1C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80B26C20  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80B26C24  3F C5 00 02 */	addis r30, r5, 2
/* 80B26C28  3B DE C2 F8 */	addi r30, r30, -15624
/* 80B26C2C  7F C5 F3 78 */	mr r5, r30
/* 80B26C30  38 C0 00 80 */	li r6, 0x80
/* 80B26C34  4B 51 56 B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B26C38  7C 7C 1B 79 */	or. r28, r3, r3
/* 80B26C3C  40 82 00 0C */	bne lbl_80B26C48
/* 80B26C40  38 60 00 01 */	li r3, 1
/* 80B26C44  48 00 02 74 */	b lbl_80B26EB8
lbl_80B26C48:
/* 80B26C48  38 60 00 58 */	li r3, 0x58
/* 80B26C4C  4B 7A 80 00 */	b __nw__FUl
/* 80B26C50  7C 60 1B 79 */	or. r0, r3, r3
/* 80B26C54  41 82 00 4C */	beq lbl_80B26CA0
/* 80B26C58  38 1F 05 80 */	addi r0, r31, 0x580
/* 80B26C5C  90 01 00 08 */	stw r0, 8(r1)
/* 80B26C60  3C 00 00 08 */	lis r0, 8
/* 80B26C64  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B26C68  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80B26C6C  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80B26C70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B26C74  7F 84 E3 78 */	mr r4, r28
/* 80B26C78  38 A0 00 00 */	li r5, 0
/* 80B26C7C  38 C0 00 00 */	li r6, 0
/* 80B26C80  38 E0 00 00 */	li r7, 0
/* 80B26C84  39 00 FF FF */	li r8, -1
/* 80B26C88  3D 20 80 B3 */	lis r9, lit_4378@ha
/* 80B26C8C  C0 29 CE FC */	lfs f1, lit_4378@l(r9)
/* 80B26C90  39 20 00 00 */	li r9, 0
/* 80B26C94  39 40 FF FF */	li r10, -1
/* 80B26C98  4B 4E 9B 38 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80B26C9C  7C 60 1B 78 */	mr r0, r3
lbl_80B26CA0:
/* 80B26CA0  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80B26CA4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B26CA8  28 03 00 00 */	cmplwi r3, 0
/* 80B26CAC  41 82 00 10 */	beq lbl_80B26CBC
/* 80B26CB0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B26CB4  28 05 00 00 */	cmplwi r5, 0
/* 80B26CB8  40 82 00 0C */	bne lbl_80B26CC4
lbl_80B26CBC:
/* 80B26CBC  38 60 00 00 */	li r3, 0
/* 80B26CC0  48 00 01 F8 */	b lbl_80B26EB8
lbl_80B26CC4:
/* 80B26CC4  38 C0 00 00 */	li r6, 0
/* 80B26CC8  3C 60 80 B2 */	lis r3, ctrlJointCallBack__11daNpc_Uri_cFP8J3DJointi@ha
/* 80B26CCC  38 83 71 94 */	addi r4, r3, ctrlJointCallBack__11daNpc_Uri_cFP8J3DJointi@l
/* 80B26CD0  48 00 00 18 */	b lbl_80B26CE8
lbl_80B26CD4:
/* 80B26CD4  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80B26CD8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B26CDC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B26CE0  90 83 00 04 */	stw r4, 4(r3)
/* 80B26CE4  38 C6 00 01 */	addi r6, r6, 1
lbl_80B26CE8:
/* 80B26CE8  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B26CEC  A0 1C 00 2C */	lhz r0, 0x2c(r28)
/* 80B26CF0  7C 03 00 40 */	cmplw r3, r0
/* 80B26CF4  41 80 FF E0 */	blt lbl_80B26CD4
/* 80B26CF8  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80B26CFC  38 60 01 08 */	li r3, 0x108
/* 80B26D00  4B 7A 7F 4C */	b __nw__FUl
/* 80B26D04  7C 7D 1B 79 */	or. r29, r3, r3
/* 80B26D08  41 82 00 D0 */	beq lbl_80B26DD8
/* 80B26D0C  7F BC EB 78 */	mr r28, r29
/* 80B26D10  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80B26D14  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80B26D18  90 1D 00 00 */	stw r0, 0(r29)
/* 80B26D1C  38 7D 00 04 */	addi r3, r29, 4
/* 80B26D20  3C 80 80 B2 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80B26D24  38 84 70 74 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80B26D28  3C A0 80 B2 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80B26D2C  38 A5 70 38 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80B26D30  38 C0 00 08 */	li r6, 8
/* 80B26D34  38 E0 00 02 */	li r7, 2
/* 80B26D38  4B 83 B0 28 */	b __construct_array
/* 80B26D3C  38 7D 00 14 */	addi r3, r29, 0x14
/* 80B26D40  3C 80 80 B2 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80B26D44  38 84 70 20 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80B26D48  3C A0 80 B2 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80B26D4C  38 A5 6F E4 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80B26D50  38 C0 00 08 */	li r6, 8
/* 80B26D54  38 E0 00 08 */	li r7, 8
/* 80B26D58  4B 83 B0 08 */	b __construct_array
/* 80B26D5C  38 7D 00 54 */	addi r3, r29, 0x54
/* 80B26D60  3C 80 80 B2 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80B26D64  38 84 6F C0 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80B26D68  3C A0 80 B2 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80B26D6C  38 A5 6F 78 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80B26D70  38 C0 00 0C */	li r6, 0xc
/* 80B26D74  38 E0 00 08 */	li r7, 8
/* 80B26D78  4B 83 AF E8 */	b __construct_array
/* 80B26D7C  38 7D 00 B4 */	addi r3, r29, 0xb4
/* 80B26D80  3C 80 80 B2 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80B26D84  38 84 6F 60 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80B26D88  3C A0 80 B2 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80B26D8C  38 A5 6F 24 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80B26D90  38 C0 00 08 */	li r6, 8
/* 80B26D94  38 E0 00 04 */	li r7, 4
/* 80B26D98  4B 83 AF C8 */	b __construct_array
/* 80B26D9C  38 7D 00 D4 */	addi r3, r29, 0xd4
/* 80B26DA0  3C 80 80 B2 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80B26DA4  38 84 6F 0C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80B26DA8  3C A0 80 B2 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80B26DAC  38 A5 6E D0 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80B26DB0  38 C0 00 08 */	li r6, 8
/* 80B26DB4  38 E0 00 04 */	li r7, 4
/* 80B26DB8  4B 83 AF A8 */	b __construct_array
/* 80B26DBC  7F A3 EB 78 */	mr r3, r29
/* 80B26DC0  4B 80 55 60 */	b initialize__14J3DMaterialAnmFv
/* 80B26DC4  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 80B26DC8  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 80B26DCC  90 1C 00 00 */	stw r0, 0(r28)
/* 80B26DD0  7F 83 E3 78 */	mr r3, r28
/* 80B26DD4  4B 61 E9 90 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B26DD8:
/* 80B26DD8  93 BF 09 6C */	stw r29, 0x96c(r31)
/* 80B26DDC  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 80B26DE0  28 00 00 00 */	cmplwi r0, 0
/* 80B26DE4  40 82 00 0C */	bne lbl_80B26DF0
/* 80B26DE8  38 60 00 00 */	li r3, 0
/* 80B26DEC  48 00 00 CC */	b lbl_80B26EB8
lbl_80B26DF0:
/* 80B26DF0  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80B26DF4  28 00 00 01 */	cmplwi r0, 1
/* 80B26DF8  40 82 00 70 */	bne lbl_80B26E68
/* 80B26DFC  3C 60 80 B3 */	lis r3, l_bmdData@ha
/* 80B26E00  38 63 D0 68 */	addi r3, r3, l_bmdData@l
/* 80B26E04  80 83 00 08 */	lwz r4, 8(r3)
/* 80B26E08  2C 04 00 00 */	cmpwi r4, 0
/* 80B26E0C  41 80 00 28 */	blt lbl_80B26E34
/* 80B26E10  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80B26E14  54 00 10 3A */	slwi r0, r0, 2
/* 80B26E18  3C 60 80 B3 */	lis r3, l_resNameList@ha
/* 80B26E1C  38 63 D0 D0 */	addi r3, r3, l_resNameList@l
/* 80B26E20  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B26E24  7F C5 F3 78 */	mr r5, r30
/* 80B26E28  38 C0 00 80 */	li r6, 0x80
/* 80B26E2C  4B 51 54 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80B26E30  48 00 00 08 */	b lbl_80B26E38
lbl_80B26E34:
/* 80B26E34  38 60 00 00 */	li r3, 0
lbl_80B26E38:
/* 80B26E38  28 03 00 00 */	cmplwi r3, 0
/* 80B26E3C  41 82 00 18 */	beq lbl_80B26E54
/* 80B26E40  3C 80 00 08 */	lis r4, 8
/* 80B26E44  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80B26E48  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80B26E4C  4B 4E DE 08 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80B26E50  90 7F 0E 44 */	stw r3, 0xe44(r31)
lbl_80B26E54:
/* 80B26E54  80 1F 0E 44 */	lwz r0, 0xe44(r31)
/* 80B26E58  28 00 00 00 */	cmplwi r0, 0
/* 80B26E5C  40 82 00 0C */	bne lbl_80B26E68
/* 80B26E60  38 60 00 00 */	li r3, 0
/* 80B26E64  48 00 00 54 */	b lbl_80B26EB8
lbl_80B26E68:
/* 80B26E68  7F E3 FB 78 */	mr r3, r31
/* 80B26E6C  38 80 00 02 */	li r4, 2
/* 80B26E70  38 A0 00 00 */	li r5, 0
/* 80B26E74  4B 62 35 14 */	b setFaceMotionAnm__8daNpcT_cFib
/* 80B26E78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B26E7C  41 82 00 38 */	beq lbl_80B26EB4
/* 80B26E80  7F E3 FB 78 */	mr r3, r31
/* 80B26E84  38 80 00 00 */	li r4, 0
/* 80B26E88  3C A0 80 B3 */	lis r5, lit_4055@ha
/* 80B26E8C  C0 25 CE EC */	lfs f1, lit_4055@l(r5)
/* 80B26E90  38 A0 00 00 */	li r5, 0
/* 80B26E94  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80B26E98  81 8C 00 C0 */	lwz r12, 0xc0(r12)
/* 80B26E9C  7D 89 03 A6 */	mtctr r12
/* 80B26EA0  4E 80 04 21 */	bctrl 
/* 80B26EA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B26EA8  41 82 00 0C */	beq lbl_80B26EB4
/* 80B26EAC  38 60 00 01 */	li r3, 1
/* 80B26EB0  48 00 00 08 */	b lbl_80B26EB8
lbl_80B26EB4:
/* 80B26EB4  38 60 00 00 */	li r3, 0
lbl_80B26EB8:
/* 80B26EB8  39 61 00 30 */	addi r11, r1, 0x30
/* 80B26EBC  4B 83 B3 68 */	b _restgpr_28
/* 80B26EC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B26EC4  7C 08 03 A6 */	mtlr r0
/* 80B26EC8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B26ECC  4E 80 00 20 */	blr 

lbl_80AF7CB0:
/* 80AF7CB0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AF7CB4  7C 08 02 A6 */	mflr r0
/* 80AF7CB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AF7CBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF7CC0  4B 86 A5 1C */	b _savegpr_29
/* 80AF7CC4  7C 7F 1B 78 */	mr r31, r3
/* 80AF7CC8  3B C0 00 00 */	li r30, 0
/* 80AF7CCC  4B 6B 48 B0 */	b dKy_darkworld_check__Fv
/* 80AF7CD0  98 7F 09 F4 */	stb r3, 0x9f4(r31)
/* 80AF7CD4  88 7F 09 F4 */	lbz r3, 0x9f4(r31)
/* 80AF7CD8  30 03 FF FF */	addic r0, r3, -1
/* 80AF7CDC  7C 00 19 10 */	subfe r0, r0, r3
/* 80AF7CE0  54 00 18 38 */	slwi r0, r0, 3
/* 80AF7CE4  3C 60 80 B0 */	lis r3, l_bmdGetParamList@ha
/* 80AF7CE8  38 63 C1 F0 */	addi r3, r3, l_bmdGetParamList@l
/* 80AF7CEC  7C 83 00 2E */	lwzx r4, r3, r0
/* 80AF7CF0  2C 04 00 00 */	cmpwi r4, 0
/* 80AF7CF4  41 80 00 38 */	blt lbl_80AF7D2C
/* 80AF7CF8  7C 63 02 14 */	add r3, r3, r0
/* 80AF7CFC  80 03 00 04 */	lwz r0, 4(r3)
/* 80AF7D00  54 00 10 3A */	slwi r0, r0, 2
/* 80AF7D04  3C 60 80 B0 */	lis r3, l_resNames@ha
/* 80AF7D08  38 63 C3 80 */	addi r3, r3, l_resNames@l
/* 80AF7D0C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AF7D10  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80AF7D14  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80AF7D18  3C A5 00 02 */	addis r5, r5, 2
/* 80AF7D1C  38 C0 00 80 */	li r6, 0x80
/* 80AF7D20  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AF7D24  4B 54 45 C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AF7D28  7C 7E 1B 78 */	mr r30, r3
lbl_80AF7D2C:
/* 80AF7D2C  38 60 00 58 */	li r3, 0x58
/* 80AF7D30  4B 7D 6F 1C */	b __nw__FUl
/* 80AF7D34  7C 60 1B 79 */	or. r0, r3, r3
/* 80AF7D38  41 82 00 4C */	beq lbl_80AF7D84
/* 80AF7D3C  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80AF7D40  90 01 00 08 */	stw r0, 8(r1)
/* 80AF7D44  3C 00 00 08 */	lis r0, 8
/* 80AF7D48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF7D4C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80AF7D50  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80AF7D54  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF7D58  7F C4 F3 78 */	mr r4, r30
/* 80AF7D5C  38 A0 00 00 */	li r5, 0
/* 80AF7D60  38 C0 00 00 */	li r6, 0
/* 80AF7D64  38 E0 00 00 */	li r7, 0
/* 80AF7D68  39 00 FF FF */	li r8, -1
/* 80AF7D6C  3D 20 80 B0 */	lis r9, lit_4296@ha
/* 80AF7D70  C0 29 BE 84 */	lfs f1, lit_4296@l(r9)
/* 80AF7D74  39 20 00 00 */	li r9, 0
/* 80AF7D78  39 40 FF FF */	li r10, -1
/* 80AF7D7C  4B 51 8A 54 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AF7D80  7C 60 1B 78 */	mr r0, r3
lbl_80AF7D84:
/* 80AF7D84  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80AF7D88  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AF7D8C  28 03 00 00 */	cmplwi r3, 0
/* 80AF7D90  41 82 00 1C */	beq lbl_80AF7DAC
/* 80AF7D94  80 03 00 04 */	lwz r0, 4(r3)
/* 80AF7D98  28 00 00 00 */	cmplwi r0, 0
/* 80AF7D9C  40 82 00 10 */	bne lbl_80AF7DAC
/* 80AF7DA0  4B 51 95 70 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AF7DA4  38 00 00 00 */	li r0, 0
/* 80AF7DA8  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80AF7DAC:
/* 80AF7DAC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AF7DB0  28 03 00 00 */	cmplwi r3, 0
/* 80AF7DB4  40 82 00 0C */	bne lbl_80AF7DC0
/* 80AF7DB8  38 60 00 00 */	li r3, 0
/* 80AF7DBC  48 00 01 84 */	b lbl_80AF7F40
lbl_80AF7DC0:
/* 80AF7DC0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80AF7DC4  38 A0 00 00 */	li r5, 0
/* 80AF7DC8  3C 60 80 B0 */	lis r3, ctrlJointCallBack__10daNpcThe_cFP8J3DJointi@ha
/* 80AF7DCC  38 83 81 14 */	addi r4, r3, ctrlJointCallBack__10daNpcThe_cFP8J3DJointi@l
/* 80AF7DD0  48 00 00 18 */	b lbl_80AF7DE8
lbl_80AF7DD4:
/* 80AF7DD4  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80AF7DD8  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80AF7DDC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AF7DE0  90 83 00 04 */	stw r4, 4(r3)
/* 80AF7DE4  38 A5 00 01 */	addi r5, r5, 1
lbl_80AF7DE8:
/* 80AF7DE8  A0 7E 00 2C */	lhz r3, 0x2c(r30)
/* 80AF7DEC  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 80AF7DF0  7C 00 18 40 */	cmplw r0, r3
/* 80AF7DF4  41 80 FF E0 */	blt lbl_80AF7DD4
/* 80AF7DF8  93 E6 00 14 */	stw r31, 0x14(r6)
/* 80AF7DFC  38 60 01 08 */	li r3, 0x108
/* 80AF7E00  4B 7D 6E 4C */	b __nw__FUl
/* 80AF7E04  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF7E08  41 82 00 D0 */	beq lbl_80AF7ED8
/* 80AF7E0C  7F DD F3 78 */	mr r29, r30
/* 80AF7E10  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80AF7E14  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80AF7E18  90 1E 00 00 */	stw r0, 0(r30)
/* 80AF7E1C  38 7E 00 04 */	addi r3, r30, 4
/* 80AF7E20  3C 80 80 B0 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80AF7E24  38 84 80 FC */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80AF7E28  3C A0 80 B0 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80AF7E2C  38 A5 80 C0 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80AF7E30  38 C0 00 08 */	li r6, 8
/* 80AF7E34  38 E0 00 02 */	li r7, 2
/* 80AF7E38  4B 86 9F 28 */	b __construct_array
/* 80AF7E3C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AF7E40  3C 80 80 B0 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80AF7E44  38 84 80 A8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80AF7E48  3C A0 80 B0 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80AF7E4C  38 A5 80 6C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80AF7E50  38 C0 00 08 */	li r6, 8
/* 80AF7E54  38 E0 00 08 */	li r7, 8
/* 80AF7E58  4B 86 9F 08 */	b __construct_array
/* 80AF7E5C  38 7E 00 54 */	addi r3, r30, 0x54
/* 80AF7E60  3C 80 80 B0 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80AF7E64  38 84 80 48 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80AF7E68  3C A0 80 B0 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80AF7E6C  38 A5 80 00 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80AF7E70  38 C0 00 0C */	li r6, 0xc
/* 80AF7E74  38 E0 00 08 */	li r7, 8
/* 80AF7E78  4B 86 9E E8 */	b __construct_array
/* 80AF7E7C  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80AF7E80  3C 80 80 AF */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80AF7E84  38 84 7F E8 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80AF7E88  3C A0 80 AF */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80AF7E8C  38 A5 7F AC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80AF7E90  38 C0 00 08 */	li r6, 8
/* 80AF7E94  38 E0 00 04 */	li r7, 4
/* 80AF7E98  4B 86 9E C8 */	b __construct_array
/* 80AF7E9C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80AF7EA0  3C 80 80 AF */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80AF7EA4  38 84 7F 94 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80AF7EA8  3C A0 80 AF */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80AF7EAC  38 A5 7F 58 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80AF7EB0  38 C0 00 08 */	li r6, 8
/* 80AF7EB4  38 E0 00 04 */	li r7, 4
/* 80AF7EB8  4B 86 9E A8 */	b __construct_array
/* 80AF7EBC  7F C3 F3 78 */	mr r3, r30
/* 80AF7EC0  4B 83 44 60 */	b initialize__14J3DMaterialAnmFv
/* 80AF7EC4  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80AF7EC8  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80AF7ECC  90 1D 00 00 */	stw r0, 0(r29)
/* 80AF7ED0  7F A3 EB 78 */	mr r3, r29
/* 80AF7ED4  4B 65 88 64 */	b initialize__15daNpcF_MatAnm_cFv
lbl_80AF7ED8:
/* 80AF7ED8  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 80AF7EDC  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80AF7EE0  28 00 00 00 */	cmplwi r0, 0
/* 80AF7EE4  40 82 00 0C */	bne lbl_80AF7EF0
/* 80AF7EE8  38 60 00 00 */	li r3, 0
/* 80AF7EEC  48 00 00 54 */	b lbl_80AF7F40
lbl_80AF7EF0:
/* 80AF7EF0  7F E3 FB 78 */	mr r3, r31
/* 80AF7EF4  38 80 00 01 */	li r4, 1
/* 80AF7EF8  38 A0 00 00 */	li r5, 0
/* 80AF7EFC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF7F00  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80AF7F04  7D 89 03 A6 */	mtctr r12
/* 80AF7F08  4E 80 04 21 */	bctrl 
/* 80AF7F0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AF7F10  40 82 00 0C */	bne lbl_80AF7F1C
/* 80AF7F14  38 60 00 00 */	li r3, 0
/* 80AF7F18  48 00 00 28 */	b lbl_80AF7F40
lbl_80AF7F1C:
/* 80AF7F1C  7F E3 FB 78 */	mr r3, r31
/* 80AF7F20  38 80 00 0E */	li r4, 0xe
/* 80AF7F24  3C A0 80 B0 */	lis r5, lit_4297@ha
/* 80AF7F28  C0 25 BE 88 */	lfs f1, lit_4297@l(r5)
/* 80AF7F2C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF7F30  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AF7F34  7D 89 03 A6 */	mtctr r12
/* 80AF7F38  4E 80 04 21 */	bctrl 
/* 80AF7F3C  38 60 00 01 */	li r3, 1
lbl_80AF7F40:
/* 80AF7F40  39 61 00 30 */	addi r11, r1, 0x30
/* 80AF7F44  4B 86 A2 E4 */	b _restgpr_29
/* 80AF7F48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AF7F4C  7C 08 03 A6 */	mtlr r0
/* 80AF7F50  38 21 00 30 */	addi r1, r1, 0x30
/* 80AF7F54  4E 80 00 20 */	blr 

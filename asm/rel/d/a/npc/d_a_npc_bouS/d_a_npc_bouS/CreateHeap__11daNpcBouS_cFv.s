lbl_80973B9C:
/* 80973B9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80973BA0  7C 08 02 A6 */	mflr r0
/* 80973BA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80973BA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80973BAC  4B 9E E6 30 */	b _savegpr_29
/* 80973BB0  7C 7F 1B 78 */	mr r31, r3
/* 80973BB4  3C 60 80 98 */	lis r3, l_arcNames@ha
/* 80973BB8  38 63 89 20 */	addi r3, r3, l_arcNames@l
/* 80973BBC  80 63 00 00 */	lwz r3, 0(r3)
/* 80973BC0  38 80 00 0B */	li r4, 0xb
/* 80973BC4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80973BC8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80973BCC  3C A5 00 02 */	addis r5, r5, 2
/* 80973BD0  38 C0 00 80 */	li r6, 0x80
/* 80973BD4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80973BD8  4B 6C 87 14 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80973BDC  7C 7E 1B 78 */	mr r30, r3
/* 80973BE0  38 60 00 58 */	li r3, 0x58
/* 80973BE4  4B 95 B0 68 */	b __nw__FUl
/* 80973BE8  7C 60 1B 79 */	or. r0, r3, r3
/* 80973BEC  41 82 00 4C */	beq lbl_80973C38
/* 80973BF0  38 1F 0B 48 */	addi r0, r31, 0xb48
/* 80973BF4  90 01 00 08 */	stw r0, 8(r1)
/* 80973BF8  3C 00 00 08 */	lis r0, 8
/* 80973BFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80973C00  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020284@ha */
/* 80973C04  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11020284@l */
/* 80973C08  90 01 00 10 */	stw r0, 0x10(r1)
/* 80973C0C  7F C4 F3 78 */	mr r4, r30
/* 80973C10  38 A0 00 00 */	li r5, 0
/* 80973C14  38 C0 00 00 */	li r6, 0
/* 80973C18  38 E0 00 00 */	li r7, 0
/* 80973C1C  39 00 FF FF */	li r8, -1
/* 80973C20  3D 20 80 98 */	lis r9, lit_4446@ha
/* 80973C24  C0 29 84 AC */	lfs f1, lit_4446@l(r9)
/* 80973C28  39 20 00 00 */	li r9, 0
/* 80973C2C  39 40 FF FF */	li r10, -1
/* 80973C30  4B 69 CB A0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80973C34  7C 60 1B 78 */	mr r0, r3
lbl_80973C38:
/* 80973C38  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80973C3C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80973C40  28 03 00 00 */	cmplwi r3, 0
/* 80973C44  41 82 00 1C */	beq lbl_80973C60
/* 80973C48  80 03 00 04 */	lwz r0, 4(r3)
/* 80973C4C  28 00 00 00 */	cmplwi r0, 0
/* 80973C50  40 82 00 10 */	bne lbl_80973C60
/* 80973C54  4B 69 D6 BC */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80973C58  38 00 00 00 */	li r0, 0
/* 80973C5C  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80973C60:
/* 80973C60  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80973C64  28 03 00 00 */	cmplwi r3, 0
/* 80973C68  40 82 00 0C */	bne lbl_80973C74
/* 80973C6C  38 60 00 00 */	li r3, 0
/* 80973C70  48 00 01 84 */	b lbl_80973DF4
lbl_80973C74:
/* 80973C74  80 A3 00 04 */	lwz r5, 4(r3)
/* 80973C78  38 C0 00 00 */	li r6, 0
/* 80973C7C  3C 60 80 97 */	lis r3, ctrlJointCallBack__11daNpcBouS_cFP8J3DJointi@ha
/* 80973C80  38 83 42 DC */	addi r4, r3, ctrlJointCallBack__11daNpcBouS_cFP8J3DJointi@l
/* 80973C84  48 00 00 18 */	b lbl_80973C9C
lbl_80973C88:
/* 80973C88  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80973C8C  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80973C90  7C 63 00 2E */	lwzx r3, r3, r0
/* 80973C94  90 83 00 04 */	stw r4, 4(r3)
/* 80973C98  38 C6 00 01 */	addi r6, r6, 1
lbl_80973C9C:
/* 80973C9C  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80973CA0  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80973CA4  7C 03 00 40 */	cmplw r3, r0
/* 80973CA8  41 80 FF E0 */	blt lbl_80973C88
/* 80973CAC  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80973CB0  38 60 01 08 */	li r3, 0x108
/* 80973CB4  4B 95 AF 98 */	b __nw__FUl
/* 80973CB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80973CBC  41 82 00 D0 */	beq lbl_80973D8C
/* 80973CC0  7F DD F3 78 */	mr r29, r30
/* 80973CC4  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80973CC8  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80973CCC  90 1E 00 00 */	stw r0, 0(r30)
/* 80973CD0  38 7E 00 04 */	addi r3, r30, 4
/* 80973CD4  3C 80 80 97 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 80973CD8  38 84 3F B0 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 80973CDC  3C A0 80 97 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 80973CE0  38 A5 3F 74 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 80973CE4  38 C0 00 08 */	li r6, 8
/* 80973CE8  38 E0 00 02 */	li r7, 2
/* 80973CEC  4B 9E E0 74 */	b __construct_array
/* 80973CF0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80973CF4  3C 80 80 97 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 80973CF8  38 84 3F 5C */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 80973CFC  3C A0 80 97 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 80973D00  38 A5 3F 20 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 80973D04  38 C0 00 08 */	li r6, 8
/* 80973D08  38 E0 00 08 */	li r7, 8
/* 80973D0C  4B 9E E0 54 */	b __construct_array
/* 80973D10  38 7E 00 54 */	addi r3, r30, 0x54
/* 80973D14  3C 80 80 97 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 80973D18  38 84 3E FC */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 80973D1C  3C A0 80 97 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 80973D20  38 A5 3E B4 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 80973D24  38 C0 00 0C */	li r6, 0xc
/* 80973D28  38 E0 00 08 */	li r7, 8
/* 80973D2C  4B 9E E0 34 */	b __construct_array
/* 80973D30  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80973D34  3C 80 80 97 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 80973D38  38 84 3E 9C */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 80973D3C  3C A0 80 97 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 80973D40  38 A5 3E 60 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 80973D44  38 C0 00 08 */	li r6, 8
/* 80973D48  38 E0 00 04 */	li r7, 4
/* 80973D4C  4B 9E E0 14 */	b __construct_array
/* 80973D50  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80973D54  3C 80 80 97 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 80973D58  38 84 3E 48 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 80973D5C  3C A0 80 97 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 80973D60  38 A5 3E 0C */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 80973D64  38 C0 00 08 */	li r6, 8
/* 80973D68  38 E0 00 04 */	li r7, 4
/* 80973D6C  4B 9E DF F4 */	b __construct_array
/* 80973D70  7F C3 F3 78 */	mr r3, r30
/* 80973D74  4B 9B 85 AC */	b initialize__14J3DMaterialAnmFv
/* 80973D78  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80973D7C  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80973D80  90 1D 00 00 */	stw r0, 0(r29)
/* 80973D84  7F A3 EB 78 */	mr r3, r29
/* 80973D88  4B 7D C9 B0 */	b initialize__15daNpcF_MatAnm_cFv
lbl_80973D8C:
/* 80973D8C  93 DF 0B D8 */	stw r30, 0xbd8(r31)
/* 80973D90  80 1F 0B D8 */	lwz r0, 0xbd8(r31)
/* 80973D94  28 00 00 00 */	cmplwi r0, 0
/* 80973D98  40 82 00 0C */	bne lbl_80973DA4
/* 80973D9C  38 60 00 00 */	li r3, 0
/* 80973DA0  48 00 00 54 */	b lbl_80973DF4
lbl_80973DA4:
/* 80973DA4  7F E3 FB 78 */	mr r3, r31
/* 80973DA8  38 80 00 01 */	li r4, 1
/* 80973DAC  38 A0 00 00 */	li r5, 0
/* 80973DB0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80973DB4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80973DB8  7D 89 03 A6 */	mtctr r12
/* 80973DBC  4E 80 04 21 */	bctrl 
/* 80973DC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80973DC4  40 82 00 0C */	bne lbl_80973DD0
/* 80973DC8  38 60 00 00 */	li r3, 0
/* 80973DCC  48 00 00 28 */	b lbl_80973DF4
lbl_80973DD0:
/* 80973DD0  7F E3 FB 78 */	mr r3, r31
/* 80973DD4  38 80 00 07 */	li r4, 7
/* 80973DD8  3C A0 80 98 */	lis r5, lit_4447@ha
/* 80973DDC  C0 25 84 B0 */	lfs f1, lit_4447@l(r5)
/* 80973DE0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80973DE4  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80973DE8  7D 89 03 A6 */	mtctr r12
/* 80973DEC  4E 80 04 21 */	bctrl 
/* 80973DF0  38 60 00 01 */	li r3, 1
lbl_80973DF4:
/* 80973DF4  39 61 00 30 */	addi r11, r1, 0x30
/* 80973DF8  4B 9E E4 30 */	b _restgpr_29
/* 80973DFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80973E00  7C 08 03 A6 */	mtlr r0
/* 80973E04  38 21 00 30 */	addi r1, r1, 0x30
/* 80973E08  4E 80 00 20 */	blr 

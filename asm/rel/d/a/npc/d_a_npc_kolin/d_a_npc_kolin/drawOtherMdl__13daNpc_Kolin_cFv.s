lbl_80555CEC:
/* 80555CEC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80555CF0  7C 08 02 A6 */	mflr r0
/* 80555CF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80555CF8  39 61 00 50 */	addi r11, r1, 0x50
/* 80555CFC  4B E0 C4 E0 */	b _savegpr_29
/* 80555D00  7C 7E 1B 78 */	mr r30, r3
/* 80555D04  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80555D08  83 A3 00 04 */	lwz r29, 4(r3)
/* 80555D0C  38 00 00 00 */	li r0, 0
/* 80555D10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80555D14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80555D18  3B E3 61 C0 */	addi r31, r3, 0x61c0
/* 80555D1C  80 9E 0E 44 */	lwz r4, 0xe44(r30)
/* 80555D20  28 04 00 00 */	cmplwi r4, 0
/* 80555D24  41 82 00 88 */	beq lbl_80555DAC
/* 80555D28  2C 00 00 00 */	cmpwi r0, 0
/* 80555D2C  40 82 00 80 */	bne lbl_80555DAC
/* 80555D30  88 1E 10 17 */	lbz r0, 0x1017(r30)
/* 80555D34  28 00 00 00 */	cmplwi r0, 0
/* 80555D38  41 82 00 74 */	beq lbl_80555DAC
/* 80555D3C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80555D40  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80555D44  80 84 00 04 */	lwz r4, 4(r4)
/* 80555D48  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80555D4C  4B C4 F0 54 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80555D50  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80555D54  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80555D58  3C 60 80 56 */	lis r3, jointNo@ha
/* 80555D5C  80 03 A7 04 */	lwz r0, jointNo@l(r3)
/* 80555D60  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80555D64  7C 64 02 14 */	add r3, r4, r0
/* 80555D68  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80555D6C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80555D70  4B DF 07 40 */	b PSMTXCopy
/* 80555D74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80555D78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80555D7C  38 81 00 08 */	addi r4, r1, 8
/* 80555D80  4B DF 07 30 */	b PSMTXCopy
/* 80555D84  38 61 00 08 */	addi r3, r1, 8
/* 80555D88  80 9E 0E 44 */	lwz r4, 0xe44(r30)
/* 80555D8C  38 84 00 24 */	addi r4, r4, 0x24
/* 80555D90  4B DF 07 20 */	b PSMTXCopy
/* 80555D94  80 7E 0E 44 */	lwz r3, 0xe44(r30)
/* 80555D98  4B AB 7F 2C */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80555D9C  7F E3 FB 78 */	mr r3, r31
/* 80555DA0  80 9E 0D 94 */	lwz r4, 0xd94(r30)
/* 80555DA4  80 BE 0E 44 */	lwz r5, 0xe44(r30)
/* 80555DA8  4B B0 01 74 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80555DAC:
/* 80555DAC  39 61 00 50 */	addi r11, r1, 0x50
/* 80555DB0  4B E0 C4 78 */	b _restgpr_29
/* 80555DB4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80555DB8  7C 08 03 A6 */	mtlr r0
/* 80555DBC  38 21 00 50 */	addi r1, r1, 0x50
/* 80555DC0  4E 80 00 20 */	blr 

lbl_80A69CD8:
/* 80A69CD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A69CDC  7C 08 02 A6 */	mflr r0
/* 80A69CE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A69CE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A69CE8  4B 8F 84 F1 */	bl _savegpr_28
/* 80A69CEC  7C 7C 1B 78 */	mr r28, r3
/* 80A69CF0  3B FC 05 BC */	addi r31, r28, 0x5bc
/* 80A69CF4  3B C0 00 00 */	li r30, 0
/* 80A69CF8  3B A0 00 00 */	li r29, 0
/* 80A69CFC  48 00 00 6C */	b lbl_80A69D68
lbl_80A69D00:
/* 80A69D00  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 80A69D04  7C 00 07 75 */	extsb. r0, r0
/* 80A69D08  40 82 00 58 */	bne lbl_80A69D60
/* 80A69D0C  7F C0 07 75 */	extsb. r0, r30
/* 80A69D10  40 82 00 1C */	bne lbl_80A69D2C
/* 80A69D14  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A69D18  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A69D1C  38 80 00 00 */	li r4, 0
/* 80A69D20  38 BF 00 04 */	addi r5, r31, 4
/* 80A69D24  38 DC 01 0C */	addi r6, r28, 0x10c
/* 80A69D28  4B 73 9A 9D */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_80A69D2C:
/* 80A69D2C  3B DE 00 01 */	addi r30, r30, 1
/* 80A69D30  7F C0 07 74 */	extsb r0, r30
/* 80A69D34  2C 00 00 05 */	cmpwi r0, 5
/* 80A69D38  40 82 00 08 */	bne lbl_80A69D40
/* 80A69D3C  3B C0 00 00 */	li r30, 0
lbl_80A69D40:
/* 80A69D40  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A69D44  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A69D48  80 9F 00 00 */	lwz r4, 0(r31)
/* 80A69D4C  80 84 00 04 */	lwz r4, 4(r4)
/* 80A69D50  38 BC 01 0C */	addi r5, r28, 0x10c
/* 80A69D54  4B 73 B0 4D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A69D58  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A69D5C  4B 5A 3F 69 */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80A69D60:
/* 80A69D60  3B BD 00 01 */	addi r29, r29, 1
/* 80A69D64  3B FF 00 68 */	addi r31, r31, 0x68
lbl_80A69D68:
/* 80A69D68  80 1C 05 B8 */	lwz r0, 0x5b8(r28)
/* 80A69D6C  7C 1D 00 00 */	cmpw r29, r0
/* 80A69D70  41 80 FF 90 */	blt lbl_80A69D00
/* 80A69D74  38 60 00 01 */	li r3, 1
/* 80A69D78  39 61 00 20 */	addi r11, r1, 0x20
/* 80A69D7C  4B 8F 84 A9 */	bl _restgpr_28
/* 80A69D80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A69D84  7C 08 03 A6 */	mtlr r0
/* 80A69D88  38 21 00 20 */	addi r1, r1, 0x20
/* 80A69D8C  4E 80 00 20 */	blr 

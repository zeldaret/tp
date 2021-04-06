lbl_80AC1A28:
/* 80AC1A28  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AC1A2C  7C 08 02 A6 */	mflr r0
/* 80AC1A30  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AC1A34  39 61 00 50 */	addi r11, r1, 0x50
/* 80AC1A38  4B 8A 07 99 */	bl _savegpr_26
/* 80AC1A3C  7C 7B 1B 78 */	mr r27, r3
/* 80AC1A40  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80AC1A44  83 E3 00 04 */	lwz r31, 4(r3)
/* 80AC1A48  3B 80 00 00 */	li r28, 0
/* 80AC1A4C  3B 40 00 00 */	li r26, 0
/* 80AC1A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC1A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC1A58  3B C3 61 C0 */	addi r30, r3, 0x61c0
lbl_80AC1A5C:
/* 80AC1A5C  3B BA 0E 44 */	addi r29, r26, 0xe44
/* 80AC1A60  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80AC1A64  28 04 00 00 */	cmplwi r4, 0
/* 80AC1A68  41 82 00 A0 */	beq lbl_80AC1B08
/* 80AC1A6C  2C 1C 00 00 */	cmpwi r28, 0
/* 80AC1A70  40 82 00 10 */	bne lbl_80AC1A80
/* 80AC1A74  88 1B 0A 89 */	lbz r0, 0xa89(r27)
/* 80AC1A78  28 00 00 00 */	cmplwi r0, 0
/* 80AC1A7C  41 82 00 18 */	beq lbl_80AC1A94
lbl_80AC1A80:
/* 80AC1A80  2C 1C 00 01 */	cmpwi r28, 1
/* 80AC1A84  40 82 00 84 */	bne lbl_80AC1B08
/* 80AC1A88  88 1B 0A 89 */	lbz r0, 0xa89(r27)
/* 80AC1A8C  28 00 00 00 */	cmplwi r0, 0
/* 80AC1A90  41 82 00 78 */	beq lbl_80AC1B08
lbl_80AC1A94:
/* 80AC1A94  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80AC1A98  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80AC1A9C  80 84 00 04 */	lwz r4, 4(r4)
/* 80AC1AA0  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80AC1AA4  4B 6E 32 FD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AC1AA8  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80AC1AAC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80AC1AB0  3C 60 80 AC */	lis r3, jointNo@ha /* 0x80AC460C@ha */
/* 80AC1AB4  38 63 46 0C */	addi r3, r3, jointNo@l /* 0x80AC460C@l */
/* 80AC1AB8  7C 03 D0 2E */	lwzx r0, r3, r26
/* 80AC1ABC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80AC1AC0  7C 64 02 14 */	add r3, r4, r0
/* 80AC1AC4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AC1AC8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AC1ACC  4B 88 49 E5 */	bl PSMTXCopy
/* 80AC1AD0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AC1AD4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AC1AD8  38 81 00 08 */	addi r4, r1, 8
/* 80AC1ADC  4B 88 49 D5 */	bl PSMTXCopy
/* 80AC1AE0  38 61 00 08 */	addi r3, r1, 8
/* 80AC1AE4  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80AC1AE8  38 84 00 24 */	addi r4, r4, 0x24
/* 80AC1AEC  4B 88 49 C5 */	bl PSMTXCopy
/* 80AC1AF0  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80AC1AF4  4B 54 C1 D1 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80AC1AF8  7F C3 F3 78 */	mr r3, r30
/* 80AC1AFC  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80AC1B00  7C BB E8 2E */	lwzx r5, r27, r29
/* 80AC1B04  4B 59 44 19 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80AC1B08:
/* 80AC1B08  3B 9C 00 01 */	addi r28, r28, 1
/* 80AC1B0C  2C 1C 00 02 */	cmpwi r28, 2
/* 80AC1B10  3B 5A 00 04 */	addi r26, r26, 4
/* 80AC1B14  41 80 FF 48 */	blt lbl_80AC1A5C
/* 80AC1B18  39 61 00 50 */	addi r11, r1, 0x50
/* 80AC1B1C  4B 8A 07 01 */	bl _restgpr_26
/* 80AC1B20  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AC1B24  7C 08 03 A6 */	mtlr r0
/* 80AC1B28  38 21 00 50 */	addi r1, r1, 0x50
/* 80AC1B2C  4E 80 00 20 */	blr 

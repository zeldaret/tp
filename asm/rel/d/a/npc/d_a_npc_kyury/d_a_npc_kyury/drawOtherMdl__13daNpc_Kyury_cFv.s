lbl_80A618B0:
/* 80A618B0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A618B4  7C 08 02 A6 */	mflr r0
/* 80A618B8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A618BC  39 61 00 50 */	addi r11, r1, 0x50
/* 80A618C0  4B 90 09 11 */	bl _savegpr_26
/* 80A618C4  7C 7B 1B 78 */	mr r27, r3
/* 80A618C8  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80A618CC  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A618D0  3B 80 00 00 */	li r28, 0
/* 80A618D4  3B 40 00 00 */	li r26, 0
/* 80A618D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A618DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A618E0  3B C3 61 C0 */	addi r30, r3, 0x61c0
lbl_80A618E4:
/* 80A618E4  3B BA 0E 44 */	addi r29, r26, 0xe44
/* 80A618E8  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A618EC  28 04 00 00 */	cmplwi r4, 0
/* 80A618F0  41 82 00 A0 */	beq lbl_80A61990
/* 80A618F4  2C 1C 00 00 */	cmpwi r28, 0
/* 80A618F8  40 82 00 10 */	bne lbl_80A61908
/* 80A618FC  88 1B 0F D4 */	lbz r0, 0xfd4(r27)
/* 80A61900  28 00 00 00 */	cmplwi r0, 0
/* 80A61904  40 82 00 18 */	bne lbl_80A6191C
lbl_80A61908:
/* 80A61908  2C 1C 00 01 */	cmpwi r28, 1
/* 80A6190C  40 82 00 84 */	bne lbl_80A61990
/* 80A61910  88 1B 0F D5 */	lbz r0, 0xfd5(r27)
/* 80A61914  28 00 00 00 */	cmplwi r0, 0
/* 80A61918  41 82 00 78 */	beq lbl_80A61990
lbl_80A6191C:
/* 80A6191C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80A61920  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80A61924  80 84 00 04 */	lwz r4, 4(r4)
/* 80A61928  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80A6192C  4B 74 34 75 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A61930  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80A61934  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80A61938  3C 60 80 A6 */	lis r3, jointNo@ha /* 0x80A639A8@ha */
/* 80A6193C  38 63 39 A8 */	addi r3, r3, jointNo@l /* 0x80A639A8@l */
/* 80A61940  7C 03 D0 2E */	lwzx r0, r3, r26
/* 80A61944  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80A61948  7C 64 02 14 */	add r3, r4, r0
/* 80A6194C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A61950  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A61954  4B 8E 4B 5D */	bl PSMTXCopy
/* 80A61958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6195C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A61960  38 81 00 08 */	addi r4, r1, 8
/* 80A61964  4B 8E 4B 4D */	bl PSMTXCopy
/* 80A61968  38 61 00 08 */	addi r3, r1, 8
/* 80A6196C  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A61970  38 84 00 24 */	addi r4, r4, 0x24
/* 80A61974  4B 8E 4B 3D */	bl PSMTXCopy
/* 80A61978  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80A6197C  4B 5A C3 49 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80A61980  7F C3 F3 78 */	mr r3, r30
/* 80A61984  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80A61988  7C BB E8 2E */	lwzx r5, r27, r29
/* 80A6198C  4B 5F 45 91 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80A61990:
/* 80A61990  3B 9C 00 01 */	addi r28, r28, 1
/* 80A61994  2C 1C 00 02 */	cmpwi r28, 2
/* 80A61998  3B 5A 00 04 */	addi r26, r26, 4
/* 80A6199C  41 80 FF 48 */	blt lbl_80A618E4
/* 80A619A0  39 61 00 50 */	addi r11, r1, 0x50
/* 80A619A4  4B 90 08 79 */	bl _restgpr_26
/* 80A619A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A619AC  7C 08 03 A6 */	mtlr r0
/* 80A619B0  38 21 00 50 */	addi r1, r1, 0x50
/* 80A619B4  4E 80 00 20 */	blr 

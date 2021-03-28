lbl_80568598:
/* 80568598  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8056859C  7C 08 02 A6 */	mflr r0
/* 805685A0  90 01 00 54 */	stw r0, 0x54(r1)
/* 805685A4  39 61 00 50 */	addi r11, r1, 0x50
/* 805685A8  4B DF 9C 28 */	b _savegpr_26
/* 805685AC  7C 7B 1B 78 */	mr r27, r3
/* 805685B0  80 63 05 78 */	lwz r3, 0x578(r3)
/* 805685B4  83 E3 00 04 */	lwz r31, 4(r3)
/* 805685B8  3B 80 00 00 */	li r28, 0
/* 805685BC  3B 40 00 00 */	li r26, 0
/* 805685C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805685C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805685C8  3B C3 61 C0 */	addi r30, r3, 0x61c0
lbl_805685CC:
/* 805685CC  3B BA 0E 44 */	addi r29, r26, 0xe44
/* 805685D0  7C 9B E8 2E */	lwzx r4, r27, r29
/* 805685D4  28 04 00 00 */	cmplwi r4, 0
/* 805685D8  41 82 00 A0 */	beq lbl_80568678
/* 805685DC  2C 1C 00 00 */	cmpwi r28, 0
/* 805685E0  40 82 00 10 */	bne lbl_805685F0
/* 805685E4  88 1B 11 A4 */	lbz r0, 0x11a4(r27)
/* 805685E8  28 00 00 00 */	cmplwi r0, 0
/* 805685EC  40 82 00 18 */	bne lbl_80568604
lbl_805685F0:
/* 805685F0  2C 1C 00 01 */	cmpwi r28, 1
/* 805685F4  40 82 00 84 */	bne lbl_80568678
/* 805685F8  88 1B 11 A5 */	lbz r0, 0x11a5(r27)
/* 805685FC  28 00 00 00 */	cmplwi r0, 0
/* 80568600  41 82 00 78 */	beq lbl_80568678
lbl_80568604:
/* 80568604  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80568608  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8056860C  80 84 00 04 */	lwz r4, 4(r4)
/* 80568610  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80568614  4B C3 C7 8C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80568618  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 8056861C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80568620  3C 60 80 57 */	lis r3, jointNo@ha
/* 80568624  38 63 18 14 */	addi r3, r3, jointNo@l
/* 80568628  7C 03 D0 2E */	lwzx r0, r3, r26
/* 8056862C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80568630  7C 64 02 14 */	add r3, r4, r0
/* 80568634  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80568638  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8056863C  4B DD DE 74 */	b PSMTXCopy
/* 80568640  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80568644  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80568648  38 81 00 08 */	addi r4, r1, 8
/* 8056864C  4B DD DE 64 */	b PSMTXCopy
/* 80568650  38 61 00 08 */	addi r3, r1, 8
/* 80568654  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80568658  38 84 00 24 */	addi r4, r4, 0x24
/* 8056865C  4B DD DE 54 */	b PSMTXCopy
/* 80568660  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80568664  4B AA 56 60 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80568668  7F C3 F3 78 */	mr r3, r30
/* 8056866C  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80568670  7C BB E8 2E */	lwzx r5, r27, r29
/* 80568674  4B AE D8 A8 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80568678:
/* 80568678  3B 9C 00 01 */	addi r28, r28, 1
/* 8056867C  2C 1C 00 02 */	cmpwi r28, 2
/* 80568680  3B 5A 00 04 */	addi r26, r26, 4
/* 80568684  41 80 FF 48 */	blt lbl_805685CC
/* 80568688  39 61 00 50 */	addi r11, r1, 0x50
/* 8056868C  4B DF 9B 90 */	b _restgpr_26
/* 80568690  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80568694  7C 08 03 A6 */	mtlr r0
/* 80568698  38 21 00 50 */	addi r1, r1, 0x50
/* 8056869C  4E 80 00 20 */	blr 

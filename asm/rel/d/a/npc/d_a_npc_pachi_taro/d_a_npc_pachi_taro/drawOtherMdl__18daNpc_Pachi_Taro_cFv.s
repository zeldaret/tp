lbl_80A9DC1C:
/* 80A9DC1C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A9DC20  7C 08 02 A6 */	mflr r0
/* 80A9DC24  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A9DC28  39 61 00 50 */	addi r11, r1, 0x50
/* 80A9DC2C  4B 8C 45 A4 */	b _savegpr_26
/* 80A9DC30  7C 7B 1B 78 */	mr r27, r3
/* 80A9DC34  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80A9DC38  83 E3 00 04 */	lwz r31, 4(r3)
/* 80A9DC3C  3B 80 00 00 */	li r28, 0
/* 80A9DC40  3B 40 00 00 */	li r26, 0
/* 80A9DC44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A9DC48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A9DC4C  3B C3 61 C0 */	addi r30, r3, 0x61c0
lbl_80A9DC50:
/* 80A9DC50  3B BA 0E 44 */	addi r29, r26, 0xe44
/* 80A9DC54  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A9DC58  28 04 00 00 */	cmplwi r4, 0
/* 80A9DC5C  41 82 00 A0 */	beq lbl_80A9DCFC
/* 80A9DC60  2C 1C 00 00 */	cmpwi r28, 0
/* 80A9DC64  40 82 00 10 */	bne lbl_80A9DC74
/* 80A9DC68  88 1B 10 05 */	lbz r0, 0x1005(r27)
/* 80A9DC6C  28 00 00 00 */	cmplwi r0, 0
/* 80A9DC70  40 82 00 18 */	bne lbl_80A9DC88
lbl_80A9DC74:
/* 80A9DC74  2C 1C 00 01 */	cmpwi r28, 1
/* 80A9DC78  40 82 00 84 */	bne lbl_80A9DCFC
/* 80A9DC7C  88 1B 10 06 */	lbz r0, 0x1006(r27)
/* 80A9DC80  28 00 00 00 */	cmplwi r0, 0
/* 80A9DC84  41 82 00 78 */	beq lbl_80A9DCFC
lbl_80A9DC88:
/* 80A9DC88  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80A9DC8C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80A9DC90  80 84 00 04 */	lwz r4, 4(r4)
/* 80A9DC94  38 BB 01 0C */	addi r5, r27, 0x10c
/* 80A9DC98  4B 70 71 08 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80A9DC9C  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80A9DCA0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80A9DCA4  3C 60 80 AA */	lis r3, jointNo@ha
/* 80A9DCA8  38 63 16 EC */	addi r3, r3, jointNo@l
/* 80A9DCAC  7C 03 D0 2E */	lwzx r0, r3, r26
/* 80A9DCB0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80A9DCB4  7C 64 02 14 */	add r3, r4, r0
/* 80A9DCB8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A9DCBC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A9DCC0  4B 8A 87 F0 */	b PSMTXCopy
/* 80A9DCC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A9DCC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A9DCCC  38 81 00 08 */	addi r4, r1, 8
/* 80A9DCD0  4B 8A 87 E0 */	b PSMTXCopy
/* 80A9DCD4  38 61 00 08 */	addi r3, r1, 8
/* 80A9DCD8  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A9DCDC  38 84 00 24 */	addi r4, r4, 0x24
/* 80A9DCE0  4B 8A 87 D0 */	b PSMTXCopy
/* 80A9DCE4  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80A9DCE8  4B 56 FF DC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80A9DCEC  7F C3 F3 78 */	mr r3, r30
/* 80A9DCF0  80 9B 0D 94 */	lwz r4, 0xd94(r27)
/* 80A9DCF4  7C BB E8 2E */	lwzx r5, r27, r29
/* 80A9DCF8  4B 5B 82 24 */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_80A9DCFC:
/* 80A9DCFC  3B 9C 00 01 */	addi r28, r28, 1
/* 80A9DD00  2C 1C 00 02 */	cmpwi r28, 2
/* 80A9DD04  3B 5A 00 04 */	addi r26, r26, 4
/* 80A9DD08  41 80 FF 48 */	blt lbl_80A9DC50
/* 80A9DD0C  39 61 00 50 */	addi r11, r1, 0x50
/* 80A9DD10  4B 8C 45 0C */	b _restgpr_26
/* 80A9DD14  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A9DD18  7C 08 03 A6 */	mtlr r0
/* 80A9DD1C  38 21 00 50 */	addi r1, r1, 0x50
/* 80A9DD20  4E 80 00 20 */	blr 

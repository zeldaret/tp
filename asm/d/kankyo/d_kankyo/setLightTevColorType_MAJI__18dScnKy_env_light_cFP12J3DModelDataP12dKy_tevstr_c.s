lbl_801A4DA0:
/* 801A4DA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801A4DA4  7C 08 02 A6 */	mflr r0
/* 801A4DA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 801A4DAC  39 61 00 20 */	addi r11, r1, 0x20
/* 801A4DB0  48 1B D4 29 */	bl _savegpr_28
/* 801A4DB4  7C 7E 1B 78 */	mr r30, r3
/* 801A4DB8  7C 9C 23 78 */	mr r28, r4
/* 801A4DBC  7C BD 2B 78 */	mr r29, r5
/* 801A4DC0  88 05 03 83 */	lbz r0, 0x383(r5)
/* 801A4DC4  28 00 00 7C */	cmplwi r0, 0x7c
/* 801A4DC8  41 82 00 34 */	beq lbl_801A4DFC
/* 801A4DCC  28 00 00 7B */	cmplwi r0, 0x7b
/* 801A4DD0  41 82 00 18 */	beq lbl_801A4DE8
/* 801A4DD4  7F A3 EB 78 */	mr r3, r29
/* 801A4DD8  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 801A4DDC  7C 04 07 74 */	extsb r4, r0
/* 801A4DE0  38 A0 00 FF */	li r5, 0xff
/* 801A4DE4  48 00 3B 09 */	bl dKy_tevstr_init__FP12dKy_tevstr_cScUc
lbl_801A4DE8:
/* 801A4DE8  7F C3 F3 78 */	mr r3, r30
/* 801A4DEC  38 80 00 0B */	li r4, 0xb
/* 801A4DF0  38 A0 00 00 */	li r5, 0
/* 801A4DF4  7F A6 EB 78 */	mr r6, r29
/* 801A4DF8  4B FF E9 CD */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
lbl_801A4DFC:
/* 801A4DFC  7F A3 EB 78 */	mr r3, r29
/* 801A4E00  48 00 20 9D */	bl dKy_setLight_nowroom_actor__FP12dKy_tevstr_c
/* 801A4E04  88 1D 03 7A */	lbz r0, 0x37a(r29)
/* 801A4E08  28 00 00 0A */	cmplwi r0, 0xa
/* 801A4E0C  40 81 00 1C */	ble lbl_801A4E28
/* 801A4E10  28 00 00 0C */	cmplwi r0, 0xc
/* 801A4E14  41 82 00 14 */	beq lbl_801A4E28
/* 801A4E18  28 00 00 0D */	cmplwi r0, 0xd
/* 801A4E1C  41 82 00 0C */	beq lbl_801A4E28
/* 801A4E20  3B E0 00 00 */	li r31, 0
/* 801A4E24  48 00 00 08 */	b lbl_801A4E2C
lbl_801A4E28:
/* 801A4E28  3B E0 00 01 */	li r31, 1
lbl_801A4E2C:
/* 801A4E2C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801A4E30  41 82 00 18 */	beq lbl_801A4E48
/* 801A4E34  7F 83 E3 78 */	mr r3, r28
/* 801A4E38  7F A4 EB 78 */	mr r4, r29
/* 801A4E3C  7F E5 FB 78 */	mr r5, r31
/* 801A4E40  4B FF FD D1 */	bl dKy_cloudshadow_scroll__FP12J3DModelDataP12dKy_tevstr_ci
/* 801A4E44  48 00 00 34 */	b lbl_801A4E78
lbl_801A4E48:
/* 801A4E48  A0 7C 00 5C */	lhz r3, 0x5c(r28)
/* 801A4E4C  3B C3 FF FF */	addi r30, r3, -1
/* 801A4E50  48 00 00 20 */	b lbl_801A4E70
lbl_801A4E54:
/* 801A4E54  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 801A4E58  57 C0 13 BA */	rlwinm r0, r30, 2, 0xe, 0x1d
/* 801A4E5C  7C 63 00 2E */	lwzx r3, r3, r0
/* 801A4E60  7F A4 EB 78 */	mr r4, r29
/* 801A4E64  7F E5 FB 78 */	mr r5, r31
/* 801A4E68  4B FF F5 B9 */	bl setLightTevColorType_MAJI_sub__FP11J3DMaterialP12dKy_tevstr_ci
/* 801A4E6C  3B DE FF FF */	addi r30, r30, -1
lbl_801A4E70:
/* 801A4E70  2C 1E 00 00 */	cmpwi r30, 0
/* 801A4E74  40 80 FF E0 */	bge lbl_801A4E54
lbl_801A4E78:
/* 801A4E78  39 61 00 20 */	addi r11, r1, 0x20
/* 801A4E7C  48 1B D3 A9 */	bl _restgpr_28
/* 801A4E80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801A4E84  7C 08 03 A6 */	mtlr r0
/* 801A4E88  38 21 00 20 */	addi r1, r1, 0x20
/* 801A4E8C  4E 80 00 20 */	blr 

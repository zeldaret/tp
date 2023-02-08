lbl_80729B24:
/* 80729B24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80729B28  7C 08 02 A6 */	mflr r0
/* 80729B2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80729B30  39 61 00 20 */	addi r11, r1, 0x20
/* 80729B34  4B C3 86 A5 */	bl _savegpr_28
/* 80729B38  7C 7F 1B 78 */	mr r31, r3
/* 80729B3C  80 63 05 E0 */	lwz r3, 0x5e0(r3)
/* 80729B40  83 C3 00 04 */	lwz r30, 4(r3)
/* 80729B44  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80729B48  2C 00 00 00 */	cmpwi r0, 0
/* 80729B4C  41 82 00 0C */	beq lbl_80729B58
/* 80729B50  38 60 00 01 */	li r3, 1
/* 80729B54  48 00 00 B8 */	b lbl_80729C0C
lbl_80729B58:
/* 80729B58  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80729B5C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80729B60  38 80 00 00 */	li r4, 0
/* 80729B64  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80729B68  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80729B6C  4B A7 9C 59 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80729B70  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 80729B74  3C 60 80 73 */	lis r3, lit_3791@ha /* 0x8072C188@ha */
/* 80729B78  C0 03 C1 88 */	lfs f0, lit_3791@l(r3)  /* 0x8072C188@l */
/* 80729B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80729B80  40 80 00 0C */	bge lbl_80729B8C
/* 80729B84  38 60 00 01 */	li r3, 1
/* 80729B88  48 00 00 84 */	b lbl_80729C0C
lbl_80729B8C:
/* 80729B8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80729B90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80729B94  80 9E 00 04 */	lwz r4, 4(r30)
/* 80729B98  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80729B9C  4B A7 B2 05 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80729BA0  83 DE 00 04 */	lwz r30, 4(r30)
/* 80729BA4  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 80729BA8  FC 00 00 1E */	fctiwz f0, f0
/* 80729BAC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80729BB0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80729BB4  3B 80 00 00 */	li r28, 0
/* 80729BB8  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80729BBC  48 00 00 30 */	b lbl_80729BEC
lbl_80729BC0:
/* 80729BC0  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 80729BC4  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80729BC8  7C 63 00 2E */	lwzx r3, r3, r0
/* 80729BCC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80729BD0  38 80 00 02 */	li r4, 2
/* 80729BD4  81 83 00 00 */	lwz r12, 0(r3)
/* 80729BD8  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80729BDC  7D 89 03 A6 */	mtctr r12
/* 80729BE0  4E 80 04 21 */	bctrl 
/* 80729BE4  B3 A3 00 06 */	sth r29, 6(r3)
/* 80729BE8  3B 9C 00 01 */	addi r28, r28, 1
lbl_80729BEC:
/* 80729BEC  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 80729BF0  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 80729BF4  7C 03 00 40 */	cmplw r3, r0
/* 80729BF8  41 80 FF C8 */	blt lbl_80729BC0
/* 80729BFC  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80729C00  38 80 00 00 */	li r4, 0
/* 80729C04  4B 8E 4B BD */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
/* 80729C08  38 60 00 01 */	li r3, 1
lbl_80729C0C:
/* 80729C0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80729C10  4B C3 86 15 */	bl _restgpr_28
/* 80729C14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80729C18  7C 08 03 A6 */	mtlr r0
/* 80729C1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80729C20  4E 80 00 20 */	blr 

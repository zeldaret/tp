lbl_80D42B0C:
/* 80D42B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D42B10  7C 08 02 A6 */	mflr r0
/* 80D42B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D42B1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D42B20  7C 7F 1B 78 */	mr r31, r3
/* 80D42B24  88 03 07 2E */	lbz r0, 0x72e(r3)
/* 80D42B28  28 00 00 01 */	cmplwi r0, 1
/* 80D42B2C  40 82 00 7C */	bne lbl_80D42BA8
/* 80D42B30  38 7F 07 54 */	addi r3, r31, 0x754
/* 80D42B34  48 00 0F 41 */	bl draw__20_ZraMark_Hahen_Mng_cFv
/* 80D42B38  38 00 00 00 */	li r0, 0
/* 80D42B3C  88 7F 07 2D */	lbz r3, 0x72d(r31)
/* 80D42B40  28 03 00 00 */	cmplwi r3, 0
/* 80D42B44  41 82 00 0C */	beq lbl_80D42B50
/* 80D42B48  28 03 00 02 */	cmplwi r3, 2
/* 80D42B4C  40 82 00 08 */	bne lbl_80D42B54
lbl_80D42B50:
/* 80D42B50  38 00 00 01 */	li r0, 1
lbl_80D42B54:
/* 80D42B54  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D42B58  41 82 00 48 */	beq lbl_80D42BA0
/* 80D42B5C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D42B60  80 63 00 04 */	lwz r3, 4(r3)
/* 80D42B64  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D42B68  80 63 00 00 */	lwz r3, 0(r3)
/* 80D42B6C  80 63 00 08 */	lwz r3, 8(r3)
/* 80D42B70  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D42B74  60 00 00 01 */	ori r0, r0, 1
/* 80D42B78  90 03 00 0C */	stw r0, 0xc(r3)
/* 80D42B7C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D42B80  80 63 00 04 */	lwz r3, 4(r3)
/* 80D42B84  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D42B88  80 63 00 08 */	lwz r3, 8(r3)
/* 80D42B8C  80 63 00 08 */	lwz r3, 8(r3)
/* 80D42B90  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D42B94  60 00 00 01 */	ori r0, r0, 1
/* 80D42B98  90 03 00 0C */	stw r0, 0xc(r3)
/* 80D42B9C  48 00 00 70 */	b lbl_80D42C0C
lbl_80D42BA0:
/* 80D42BA0  38 60 00 01 */	li r3, 1
/* 80D42BA4  48 00 00 DC */	b lbl_80D42C80
lbl_80D42BA8:
/* 80D42BA8  38 00 00 00 */	li r0, 0
/* 80D42BAC  88 7F 07 2D */	lbz r3, 0x72d(r31)
/* 80D42BB0  28 03 00 00 */	cmplwi r3, 0
/* 80D42BB4  41 82 00 0C */	beq lbl_80D42BC0
/* 80D42BB8  28 03 00 02 */	cmplwi r3, 2
/* 80D42BBC  40 82 00 08 */	bne lbl_80D42BC4
lbl_80D42BC0:
/* 80D42BC0  38 00 00 01 */	li r0, 1
lbl_80D42BC4:
/* 80D42BC4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D42BC8  41 82 00 44 */	beq lbl_80D42C0C
/* 80D42BCC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D42BD0  80 63 00 04 */	lwz r3, 4(r3)
/* 80D42BD4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D42BD8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D42BDC  80 63 00 08 */	lwz r3, 8(r3)
/* 80D42BE0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D42BE4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D42BE8  90 03 00 0C */	stw r0, 0xc(r3)
/* 80D42BEC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D42BF0  80 63 00 04 */	lwz r3, 4(r3)
/* 80D42BF4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80D42BF8  80 63 00 08 */	lwz r3, 8(r3)
/* 80D42BFC  80 63 00 08 */	lwz r3, 8(r3)
/* 80D42C00  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D42C04  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D42C08  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80D42C0C:
/* 80D42C0C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D42C10  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D42C14  38 80 00 10 */	li r4, 0x10
/* 80D42C18  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D42C1C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D42C20  4B 46 0B A4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D42C24  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D42C28  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D42C2C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D42C30  80 84 00 04 */	lwz r4, 4(r4)
/* 80D42C34  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D42C38  4B 46 21 68 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D42C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D42C40  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D42C44  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80D42C48  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D42C4C  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80D42C50  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D42C54  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80D42C58  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D42C5C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D42C60  4B 2C B0 64 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D42C64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D42C68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D42C6C  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D42C70  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D42C74  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D42C78  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D42C7C  38 60 00 01 */	li r3, 1
lbl_80D42C80:
/* 80D42C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D42C84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D42C88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D42C8C  7C 08 03 A6 */	mtlr r0
/* 80D42C90  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42C94  4E 80 00 20 */	blr 

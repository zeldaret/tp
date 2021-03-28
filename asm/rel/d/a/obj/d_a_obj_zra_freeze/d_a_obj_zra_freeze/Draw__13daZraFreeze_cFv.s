lbl_80D449E0:
/* 80D449E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D449E4  7C 08 02 A6 */	mflr r0
/* 80D449E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D449EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D449F0  7C 7F 1B 78 */	mr r31, r3
/* 80D449F4  88 83 05 B0 */	lbz r4, 0x5b0(r3)
/* 80D449F8  28 04 00 FF */	cmplwi r4, 0xff
/* 80D449FC  41 82 00 20 */	beq lbl_80D44A1C
/* 80D44A00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D44A04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D44A08  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D44A0C  7C 05 07 74 */	extsb r5, r0
/* 80D44A10  4B 2F 09 50 */	b isSwitch__10dSv_info_cCFii
/* 80D44A14  2C 03 00 00 */	cmpwi r3, 0
/* 80D44A18  41 82 00 54 */	beq lbl_80D44A6C
lbl_80D44A1C:
/* 80D44A1C  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80D44A20  2C 00 00 00 */	cmpwi r0, 0
/* 80D44A24  41 82 00 48 */	beq lbl_80D44A6C
/* 80D44A28  4B 2E B0 2C */	b dComIfGs_wolfeye_effect_check__Fv
/* 80D44A2C  2C 03 00 01 */	cmpwi r3, 1
/* 80D44A30  40 82 00 3C */	bne lbl_80D44A6C
/* 80D44A34  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D44A38  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D44A3C  38 80 00 04 */	li r4, 4
/* 80D44A40  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D44A44  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D44A48  4B 45 ED 7C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D44A4C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D44A50  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D44A54  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80D44A58  80 84 00 04 */	lwz r4, 4(r4)
/* 80D44A5C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80D44A60  4B 46 03 40 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80D44A64  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D44A68  4B 2C 92 5C */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_80D44A6C:
/* 80D44A6C  38 60 00 01 */	li r3, 1
/* 80D44A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D44A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D44A78  7C 08 03 A6 */	mtlr r0
/* 80D44A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D44A80  4E 80 00 20 */	blr 

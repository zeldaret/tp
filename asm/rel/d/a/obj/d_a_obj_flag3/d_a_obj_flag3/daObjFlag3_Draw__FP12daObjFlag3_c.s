lbl_80BEEC5C:
/* 80BEEC5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEEC60  7C 08 02 A6 */	mflr r0
/* 80BEEC64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEEC68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEEC6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BEEC70  7C 7E 1B 78 */	mr r30, r3
/* 80BEEC74  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BEEC78  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BEEC7C  38 80 00 10 */	li r4, 0x10
/* 80BEEC80  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BEEC84  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BEEC88  4B 5B 4B 3C */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BEEC8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BEEC90  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80BEEC94  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 80BEEC98  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80BEEC9C  3B E3 4A C8 */	addi r31, r3, j3dSys@l
/* 80BEECA0  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BEECA4  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 80BEECA8  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BEECAC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80BEECB0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80BEECB4  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80BEECB8  80 84 00 04 */	lwz r4, 4(r4)
/* 80BEECBC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BEECC0  4B 5B 60 E0 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BEECC4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80BEECC8  4B 41 EF FC */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80BEECCC  88 1E 13 2C */	lbz r0, 0x132c(r30)
/* 80BEECD0  28 00 00 00 */	cmplwi r0, 0
/* 80BEECD4  41 82 00 14 */	beq lbl_80BEECE8
/* 80BEECD8  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80BEECDC  38 9E 05 80 */	addi r4, r30, 0x580
/* 80BEECE0  38 A0 00 00 */	li r5, 0
/* 80BEECE4  4B 73 67 A8 */	b entryImm__13J3DDrawBufferFP9J3DPacketUs
lbl_80BEECE8:
/* 80BEECE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BEECEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BEECF0  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80BEECF4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80BEECF8  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80BEECFC  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80BEED00  38 60 00 01 */	li r3, 1
/* 80BEED04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEED08  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BEED0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEED10  7C 08 03 A6 */	mtlr r0
/* 80BEED14  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEED18  4E 80 00 20 */	blr 

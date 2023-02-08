lbl_80B2DF4C:
/* 80B2DF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2DF50  7C 08 02 A6 */	mflr r0
/* 80B2DF54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2DF58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2DF5C  7C 7F 1B 78 */	mr r31, r3
/* 80B2DF60  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B2DF64  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B2DF68  38 80 00 00 */	li r4, 0
/* 80B2DF6C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80B2DF70  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80B2DF74  4B 67 58 51 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80B2DF78  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 80B2DF7C  3C 60 80 B3 */	lis r3, lit_3717@ha /* 0x80B2F080@ha */
/* 80B2DF80  C0 03 F0 80 */	lfs f0, lit_3717@l(r3)  /* 0x80B2F080@l */
/* 80B2DF84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B2DF88  40 81 00 24 */	ble lbl_80B2DFAC
/* 80B2DF8C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B2DF90  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B2DF94  80 9F 05 A0 */	lwz r4, 0x5a0(r31)
/* 80B2DF98  80 84 00 04 */	lwz r4, 4(r4)
/* 80B2DF9C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80B2DFA0  4B 67 6E 01 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B2DFA4  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80B2DFA8  4B 4D FD 1D */	bl mDoExt_modelUpdateDL__FP8J3DModel
lbl_80B2DFAC:
/* 80B2DFAC  88 1F 05 E6 */	lbz r0, 0x5e6(r31)
/* 80B2DFB0  28 00 00 00 */	cmplwi r0, 0
/* 80B2DFB4  40 82 00 0C */	bne lbl_80B2DFC0
/* 80B2DFB8  38 60 00 01 */	li r3, 1
/* 80B2DFBC  48 00 00 74 */	b lbl_80B2E030
lbl_80B2DFC0:
/* 80B2DFC0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80B2DFC4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80B2DFC8  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 80B2DFCC  80 84 00 04 */	lwz r4, 4(r4)
/* 80B2DFD0  38 BF 01 0C */	addi r5, r31, 0x10c
/* 80B2DFD4  4B 67 6D CD */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80B2DFD8  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80B2DFDC  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80B2DFE0  38 E0 00 00 */	li r7, 0
/* 80B2DFE4  3C 60 80 B3 */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80B2DE78@ha */
/* 80B2DFE8  38 A3 DE 78 */	addi r5, r3, nodeCallBack__FP8J3DJointi@l /* 0x80B2DE78@l */
/* 80B2DFEC  48 00 00 24 */	b lbl_80B2E010
lbl_80B2DFF0:
/* 80B2DFF0  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80B2DFF4  28 00 00 01 */	cmplwi r0, 1
/* 80B2DFF8  41 80 00 14 */	blt lbl_80B2E00C
/* 80B2DFFC  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80B2E000  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80B2E004  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B2E008  90 A3 00 04 */	stw r5, 4(r3)
lbl_80B2E00C:
/* 80B2E00C  38 E7 00 01 */	addi r7, r7, 1
lbl_80B2E010:
/* 80B2E010  80 7F 05 9C */	lwz r3, 0x59c(r31)
/* 80B2E014  80 C3 00 04 */	lwz r6, 4(r3)
/* 80B2E018  A0 86 00 2C */	lhz r4, 0x2c(r6)
/* 80B2E01C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80B2E020  7C 00 20 40 */	cmplw r0, r4
/* 80B2E024  41 80 FF CC */	blt lbl_80B2DFF0
/* 80B2E028  4B 4D FC 9D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80B2E02C  38 60 00 01 */	li r3, 1
lbl_80B2E030:
/* 80B2E030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2E034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2E038  7C 08 03 A6 */	mtlr r0
/* 80B2E03C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2E040  4E 80 00 20 */	blr 

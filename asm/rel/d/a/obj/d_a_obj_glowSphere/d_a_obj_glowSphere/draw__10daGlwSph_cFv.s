lbl_80BFA2A4:
/* 80BFA2A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFA2A8  7C 08 02 A6 */	mflr r0
/* 80BFA2AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFA2B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFA2B4  4B 76 7F 29 */	bl _savegpr_29
/* 80BFA2B8  7C 7E 1B 78 */	mr r30, r3
/* 80BFA2BC  3C 60 80 C0 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BFA9D0@ha */
/* 80BFA2C0  3B E3 A9 D0 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80BFA9D0@l */
/* 80BFA2C4  88 1E 09 50 */	lbz r0, 0x950(r30)
/* 80BFA2C8  28 00 00 01 */	cmplwi r0, 1
/* 80BFA2CC  40 82 00 0C */	bne lbl_80BFA2D8
/* 80BFA2D0  38 60 00 01 */	li r3, 1
/* 80BFA2D4  48 00 01 00 */	b lbl_80BFA3D4
lbl_80BFA2D8:
/* 80BFA2D8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BFA2DC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BFA2E0  38 80 00 00 */	li r4, 0
/* 80BFA2E4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BFA2E8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 80BFA2EC  4B 5A 94 D9 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80BFA2F0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80BFA2F4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80BFA2F8  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 80BFA2FC  80 84 00 04 */	lwz r4, 4(r4)
/* 80BFA300  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80BFA304  4B 5A AA 9D */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80BFA308  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80BFA30C  83 A3 00 04 */	lwz r29, 4(r3)
/* 80BFA310  C0 3E 05 9C */	lfs f1, 0x59c(r30)
/* 80BFA314  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80BFA318  38 9D 00 58 */	addi r4, r29, 0x58
/* 80BFA31C  4B 41 34 8D */	bl entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80BFA320  C0 3E 05 84 */	lfs f1, 0x584(r30)
/* 80BFA324  38 7E 05 74 */	addi r3, r30, 0x574
/* 80BFA328  38 9D 00 58 */	addi r4, r29, 0x58
/* 80BFA32C  4B 41 33 AD */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80BFA330  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 80BFA334  83 A3 00 00 */	lwz r29, 0(r3)
/* 80BFA338  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80BFA33C  38 80 00 01 */	li r4, 1
/* 80BFA340  81 83 00 00 */	lwz r12, 0(r3)
/* 80BFA344  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80BFA348  7D 89 03 A6 */	mtctr r12
/* 80BFA34C  4E 80 04 21 */	bctrl 
/* 80BFA350  88 1E 09 54 */	lbz r0, 0x954(r30)
/* 80BFA354  38 9F 00 D8 */	addi r4, r31, 0xd8
/* 80BFA358  7C 04 00 AE */	lbzx r0, r4, r0
/* 80BFA35C  98 03 00 00 */	stb r0, 0(r3)
/* 80BFA360  88 1E 09 54 */	lbz r0, 0x954(r30)
/* 80BFA364  38 9F 00 DC */	addi r4, r31, 0xdc
/* 80BFA368  7C 04 00 AE */	lbzx r0, r4, r0
/* 80BFA36C  98 03 00 01 */	stb r0, 1(r3)
/* 80BFA370  88 1E 09 54 */	lbz r0, 0x954(r30)
/* 80BFA374  38 9F 00 E0 */	addi r4, r31, 0xe0
/* 80BFA378  7C 04 00 AE */	lbzx r0, r4, r0
/* 80BFA37C  98 03 00 02 */	stb r0, 2(r3)
/* 80BFA380  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80BFA384  38 80 00 01 */	li r4, 1
/* 80BFA388  81 83 00 00 */	lwz r12, 0(r3)
/* 80BFA38C  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 80BFA390  7D 89 03 A6 */	mtctr r12
/* 80BFA394  4E 80 04 21 */	bctrl 
/* 80BFA398  88 1E 09 54 */	lbz r0, 0x954(r30)
/* 80BFA39C  38 9F 00 E4 */	addi r4, r31, 0xe4
/* 80BFA3A0  7C 04 00 AE */	lbzx r0, r4, r0
/* 80BFA3A4  B0 03 00 00 */	sth r0, 0(r3)
/* 80BFA3A8  88 1E 09 54 */	lbz r0, 0x954(r30)
/* 80BFA3AC  38 9F 00 E8 */	addi r4, r31, 0xe8
/* 80BFA3B0  7C 04 00 AE */	lbzx r0, r4, r0
/* 80BFA3B4  B0 03 00 02 */	sth r0, 2(r3)
/* 80BFA3B8  88 1E 09 54 */	lbz r0, 0x954(r30)
/* 80BFA3BC  38 9F 00 EC */	addi r4, r31, 0xec
/* 80BFA3C0  7C 04 00 AE */	lbzx r0, r4, r0
/* 80BFA3C4  B0 03 00 04 */	sth r0, 4(r3)
/* 80BFA3C8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80BFA3CC  4B 41 38 F9 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80BFA3D0  38 60 00 01 */	li r3, 1
lbl_80BFA3D4:
/* 80BFA3D4  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFA3D8  4B 76 7E 51 */	bl _restgpr_29
/* 80BFA3DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFA3E0  7C 08 03 A6 */	mtlr r0
/* 80BFA3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFA3E8  4E 80 00 20 */	blr 

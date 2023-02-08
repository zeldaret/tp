lbl_80AE8308:
/* 80AE8308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE830C  7C 08 02 A6 */	mflr r0
/* 80AE8310  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE8314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE8318  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE831C  7C 7E 1B 78 */	mr r30, r3
/* 80AE8320  3C 80 80 AF */	lis r4, m__17daNpcShoe_Param_c@ha /* 0x80AEA3B0@ha */
/* 80AE8324  3B E4 A3 B0 */	addi r31, r4, m__17daNpcShoe_Param_c@l /* 0x80AEA3B0@l */
/* 80AE8328  88 03 0E 1B */	lbz r0, 0xe1b(r3)
/* 80AE832C  28 00 00 00 */	cmplwi r0, 0
/* 80AE8330  40 82 00 0C */	bne lbl_80AE833C
/* 80AE8334  38 60 00 01 */	li r3, 1
/* 80AE8338  48 00 00 BC */	b lbl_80AE83F4
lbl_80AE833C:
/* 80AE833C  38 80 00 00 */	li r4, 0
/* 80AE8340  38 A0 00 00 */	li r5, 0
/* 80AE8344  38 DF 00 00 */	addi r6, r31, 0
/* 80AE8348  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80AE834C  38 C0 00 00 */	li r6, 0
/* 80AE8350  38 E0 00 00 */	li r7, 0
/* 80AE8354  4B 66 9F 59 */	bl draw__8daNpcF_cFiifP11_GXColorS10i
/* 80AE8358  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80AE835C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80AE8360  80 9E 0B 48 */	lwz r4, 0xb48(r30)
/* 80AE8364  80 84 00 04 */	lwz r4, 4(r4)
/* 80AE8368  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80AE836C  4B 6B CA 35 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AE8370  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AE8374  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE8378  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AE837C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AE8380  38 63 02 10 */	addi r3, r3, 0x210
/* 80AE8384  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE8388  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE838C  4B 85 E1 25 */	bl PSMTXCopy
/* 80AE8390  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AE8394  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AE8398  80 9E 0B 48 */	lwz r4, 0xb48(r30)
/* 80AE839C  38 84 00 24 */	addi r4, r4, 0x24
/* 80AE83A0  4B 85 E1 11 */	bl PSMTXCopy
/* 80AE83A4  80 7E 0B 48 */	lwz r3, 0xb48(r30)
/* 80AE83A8  4B 52 59 1D */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80AE83AC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80AE83B0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80AE83B4  80 9E 0B 4C */	lwz r4, 0xb4c(r30)
/* 80AE83B8  80 84 00 04 */	lwz r4, 4(r4)
/* 80AE83BC  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80AE83C0  4B 6B C9 E1 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80AE83C4  80 7E 0B 4C */	lwz r3, 0xb4c(r30)
/* 80AE83C8  4B 52 58 FD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 80AE83CC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80AE83D0  C0 3E 06 68 */	lfs f1, 0x668(r30)
/* 80AE83D4  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80AE83D8  38 9E 06 C0 */	addi r4, r30, 0x6c0
/* 80AE83DC  38 A0 00 00 */	li r5, 0
/* 80AE83E0  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 80AE83E4  3C C0 80 42 */	lis r6, mSimpleTexObj__21dDlst_shadowControl_c@ha /* 0x804248D0@ha */
/* 80AE83E8  38 C6 48 D0 */	addi r6, r6, mSimpleTexObj__21dDlst_shadowControl_c@l /* 0x804248D0@l */
/* 80AE83EC  4B 54 4C C9 */	bl dComIfGd_setSimpleShadow__FP4cXyzffR13cBgS_PolyInfosfP9_GXTexObj
/* 80AE83F0  38 60 00 01 */	li r3, 1
lbl_80AE83F4:
/* 80AE83F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE83F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE83FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE8400  7C 08 03 A6 */	mtlr r0
/* 80AE8404  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE8408  4E 80 00 20 */	blr 

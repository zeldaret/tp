lbl_80592088:
/* 80592088  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059208C  7C 08 02 A6 */	mflr r0
/* 80592090  90 01 00 44 */	stw r0, 0x44(r1)
/* 80592094  39 61 00 40 */	addi r11, r1, 0x40
/* 80592098  4B DD 01 40 */	b _savegpr_28
/* 8059209C  7C 7E 1B 78 */	mr r30, r3
/* 805920A0  3C 60 80 59 */	lis r3, l_magne_scale@ha
/* 805920A4  3B E3 28 48 */	addi r31, r3, l_magne_scale@l
/* 805920A8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805920AC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805920B0  38 80 00 10 */	li r4, 0x10
/* 805920B4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805920B8  38 DE 01 0C */	addi r6, r30, 0x10c
/* 805920BC  4B C1 17 08 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 805920C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805920C4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805920C8  80 9E 05 A8 */	lwz r4, 0x5a8(r30)
/* 805920CC  80 84 00 04 */	lwz r4, 4(r4)
/* 805920D0  38 BE 01 0C */	addi r5, r30, 0x10c
/* 805920D4  4B C1 2C CC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805920D8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805920DC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805920E0  80 9E 05 AC */	lwz r4, 0x5ac(r30)
/* 805920E4  80 84 00 04 */	lwz r4, 4(r4)
/* 805920E8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 805920EC  4B C1 2C B4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805920F0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805920F4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805920F8  80 9E 05 B0 */	lwz r4, 0x5b0(r30)
/* 805920FC  80 84 00 04 */	lwz r4, 4(r4)
/* 80592100  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80592104  4B C1 2C 9C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80592108  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8059210C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80592110  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80592114  80 84 00 04 */	lwz r4, 4(r4)
/* 80592118  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8059211C  4B C1 2C 84 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80592120  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80592124  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80592128  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 8059212C  80 84 00 04 */	lwz r4, 4(r4)
/* 80592130  38 BE 01 0C */	addi r5, r30, 0x10c
/* 80592134  4B C1 2C 6C */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80592138  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8059213C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80592140  80 9E 05 BC */	lwz r4, 0x5bc(r30)
/* 80592144  80 84 00 04 */	lwz r4, 4(r4)
/* 80592148  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8059214C  4B C1 2C 54 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80592150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80592154  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80592158  80 04 5F 70 */	lwz r0, 0x5f70(r4)
/* 8059215C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80592160  3B A3 4A C8 */	addi r29, r3, j3dSys@l
/* 80592164  90 1D 00 48 */	stw r0, 0x48(r29)
/* 80592168  80 04 5F 74 */	lwz r0, 0x5f74(r4)
/* 8059216C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80592170  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80592174  4B A7 BB 50 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80592178  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 8059217C  4B A7 BB 48 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80592180  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80592184  80 83 00 04 */	lwz r4, 4(r3)
/* 80592188  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8059218C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80592190  38 84 00 58 */	addi r4, r4, 0x58
/* 80592194  4B A7 B6 14 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80592198  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 8059219C  80 83 00 04 */	lwz r4, 4(r3)
/* 805921A0  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 805921A4  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 805921A8  38 84 00 58 */	addi r4, r4, 0x58
/* 805921AC  4B A7 B5 2C */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 805921B0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 805921B4  4B A7 BB 10 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 805921B8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 805921BC  80 63 00 04 */	lwz r3, 4(r3)
/* 805921C0  4B A7 BC CC */	b mDoExt_brkAnmRemove__FP12J3DModelData
/* 805921C4  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 805921C8  80 63 00 04 */	lwz r3, 4(r3)
/* 805921CC  4B A7 BC 24 */	b mDoExt_btkAnmRemove__FP12J3DModelData
/* 805921D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805921D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805921D8  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 805921DC  90 1D 00 48 */	stw r0, 0x48(r29)
/* 805921E0  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 805921E4  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 805921E8  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 805921EC  4B A7 BA D8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 805921F0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805921F4  4B A7 BA D0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 805921F8  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 805921FC  4B A7 BA C8 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80592200  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80592204  90 01 00 08 */	stw r0, 8(r1)
/* 80592208  80 7E 0A 20 */	lwz r3, 0xa20(r30)
/* 8059220C  88 9E 0A 28 */	lbz r4, 0xa28(r30)
/* 80592210  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80592214  38 A1 00 08 */	addi r5, r1, 8
/* 80592218  38 C0 00 00 */	li r6, 0
/* 8059221C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80592220  4B A8 15 1C */	b update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c
/* 80592224  83 BE 0A 20 */	lwz r29, 0xa20(r30)
/* 80592228  7F A3 EB 78 */	mr r3, r29
/* 8059222C  81 9D 00 00 */	lwz r12, 0(r29)
/* 80592230  81 8C 00 08 */	lwz r12, 8(r12)
/* 80592234  7D 89 03 A6 */	mtctr r12
/* 80592238  4E 80 04 21 */	bctrl 
/* 8059223C  1C 83 00 14 */	mulli r4, r3, 0x14
/* 80592240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80592244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80592248  3B 83 5F 64 */	addi r28, r3, 0x5f64
/* 8059224C  3C 64 00 01 */	addis r3, r4, 1
/* 80592250  38 63 61 54 */	addi r3, r3, 0x6154
/* 80592254  7C 7C 1A 14 */	add r3, r28, r3
/* 80592258  7F A4 EB 78 */	mr r4, r29
/* 8059225C  4B A8 24 DC */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 80592260  80 7E 0A 24 */	lwz r3, 0xa24(r30)
/* 80592264  88 9E 0A 29 */	lbz r4, 0xa29(r30)
/* 80592268  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 8059226C  38 A1 00 08 */	addi r5, r1, 8
/* 80592270  38 C0 00 00 */	li r6, 0
/* 80592274  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80592278  4B A8 14 C4 */	b update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c
/* 8059227C  83 BE 0A 24 */	lwz r29, 0xa24(r30)
/* 80592280  7F A3 EB 78 */	mr r3, r29
/* 80592284  81 9D 00 00 */	lwz r12, 0(r29)
/* 80592288  81 8C 00 08 */	lwz r12, 8(r12)
/* 8059228C  7D 89 03 A6 */	mtctr r12
/* 80592290  4E 80 04 21 */	bctrl 
/* 80592294  1C 63 00 14 */	mulli r3, r3, 0x14
/* 80592298  3C 63 00 01 */	addis r3, r3, 1
/* 8059229C  38 63 61 54 */	addi r3, r3, 0x6154
/* 805922A0  7C 7C 1A 14 */	add r3, r28, r3
/* 805922A4  7F A4 EB 78 */	mr r4, r29
/* 805922A8  4B A8 24 90 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
/* 805922AC  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 805922B0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805922B4  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 805922B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805922BC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805922C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805922C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805922C8  A8 BE 0A 30 */	lha r5, 0xa30(r30)
/* 805922CC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805922D0  A8 1E 09 FE */	lha r0, 0x9fe(r30)
/* 805922D4  7C 00 2A 14 */	add r0, r0, r5
/* 805922D8  7C 04 02 14 */	add r0, r4, r0
/* 805922DC  7C 04 07 34 */	extsh r4, r0
/* 805922E0  4B A7 A0 FC */	b mDoMtx_YrotS__FPA4_fs
/* 805922E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805922E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805922EC  A8 9E 0A 32 */	lha r4, 0xa32(r30)
/* 805922F0  4B A7 A1 DC */	b mDoMtx_ZrotM__FPA4_fs
/* 805922F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805922F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805922FC  38 81 00 0C */	addi r4, r1, 0xc
/* 80592300  7C 85 23 78 */	mr r5, r4
/* 80592304  4B DB 4A 68 */	b PSMTXMultVec
/* 80592308  7F C3 F3 78 */	mr r3, r30
/* 8059230C  38 81 00 18 */	addi r4, r1, 0x18
/* 80592310  4B FF D1 F5 */	bl getFpartsOffset__11daObjMarm_cFP4cXyz
/* 80592314  38 61 00 18 */	addi r3, r1, 0x18
/* 80592318  38 81 00 0C */	addi r4, r1, 0xc
/* 8059231C  7C 65 1B 78 */	mr r5, r3
/* 80592320  4B DB 4D 70 */	b PSVECAdd
/* 80592324  38 61 00 18 */	addi r3, r1, 0x18
/* 80592328  4B A8 B9 94 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 8059232C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80592330  41 82 00 70 */	beq lbl_805923A0
/* 80592334  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80592338  C0 83 0C D0 */	lfs f4, mGroundY__11fopAcM_gc_c@l(r3)
/* 8059233C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80592340  D0 1E 04 44 */	stfs f0, 0x444(r30)
/* 80592344  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80592348  D0 1E 04 48 */	stfs f0, 0x448(r30)
/* 8059234C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80592350  D0 1E 04 4C */	stfs f0, 0x44c(r30)
/* 80592354  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80592358  D0 1E 04 50 */	stfs f0, 0x450(r30)
/* 8059235C  80 7E 0A 68 */	lwz r3, 0xa68(r30)
/* 80592360  38 80 00 00 */	li r4, 0
/* 80592364  80 BE 05 BC */	lwz r5, 0x5bc(r30)
/* 80592368  38 C1 00 18 */	addi r6, r1, 0x18
/* 8059236C  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 80592370  C0 5F 01 24 */	lfs f2, 0x124(r31)
/* 80592374  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80592378  3C E0 80 3F */	lis r7, mGndCheck__11fopAcM_gc_c@ha
/* 8059237C  38 E7 1C C4 */	addi r7, r7, mGndCheck__11fopAcM_gc_c@l
/* 80592380  38 E7 00 14 */	addi r7, r7, 0x14
/* 80592384  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80592388  39 20 00 00 */	li r9, 0
/* 8059238C  C0 BF 00 C4 */	lfs f5, 0xc4(r31)
/* 80592390  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 80592394  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 80592398  4B A9 C5 78 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 8059239C  90 7E 0A 68 */	stw r3, 0xa68(r30)
lbl_805923A0:
/* 805923A0  7F C3 F3 78 */	mr r3, r30
/* 805923A4  48 00 00 21 */	bl debugDraw__11daObjMarm_cFv
/* 805923A8  38 60 00 01 */	li r3, 1
/* 805923AC  39 61 00 40 */	addi r11, r1, 0x40
/* 805923B0  4B DC FE 74 */	b _restgpr_28
/* 805923B4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805923B8  7C 08 03 A6 */	mtlr r0
/* 805923BC  38 21 00 40 */	addi r1, r1, 0x40
/* 805923C0  4E 80 00 20 */	blr 

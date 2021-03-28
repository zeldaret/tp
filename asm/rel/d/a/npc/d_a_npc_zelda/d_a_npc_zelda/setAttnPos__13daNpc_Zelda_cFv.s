lbl_80B76344:
/* 80B76344  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B76348  7C 08 02 A6 */	mflr r0
/* 80B7634C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B76350  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B76354  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B76358  39 61 00 60 */	addi r11, r1, 0x60
/* 80B7635C  4B 7E BE 78 */	b _savegpr_27
/* 80B76360  7C 7E 1B 78 */	mr r30, r3
/* 80B76364  3C 60 80 B7 */	lis r3, m__19daNpc_Zelda_Param_c@ha
/* 80B76368  3B E3 7F C8 */	addi r31, r3, m__19daNpc_Zelda_Param_c@l
/* 80B7636C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80B76370  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B76374  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80B76378  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B7637C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80B76380  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B76384  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B76388  38 80 00 00 */	li r4, 0
/* 80B7638C  4B 5D 1A B0 */	b calc__19daNpcT_DmgStagger_cFi
/* 80B76390  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80B76394  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80B76398  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B7639C  7C 03 00 50 */	subf r0, r3, r0
/* 80B763A0  7C 00 07 34 */	extsh r0, r0
/* 80B763A4  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 80B763A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B763AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B763B0  3C 00 43 30 */	lis r0, 0x4330
/* 80B763B4  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B763B8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80B763BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B763C0  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B763C4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B763C8  83 63 00 04 */	lwz r27, 4(r3)
/* 80B763CC  7F C3 F3 78 */	mr r3, r30
/* 80B763D0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B763D4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B763D8  7D 89 03 A6 */	mtctr r12
/* 80B763DC  4E 80 04 21 */	bctrl 
/* 80B763E0  7C 7C 1B 78 */	mr r28, r3
/* 80B763E4  7F C3 F3 78 */	mr r3, r30
/* 80B763E8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B763EC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B763F0  7D 89 03 A6 */	mtctr r12
/* 80B763F4  4E 80 04 21 */	bctrl 
/* 80B763F8  7C 7D 1B 78 */	mr r29, r3
/* 80B763FC  7F C3 F3 78 */	mr r3, r30
/* 80B76400  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B76404  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B76408  7D 89 03 A6 */	mtctr r12
/* 80B7640C  4E 80 04 21 */	bctrl 
/* 80B76410  7C 67 1B 78 */	mr r7, r3
/* 80B76414  39 5F 00 00 */	addi r10, r31, 0
/* 80B76418  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B7641C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B76420  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80B76424  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B76428  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B7642C  7F C4 F3 78 */	mr r4, r30
/* 80B76430  7F 65 DB 78 */	mr r5, r27
/* 80B76434  38 C1 00 34 */	addi r6, r1, 0x34
/* 80B76438  7F A8 EB 78 */	mr r8, r29
/* 80B7643C  7F 89 E3 78 */	mr r9, r28
/* 80B76440  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B76444  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B76448  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B7644C  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B76450  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B76454  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B76458  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B7645C  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B76460  39 40 00 00 */	li r10, 0
/* 80B76464  4B 5D 08 74 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B76468  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B7646C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B76470  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80B76474  FC 60 F8 90 */	fmr f3, f31
/* 80B76478  4B 5D 17 C0 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B7647C  7F C3 F3 78 */	mr r3, r30
/* 80B76480  4B 5D 2D 10 */	b setMtx__8daNpcT_cFv
/* 80B76484  7F C3 F3 78 */	mr r3, r30
/* 80B76488  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B7648C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B76490  7D 89 03 A6 */	mtctr r12
/* 80B76494  4E 80 04 21 */	bctrl 
/* 80B76498  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80B7649C  80 84 00 04 */	lwz r4, 4(r4)
/* 80B764A0  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B764A4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B764A8  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B764AC  7C 64 02 14 */	add r3, r4, r0
/* 80B764B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B764B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B764B8  4B 7C FF F8 */	b PSMTXCopy
/* 80B764BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B764C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B764C4  38 81 00 34 */	addi r4, r1, 0x34
/* 80B764C8  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B764CC  4B 7D 08 A0 */	b PSMTXMultVec
/* 80B764D0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B764D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B764D8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B764DC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B764E0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B764E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B764E8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B764EC  38 81 00 28 */	addi r4, r1, 0x28
/* 80B764F0  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B764F4  38 A0 00 00 */	li r5, 0
/* 80B764F8  48 00 15 A1 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B764FC  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B76500  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B76504  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B76508  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B7650C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B76510  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B76514  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B76518  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B7651C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B76520  38 C0 00 00 */	li r6, 0
/* 80B76524  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80B76528  38 E0 00 00 */	li r7, 0
/* 80B7652C  48 00 14 51 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B76530  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80B76534  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B76538  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B7653C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80B76540  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B76544  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B76548  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B7654C  28 00 00 00 */	cmplwi r0, 0
/* 80B76550  40 82 00 18 */	bne lbl_80B76568
/* 80B76554  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80B76558  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80B7655C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B76560  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80B76564  D0 01 00 3C */	stfs f0, 0x3c(r1)
lbl_80B76568:
/* 80B76568  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7656C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B76570  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80B76574  4B 49 5E 68 */	b mDoMtx_YrotS__FPA4_fs
/* 80B76578  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7657C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B76580  38 81 00 34 */	addi r4, r1, 0x34
/* 80B76584  7C 85 23 78 */	mr r5, r4
/* 80B76588  4B 7D 07 E4 */	b PSMTXMultVec
/* 80B7658C  38 61 00 10 */	addi r3, r1, 0x10
/* 80B76590  38 81 00 34 */	addi r4, r1, 0x34
/* 80B76594  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B76598  4B 6F 05 4C */	b __pl__4cXyzCFRC3Vec
/* 80B7659C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B765A0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80B765A4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B765A8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B765AC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B765B0  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80B765B4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B765B8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B765BC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B765C0  4B 7E BC 60 */	b _restgpr_27
/* 80B765C4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B765C8  7C 08 03 A6 */	mtlr r0
/* 80B765CC  38 21 00 70 */	addi r1, r1, 0x70
/* 80B765D0  4E 80 00 20 */	blr 

lbl_80A02A18:
/* 80A02A18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A02A1C  7C 08 02 A6 */	mflr r0
/* 80A02A20  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A02A24  39 61 00 60 */	addi r11, r1, 0x60
/* 80A02A28  4B 95 F7 AD */	bl _savegpr_27
/* 80A02A2C  7C 7E 1B 78 */	mr r30, r3
/* 80A02A30  3C 80 80 A0 */	lis r4, m__17daNpc_Hoz_Param_c@ha /* 0x80A06650@ha */
/* 80A02A34  3B E4 66 50 */	addi r31, r4, m__17daNpc_Hoz_Param_c@l /* 0x80A06650@l */
/* 80A02A38  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80A02A3C  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80A02A40  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80A02A44  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A02A48  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80A02A4C  80 83 05 78 */	lwz r4, 0x578(r3)
/* 80A02A50  83 64 00 04 */	lwz r27, 4(r4)
/* 80A02A54  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A02A58  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A02A5C  7D 89 03 A6 */	mtctr r12
/* 80A02A60  4E 80 04 21 */	bctrl 
/* 80A02A64  7C 7C 1B 78 */	mr r28, r3
/* 80A02A68  7F C3 F3 78 */	mr r3, r30
/* 80A02A6C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A02A70  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A02A74  7D 89 03 A6 */	mtctr r12
/* 80A02A78  4E 80 04 21 */	bctrl 
/* 80A02A7C  7C 7D 1B 78 */	mr r29, r3
/* 80A02A80  7F C3 F3 78 */	mr r3, r30
/* 80A02A84  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A02A88  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A02A8C  7D 89 03 A6 */	mtctr r12
/* 80A02A90  4E 80 04 21 */	bctrl 
/* 80A02A94  7C 67 1B 78 */	mr r7, r3
/* 80A02A98  39 5F 00 00 */	addi r10, r31, 0
/* 80A02A9C  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A02AA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A02AA4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80A02AA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A02AAC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A02AB0  7F C4 F3 78 */	mr r4, r30
/* 80A02AB4  7F 65 DB 78 */	mr r5, r27
/* 80A02AB8  38 C1 00 34 */	addi r6, r1, 0x34
/* 80A02ABC  7F A8 EB 78 */	mr r8, r29
/* 80A02AC0  7F 89 E3 78 */	mr r9, r28
/* 80A02AC4  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A02AC8  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A02ACC  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80A02AD0  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80A02AD4  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A02AD8  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A02ADC  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A02AE0  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A02AE4  39 40 00 00 */	li r10, 0
/* 80A02AE8  4B 74 41 F1 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80A02AEC  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 80A02AF0  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80A02AF4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A02AF8  7C 03 00 50 */	subf r0, r3, r0
/* 80A02AFC  7C 00 07 34 */	extsh r0, r0
/* 80A02B00  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80A02B04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A02B08  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A02B0C  3C 00 43 30 */	lis r0, 0x4330
/* 80A02B10  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A02B14  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80A02B18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A02B1C  EC 62 00 32 */	fmuls f3, f2, f0
/* 80A02B20  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A02B24  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80A02B28  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80A02B2C  4B 74 51 0D */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80A02B30  7F C3 F3 78 */	mr r3, r30
/* 80A02B34  4B 74 66 5D */	bl setMtx__8daNpcT_cFv
/* 80A02B38  7F C3 F3 78 */	mr r3, r30
/* 80A02B3C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A02B40  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A02B44  7D 89 03 A6 */	mtctr r12
/* 80A02B48  4E 80 04 21 */	bctrl 
/* 80A02B4C  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80A02B50  80 84 00 04 */	lwz r4, 4(r4)
/* 80A02B54  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A02B58  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A02B5C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A02B60  7C 64 02 14 */	add r3, r4, r0
/* 80A02B64  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A02B68  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A02B6C  4B 94 39 45 */	bl PSMTXCopy
/* 80A02B70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A02B74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A02B78  38 81 00 34 */	addi r4, r1, 0x34
/* 80A02B7C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A02B80  4B 94 41 ED */	bl PSMTXMultVec
/* 80A02B84  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A02B88  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A02B8C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A02B90  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A02B94  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A02B98  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A02B9C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A02BA0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A02BA4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80A02BA8  38 A0 00 00 */	li r5, 0
/* 80A02BAC  48 00 35 2D */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A02BB0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A02BB4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A02BB8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A02BBC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A02BC0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A02BC4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A02BC8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A02BCC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A02BD0  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A02BD4  38 C0 00 01 */	li r6, 1
/* 80A02BD8  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80A02BDC  38 E0 00 00 */	li r7, 0
/* 80A02BE0  48 00 33 DD */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80A02BE4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A02BE8  80 63 00 04 */	lwz r3, 4(r3)
/* 80A02BEC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A02BF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A02BF4  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A02BF8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A02BFC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A02C00  4B 94 38 B1 */	bl PSMTXCopy
/* 80A02C04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A02C08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A02C0C  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80A02C10  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 80A02C14  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80A02C18  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A02C1C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80A02C20  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A02C24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A02C28  EC 02 00 2A */	fadds f0, f2, f0
/* 80A02C2C  D0 7E 05 50 */	stfs f3, 0x550(r30)
/* 80A02C30  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A02C34  D0 3E 05 58 */	stfs f1, 0x558(r30)
/* 80A02C38  39 61 00 60 */	addi r11, r1, 0x60
/* 80A02C3C  4B 95 F5 E5 */	bl _restgpr_27
/* 80A02C40  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A02C44  7C 08 03 A6 */	mtlr r0
/* 80A02C48  38 21 00 60 */	addi r1, r1, 0x60
/* 80A02C4C  4E 80 00 20 */	blr 

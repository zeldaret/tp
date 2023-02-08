lbl_80B7320C:
/* 80B7320C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B73210  7C 08 02 A6 */	mflr r0
/* 80B73214  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B73218  39 61 00 60 */	addi r11, r1, 0x60
/* 80B7321C  4B 7E EF B9 */	bl _savegpr_27
/* 80B73220  7C 7E 1B 78 */	mr r30, r3
/* 80B73224  3C 60 80 B7 */	lis r3, m__19daNpc_ZelRo_Param_c@ha /* 0x80B74C5C@ha */
/* 80B73228  3B E3 4C 5C */	addi r31, r3, m__19daNpc_ZelRo_Param_c@l /* 0x80B74C5C@l */
/* 80B7322C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80B73230  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B73234  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80B73238  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B7323C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B73240  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B73244  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B73248  38 80 00 00 */	li r4, 0
/* 80B7324C  4B 5D 4B F1 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80B73250  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B73254  83 63 00 04 */	lwz r27, 4(r3)
/* 80B73258  7F C3 F3 78 */	mr r3, r30
/* 80B7325C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B73260  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B73264  7D 89 03 A6 */	mtctr r12
/* 80B73268  4E 80 04 21 */	bctrl 
/* 80B7326C  7C 7C 1B 78 */	mr r28, r3
/* 80B73270  7F C3 F3 78 */	mr r3, r30
/* 80B73274  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B73278  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B7327C  7D 89 03 A6 */	mtctr r12
/* 80B73280  4E 80 04 21 */	bctrl 
/* 80B73284  7C 7D 1B 78 */	mr r29, r3
/* 80B73288  7F C3 F3 78 */	mr r3, r30
/* 80B7328C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B73290  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B73294  7D 89 03 A6 */	mtctr r12
/* 80B73298  4E 80 04 21 */	bctrl 
/* 80B7329C  7C 67 1B 78 */	mr r7, r3
/* 80B732A0  39 5F 00 00 */	addi r10, r31, 0
/* 80B732A4  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B732A8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B732AC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B732B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B732B4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B732B8  7F C4 F3 78 */	mr r4, r30
/* 80B732BC  7F 65 DB 78 */	mr r5, r27
/* 80B732C0  38 C1 00 28 */	addi r6, r1, 0x28
/* 80B732C4  7F A8 EB 78 */	mr r8, r29
/* 80B732C8  7F 89 E3 78 */	mr r9, r28
/* 80B732CC  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B732D0  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B732D4  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B732D8  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B732DC  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B732E0  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B732E4  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B732E8  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B732EC  39 40 00 00 */	li r10, 0
/* 80B732F0  4B 5D 39 E9 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B732F4  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80B732F8  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80B732FC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B73300  7C 03 00 50 */	subf r0, r3, r0
/* 80B73304  7C 00 07 34 */	extsh r0, r0
/* 80B73308  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 80B7330C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B73310  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B73314  3C 00 43 30 */	lis r0, 0x4330
/* 80B73318  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B7331C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B73320  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B73324  EC 62 00 32 */	fmuls f3, f2, f0
/* 80B73328  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B7332C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80B73330  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80B73334  4B 5D 49 05 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B73338  7F C3 F3 78 */	mr r3, r30
/* 80B7333C  4B 5D 5E 55 */	bl setMtx__8daNpcT_cFv
/* 80B73340  7F C3 F3 78 */	mr r3, r30
/* 80B73344  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B73348  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B7334C  7D 89 03 A6 */	mtctr r12
/* 80B73350  4E 80 04 21 */	bctrl 
/* 80B73354  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80B73358  80 84 00 04 */	lwz r4, 4(r4)
/* 80B7335C  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B73360  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B73364  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B73368  7C 64 02 14 */	add r3, r4, r0
/* 80B7336C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B73370  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B73374  4B 7D 31 3D */	bl PSMTXCopy
/* 80B73378  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B7337C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B73380  38 81 00 28 */	addi r4, r1, 0x28
/* 80B73384  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B73388  4B 7D 39 E5 */	bl PSMTXMultVec
/* 80B7338C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B73390  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B73394  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B73398  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B7339C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B733A0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B733A4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B733A8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B733AC  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80B733B0  38 A0 00 00 */	li r5, 0
/* 80B733B4  48 00 13 ED */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B733B8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B733BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B733C0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B733C4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B733C8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B733CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B733D0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B733D4  38 81 00 10 */	addi r4, r1, 0x10
/* 80B733D8  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B733DC  38 C0 00 00 */	li r6, 0
/* 80B733E0  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80B733E4  38 E0 00 00 */	li r7, 0
/* 80B733E8  48 00 12 9D */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B733EC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B733F0  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80B733F4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B733F8  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B733FC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B73400  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80B73404  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80B73408  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B7340C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B73410  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B73414  39 61 00 60 */	addi r11, r1, 0x60
/* 80B73418  4B 7E EE 09 */	bl _restgpr_27
/* 80B7341C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B73420  7C 08 03 A6 */	mtlr r0
/* 80B73424  38 21 00 60 */	addi r1, r1, 0x60
/* 80B73428  4E 80 00 20 */	blr 

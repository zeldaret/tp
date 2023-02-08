lbl_80A2C56C:
/* 80A2C56C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A2C570  7C 08 02 A6 */	mflr r0
/* 80A2C574  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A2C578  39 61 00 50 */	addi r11, r1, 0x50
/* 80A2C57C  4B 93 5C 61 */	bl _savegpr_29
/* 80A2C580  7C 7E 1B 78 */	mr r30, r3
/* 80A2C584  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha /* 0x80A408C8@ha */
/* 80A2C588  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l /* 0x80A408C8@l */
/* 80A2C58C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80A2C590  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A2C594  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80A2C598  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A2C59C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A2C5A0  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A2C5A4  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A2C5A8  39 5F 00 A8 */	addi r10, r31, 0xa8
/* 80A2C5AC  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A2C5B0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A2C5B4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A2C5B8  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A2C5BC  7F C4 F3 78 */	mr r4, r30
/* 80A2C5C0  38 C1 00 28 */	addi r6, r1, 0x28
/* 80A2C5C4  38 E0 00 01 */	li r7, 1
/* 80A2C5C8  39 00 00 03 */	li r8, 3
/* 80A2C5CC  39 20 00 04 */	li r9, 4
/* 80A2C5D0  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A2C5D4  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A2C5D8  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80A2C5DC  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80A2C5E0  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A2C5E4  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A2C5E8  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A2C5EC  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A2C5F0  39 40 00 00 */	li r10, 0
/* 80A2C5F4  4B 71 A6 E5 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80A2C5F8  C0 5F 01 8C */	lfs f2, 0x18c(r31)
/* 80A2C5FC  A8 7E 0D B4 */	lha r3, 0xdb4(r30)
/* 80A2C600  A8 1E 0D AE */	lha r0, 0xdae(r30)
/* 80A2C604  7C 03 00 50 */	subf r0, r3, r0
/* 80A2C608  7C 00 07 34 */	extsh r0, r0
/* 80A2C60C  C8 3F 00 30 */	lfd f1, 0x30(r31)
/* 80A2C610  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A2C614  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A2C618  3C 00 43 30 */	lis r0, 0x4330
/* 80A2C61C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A2C620  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A2C624  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A2C628  EC 62 00 32 */	fmuls f3, f2, f0
/* 80A2C62C  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A2C630  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80A2C634  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80A2C638  4B 71 B6 01 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80A2C63C  7F C3 F3 78 */	mr r3, r30
/* 80A2C640  48 00 CF 19 */	bl setMtx__10daNpc_Kn_cFv
/* 80A2C644  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80A2C648  83 A3 00 04 */	lwz r29, 4(r3)
/* 80A2C64C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A2C650  4B 5E 07 15 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80A2C654  38 7E 0D AC */	addi r3, r30, 0xdac
/* 80A2C658  4B 5E 08 ED */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80A2C65C  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80A2C660  4B 5E 08 11 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80A2C664  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2C668  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2C66C  38 9D 00 24 */	addi r4, r29, 0x24
/* 80A2C670  4B 91 9E 41 */	bl PSMTXCopy
/* 80A2C674  93 DD 00 14 */	stw r30, 0x14(r29)
/* 80A2C678  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80A2C67C  4B 5E 4B 71 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80A2C680  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A2C684  80 63 00 04 */	lwz r3, 4(r3)
/* 80A2C688  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A2C68C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A2C690  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A2C694  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2C698  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2C69C  4B 91 9E 15 */	bl PSMTXCopy
/* 80A2C6A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2C6A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2C6A8  38 81 00 28 */	addi r4, r1, 0x28
/* 80A2C6AC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A2C6B0  4B 91 A6 BD */	bl PSMTXMultVec
/* 80A2C6B4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A2C6B8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A2C6BC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A2C6C0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A2C6C4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A2C6C8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A2C6CC  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A2C6D0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A2C6D4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A2C6D8  38 A0 00 00 */	li r5, 0
/* 80A2C6DC  48 01 00 B5 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A2C6E0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A2C6E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A2C6E8  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A2C6EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A2C6F0  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A2C6F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A2C6F8  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A2C6FC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A2C700  A8 BE 0D AE */	lha r5, 0xdae(r30)
/* 80A2C704  38 C0 00 01 */	li r6, 1
/* 80A2C708  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A2C70C  38 E0 00 00 */	li r7, 0
/* 80A2C710  48 00 FF 65 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80A2C714  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 80A2C718  80 63 00 04 */	lwz r3, 4(r3)
/* 80A2C71C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A2C720  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A2C724  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A2C728  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2C72C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2C730  4B 91 9D 81 */	bl PSMTXCopy
/* 80A2C734  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A2C738  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A2C73C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A2C740  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A2C744  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A2C748  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A2C74C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80A2C750  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80A2C754  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80A2C758  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80A2C75C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A2C760  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A2C764  39 61 00 50 */	addi r11, r1, 0x50
/* 80A2C768  4B 93 5A C1 */	bl _restgpr_29
/* 80A2C76C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A2C770  7C 08 03 A6 */	mtlr r0
/* 80A2C774  38 21 00 50 */	addi r1, r1, 0x50
/* 80A2C778  4E 80 00 20 */	blr 

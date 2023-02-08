lbl_80B70090:
/* 80B70090  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B70094  7C 08 02 A6 */	mflr r0
/* 80B70098  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B7009C  39 61 00 60 */	addi r11, r1, 0x60
/* 80B700A0  4B 7F 21 35 */	bl _savegpr_27
/* 80B700A4  7C 7E 1B 78 */	mr r30, r3
/* 80B700A8  3C 60 80 B7 */	lis r3, m__18daNpc_ZelR_Param_c@ha /* 0x80B71AE0@ha */
/* 80B700AC  3B E3 1A E0 */	addi r31, r3, m__18daNpc_ZelR_Param_c@l /* 0x80B71AE0@l */
/* 80B700B0  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80B700B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B700B8  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80B700BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B700C0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B700C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B700C8  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80B700CC  38 80 00 00 */	li r4, 0
/* 80B700D0  4B 5D 7D 6D */	bl calc__19daNpcT_DmgStagger_cFi
/* 80B700D4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B700D8  83 63 00 04 */	lwz r27, 4(r3)
/* 80B700DC  7F C3 F3 78 */	mr r3, r30
/* 80B700E0  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B700E4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B700E8  7D 89 03 A6 */	mtctr r12
/* 80B700EC  4E 80 04 21 */	bctrl 
/* 80B700F0  7C 7C 1B 78 */	mr r28, r3
/* 80B700F4  7F C3 F3 78 */	mr r3, r30
/* 80B700F8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B700FC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B70100  7D 89 03 A6 */	mtctr r12
/* 80B70104  4E 80 04 21 */	bctrl 
/* 80B70108  7C 7D 1B 78 */	mr r29, r3
/* 80B7010C  7F C3 F3 78 */	mr r3, r30
/* 80B70110  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B70114  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B70118  7D 89 03 A6 */	mtctr r12
/* 80B7011C  4E 80 04 21 */	bctrl 
/* 80B70120  7C 67 1B 78 */	mr r7, r3
/* 80B70124  39 5F 00 00 */	addi r10, r31, 0
/* 80B70128  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B7012C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B70130  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B70134  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B70138  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B7013C  7F C4 F3 78 */	mr r4, r30
/* 80B70140  7F 65 DB 78 */	mr r5, r27
/* 80B70144  38 C1 00 28 */	addi r6, r1, 0x28
/* 80B70148  7F A8 EB 78 */	mr r8, r29
/* 80B7014C  7F 89 E3 78 */	mr r9, r28
/* 80B70150  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B70154  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B70158  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B7015C  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B70160  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B70164  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B70168  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B7016C  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B70170  39 40 00 00 */	li r10, 0
/* 80B70174  4B 5D 6B 65 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B70178  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80B7017C  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80B70180  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B70184  7C 03 00 50 */	subf r0, r3, r0
/* 80B70188  7C 00 07 34 */	extsh r0, r0
/* 80B7018C  C8 3F 00 C0 */	lfd f1, 0xc0(r31)
/* 80B70190  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B70194  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B70198  3C 00 43 30 */	lis r0, 0x4330
/* 80B7019C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B701A0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B701A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B701A8  EC 62 00 32 */	fmuls f3, f2, f0
/* 80B701AC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B701B0  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80B701B4  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 80B701B8  4B 5D 7A 81 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B701BC  7F C3 F3 78 */	mr r3, r30
/* 80B701C0  4B 5D 8F D1 */	bl setMtx__8daNpcT_cFv
/* 80B701C4  7F C3 F3 78 */	mr r3, r30
/* 80B701C8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80B701CC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B701D0  7D 89 03 A6 */	mtctr r12
/* 80B701D4  4E 80 04 21 */	bctrl 
/* 80B701D8  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80B701DC  80 84 00 04 */	lwz r4, 4(r4)
/* 80B701E0  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B701E4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B701E8  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B701EC  7C 64 02 14 */	add r3, r4, r0
/* 80B701F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B701F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B701F8  4B 7D 62 B9 */	bl PSMTXCopy
/* 80B701FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B70200  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B70204  38 81 00 28 */	addi r4, r1, 0x28
/* 80B70208  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B7020C  4B 7D 6B 61 */	bl PSMTXMultVec
/* 80B70210  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B70214  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B70218  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B7021C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B70220  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B70224  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B70228  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B7022C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B70230  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80B70234  38 A0 00 00 */	li r5, 0
/* 80B70238  48 00 13 ED */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B7023C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80B70240  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B70244  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80B70248  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B7024C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80B70250  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B70254  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B70258  38 81 00 10 */	addi r4, r1, 0x10
/* 80B7025C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B70260  38 C0 00 00 */	li r6, 0
/* 80B70264  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80B70268  38 E0 00 00 */	li r7, 0
/* 80B7026C  48 00 12 9D */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B70270  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B70274  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80B70278  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B7027C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B70280  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B70284  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80B70288  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80B7028C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80B70290  EC 01 00 2A */	fadds f0, f1, f0
/* 80B70294  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80B70298  39 61 00 60 */	addi r11, r1, 0x60
/* 80B7029C  4B 7F 1F 85 */	bl _restgpr_27
/* 80B702A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B702A4  7C 08 03 A6 */	mtlr r0
/* 80B702A8  38 21 00 60 */	addi r1, r1, 0x60
/* 80B702AC  4E 80 00 20 */	blr 

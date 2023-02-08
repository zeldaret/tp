lbl_80AAF5BC:
/* 80AAF5BC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80AAF5C0  7C 08 02 A6 */	mflr r0
/* 80AAF5C4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80AAF5C8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80AAF5CC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80AAF5D0  39 61 00 70 */	addi r11, r1, 0x70
/* 80AAF5D4  4B 8B 2C 01 */	bl _savegpr_27
/* 80AAF5D8  7C 7E 1B 78 */	mr r30, r3
/* 80AAF5DC  3C 60 80 AB */	lis r3, m__19daNpc_Pouya_Param_c@ha /* 0x80AB2000@ha */
/* 80AAF5E0  3B E3 20 00 */	addi r31, r3, m__19daNpc_Pouya_Param_c@l /* 0x80AB2000@l */
/* 80AAF5E4  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80AAF5E8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80AAF5EC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80AAF5F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AAF5F4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AAF5F8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80AAF5FC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80AAF600  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AAF604  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AAF608  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AAF60C  38 80 00 00 */	li r4, 0
/* 80AAF610  4B 69 88 2D */	bl calc__19daNpcT_DmgStagger_cFi
/* 80AAF614  C0 5F 00 DC */	lfs f2, 0xdc(r31)
/* 80AAF618  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80AAF61C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80AAF620  7C 03 00 50 */	subf r0, r3, r0
/* 80AAF624  7C 00 07 34 */	extsh r0, r0
/* 80AAF628  C8 3F 00 F0 */	lfd f1, 0xf0(r31)
/* 80AAF62C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80AAF630  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AAF634  3C 00 43 30 */	lis r0, 0x4330
/* 80AAF638  90 01 00 50 */	stw r0, 0x50(r1)
/* 80AAF63C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80AAF640  EC 00 08 28 */	fsubs f0, f0, f1
/* 80AAF644  EF E2 00 32 */	fmuls f31, f2, f0
/* 80AAF648  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AAF64C  83 63 00 04 */	lwz r27, 4(r3)
/* 80AAF650  7F C3 F3 78 */	mr r3, r30
/* 80AAF654  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AAF658  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AAF65C  7D 89 03 A6 */	mtctr r12
/* 80AAF660  4E 80 04 21 */	bctrl 
/* 80AAF664  7C 7C 1B 78 */	mr r28, r3
/* 80AAF668  7F C3 F3 78 */	mr r3, r30
/* 80AAF66C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AAF670  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80AAF674  7D 89 03 A6 */	mtctr r12
/* 80AAF678  4E 80 04 21 */	bctrl 
/* 80AAF67C  7C 7D 1B 78 */	mr r29, r3
/* 80AAF680  7F C3 F3 78 */	mr r3, r30
/* 80AAF684  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AAF688  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80AAF68C  7D 89 03 A6 */	mtctr r12
/* 80AAF690  4E 80 04 21 */	bctrl 
/* 80AAF694  7C 67 1B 78 */	mr r7, r3
/* 80AAF698  39 5F 00 00 */	addi r10, r31, 0
/* 80AAF69C  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80AAF6A0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AAF6A4  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80AAF6A8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AAF6AC  7F C4 F3 78 */	mr r4, r30
/* 80AAF6B0  7F 65 DB 78 */	mr r5, r27
/* 80AAF6B4  38 C1 00 40 */	addi r6, r1, 0x40
/* 80AAF6B8  7F A8 EB 78 */	mr r8, r29
/* 80AAF6BC  7F 89 E3 78 */	mr r9, r28
/* 80AAF6C0  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80AAF6C4  FC 40 08 90 */	fmr f2, f1
/* 80AAF6C8  FC 60 08 90 */	fmr f3, f1
/* 80AAF6CC  FC 80 08 90 */	fmr f4, f1
/* 80AAF6D0  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80AAF6D4  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80AAF6D8  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80AAF6DC  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80AAF6E0  39 41 00 34 */	addi r10, r1, 0x34
/* 80AAF6E4  4B 69 75 F5 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80AAF6E8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AAF6EC  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80AAF6F0  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80AAF6F4  FC 60 F8 90 */	fmr f3, f31
/* 80AAF6F8  4B 69 85 41 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80AAF6FC  7F C3 F3 78 */	mr r3, r30
/* 80AAF700  4B 69 9A 91 */	bl setMtx__8daNpcT_cFv
/* 80AAF704  7F C3 F3 78 */	mr r3, r30
/* 80AAF708  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80AAF70C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80AAF710  7D 89 03 A6 */	mtctr r12
/* 80AAF714  4E 80 04 21 */	bctrl 
/* 80AAF718  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80AAF71C  80 84 00 04 */	lwz r4, 4(r4)
/* 80AAF720  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80AAF724  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80AAF728  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80AAF72C  7C 64 02 14 */	add r3, r4, r0
/* 80AAF730  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AAF734  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AAF738  4B 89 6D 79 */	bl PSMTXCopy
/* 80AAF73C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AAF740  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AAF744  38 81 00 40 */	addi r4, r1, 0x40
/* 80AAF748  38 BE 05 38 */	addi r5, r30, 0x538
/* 80AAF74C  4B 89 76 21 */	bl PSMTXMultVec
/* 80AAF750  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AAF754  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AAF758  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AAF75C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AAF760  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AAF764  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AAF768  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AAF76C  38 81 00 28 */	addi r4, r1, 0x28
/* 80AAF770  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80AAF774  38 A0 00 00 */	li r5, 0
/* 80AAF778  48 00 23 95 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80AAF77C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80AAF780  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AAF784  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80AAF788  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AAF78C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80AAF790  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AAF794  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AAF798  38 81 00 1C */	addi r4, r1, 0x1c
/* 80AAF79C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80AAF7A0  38 C0 00 01 */	li r6, 1
/* 80AAF7A4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80AAF7A8  38 E0 00 00 */	li r7, 0
/* 80AAF7AC  48 00 22 45 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80AAF7B0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AAF7B4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AAF7B8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AAF7BC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80AAF7C0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80AAF7C4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80AAF7C8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AAF7CC  38 00 00 00 */	li r0, 0
/* 80AAF7D0  88 7E 0F 84 */	lbz r3, 0xf84(r30)
/* 80AAF7D4  28 03 00 02 */	cmplwi r3, 2
/* 80AAF7D8  41 82 00 14 */	beq lbl_80AAF7EC
/* 80AAF7DC  28 03 00 03 */	cmplwi r3, 3
/* 80AAF7E0  41 82 00 0C */	beq lbl_80AAF7EC
/* 80AAF7E4  28 03 00 04 */	cmplwi r3, 4
/* 80AAF7E8  40 82 00 08 */	bne lbl_80AAF7F0
lbl_80AAF7EC:
/* 80AAF7EC  38 00 00 01 */	li r0, 1
lbl_80AAF7F0:
/* 80AAF7F0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AAF7F4  41 82 00 28 */	beq lbl_80AAF81C
/* 80AAF7F8  28 03 00 03 */	cmplwi r3, 3
/* 80AAF7FC  41 82 00 3C */	beq lbl_80AAF838
/* 80AAF800  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 80AAF804  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AAF808  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80AAF80C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AAF810  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80AAF814  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80AAF818  48 00 00 20 */	b lbl_80AAF838
lbl_80AAF81C:
/* 80AAF81C  88 1E 0F CF */	lbz r0, 0xfcf(r30)
/* 80AAF820  28 00 00 00 */	cmplwi r0, 0
/* 80AAF824  41 82 00 14 */	beq lbl_80AAF838
/* 80AAF828  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80AAF82C  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80AAF830  EC 01 00 2A */	fadds f0, f1, f0
/* 80AAF834  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_80AAF838:
/* 80AAF838  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AAF83C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AAF840  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80AAF844  4B 55 CB 99 */	bl mDoMtx_YrotS__FPA4_fs
/* 80AAF848  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AAF84C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AAF850  38 81 00 40 */	addi r4, r1, 0x40
/* 80AAF854  7C 85 23 78 */	mr r5, r4
/* 80AAF858  4B 89 75 15 */	bl PSMTXMultVec
/* 80AAF85C  38 61 00 10 */	addi r3, r1, 0x10
/* 80AAF860  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AAF864  38 A1 00 40 */	addi r5, r1, 0x40
/* 80AAF868  4B 7B 72 7D */	bl __pl__4cXyzCFRC3Vec
/* 80AAF86C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80AAF870  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80AAF874  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80AAF878  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80AAF87C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80AAF880  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80AAF884  38 00 00 00 */	li r0, 0
/* 80AAF888  88 7E 0F 84 */	lbz r3, 0xf84(r30)
/* 80AAF88C  28 03 00 02 */	cmplwi r3, 2
/* 80AAF890  41 82 00 14 */	beq lbl_80AAF8A4
/* 80AAF894  28 03 00 03 */	cmplwi r3, 3
/* 80AAF898  41 82 00 0C */	beq lbl_80AAF8A4
/* 80AAF89C  28 03 00 04 */	cmplwi r3, 4
/* 80AAF8A0  40 82 00 08 */	bne lbl_80AAF8A8
lbl_80AAF8A4:
/* 80AAF8A4  38 00 00 01 */	li r0, 1
lbl_80AAF8A8:
/* 80AAF8A8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AAF8AC  40 82 00 18 */	bne lbl_80AAF8C4
/* 80AAF8B0  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80AAF8B4  28 00 00 00 */	cmplwi r0, 0
/* 80AAF8B8  40 82 00 0C */	bne lbl_80AAF8C4
/* 80AAF8BC  7F C3 F3 78 */	mr r3, r30
/* 80AAF8C0  48 00 04 39 */	bl setPrtcls__13daNpc_Pouya_cFv
lbl_80AAF8C4:
/* 80AAF8C4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80AAF8C8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80AAF8CC  39 61 00 70 */	addi r11, r1, 0x70
/* 80AAF8D0  4B 8B 29 51 */	bl _restgpr_27
/* 80AAF8D4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80AAF8D8  7C 08 03 A6 */	mtlr r0
/* 80AAF8DC  38 21 00 80 */	addi r1, r1, 0x80
/* 80AAF8E0  4E 80 00 20 */	blr 

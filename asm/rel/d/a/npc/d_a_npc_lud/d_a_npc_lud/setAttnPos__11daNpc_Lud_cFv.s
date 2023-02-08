lbl_80A6C3A8:
/* 80A6C3A8  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80A6C3AC  7C 08 02 A6 */	mflr r0
/* 80A6C3B0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80A6C3B4  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80A6C3B8  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80A6C3BC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80A6C3C0  4B 8F 5E 15 */	bl _savegpr_27
/* 80A6C3C4  7C 7E 1B 78 */	mr r30, r3
/* 80A6C3C8  3C 60 80 A7 */	lis r3, m__17daNpc_Lud_Param_c@ha /* 0x80A6FD7C@ha */
/* 80A6C3CC  3B E3 FD 7C */	addi r31, r3, m__17daNpc_Lud_Param_c@l /* 0x80A6FD7C@l */
/* 80A6C3D0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A6C3D4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A6C3D8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80A6C3DC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A6C3E0  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80A6C3E4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A6C3E8  88 1E 0F D5 */	lbz r0, 0xfd5(r30)
/* 80A6C3EC  28 00 00 00 */	cmplwi r0, 0
/* 80A6C3F0  41 82 00 1C */	beq lbl_80A6C40C
/* 80A6C3F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A6C3F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A6C3FC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A6C400  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80A6C404  60 00 02 00 */	ori r0, r0, 0x200
/* 80A6C408  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_80A6C40C:
/* 80A6C40C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A6C410  38 80 00 00 */	li r4, 0
/* 80A6C414  4B 6D BA 29 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80A6C418  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80A6C41C  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80A6C420  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A6C424  7C 03 00 50 */	subf r0, r3, r0
/* 80A6C428  7C 00 07 34 */	extsh r0, r0
/* 80A6C42C  C8 3F 01 00 */	lfd f1, 0x100(r31)
/* 80A6C430  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A6C434  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A6C438  3C 00 43 30 */	lis r0, 0x4330
/* 80A6C43C  90 01 00 90 */	stw r0, 0x90(r1)
/* 80A6C440  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 80A6C444  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A6C448  EF E2 00 32 */	fmuls f31, f2, f0
/* 80A6C44C  88 1E 0F 8C */	lbz r0, 0xf8c(r30)
/* 80A6C450  28 00 00 04 */	cmplwi r0, 4
/* 80A6C454  41 82 00 14 */	beq lbl_80A6C468
/* 80A6C458  28 00 00 05 */	cmplwi r0, 5
/* 80A6C45C  41 82 00 0C */	beq lbl_80A6C468
/* 80A6C460  28 00 00 06 */	cmplwi r0, 6
/* 80A6C464  40 82 00 A8 */	bne lbl_80A6C50C
lbl_80A6C468:
/* 80A6C468  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A6C46C  83 63 00 04 */	lwz r27, 4(r3)
/* 80A6C470  7F C3 F3 78 */	mr r3, r30
/* 80A6C474  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A6C478  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A6C47C  7D 89 03 A6 */	mtctr r12
/* 80A6C480  4E 80 04 21 */	bctrl 
/* 80A6C484  7C 7D 1B 78 */	mr r29, r3
/* 80A6C488  7F C3 F3 78 */	mr r3, r30
/* 80A6C48C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A6C490  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A6C494  7D 89 03 A6 */	mtctr r12
/* 80A6C498  4E 80 04 21 */	bctrl 
/* 80A6C49C  7C 7C 1B 78 */	mr r28, r3
/* 80A6C4A0  7F C3 F3 78 */	mr r3, r30
/* 80A6C4A4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A6C4A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A6C4AC  7D 89 03 A6 */	mtctr r12
/* 80A6C4B0  4E 80 04 21 */	bctrl 
/* 80A6C4B4  7C 67 1B 78 */	mr r7, r3
/* 80A6C4B8  39 5F 00 00 */	addi r10, r31, 0
/* 80A6C4BC  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A6C4C0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A6C4C4  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A6C4C8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6C4CC  7F C4 F3 78 */	mr r4, r30
/* 80A6C4D0  7F 65 DB 78 */	mr r5, r27
/* 80A6C4D4  38 C1 00 50 */	addi r6, r1, 0x50
/* 80A6C4D8  7F 88 E3 78 */	mr r8, r28
/* 80A6C4DC  7F A9 EB 78 */	mr r9, r29
/* 80A6C4E0  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A6C4E4  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A6C4E8  C0 7F 00 C8 */	lfs f3, 0xc8(r31)
/* 80A6C4EC  FC 80 18 90 */	fmr f4, f3
/* 80A6C4F0  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A6C4F4  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A6C4F8  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A6C4FC  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A6C500  39 40 00 00 */	li r10, 0
/* 80A6C504  4B 6D A7 D5 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80A6C508  48 00 00 A4 */	b lbl_80A6C5AC
lbl_80A6C50C:
/* 80A6C50C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A6C510  83 63 00 04 */	lwz r27, 4(r3)
/* 80A6C514  7F C3 F3 78 */	mr r3, r30
/* 80A6C518  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A6C51C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A6C520  7D 89 03 A6 */	mtctr r12
/* 80A6C524  4E 80 04 21 */	bctrl 
/* 80A6C528  7C 7C 1B 78 */	mr r28, r3
/* 80A6C52C  7F C3 F3 78 */	mr r3, r30
/* 80A6C530  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A6C534  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A6C538  7D 89 03 A6 */	mtctr r12
/* 80A6C53C  4E 80 04 21 */	bctrl 
/* 80A6C540  7C 7D 1B 78 */	mr r29, r3
/* 80A6C544  7F C3 F3 78 */	mr r3, r30
/* 80A6C548  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A6C54C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A6C550  7D 89 03 A6 */	mtctr r12
/* 80A6C554  4E 80 04 21 */	bctrl 
/* 80A6C558  7C 67 1B 78 */	mr r7, r3
/* 80A6C55C  39 5F 00 00 */	addi r10, r31, 0
/* 80A6C560  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A6C564  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A6C568  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A6C56C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6C570  7F C4 F3 78 */	mr r4, r30
/* 80A6C574  7F 65 DB 78 */	mr r5, r27
/* 80A6C578  38 C1 00 50 */	addi r6, r1, 0x50
/* 80A6C57C  7F A8 EB 78 */	mr r8, r29
/* 80A6C580  7F 89 E3 78 */	mr r9, r28
/* 80A6C584  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A6C588  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A6C58C  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80A6C590  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80A6C594  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A6C598  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A6C59C  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A6C5A0  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A6C5A4  39 40 00 00 */	li r10, 0
/* 80A6C5A8  4B 6D A7 31 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
lbl_80A6C5AC:
/* 80A6C5AC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6C5B0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80A6C5B4  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80A6C5B8  FC 60 F8 90 */	fmr f3, f31
/* 80A6C5BC  4B 6D B6 7D */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80A6C5C0  38 7F 00 00 */	addi r3, r31, 0
/* 80A6C5C4  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80A6C5C8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A6C5CC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A6C5D0  7F C3 F3 78 */	mr r3, r30
/* 80A6C5D4  4B 6D CB BD */	bl setMtx__8daNpcT_cFv
/* 80A6C5D8  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80A6C5DC  28 03 00 00 */	cmplwi r3, 0
/* 80A6C5E0  41 82 00 5C */	beq lbl_80A6C63C
/* 80A6C5E4  38 80 00 00 */	li r4, 0
/* 80A6C5E8  38 A0 00 00 */	li r5, 0
/* 80A6C5EC  4B 5A 4A C5 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80A6C5F0  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A6C5F4  80 63 00 04 */	lwz r3, 4(r3)
/* 80A6C5F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A6C5FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A6C600  38 63 02 A0 */	addi r3, r3, 0x2a0
/* 80A6C604  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6C608  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6C60C  4B 8D 9E A5 */	bl PSMTXCopy
/* 80A6C610  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6C614  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6C618  38 81 00 5C */	addi r4, r1, 0x5c
/* 80A6C61C  4B 8D 9E 95 */	bl PSMTXCopy
/* 80A6C620  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80A6C624  80 83 00 04 */	lwz r4, 4(r3)
/* 80A6C628  38 61 00 5C */	addi r3, r1, 0x5c
/* 80A6C62C  38 84 00 24 */	addi r4, r4, 0x24
/* 80A6C630  4B 8D 9E 81 */	bl PSMTXCopy
/* 80A6C634  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80A6C638  4B 5A 4B B5 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_80A6C63C:
/* 80A6C63C  7F C3 F3 78 */	mr r3, r30
/* 80A6C640  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A6C644  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A6C648  7D 89 03 A6 */	mtctr r12
/* 80A6C64C  4E 80 04 21 */	bctrl 
/* 80A6C650  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80A6C654  80 84 00 04 */	lwz r4, 4(r4)
/* 80A6C658  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A6C65C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A6C660  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A6C664  7C 64 02 14 */	add r3, r4, r0
/* 80A6C668  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6C66C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6C670  4B 8D 9E 41 */	bl PSMTXCopy
/* 80A6C674  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6C678  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6C67C  38 81 00 50 */	addi r4, r1, 0x50
/* 80A6C680  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A6C684  4B 8D A6 E9 */	bl PSMTXMultVec
/* 80A6C688  88 1E 0F 8C */	lbz r0, 0xf8c(r30)
/* 80A6C68C  28 00 00 04 */	cmplwi r0, 4
/* 80A6C690  41 82 00 14 */	beq lbl_80A6C6A4
/* 80A6C694  28 00 00 05 */	cmplwi r0, 5
/* 80A6C698  41 82 00 0C */	beq lbl_80A6C6A4
/* 80A6C69C  28 00 00 06 */	cmplwi r0, 6
/* 80A6C6A0  40 82 00 D0 */	bne lbl_80A6C770
lbl_80A6C6A4:
/* 80A6C6A4  A8 9E 0F D0 */	lha r4, 0xfd0(r30)
/* 80A6C6A8  7C 80 07 35 */	extsh. r0, r4
/* 80A6C6AC  41 82 00 60 */	beq lbl_80A6C70C
/* 80A6C6B0  A8 1E 0C DC */	lha r0, 0xcdc(r30)
/* 80A6C6B4  C8 7F 01 00 */	lfd f3, 0x100(r31)
/* 80A6C6B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A6C6BC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A6C6C0  3C 60 43 30 */	lis r3, 0x4330
/* 80A6C6C4  90 61 00 90 */	stw r3, 0x90(r1)
/* 80A6C6C8  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 80A6C6CC  EC 20 18 28 */	fsubs f1, f0, f3
/* 80A6C6D0  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80A6C6D4  EC 41 00 32 */	fmuls f2, f1, f0
/* 80A6C6D8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80A6C6DC  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80A6C6E0  90 61 00 98 */	stw r3, 0x98(r1)
/* 80A6C6E4  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 80A6C6E8  EC 20 18 28 */	fsubs f1, f0, f3
/* 80A6C6EC  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80A6C6F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A6C6F4  EC 02 00 2A */	fadds f0, f2, f0
/* 80A6C6F8  FC 00 00 1E */	fctiwz f0, f0
/* 80A6C6FC  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 80A6C700  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80A6C704  B0 1E 0C D6 */	sth r0, 0xcd6(r30)
/* 80A6C708  48 00 00 C8 */	b lbl_80A6C7D0
lbl_80A6C70C:
/* 80A6C70C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A6C710  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A6C714  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A6C718  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A6C71C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A6C720  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A6C724  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6C728  38 81 00 44 */	addi r4, r1, 0x44
/* 80A6C72C  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A6C730  38 A0 00 00 */	li r5, 0
/* 80A6C734  48 00 30 CD */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A6C738  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A6C73C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A6C740  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A6C744  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A6C748  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A6C74C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A6C750  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6C754  38 81 00 38 */	addi r4, r1, 0x38
/* 80A6C758  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A6C75C  38 C0 00 01 */	li r6, 1
/* 80A6C760  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A6C764  38 E0 00 00 */	li r7, 0
/* 80A6C768  48 00 2F 7D */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80A6C76C  48 00 00 64 */	b lbl_80A6C7D0
lbl_80A6C770:
/* 80A6C770  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A6C774  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A6C778  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A6C77C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A6C780  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A6C784  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A6C788  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6C78C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A6C790  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A6C794  38 A0 00 00 */	li r5, 0
/* 80A6C798  48 00 30 69 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A6C79C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A6C7A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A6C7A4  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A6C7A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A6C7AC  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A6C7B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A6C7B4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A6C7B8  38 81 00 20 */	addi r4, r1, 0x20
/* 80A6C7BC  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A6C7C0  38 C0 00 01 */	li r6, 1
/* 80A6C7C4  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 80A6C7C8  38 E0 00 00 */	li r7, 0
/* 80A6C7CC  48 00 2F 19 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
lbl_80A6C7D0:
/* 80A6C7D0  88 1E 0F 8C */	lbz r0, 0xf8c(r30)
/* 80A6C7D4  28 00 00 04 */	cmplwi r0, 4
/* 80A6C7D8  41 82 00 14 */	beq lbl_80A6C7EC
/* 80A6C7DC  28 00 00 05 */	cmplwi r0, 5
/* 80A6C7E0  41 82 00 0C */	beq lbl_80A6C7EC
/* 80A6C7E4  28 00 00 06 */	cmplwi r0, 6
/* 80A6C7E8  40 82 00 4C */	bne lbl_80A6C834
lbl_80A6C7EC:
/* 80A6C7EC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A6C7F0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A6C7F4  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80A6C7F8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A6C7FC  C0 1F 00 FC */	lfs f0, 0xfc(r31)
/* 80A6C800  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A6C804  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A6C808  80 63 00 04 */	lwz r3, 4(r3)
/* 80A6C80C  38 63 00 24 */	addi r3, r3, 0x24
/* 80A6C810  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6C814  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6C818  4B 8D 9C 99 */	bl PSMTXCopy
/* 80A6C81C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6C820  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6C824  38 81 00 50 */	addi r4, r1, 0x50
/* 80A6C828  38 BE 05 50 */	addi r5, r30, 0x550
/* 80A6C82C  4B 8D A5 41 */	bl PSMTXMultVec
/* 80A6C830  48 00 00 68 */	b lbl_80A6C898
lbl_80A6C834:
/* 80A6C834  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80A6C838  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A6C83C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A6C840  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A6C844  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A6C848  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A6C84C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6C850  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6C854  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80A6C858  4B 59 FB 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 80A6C85C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A6C860  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A6C864  38 81 00 50 */	addi r4, r1, 0x50
/* 80A6C868  7C 85 23 78 */	mr r5, r4
/* 80A6C86C  4B 8D A5 01 */	bl PSMTXMultVec
/* 80A6C870  38 61 00 14 */	addi r3, r1, 0x14
/* 80A6C874  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A6C878  38 A1 00 50 */	addi r5, r1, 0x50
/* 80A6C87C  4B 7F A2 69 */	bl __pl__4cXyzCFRC3Vec
/* 80A6C880  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A6C884  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A6C888  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A6C88C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A6C890  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A6C894  D0 1E 05 58 */	stfs f0, 0x558(r30)
lbl_80A6C898:
/* 80A6C898  88 1E 0F 8C */	lbz r0, 0xf8c(r30)
/* 80A6C89C  28 00 00 03 */	cmplwi r0, 3
/* 80A6C8A0  40 82 00 2C */	bne lbl_80A6C8CC
/* 80A6C8A4  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500FE@ha */
/* 80A6C8A8  38 03 00 FE */	addi r0, r3, 0x00FE /* 0x000500FE@l */
/* 80A6C8AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A6C8B0  38 7E 05 80 */	addi r3, r30, 0x580
/* 80A6C8B4  38 81 00 10 */	addi r4, r1, 0x10
/* 80A6C8B8  38 A0 FF FF */	li r5, -1
/* 80A6C8BC  81 9E 05 80 */	lwz r12, 0x580(r30)
/* 80A6C8C0  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A6C8C4  7D 89 03 A6 */	mtctr r12
/* 80A6C8C8  4E 80 04 21 */	bctrl 
lbl_80A6C8CC:
/* 80A6C8CC  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80A6C8D0  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80A6C8D4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80A6C8D8  4B 8F 59 49 */	bl _restgpr_27
/* 80A6C8DC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80A6C8E0  7C 08 03 A6 */	mtlr r0
/* 80A6C8E4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80A6C8E8  4E 80 00 20 */	blr 

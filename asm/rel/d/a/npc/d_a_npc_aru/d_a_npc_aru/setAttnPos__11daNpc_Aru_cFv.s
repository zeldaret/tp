lbl_8095349C:
/* 8095349C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 809534A0  7C 08 02 A6 */	mflr r0
/* 809534A4  90 01 00 84 */	stw r0, 0x84(r1)
/* 809534A8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 809534AC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 809534B0  39 61 00 70 */	addi r11, r1, 0x70
/* 809534B4  4B A0 ED 1D */	bl _savegpr_26
/* 809534B8  7C 7D 1B 78 */	mr r29, r3
/* 809534BC  3C 60 80 96 */	lis r3, lit_1109@ha /* 0x80958120@ha */
/* 809534C0  3B C3 81 20 */	addi r30, r3, lit_1109@l /* 0x80958120@l */
/* 809534C4  3C 60 80 95 */	lis r3, m__17daNpc_Aru_Param_c@ha /* 0x809576D0@ha */
/* 809534C8  3B E3 76 D0 */	addi r31, r3, m__17daNpc_Aru_Param_c@l /* 0x809576D0@l */
/* 809534CC  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 809534D0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809534D4  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 809534D8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 809534DC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809534E0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809534E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809534E8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 809534EC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809534F0  38 7D 0D 08 */	addi r3, r29, 0xd08
/* 809534F4  38 80 00 00 */	li r4, 0
/* 809534F8  4B 7F 49 45 */	bl calc__19daNpcT_DmgStagger_cFi
/* 809534FC  C0 5F 01 00 */	lfs f2, 0x100(r31)
/* 80953500  A8 7D 0D 80 */	lha r3, 0xd80(r29)
/* 80953504  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80953508  7C 03 00 50 */	subf r0, r3, r0
/* 8095350C  7C 00 07 34 */	extsh r0, r0
/* 80953510  C8 3F 01 08 */	lfd f1, 0x108(r31)
/* 80953514  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80953518  90 01 00 54 */	stw r0, 0x54(r1)
/* 8095351C  3C 00 43 30 */	lis r0, 0x4330
/* 80953520  90 01 00 50 */	stw r0, 0x50(r1)
/* 80953524  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80953528  EC 00 08 28 */	fsubs f0, f0, f1
/* 8095352C  EF E2 00 32 */	fmuls f31, f2, f0
/* 80953530  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80953534  83 43 00 04 */	lwz r26, 4(r3)
/* 80953538  7F A3 EB 78 */	mr r3, r29
/* 8095353C  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80953540  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80953544  7D 89 03 A6 */	mtctr r12
/* 80953548  4E 80 04 21 */	bctrl 
/* 8095354C  7C 7B 1B 78 */	mr r27, r3
/* 80953550  7F A3 EB 78 */	mr r3, r29
/* 80953554  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80953558  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8095355C  7D 89 03 A6 */	mtctr r12
/* 80953560  4E 80 04 21 */	bctrl 
/* 80953564  7C 7C 1B 78 */	mr r28, r3
/* 80953568  7F A3 EB 78 */	mr r3, r29
/* 8095356C  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80953570  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80953574  7D 89 03 A6 */	mtctr r12
/* 80953578  4E 80 04 21 */	bctrl 
/* 8095357C  7C 67 1B 78 */	mr r7, r3
/* 80953580  39 5F 00 00 */	addi r10, r31, 0
/* 80953584  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80953588  D0 01 00 08 */	stfs f0, 8(r1)
/* 8095358C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80953590  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80953594  7F A4 EB 78 */	mr r4, r29
/* 80953598  7F 45 D3 78 */	mr r5, r26
/* 8095359C  38 C1 00 40 */	addi r6, r1, 0x40
/* 809535A0  7F 88 E3 78 */	mr r8, r28
/* 809535A4  7F 69 DB 78 */	mr r9, r27
/* 809535A8  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 809535AC  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 809535B0  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 809535B4  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 809535B8  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 809535BC  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 809535C0  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 809535C4  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 809535C8  39 41 00 34 */	addi r10, r1, 0x34
/* 809535CC  4B 7F 37 0D */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 809535D0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 809535D4  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 809535D8  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 809535DC  FC 60 F8 90 */	fmr f3, f31
/* 809535E0  4B 7F 46 59 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 809535E4  7F A3 EB 78 */	mr r3, r29
/* 809535E8  4B 7F 5B A9 */	bl setMtx__8daNpcT_cFv
/* 809535EC  7F A3 EB 78 */	mr r3, r29
/* 809535F0  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809535F4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809535F8  7D 89 03 A6 */	mtctr r12
/* 809535FC  4E 80 04 21 */	bctrl 
/* 80953600  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80953604  80 84 00 04 */	lwz r4, 4(r4)
/* 80953608  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8095360C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80953610  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80953614  7C 64 02 14 */	add r3, r4, r0
/* 80953618  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095361C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80953620  4B 9F 2E 91 */	bl PSMTXCopy
/* 80953624  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80953628  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095362C  38 81 00 40 */	addi r4, r1, 0x40
/* 80953630  38 BD 05 38 */	addi r5, r29, 0x538
/* 80953634  4B 9F 37 39 */	bl PSMTXMultVec
/* 80953638  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 8095363C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80953640  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80953644  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80953648  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 8095364C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80953650  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80953654  38 81 00 28 */	addi r4, r1, 0x28
/* 80953658  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8095365C  38 A0 00 00 */	li r5, 0
/* 80953660  48 00 3A 65 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80953664  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80953668  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8095366C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80953670  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80953674  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80953678  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8095367C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80953680  38 81 00 1C */	addi r4, r1, 0x1c
/* 80953684  A8 BD 0D 7A */	lha r5, 0xd7a(r29)
/* 80953688  A8 1D 0D 8C */	lha r0, 0xd8c(r29)
/* 8095368C  7C 05 02 14 */	add r0, r5, r0
/* 80953690  7C 05 07 34 */	extsh r5, r0
/* 80953694  38 C0 00 01 */	li r6, 1
/* 80953698  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8095369C  38 E0 00 00 */	li r7, 0
/* 809536A0  48 00 39 09 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 809536A4  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 809536A8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809536AC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809536B0  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 809536B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 809536B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809536BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809536C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809536C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809536C8  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 809536CC  4B 6B 8D 11 */	bl mDoMtx_YrotS__FPA4_fs
/* 809536D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809536D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809536D8  38 81 00 40 */	addi r4, r1, 0x40
/* 809536DC  7C 85 23 78 */	mr r5, r4
/* 809536E0  4B 9F 36 8D */	bl PSMTXMultVec
/* 809536E4  38 61 00 10 */	addi r3, r1, 0x10
/* 809536E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 809536EC  38 A1 00 40 */	addi r5, r1, 0x40
/* 809536F0  4B 91 33 F5 */	bl __pl__4cXyzCFRC3Vec
/* 809536F4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809536F8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809536FC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80953700  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80953704  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80953708  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 8095370C  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80953710  7C 00 07 75 */	extsb. r0, r0
/* 80953714  40 82 00 30 */	bne lbl_80953744
/* 80953718  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 8095371C  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80953720  38 7E 00 60 */	addi r3, r30, 0x60
/* 80953724  D0 03 00 04 */	stfs f0, 4(r3)
/* 80953728  D0 03 00 08 */	stfs f0, 8(r3)
/* 8095372C  3C 80 80 95 */	lis r4, __dt__4cXyzFv@ha /* 0x80956748@ha */
/* 80953730  38 84 67 48 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80956748@l */
/* 80953734  38 BE 00 50 */	addi r5, r30, 0x50
/* 80953738  4B FF DF E1 */	bl __register_global_object
/* 8095373C  38 00 00 01 */	li r0, 1
/* 80953740  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80953744:
/* 80953744  7F A3 EB 78 */	mr r3, r29
/* 80953748  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 8095374C  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80953750  7D 89 03 A6 */	mtctr r12
/* 80953754  4E 80 04 21 */	bctrl 
/* 80953758  7F A3 EB 78 */	mr r3, r29
/* 8095375C  38 9E 00 60 */	addi r4, r30, 0x60
/* 80953760  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80953764  FC 40 08 90 */	fmr f2, f1
/* 80953768  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 8095376C  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80953770  7D 89 03 A6 */	mtctr r12
/* 80953774  4E 80 04 21 */	bctrl 
/* 80953778  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8095377C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80953780  39 61 00 70 */	addi r11, r1, 0x70
/* 80953784  4B A0 EA 99 */	bl _restgpr_26
/* 80953788  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8095378C  7C 08 03 A6 */	mtlr r0
/* 80953790  38 21 00 80 */	addi r1, r1, 0x80
/* 80953794  4E 80 00 20 */	blr 

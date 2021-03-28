lbl_80A613E8:
/* 80A613E8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A613EC  7C 08 02 A6 */	mflr r0
/* 80A613F0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A613F4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80A613F8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80A613FC  39 61 00 70 */	addi r11, r1, 0x70
/* 80A61400  4B 90 0D D4 */	b _savegpr_27
/* 80A61404  7C 7E 1B 78 */	mr r30, r3
/* 80A61408  3C 60 80 A6 */	lis r3, m__19daNpc_Kyury_Param_c@ha
/* 80A6140C  3B E3 38 AC */	addi r31, r3, m__19daNpc_Kyury_Param_c@l
/* 80A61410  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80A61414  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80A61418  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80A6141C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A61420  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A61424  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A61428  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80A6142C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A61430  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A61434  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A61438  38 80 00 00 */	li r4, 0
/* 80A6143C  4B 6E 6A 00 */	b calc__19daNpcT_DmgStagger_cFi
/* 80A61440  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80A61444  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80A61448  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A6144C  7C 03 00 50 */	subf r0, r3, r0
/* 80A61450  7C 00 07 34 */	extsh r0, r0
/* 80A61454  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 80A61458  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A6145C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A61460  3C 00 43 30 */	lis r0, 0x4330
/* 80A61464  90 01 00 50 */	stw r0, 0x50(r1)
/* 80A61468  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80A6146C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A61470  EF E2 00 32 */	fmuls f31, f2, f0
/* 80A61474  88 1E 0F 88 */	lbz r0, 0xf88(r30)
/* 80A61478  28 00 00 01 */	cmplwi r0, 1
/* 80A6147C  40 82 00 A8 */	bne lbl_80A61524
/* 80A61480  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A61484  83 63 00 04 */	lwz r27, 4(r3)
/* 80A61488  7F C3 F3 78 */	mr r3, r30
/* 80A6148C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A61490  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A61494  7D 89 03 A6 */	mtctr r12
/* 80A61498  4E 80 04 21 */	bctrl 
/* 80A6149C  7C 7D 1B 78 */	mr r29, r3
/* 80A614A0  7F C3 F3 78 */	mr r3, r30
/* 80A614A4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A614A8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A614AC  7D 89 03 A6 */	mtctr r12
/* 80A614B0  4E 80 04 21 */	bctrl 
/* 80A614B4  7C 7C 1B 78 */	mr r28, r3
/* 80A614B8  7F C3 F3 78 */	mr r3, r30
/* 80A614BC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A614C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A614C4  7D 89 03 A6 */	mtctr r12
/* 80A614C8  4E 80 04 21 */	bctrl 
/* 80A614CC  7C 67 1B 78 */	mr r7, r3
/* 80A614D0  39 5F 00 00 */	addi r10, r31, 0
/* 80A614D4  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A614D8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A614DC  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A614E0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A614E4  7F C4 F3 78 */	mr r4, r30
/* 80A614E8  7F 65 DB 78 */	mr r5, r27
/* 80A614EC  38 C1 00 40 */	addi r6, r1, 0x40
/* 80A614F0  7F 88 E3 78 */	mr r8, r28
/* 80A614F4  7F A9 EB 78 */	mr r9, r29
/* 80A614F8  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80A614FC  FC 40 08 90 */	fmr f2, f1
/* 80A61500  FC 60 08 90 */	fmr f3, f1
/* 80A61504  FC 80 08 90 */	fmr f4, f1
/* 80A61508  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A6150C  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A61510  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A61514  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A61518  39 41 00 34 */	addi r10, r1, 0x34
/* 80A6151C  4B 6E 57 BC */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80A61520  48 00 00 A4 */	b lbl_80A615C4
lbl_80A61524:
/* 80A61524  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A61528  83 63 00 04 */	lwz r27, 4(r3)
/* 80A6152C  7F C3 F3 78 */	mr r3, r30
/* 80A61530  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A61534  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A61538  7D 89 03 A6 */	mtctr r12
/* 80A6153C  4E 80 04 21 */	bctrl 
/* 80A61540  7C 7C 1B 78 */	mr r28, r3
/* 80A61544  7F C3 F3 78 */	mr r3, r30
/* 80A61548  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A6154C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A61550  7D 89 03 A6 */	mtctr r12
/* 80A61554  4E 80 04 21 */	bctrl 
/* 80A61558  7C 7D 1B 78 */	mr r29, r3
/* 80A6155C  7F C3 F3 78 */	mr r3, r30
/* 80A61560  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A61564  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A61568  7D 89 03 A6 */	mtctr r12
/* 80A6156C  4E 80 04 21 */	bctrl 
/* 80A61570  7C 67 1B 78 */	mr r7, r3
/* 80A61574  39 5F 00 00 */	addi r10, r31, 0
/* 80A61578  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A6157C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A61580  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A61584  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A61588  7F C4 F3 78 */	mr r4, r30
/* 80A6158C  7F 65 DB 78 */	mr r5, r27
/* 80A61590  38 C1 00 40 */	addi r6, r1, 0x40
/* 80A61594  7F A8 EB 78 */	mr r8, r29
/* 80A61598  7F 89 E3 78 */	mr r9, r28
/* 80A6159C  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A615A0  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A615A4  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80A615A8  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80A615AC  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A615B0  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A615B4  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A615B8  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A615BC  39 41 00 34 */	addi r10, r1, 0x34
/* 80A615C0  4B 6E 57 18 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
lbl_80A615C4:
/* 80A615C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A615C8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80A615CC  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80A615D0  FC 60 F8 90 */	fmr f3, f31
/* 80A615D4  4B 6E 66 64 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80A615D8  7F C3 F3 78 */	mr r3, r30
/* 80A615DC  4B 6E 7B B4 */	b setMtx__8daNpcT_cFv
/* 80A615E0  7F C3 F3 78 */	mr r3, r30
/* 80A615E4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A615E8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A615EC  7D 89 03 A6 */	mtctr r12
/* 80A615F0  4E 80 04 21 */	bctrl 
/* 80A615F4  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80A615F8  80 84 00 04 */	lwz r4, 4(r4)
/* 80A615FC  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A61600  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A61604  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A61608  7C 64 02 14 */	add r3, r4, r0
/* 80A6160C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A61610  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A61614  4B 8E 4E 9C */	b PSMTXCopy
/* 80A61618  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A6161C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A61620  38 81 00 40 */	addi r4, r1, 0x40
/* 80A61624  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A61628  4B 8E 57 44 */	b PSMTXMultVec
/* 80A6162C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A61630  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A61634  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A61638  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A6163C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A61640  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A61644  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A61648  38 81 00 28 */	addi r4, r1, 0x28
/* 80A6164C  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80A61650  38 A0 00 00 */	li r5, 0
/* 80A61654  48 00 1D 69 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A61658  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A6165C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A61660  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A61664  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A61668  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A6166C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A61670  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A61674  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A61678  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A6167C  38 C0 00 01 */	li r6, 1
/* 80A61680  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 80A61684  38 E0 00 00 */	li r7, 0
/* 80A61688  48 00 1C 19 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80A6168C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80A61690  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80A61694  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80A61698  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A6169C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A616A0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A616A4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A616A8  88 1E 0F 88 */	lbz r0, 0xf88(r30)
/* 80A616AC  28 00 00 01 */	cmplwi r0, 1
/* 80A616B0  40 82 00 14 */	bne lbl_80A616C4
/* 80A616B4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80A616B8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80A616BC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A616C0  D0 21 00 48 */	stfs f1, 0x48(r1)
lbl_80A616C4:
/* 80A616C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A616C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A616CC  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80A616D0  4B 5A AD 0C */	b mDoMtx_YrotS__FPA4_fs
/* 80A616D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A616D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A616DC  38 81 00 40 */	addi r4, r1, 0x40
/* 80A616E0  7C 85 23 78 */	mr r5, r4
/* 80A616E4  4B 8E 56 88 */	b PSMTXMultVec
/* 80A616E8  38 61 00 10 */	addi r3, r1, 0x10
/* 80A616EC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A616F0  38 A1 00 40 */	addi r5, r1, 0x40
/* 80A616F4  4B 80 53 F0 */	b __pl__4cXyzCFRC3Vec
/* 80A616F8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A616FC  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A61700  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A61704  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A61708  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A6170C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80A61710  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80A61714  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80A61718  39 61 00 70 */	addi r11, r1, 0x70
/* 80A6171C  4B 90 0B 04 */	b _restgpr_27
/* 80A61720  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A61724  7C 08 03 A6 */	mtlr r0
/* 80A61728  38 21 00 80 */	addi r1, r1, 0x80
/* 80A6172C  4E 80 00 20 */	blr 

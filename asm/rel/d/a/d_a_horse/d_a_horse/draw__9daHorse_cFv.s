lbl_80844590:
/* 80844590  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80844594  7C 08 02 A6 */	mflr r0
/* 80844598  90 01 00 24 */	stw r0, 0x24(r1)
/* 8084459C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 808445A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 808445A4  7C 7E 1B 78 */	mr r30, r3
/* 808445A8  3C 60 80 84 */	lis r3, lit_3894@ha
/* 808445AC  3B E3 54 AC */	addi r31, r3, lit_3894@l
/* 808445B0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 808445B4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 808445B8  38 80 00 00 */	li r4, 0
/* 808445BC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 808445C0  38 DE 01 0C */	addi r6, r30, 0x10c
/* 808445C4  4B 95 F2 00 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 808445C8  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 808445CC  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 808445D0  40 82 00 10 */	bne lbl_808445E0
/* 808445D4  80 1E 17 48 */	lwz r0, 0x1748(r30)
/* 808445D8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 808445DC  41 82 00 0C */	beq lbl_808445E8
lbl_808445E0:
/* 808445E0  38 60 00 01 */	li r3, 1
/* 808445E4  48 00 01 70 */	b lbl_80844754
lbl_808445E8:
/* 808445E8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 808445EC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 808445F0  80 9E 05 70 */	lwz r4, 0x570(r30)
/* 808445F4  80 84 00 04 */	lwz r4, 4(r4)
/* 808445F8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 808445FC  4B 96 07 A4 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80844600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80844604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80844608  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 8084460C  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 80844610  41 82 00 24 */	beq lbl_80844634
/* 80844614  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80844618  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8084461C  80 63 00 08 */	lwz r3, 8(r3)
/* 80844620  80 63 00 08 */	lwz r3, 8(r3)
/* 80844624  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80844628  60 00 00 01 */	ori r0, r0, 1
/* 8084462C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80844630  48 00 00 20 */	b lbl_80844650
lbl_80844634:
/* 80844634  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80844638  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8084463C  80 63 00 08 */	lwz r3, 8(r3)
/* 80844640  80 63 00 08 */	lwz r3, 8(r3)
/* 80844644  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80844648  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8084464C  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80844650:
/* 80844650  38 7E 05 78 */	addi r3, r30, 0x578
/* 80844654  80 9E 05 74 */	lwz r4, 0x574(r30)
/* 80844658  38 84 00 58 */	addi r4, r4, 0x58
/* 8084465C  A8 BE 16 F4 */	lha r5, 0x16f4(r30)
/* 80844660  4B 7C 8F 88 */	b entry__13mDoExt_btpAnmFP16J3DMaterialTables
/* 80844664  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80844668  4B 7C 96 FC */	b mDoExt_modelEntryDL__FP8J3DModel
/* 8084466C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80844670  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 80844674  C0 7E 04 D4 */	lfs f3, 0x4d4(r30)
/* 80844678  EC 20 18 2A */	fadds f1, f0, f3
/* 8084467C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80844680  D0 01 00 08 */	stfs f0, 8(r1)
/* 80844684  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80844688  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8084468C  80 7E 17 34 */	lwz r3, 0x1734(r30)
/* 80844690  38 80 00 00 */	li r4, 0
/* 80844694  80 BE 05 70 */	lwz r5, 0x570(r30)
/* 80844698  38 C1 00 08 */	addi r6, r1, 8
/* 8084469C  C0 3F 02 9C */	lfs f1, 0x29c(r31)
/* 808446A0  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 808446A4  C0 9E 07 54 */	lfs f4, 0x754(r30)
/* 808446A8  38 FE 07 AC */	addi r7, r30, 0x7ac
/* 808446AC  39 1E 01 0C */	addi r8, r30, 0x10c
/* 808446B0  39 20 00 00 */	li r9, 0
/* 808446B4  C0 BF 01 48 */	lfs f5, 0x148(r31)
/* 808446B8  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 808446BC  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 808446C0  4B 7E A2 50 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 808446C4  90 7E 17 34 */	stw r3, 0x1734(r30)
/* 808446C8  80 1E 17 48 */	lwz r0, 0x1748(r30)
/* 808446CC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 808446D0  40 82 00 80 */	bne lbl_80844750
/* 808446D4  80 1E 17 44 */	lwz r0, 0x1744(r30)
/* 808446D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 808446DC  41 82 00 1C */	beq lbl_808446F8
/* 808446E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808446E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808446E8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 808446EC  4B 8A 88 70 */	b checkHorseSubjectivity__9daAlink_cCFv
/* 808446F0  2C 03 00 00 */	cmpwi r3, 0
/* 808446F4  40 82 00 5C */	bne lbl_80844750
lbl_808446F8:
/* 808446F8  38 7E 11 C8 */	addi r3, r30, 0x11c8
/* 808446FC  80 9E 12 04 */	lwz r4, 0x1204(r30)
/* 80844700  C0 3F 02 68 */	lfs f1, 0x268(r31)
/* 80844704  3C A0 80 84 */	lis r5, reinLineColor@ha
/* 80844708  38 A5 5A 30 */	addi r5, r5, reinLineColor@l
/* 8084470C  38 C0 00 00 */	li r6, 0
/* 80844710  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80844714  4B 7C F0 28 */	b update__19mDoExt_3DlineMat1_cFifR8_GXColorUsP12dKy_tevstr_c
/* 80844718  38 7E 11 C8 */	addi r3, r30, 0x11c8
/* 8084471C  81 9E 11 C8 */	lwz r12, 0x11c8(r30)
/* 80844720  81 8C 00 08 */	lwz r12, 8(r12)
/* 80844724  7D 89 03 A6 */	mtctr r12
/* 80844728  4E 80 04 21 */	bctrl 
/* 8084472C  1C 83 00 14 */	mulli r4, r3, 0x14
/* 80844730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80844734  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 80844738  7C 60 22 14 */	add r3, r0, r4
/* 8084473C  3C 63 00 01 */	addis r3, r3, 1
/* 80844740  38 63 61 54 */	addi r3, r3, 0x6154
/* 80844744  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80844748  38 9E 11 C8 */	addi r4, r30, 0x11c8
/* 8084474C  4B 7C FF EC */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_80844750:
/* 80844750  38 60 00 01 */	li r3, 1
lbl_80844754:
/* 80844754  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80844758  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8084475C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80844760  7C 08 03 A6 */	mtlr r0
/* 80844764  38 21 00 20 */	addi r1, r1, 0x20
/* 80844768  4E 80 00 20 */	blr 

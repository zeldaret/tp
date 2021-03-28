lbl_80D67768:
/* 80D67768  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D6776C  7C 08 02 A6 */	mflr r0
/* 80D67770  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D67774  39 61 00 20 */	addi r11, r1, 0x20
/* 80D67778  4B 5F AA 64 */	b _savegpr_29
/* 80D6777C  7C 7F 1B 78 */	mr r31, r3
/* 80D67780  3C 60 80 D6 */	lis r3, lit_3772@ha
/* 80D67784  3B C3 7B D4 */	addi r30, r3, lit_3772@l
/* 80D67788  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D6778C  83 A3 00 04 */	lwz r29, 4(r3)
/* 80D67790  38 63 00 24 */	addi r3, r3, 0x24
/* 80D67794  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 80D67798  FC 40 08 90 */	fmr f2, f1
/* 80D6779C  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 80D677A0  4B 5D F1 48 */	b PSMTXTrans
/* 80D677A4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D677A8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80D677AC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D677B0  38 7F 05 78 */	addi r3, r31, 0x578
/* 80D677B4  7F A4 EB 78 */	mr r4, r29
/* 80D677B8  C0 3F 05 88 */	lfs f1, 0x588(r31)
/* 80D677BC  4B 2A 62 10 */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 80D677C0  C0 3F 05 A4 */	lfs f1, 0x5a4(r31)
/* 80D677C4  38 7F 05 94 */	addi r3, r31, 0x594
/* 80D677C8  38 9D 00 58 */	addi r4, r29, 0x58
/* 80D677CC  4B 2A 5D 4C */	b entry__13mDoExt_bpkAnmFP16J3DMaterialTablef
/* 80D677D0  C0 3F 05 BC */	lfs f1, 0x5bc(r31)
/* 80D677D4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80D677D8  38 9D 00 58 */	addi r4, r29, 0x58
/* 80D677DC  4B 2A 5F CC */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 80D677E0  C0 3F 05 D4 */	lfs f1, 0x5d4(r31)
/* 80D677E4  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80D677E8  38 9D 00 58 */	addi r4, r29, 0x58
/* 80D677EC  4B 2A 5E EC */	b entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 80D677F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D677F4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80D677F8  80 04 5F 98 */	lwz r0, 0x5f98(r4)
/* 80D677FC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80D67800  3B C3 4A C8 */	addi r30, r3, j3dSys@l
/* 80D67804  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D67808  80 04 5F 9C */	lwz r0, 0x5f9c(r4)
/* 80D6780C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D67810  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D67814  4B 2A 64 B0 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 80D67818  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D6781C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D67820  80 03 5F 80 */	lwz r0, 0x5f80(r3)
/* 80D67824  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80D67828  80 03 5F 84 */	lwz r0, 0x5f84(r3)
/* 80D6782C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80D67830  88 1F 05 F8 */	lbz r0, 0x5f8(r31)
/* 80D67834  28 00 00 00 */	cmplwi r0, 0
/* 80D67838  41 82 00 18 */	beq lbl_80D67850
/* 80D6783C  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 80D67840  38 83 00 AC */	addi r4, r3, 0xac
/* 80D67844  38 A3 00 B0 */	addi r5, r3, 0xb0
/* 80D67848  38 DF 05 E4 */	addi r6, r31, 0x5e4
/* 80D6784C  4B 2E EF 48 */	b set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
lbl_80D67850:
/* 80D67850  38 60 00 01 */	li r3, 1
/* 80D67854  39 61 00 20 */	addi r11, r1, 0x20
/* 80D67858  4B 5F A9 D0 */	b _restgpr_29
/* 80D6785C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D67860  7C 08 03 A6 */	mtlr r0
/* 80D67864  38 21 00 20 */	addi r1, r1, 0x20
/* 80D67868  4E 80 00 20 */	blr 

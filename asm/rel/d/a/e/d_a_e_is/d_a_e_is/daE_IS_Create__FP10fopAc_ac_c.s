lbl_806F736C:
/* 806F736C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F7370  7C 08 02 A6 */	mflr r0
/* 806F7374  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F7378  39 61 00 20 */	addi r11, r1, 0x20
/* 806F737C  4B C6 AE 5D */	bl _savegpr_28
/* 806F7380  7C 7D 1B 78 */	mr r29, r3
/* 806F7384  3C 80 80 6F */	lis r4, cNullVec__6Z2Calc@ha /* 0x806F7C1C@ha */
/* 806F7388  3B C4 7C 1C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x806F7C1C@l */
/* 806F738C  3C 80 80 6F */	lis r4, lit_3648@ha /* 0x806F7B6C@ha */
/* 806F7390  3B E4 7B 6C */	addi r31, r4, lit_3648@l /* 0x806F7B6C@l */
/* 806F7394  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806F7398  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806F739C  40 82 00 1C */	bne lbl_806F73B8
/* 806F73A0  28 1D 00 00 */	cmplwi r29, 0
/* 806F73A4  41 82 00 08 */	beq lbl_806F73AC
/* 806F73A8  48 00 03 0D */	bl __ct__10e_is_classFv
lbl_806F73AC:
/* 806F73AC  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 806F73B0  60 00 00 08 */	ori r0, r0, 8
/* 806F73B4  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_806F73B8:
/* 806F73B8  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 806F73BC  3C 80 80 6F */	lis r4, d_a_e_is__stringBase0@ha /* 0x806F7C14@ha */
/* 806F73C0  38 84 7C 14 */	addi r4, r4, d_a_e_is__stringBase0@l /* 0x806F7C14@l */
/* 806F73C4  4B 93 5A F9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806F73C8  7C 7C 1B 78 */	mr r28, r3
/* 806F73CC  2C 1C 00 04 */	cmpwi r28, 4
/* 806F73D0  40 82 02 C8 */	bne lbl_806F7698
/* 806F73D4  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806F73D8  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 806F73DC  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 806F73E0  28 00 00 FF */	cmplwi r0, 0xff
/* 806F73E4  40 82 00 0C */	bne lbl_806F73F0
/* 806F73E8  38 00 00 00 */	li r0, 0
/* 806F73EC  98 1D 05 B4 */	stb r0, 0x5b4(r29)
lbl_806F73F0:
/* 806F73F0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806F73F4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 806F73F8  90 1D 05 B8 */	stw r0, 0x5b8(r29)
/* 806F73FC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806F7400  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 806F7404  90 1D 05 BC */	stw r0, 0x5bc(r29)
/* 806F7408  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 806F740C  54 00 46 3E */	srwi r0, r0, 0x18
/* 806F7410  90 1D 05 C0 */	stw r0, 0x5c0(r29)
/* 806F7414  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 806F7418  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806F741C  90 1D 05 C4 */	stw r0, 0x5c4(r29)
/* 806F7420  38 00 00 00 */	li r0, 0
/* 806F7424  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 806F7428  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 806F742C  7F A3 EB 78 */	mr r3, r29
/* 806F7430  3C 80 80 6F */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x806F7274@ha */
/* 806F7434  38 84 72 74 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x806F7274@l */
/* 806F7438  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 806F743C  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 806F7440  4B 92 30 71 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806F7444  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806F7448  40 82 00 0C */	bne lbl_806F7454
/* 806F744C  38 60 00 05 */	li r3, 5
/* 806F7450  48 00 02 4C */	b lbl_806F769C
lbl_806F7454:
/* 806F7454  3C 60 80 6F */	lis r3, data_806F7DD0@ha /* 0x806F7DD0@ha */
/* 806F7458  8C 03 7D D0 */	lbzu r0, data_806F7DD0@l(r3)  /* 0x806F7DD0@l */
/* 806F745C  28 00 00 00 */	cmplwi r0, 0
/* 806F7460  40 82 00 20 */	bne lbl_806F7480
/* 806F7464  38 00 00 01 */	li r0, 1
/* 806F7468  98 1D 0C F4 */	stb r0, 0xcf4(r29)
/* 806F746C  98 03 00 00 */	stb r0, 0(r3)
/* 806F7470  38 00 FF FF */	li r0, -1
/* 806F7474  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806F7DE0@ha */
/* 806F7478  38 63 7D E0 */	addi r3, r3, l_HIO@l /* 0x806F7DE0@l */
/* 806F747C  98 03 00 04 */	stb r0, 4(r3)
lbl_806F7480:
/* 806F7480  38 00 00 04 */	li r0, 4
/* 806F7484  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806F7488  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 806F748C  80 63 00 04 */	lwz r3, 4(r3)
/* 806F7490  38 03 00 24 */	addi r0, r3, 0x24
/* 806F7494  90 1D 05 04 */	stw r0, 0x504(r29)
/* 806F7498  7F A3 EB 78 */	mr r3, r29
/* 806F749C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 806F74A0  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806F74A4  FC 60 08 90 */	fmr f3, f1
/* 806F74A8  4B 92 30 81 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 806F74AC  7F A3 EB 78 */	mr r3, r29
/* 806F74B0  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806F74B4  FC 40 08 90 */	fmr f2, f1
/* 806F74B8  FC 60 08 90 */	fmr f3, f1
/* 806F74BC  4B 92 30 7D */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 806F74C0  38 00 00 1E */	li r0, 0x1e
/* 806F74C4  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806F74C8  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 806F74CC  38 7D 08 DC */	addi r3, r29, 0x8dc
/* 806F74D0  38 80 00 FA */	li r4, 0xfa
/* 806F74D4  38 A0 00 00 */	li r5, 0
/* 806F74D8  7F A6 EB 78 */	mr r6, r29
/* 806F74DC  4B 98 C3 85 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806F74E0  38 7D 09 18 */	addi r3, r29, 0x918
/* 806F74E4  38 9E 00 20 */	addi r4, r30, 0x20
/* 806F74E8  4B 98 D5 4D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806F74EC  38 1D 08 DC */	addi r0, r29, 0x8dc
/* 806F74F0  90 1D 09 5C */	stw r0, 0x95c(r29)
/* 806F74F4  38 7D 0B 88 */	addi r3, r29, 0xb88
/* 806F74F8  38 9E 00 60 */	addi r4, r30, 0x60
/* 806F74FC  4B 98 D3 B9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 806F7500  38 1D 08 DC */	addi r0, r29, 0x8dc
/* 806F7504  90 1D 0B CC */	stw r0, 0xbcc(r29)
/* 806F7508  80 1D 0C 24 */	lwz r0, 0xc24(r29)
/* 806F750C  60 00 00 01 */	ori r0, r0, 1
/* 806F7510  90 1D 0C 24 */	stw r0, 0xc24(r29)
/* 806F7514  38 00 00 02 */	li r0, 2
/* 806F7518  98 1D 0C 42 */	stb r0, 0xc42(r29)
/* 806F751C  38 7D 0A 50 */	addi r3, r29, 0xa50
/* 806F7520  38 9E 00 A4 */	addi r4, r30, 0xa4
/* 806F7524  4B 98 D5 11 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806F7528  38 1D 08 DC */	addi r0, r29, 0x8dc
/* 806F752C  90 1D 0A 94 */	stw r0, 0xa94(r29)
/* 806F7530  38 00 00 00 */	li r0, 0
/* 806F7534  90 01 00 08 */	stw r0, 8(r1)
/* 806F7538  38 7D 07 04 */	addi r3, r29, 0x704
/* 806F753C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806F7540  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 806F7544  7F A6 EB 78 */	mr r6, r29
/* 806F7548  38 E0 00 01 */	li r7, 1
/* 806F754C  39 1D 06 C4 */	addi r8, r29, 0x6c4
/* 806F7550  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 806F7554  39 40 00 00 */	li r10, 0
/* 806F7558  4B 97 EC F1 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 806F755C  38 7D 06 C4 */	addi r3, r29, 0x6c4
/* 806F7560  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 806F7564  FC 40 08 90 */	fmr f2, f1
/* 806F7568  4B 97 E9 F1 */	bl SetWall__12dBgS_AcchCirFff
/* 806F756C  38 7D 05 CC */	addi r3, r29, 0x5cc
/* 806F7570  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806F7574  38 BD 05 38 */	addi r5, r29, 0x538
/* 806F7578  38 C0 00 03 */	li r6, 3
/* 806F757C  38 E0 00 01 */	li r7, 1
/* 806F7580  4B BC 9B 15 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 806F7584  38 1D 05 CC */	addi r0, r29, 0x5cc
/* 806F7588  90 1D 0C CC */	stw r0, 0xccc(r29)
/* 806F758C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 806F7590  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806F7594  38 00 00 00 */	li r0, 0
/* 806F7598  B0 1D 06 92 */	sth r0, 0x692(r29)
/* 806F759C  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 806F75A0  28 00 00 01 */	cmplwi r0, 1
/* 806F75A4  40 82 00 EC */	bne lbl_806F7690
/* 806F75A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F75AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F75B0  80 9D 05 B8 */	lwz r4, 0x5b8(r29)
/* 806F75B4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806F75B8  7C 05 07 74 */	extsb r5, r0
/* 806F75BC  4B 93 DD A5 */	bl isSwitch__10dSv_info_cCFii
/* 806F75C0  2C 03 00 00 */	cmpwi r3, 0
/* 806F75C4  41 82 00 CC */	beq lbl_806F7690
/* 806F75C8  38 00 00 05 */	li r0, 5
/* 806F75CC  B0 1D 06 92 */	sth r0, 0x692(r29)
/* 806F75D0  7F A3 EB 78 */	mr r3, r29
/* 806F75D4  38 80 00 0D */	li r4, 0xd
/* 806F75D8  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 806F75DC  38 A0 00 02 */	li r5, 2
/* 806F75E0  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 806F75E4  4B FF E4 B1 */	bl anm_init__FP10e_is_classifUcf
/* 806F75E8  38 00 00 0A */	li r0, 0xa
/* 806F75EC  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 806F75F0  38 00 00 01 */	li r0, 1
/* 806F75F4  98 1D 06 BC */	stb r0, 0x6bc(r29)
/* 806F75F8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 806F75FC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 806F7600  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 806F7604  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 806F7608  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 806F760C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 806F7610  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806F7614  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 806F7618  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806F761C  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 806F7620  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806F7624  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 806F7628  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 806F762C  B0 1D 04 C8 */	sth r0, 0x4c8(r29)
/* 806F7630  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 806F7634  B0 1D 04 CA */	sth r0, 0x4ca(r29)
/* 806F7638  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 806F763C  B0 1D 04 CC */	sth r0, 0x4cc(r29)
/* 806F7640  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806F7644  98 1D 04 CE */	stb r0, 0x4ce(r29)
/* 806F7648  88 1D 04 E3 */	lbz r0, 0x4e3(r29)
/* 806F764C  98 1D 04 CF */	stb r0, 0x4cf(r29)
/* 806F7650  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806F7654  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 806F7658  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 806F765C  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 806F7660  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806F7664  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 806F7668  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 806F766C  B0 1D 04 B4 */	sth r0, 0x4b4(r29)
/* 806F7670  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 806F7674  B0 1D 04 B6 */	sth r0, 0x4b6(r29)
/* 806F7678  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 806F767C  B0 1D 04 B8 */	sth r0, 0x4b8(r29)
/* 806F7680  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806F7684  98 1D 04 BA */	stb r0, 0x4ba(r29)
/* 806F7688  88 1D 04 E3 */	lbz r0, 0x4e3(r29)
/* 806F768C  98 1D 04 BB */	stb r0, 0x4bb(r29)
lbl_806F7690:
/* 806F7690  7F A3 EB 78 */	mr r3, r29
/* 806F7694  4B FF F7 C5 */	bl daE_IS_Execute__FP10e_is_class
lbl_806F7698:
/* 806F7698  7F 83 E3 78 */	mr r3, r28
lbl_806F769C:
/* 806F769C  39 61 00 20 */	addi r11, r1, 0x20
/* 806F76A0  4B C6 AB 85 */	bl _restgpr_28
/* 806F76A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F76A8  7C 08 03 A6 */	mtlr r0
/* 806F76AC  38 21 00 20 */	addi r1, r1, 0x20
/* 806F76B0  4E 80 00 20 */	blr 

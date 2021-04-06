lbl_807F6648:
/* 807F6648  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807F664C  7C 08 02 A6 */	mflr r0
/* 807F6650  90 01 00 54 */	stw r0, 0x54(r1)
/* 807F6654  39 61 00 50 */	addi r11, r1, 0x50
/* 807F6658  4B B6 BB 81 */	bl _savegpr_28
/* 807F665C  7C 7D 1B 78 */	mr r29, r3
/* 807F6660  3C 60 80 7F */	lis r3, lit_3788@ha /* 0x807F7A00@ha */
/* 807F6664  3B C3 7A 00 */	addi r30, r3, lit_3788@l /* 0x807F7A00@l */
/* 807F6668  A8 7D 06 6C */	lha r3, 0x66c(r29)
/* 807F666C  38 03 00 01 */	addi r0, r3, 1
/* 807F6670  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 807F6674  38 60 00 00 */	li r3, 0
/* 807F6678  38 00 00 03 */	li r0, 3
/* 807F667C  7C 09 03 A6 */	mtctr r0
lbl_807F6680:
/* 807F6680  38 A3 06 9C */	addi r5, r3, 0x69c
/* 807F6684  7C 9D 2A AE */	lhax r4, r29, r5
/* 807F6688  2C 04 00 00 */	cmpwi r4, 0
/* 807F668C  41 82 00 0C */	beq lbl_807F6698
/* 807F6690  38 04 FF FF */	addi r0, r4, -1
/* 807F6694  7C 1D 2B 2E */	sthx r0, r29, r5
lbl_807F6698:
/* 807F6698  38 63 00 02 */	addi r3, r3, 2
/* 807F669C  42 00 FF E4 */	bdnz lbl_807F6680
/* 807F66A0  A8 7D 06 A2 */	lha r3, 0x6a2(r29)
/* 807F66A4  2C 03 00 00 */	cmpwi r3, 0
/* 807F66A8  41 82 00 0C */	beq lbl_807F66B4
/* 807F66AC  38 03 FF FF */	addi r0, r3, -1
/* 807F66B0  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
lbl_807F66B4:
/* 807F66B4  7F A3 EB 78 */	mr r3, r29
/* 807F66B8  4B FF F4 A5 */	bl action__FP10e_yd_class
/* 807F66BC  7F A3 EB 78 */	mr r3, r29
/* 807F66C0  4B FF FE 21 */	bl anm_se_set__FP10e_yd_class
/* 807F66C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807F66C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807F66CC  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 807F66D0  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 807F66D4  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 807F66D8  4B B5 02 11 */	bl PSMTXTrans
/* 807F66DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807F66E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807F66E4  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807F66E8  4B 81 5D 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 807F66EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807F66F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807F66F4  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 807F66F8  4B 81 5C A5 */	bl mDoMtx_XrotM__FPA4_fs
/* 807F66FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807F6700  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807F6704  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 807F6708  4B 81 5D C5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 807F670C  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 807F6710  38 80 00 00 */	li r4, 0
/* 807F6714  38 A0 00 08 */	li r5, 8
/* 807F6718  38 C0 04 00 */	li r6, 0x400
/* 807F671C  4B A7 9E ED */	bl cLib_addCalcAngleS2__FPssss
/* 807F6720  3C 60 80 7F */	lis r3, l_HIO@ha /* 0x807F7D78@ha */
/* 807F6724  3B E3 7D 78 */	addi r31, r3, l_HIO@l /* 0x807F7D78@l */
/* 807F6728  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807F672C  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 807F6730  EC 21 00 32 */	fmuls f1, f1, f0
/* 807F6734  FC 40 08 90 */	fmr f2, f1
/* 807F6738  FC 60 08 90 */	fmr f3, f1
/* 807F673C  4B 81 66 FD */	bl scaleM__14mDoMtx_stack_cFfff
/* 807F6740  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F6744  83 83 00 04 */	lwz r28, 4(r3)
/* 807F6748  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807F674C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807F6750  38 9C 00 24 */	addi r4, r28, 0x24
/* 807F6754  4B B4 FD 5D */	bl PSMTXCopy
/* 807F6758  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 807F675C  7C 03 07 74 */	extsb r3, r0
/* 807F6760  4B 83 69 0D */	bl dComIfGp_getReverb__Fi
/* 807F6764  7C 65 1B 78 */	mr r5, r3
/* 807F6768  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F676C  38 80 00 00 */	li r4, 0
/* 807F6770  4B 81 A9 41 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 807F6774  80 7D 06 60 */	lwz r3, 0x660(r29)
/* 807F6778  4B 81 6C B1 */	bl play__14mDoExt_baseAnmFv
/* 807F677C  80 7D 05 B8 */	lwz r3, 0x5b8(r29)
/* 807F6780  4B 81 AA 6D */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 807F6784  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 807F6788  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807F678C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 807F6790  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807F6794  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 807F6798  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807F679C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 807F67A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807F67A4  38 63 00 30 */	addi r3, r3, 0x30
/* 807F67A8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807F67AC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807F67B0  80 84 00 00 */	lwz r4, 0(r4)
/* 807F67B4  4B B4 FC FD */	bl PSMTXCopy
/* 807F67B8  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 807F67BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807F67C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807F67C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807F67C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807F67CC  88 1D 08 55 */	lbz r0, 0x855(r29)
/* 807F67D0  7C 00 07 75 */	extsb. r0, r0
/* 807F67D4  41 82 00 44 */	beq lbl_807F6818
/* 807F67D8  C0 1D 06 EC */	lfs f0, 0x6ec(r29)
/* 807F67DC  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 807F67E0  C0 1D 06 F0 */	lfs f0, 0x6f0(r29)
/* 807F67E4  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 807F67E8  C0 1D 06 F4 */	lfs f0, 0x6f4(r29)
/* 807F67EC  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 807F67F0  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 807F67F4  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 807F67F8  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 807F67FC  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 807F6800  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 807F6804  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 807F6808  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDBF@ha */
/* 807F680C  38 03 FD BF */	addi r0, r3, 0xFDBF /* 0xD8FBFDBF@l */
/* 807F6810  90 1D 08 C8 */	stw r0, 0x8c8(r29)
/* 807F6814  48 00 00 44 */	b lbl_807F6858
lbl_807F6818:
/* 807F6818  38 61 00 2C */	addi r3, r1, 0x2c
/* 807F681C  38 9D 05 38 */	addi r4, r29, 0x538
/* 807F6820  4B A7 A6 CD */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F6824  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 807F6828  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 807F682C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 807F6830  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 807F6834  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 807F6838  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 807F683C  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 807F6840  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 807F6844  EC 01 00 2A */	fadds f0, f1, f0
/* 807F6848  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 807F684C  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807F6850  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 807F6854  90 1D 08 C8 */	stw r0, 0x8c8(r29)
lbl_807F6858:
/* 807F6858  38 61 00 2C */	addi r3, r1, 0x2c
/* 807F685C  38 81 00 20 */	addi r4, r1, 0x20
/* 807F6860  4B A7 A6 8D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807F6864  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807F6868  2C 00 00 00 */	cmpwi r0, 0
/* 807F686C  41 82 00 14 */	beq lbl_807F6880
/* 807F6870  38 61 00 20 */	addi r3, r1, 0x20
/* 807F6874  38 81 00 14 */	addi r4, r1, 0x14
/* 807F6878  7C 65 1B 78 */	mr r5, r3
/* 807F687C  4B B5 08 15 */	bl PSVECAdd
lbl_807F6880:
/* 807F6880  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 807F6884  38 81 00 20 */	addi r4, r1, 0x20
/* 807F6888  4B A7 8D C1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807F688C  38 7D 09 C4 */	addi r3, r29, 0x9c4
/* 807F6890  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 807F6894  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807F6898  EC 21 00 32 */	fmuls f1, f1, f0
/* 807F689C  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 807F68A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 807F68A4  4B A7 8E 65 */	bl SetR__8cM3dGSphFf
/* 807F68A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F68AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F68B0  3B 83 23 3C */	addi r28, r3, 0x233c
/* 807F68B4  7F 83 E3 78 */	mr r3, r28
/* 807F68B8  38 9D 08 A0 */	addi r4, r29, 0x8a0
/* 807F68BC  4B A6 E2 ED */	bl Set__4cCcSFP8cCcD_Obj
/* 807F68C0  88 1D 0B 10 */	lbz r0, 0xb10(r29)
/* 807F68C4  7C 00 07 75 */	extsb. r0, r0
/* 807F68C8  41 82 00 1C */	beq lbl_807F68E4
/* 807F68CC  38 7D 09 D8 */	addi r3, r29, 0x9d8
/* 807F68D0  38 81 00 20 */	addi r4, r1, 0x20
/* 807F68D4  4B 88 E1 F1 */	bl MoveCAt__8dCcD_SphFR4cXyz
/* 807F68D8  38 00 00 00 */	li r0, 0
/* 807F68DC  98 1D 0B 10 */	stb r0, 0xb10(r29)
/* 807F68E0  48 00 00 20 */	b lbl_807F6900
lbl_807F68E4:
/* 807F68E4  38 61 00 08 */	addi r3, r1, 8
/* 807F68E8  38 81 00 20 */	addi r4, r1, 0x20
/* 807F68EC  38 A1 00 14 */	addi r5, r1, 0x14
/* 807F68F0  4B A7 01 F5 */	bl __pl__4cXyzCFRC3Vec
/* 807F68F4  38 7D 0A FC */	addi r3, r29, 0xafc
/* 807F68F8  38 81 00 08 */	addi r4, r1, 8
/* 807F68FC  4B A7 8D 4D */	bl SetC__8cM3dGSphFRC4cXyz
lbl_807F6900:
/* 807F6900  38 7D 0A FC */	addi r3, r29, 0xafc
/* 807F6904  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 807F6908  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807F690C  EC 21 00 32 */	fmuls f1, f1, f0
/* 807F6910  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 807F6914  EC 21 00 32 */	fmuls f1, f1, f0
/* 807F6918  4B A7 8D F1 */	bl SetR__8cM3dGSphFf
/* 807F691C  7F 83 E3 78 */	mr r3, r28
/* 807F6920  38 9D 09 D8 */	addi r4, r29, 0x9d8
/* 807F6924  4B A6 E2 85 */	bl Set__4cCcSFP8cCcD_Obj
/* 807F6928  7F A3 EB 78 */	mr r3, r29
/* 807F692C  4B FF F8 11 */	bl eff_set__FP10e_yd_class
/* 807F6930  38 60 00 01 */	li r3, 1
/* 807F6934  39 61 00 50 */	addi r11, r1, 0x50
/* 807F6938  4B B6 B8 ED */	bl _restgpr_28
/* 807F693C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807F6940  7C 08 03 A6 */	mtlr r0
/* 807F6944  38 21 00 50 */	addi r1, r1, 0x50
/* 807F6948  4E 80 00 20 */	blr 

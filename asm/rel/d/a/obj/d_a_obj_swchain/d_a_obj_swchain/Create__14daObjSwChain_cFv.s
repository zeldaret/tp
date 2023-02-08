lbl_80CF8768:
/* 80CF8768  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80CF876C  7C 08 02 A6 */	mflr r0
/* 80CF8770  90 01 00 64 */	stw r0, 0x64(r1)
/* 80CF8774  39 61 00 60 */	addi r11, r1, 0x60
/* 80CF8778  4B 66 9A 65 */	bl _savegpr_29
/* 80CF877C  7C 7F 1B 78 */	mr r31, r3
/* 80CF8780  3C 60 80 D0 */	lis r3, lit_3734@ha /* 0x80CFB6EC@ha */
/* 80CF8784  3B C3 B6 EC */	addi r30, r3, lit_3734@l /* 0x80CFB6EC@l */
/* 80CF8788  38 7F 05 98 */	addi r3, r31, 0x598
/* 80CF878C  38 80 00 FF */	li r4, 0xff
/* 80CF8790  38 A0 00 FF */	li r5, 0xff
/* 80CF8794  7F E6 FB 78 */	mr r6, r31
/* 80CF8798  4B 38 B0 C9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CF879C  38 7F 05 D4 */	addi r3, r31, 0x5d4
/* 80CF87A0  3C 80 80 D0 */	lis r4, l_sph_src@ha /* 0x80CFB79C@ha */
/* 80CF87A4  38 84 B7 9C */	addi r4, r4, l_sph_src@l /* 0x80CFB79C@l */
/* 80CF87A8  4B 38 C2 8D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CF87AC  38 1F 05 98 */	addi r0, r31, 0x598
/* 80CF87B0  90 1F 06 18 */	stw r0, 0x618(r31)
/* 80CF87B4  38 7F 07 0C */	addi r3, r31, 0x70c
/* 80CF87B8  3C 80 80 D0 */	lis r4, l_sph_srcCo@ha /* 0x80CFB7DC@ha */
/* 80CF87BC  38 84 B7 DC */	addi r4, r4, l_sph_srcCo@l /* 0x80CFB7DC@l */
/* 80CF87C0  4B 38 C2 75 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80CF87C4  38 1F 05 98 */	addi r0, r31, 0x598
/* 80CF87C8  90 1F 07 50 */	stw r0, 0x750(r31)
/* 80CF87CC  38 7F 0A 1C */	addi r3, r31, 0xa1c
/* 80CF87D0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CF87D4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80CF87D8  4B 37 D7 81 */	bl SetWall__12dBgS_AcchCirFff
/* 80CF87DC  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80CF87E0  90 01 00 08 */	stw r0, 8(r1)
/* 80CF87E4  38 7F 08 44 */	addi r3, r31, 0x844
/* 80CF87E8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CF87EC  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80CF87F0  7F E6 FB 78 */	mr r6, r31
/* 80CF87F4  38 E0 00 01 */	li r7, 1
/* 80CF87F8  39 1F 0A 1C */	addi r8, r31, 0xa1c
/* 80CF87FC  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80CF8800  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 80CF8804  4B 37 DA 45 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80CF8808  7F E3 FB 78 */	mr r3, r31
/* 80CF880C  C0 3F 04 A8 */	lfs f1, 0x4a8(r31)
/* 80CF8810  C0 5F 04 AC */	lfs f2, 0x4ac(r31)
/* 80CF8814  C0 7F 04 B0 */	lfs f3, 0x4b0(r31)
/* 80CF8818  C0 BE 00 08 */	lfs f5, 8(r30)
/* 80CF881C  88 9F 0A 65 */	lbz r4, 0xa65(r31)
/* 80CF8820  38 04 00 01 */	addi r0, r4, 1
/* 80CF8824  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 80CF8828  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CF882C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CF8830  3C 00 43 30 */	lis r0, 0x4330
/* 80CF8834  90 01 00 40 */	stw r0, 0x40(r1)
/* 80CF8838  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CF883C  EC 00 20 28 */	fsubs f0, f0, f4
/* 80CF8840  EC 85 00 32 */	fmuls f4, f5, f0
/* 80CF8844  4B 32 1D 21 */	bl fopAcM_setCullSizeSphere__FP10fopAc_ac_cffff
/* 80CF8848  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80CF884C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CF8850  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CF8854  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80CF8858  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CF885C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CF8860  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CF8864  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CF8868  4B 31 3B 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CF886C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CF8870  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CF8874  38 81 00 34 */	addi r4, r1, 0x34
/* 80CF8878  38 A1 00 28 */	addi r5, r1, 0x28
/* 80CF887C  4B 64 E4 F1 */	bl PSMTXMultVec
/* 80CF8880  7F E3 FB 78 */	mr r3, r31
/* 80CF8884  80 9F 0A 74 */	lwz r4, 0xa74(r31)
/* 80CF8888  38 84 00 34 */	addi r4, r4, 0x34
/* 80CF888C  48 00 0C 59 */	bl getChainBasePos__14daObjSwChain_cFP4cXyz
/* 80CF8890  80 7F 0A 74 */	lwz r3, 0xa74(r31)
/* 80CF8894  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80CF8898  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CF889C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80CF88A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CF88A4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80CF88A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CF88AC  7C 7E 1B 78 */	mr r30, r3
/* 80CF88B0  3B A0 00 00 */	li r29, 0
/* 80CF88B4  48 00 00 90 */	b lbl_80CF8944
lbl_80CF88B8:
/* 80CF88B8  7F E3 FB 78 */	mr r3, r31
/* 80CF88BC  48 00 2B 95 */	bl getTopChainNo__14daObjSwChain_cFv
/* 80CF88C0  7C 1D 18 00 */	cmpw r29, r3
/* 80CF88C4  40 80 00 38 */	bge lbl_80CF88FC
/* 80CF88C8  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80CF88CC  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80CF88D0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80CF88D4  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80CF88D8  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80CF88DC  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 80CF88E0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80CF88E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CF88E8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80CF88EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CF88F0  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80CF88F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CF88F8  48 00 00 44 */	b lbl_80CF893C
lbl_80CF88FC:
/* 80CF88FC  38 61 00 10 */	addi r3, r1, 0x10
/* 80CF8900  38 81 00 1C */	addi r4, r1, 0x1c
/* 80CF8904  38 A1 00 28 */	addi r5, r1, 0x28
/* 80CF8908  4B 56 E1 DD */	bl __pl__4cXyzCFRC3Vec
/* 80CF890C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CF8910  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80CF8914  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CF8918  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80CF891C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CF8920  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 80CF8924  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 80CF8928  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CF892C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80CF8930  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CF8934  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80CF8938  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80CF893C:
/* 80CF893C  3B DE 00 50 */	addi r30, r30, 0x50
/* 80CF8940  3B BD 00 01 */	addi r29, r29, 1
lbl_80CF8944:
/* 80CF8944  88 7F 0A 65 */	lbz r3, 0xa65(r31)
/* 80CF8948  38 03 00 01 */	addi r0, r3, 1
/* 80CF894C  7C 1D 00 00 */	cmpw r29, r0
/* 80CF8950  41 80 FF 68 */	blt lbl_80CF88B8
/* 80CF8954  7F E3 FB 78 */	mr r3, r31
/* 80CF8958  48 00 17 05 */	bl initChainMtx__14daObjSwChain_cFv
/* 80CF895C  38 7F 05 78 */	addi r3, r31, 0x578
/* 80CF8960  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CF8964  38 A0 00 00 */	li r5, 0
/* 80CF8968  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80CF896C  4B 3A 3C E5 */	bl create__6dMdl_cFP12J3DModelDataUsP12dKy_tevstr_c
/* 80CF8970  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CF8974  7C 00 07 74 */	extsb r0, r0
/* 80CF8978  2C 00 00 04 */	cmpwi r0, 4
/* 80CF897C  40 82 00 14 */	bne lbl_80CF8990
/* 80CF8980  38 00 00 14 */	li r0, 0x14
/* 80CF8984  98 1F 0A 67 */	stb r0, 0xa67(r31)
/* 80CF8988  98 1F 0A 69 */	stb r0, 0xa69(r31)
/* 80CF898C  48 00 00 18 */	b lbl_80CF89A4
lbl_80CF8990:
/* 80CF8990  2C 00 00 06 */	cmpwi r0, 6
/* 80CF8994  40 82 00 10 */	bne lbl_80CF89A4
/* 80CF8998  38 00 00 14 */	li r0, 0x14
/* 80CF899C  98 1F 0A 67 */	stb r0, 0xa67(r31)
/* 80CF89A0  98 1F 0A 69 */	stb r0, 0xa69(r31)
lbl_80CF89A4:
/* 80CF89A4  38 60 00 01 */	li r3, 1
/* 80CF89A8  39 61 00 60 */	addi r11, r1, 0x60
/* 80CF89AC  4B 66 98 7D */	bl _restgpr_29
/* 80CF89B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80CF89B4  7C 08 03 A6 */	mtlr r0
/* 80CF89B8  38 21 00 60 */	addi r1, r1, 0x60
/* 80CF89BC  4E 80 00 20 */	blr 

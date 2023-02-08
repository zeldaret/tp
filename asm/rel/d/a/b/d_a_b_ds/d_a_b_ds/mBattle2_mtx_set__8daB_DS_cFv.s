lbl_805DA584:
/* 805DA584  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 805DA588  7C 08 02 A6 */	mflr r0
/* 805DA58C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 805DA590  39 61 00 E0 */	addi r11, r1, 0xe0
/* 805DA594  4B D8 7C 49 */	bl _savegpr_29
/* 805DA598  7C 7F 1B 78 */	mr r31, r3
/* 805DA59C  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805DA5A0  3B C3 CA 54 */	addi r30, r3, lit_3932@l /* 0x805DCA54@l */
/* 805DA5A4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805DA5A8  83 A3 00 04 */	lwz r29, 4(r3)
/* 805DA5AC  88 1F 08 50 */	lbz r0, 0x850(r31)
/* 805DA5B0  28 00 00 00 */	cmplwi r0, 0
/* 805DA5B4  40 82 00 F8 */	bne lbl_805DA6AC
/* 805DA5B8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805DA5BC  4B A3 27 A9 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805DA5C0  C0 3F 07 90 */	lfs f1, 0x790(r31)
/* 805DA5C4  C0 5F 07 94 */	lfs f2, 0x794(r31)
/* 805DA5C8  C0 7F 07 98 */	lfs f3, 0x798(r31)
/* 805DA5CC  4B A3 27 D1 */	bl transM__14mDoMtx_stack_cFfff
/* 805DA5D0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805DA5D4  4B A3 29 71 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805DA5D8  38 7F 07 AE */	addi r3, r31, 0x7ae
/* 805DA5DC  4B A3 29 69 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805DA5E0  3C 60 80 5E */	lis r3, l_HIO@ha /* 0x805DDABC@ha */
/* 805DA5E4  38 63 DA BC */	addi r3, r3, l_HIO@l /* 0x805DDABC@l */
/* 805DA5E8  C0 23 00 08 */	lfs f1, 8(r3)
/* 805DA5EC  FC 40 08 90 */	fmr f2, f1
/* 805DA5F0  FC 60 08 90 */	fmr f3, f1
/* 805DA5F4  4B A3 28 45 */	bl scaleM__14mDoMtx_stack_cFfff
/* 805DA5F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA5FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA600  38 9D 00 24 */	addi r4, r29, 0x24
/* 805DA604  4B D6 BE AD */	bl PSMTXCopy
/* 805DA608  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805DA60C  4B A3 6B E1 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 805DA610  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805DA614  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DA618  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA61C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA620  4B D6 BE 91 */	bl PSMTXCopy
/* 805DA624  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA628  38 83 D4 70 */	addi r4, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA62C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 805DA630  D0 1F 07 54 */	stfs f0, 0x754(r31)
/* 805DA634  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805DA638  D0 1F 07 58 */	stfs f0, 0x758(r31)
/* 805DA63C  C0 04 00 2C */	lfs f0, 0x2c(r4)
/* 805DA640  D0 1F 07 5C */	stfs f0, 0x75c(r31)
/* 805DA644  88 1F 08 5F */	lbz r0, 0x85f(r31)
/* 805DA648  28 00 00 00 */	cmplwi r0, 0
/* 805DA64C  41 82 00 24 */	beq lbl_805DA670
/* 805DA650  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805DA654  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DA658  4B D6 BE 59 */	bl PSMTXCopy
/* 805DA65C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA660  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA664  80 9F 05 C4 */	lwz r4, 0x5c4(r31)
/* 805DA668  38 84 00 24 */	addi r4, r4, 0x24
/* 805DA66C  4B D6 BE 45 */	bl PSMTXCopy
lbl_805DA670:
/* 805DA670  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805DA674  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DA678  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA67C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA680  4B D6 BE 31 */	bl PSMTXCopy
/* 805DA684  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805DA688  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805DA68C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805DA690  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805DA694  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805DA698  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA69C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA6A0  38 81 00 4C */	addi r4, r1, 0x4c
/* 805DA6A4  38 BF 07 00 */	addi r5, r31, 0x700
/* 805DA6A8  4B D6 C6 C5 */	bl PSMTXMultVec
lbl_805DA6AC:
/* 805DA6AC  88 1F 08 50 */	lbz r0, 0x850(r31)
/* 805DA6B0  28 00 00 00 */	cmplwi r0, 0
/* 805DA6B4  40 82 00 88 */	bne lbl_805DA73C
/* 805DA6B8  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 805DA6BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DA6C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA6C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA6C8  4B D6 BD E9 */	bl PSMTXCopy
/* 805DA6CC  C0 3E 07 84 */	lfs f1, 0x784(r30)
/* 805DA6D0  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 805DA6D4  C0 5E 07 88 */	lfs f2, 0x788(r30)
/* 805DA6D8  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 805DA6DC  C0 7E 00 04 */	lfs f3, 4(r30)
/* 805DA6E0  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 805DA6E4  4B A3 26 B9 */	bl transM__14mDoMtx_stack_cFfff
/* 805DA6E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA6EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA6F0  38 80 40 00 */	li r4, 0x4000
/* 805DA6F4  4B A3 1D 41 */	bl mDoMtx_YrotM__FPA4_fs
/* 805DA6F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA6FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA700  38 80 1B 58 */	li r4, 0x1b58
/* 805DA704  4B A3 1C 99 */	bl mDoMtx_XrotM__FPA4_fs
/* 805DA708  C0 3F 06 B8 */	lfs f1, 0x6b8(r31)
/* 805DA70C  C0 5F 06 BC */	lfs f2, 0x6bc(r31)
/* 805DA710  C0 7F 06 C0 */	lfs f3, 0x6c0(r31)
/* 805DA714  4B A3 27 25 */	bl scaleM__14mDoMtx_stack_cFfff
/* 805DA718  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA71C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA720  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805DA724  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 805DA728  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805DA72C  D0 1F 06 EC */	stfs f0, 0x6ec(r31)
/* 805DA730  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805DA734  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 805DA738  48 00 00 24 */	b lbl_805DA75C
lbl_805DA73C:
/* 805DA73C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805DA740  4B A3 26 25 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 805DA744  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805DA748  4B A3 27 FD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805DA74C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805DA750  C0 5E 01 78 */	lfs f2, 0x178(r30)
/* 805DA754  FC 60 08 90 */	fmr f3, f1
/* 805DA758  4B A3 26 45 */	bl transM__14mDoMtx_stack_cFfff
lbl_805DA75C:
/* 805DA75C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805DA760  80 83 00 04 */	lwz r4, 4(r3)
/* 805DA764  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA768  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA76C  38 84 00 24 */	addi r4, r4, 0x24
/* 805DA770  4B D6 BD 41 */	bl PSMTXCopy
/* 805DA774  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805DA778  4B A3 6A 75 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 805DA77C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805DA780  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805DA784  C0 1E 02 BC */	lfs f0, 0x2bc(r30)
/* 805DA788  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805DA78C  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 805DA790  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805DA794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805DA798  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805DA79C  38 81 00 4C */	addi r4, r1, 0x4c
/* 805DA7A0  38 BF 05 38 */	addi r5, r31, 0x538
/* 805DA7A4  4B D6 C5 C9 */	bl PSMTXMultVec
/* 805DA7A8  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805DA7AC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805DA7B0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805DA7B4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805DA7B8  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805DA7BC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 805DA7C0  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 805DA7C4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805DA7C8  EC 01 00 2A */	fadds f0, f1, f0
/* 805DA7CC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805DA7D0  38 61 00 58 */	addi r3, r1, 0x58
/* 805DA7D4  4B A9 D4 95 */	bl __ct__11dBgS_LinChkFv
/* 805DA7D8  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805DA7DC  B0 01 00 20 */	sth r0, 0x20(r1)
/* 805DA7E0  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 805DA7E4  B0 81 00 22 */	sth r4, 0x22(r1)
/* 805DA7E8  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 805DA7EC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 805DA7F0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805DA7F4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805DA7F8  80 63 00 00 */	lwz r3, 0(r3)
/* 805DA7FC  4B A3 1B E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 805DA800  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805DA804  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805DA808  80 63 00 00 */	lwz r3, 0(r3)
/* 805DA80C  A8 81 00 20 */	lha r4, 0x20(r1)
/* 805DA810  4B A3 1B 8D */	bl mDoMtx_XrotM__FPA4_fs
/* 805DA814  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805DA818  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805DA81C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805DA820  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805DA824  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805DA828  38 61 00 40 */	addi r3, r1, 0x40
/* 805DA82C  38 81 00 34 */	addi r4, r1, 0x34
/* 805DA830  4B C9 66 BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 805DA834  38 61 00 28 */	addi r3, r1, 0x28
/* 805DA838  38 9F 07 00 */	addi r4, r31, 0x700
/* 805DA83C  38 A1 00 34 */	addi r5, r1, 0x34
/* 805DA840  4B C8 C2 A5 */	bl __pl__4cXyzCFRC3Vec
/* 805DA844  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 805DA848  D0 1F 06 D0 */	stfs f0, 0x6d0(r31)
/* 805DA84C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805DA850  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 805DA854  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805DA858  D0 1F 06 D8 */	stfs f0, 0x6d8(r31)
/* 805DA85C  38 61 00 58 */	addi r3, r1, 0x58
/* 805DA860  38 9F 07 00 */	addi r4, r31, 0x700
/* 805DA864  38 BF 06 D0 */	addi r5, r31, 0x6d0
/* 805DA868  7F E6 FB 78 */	mr r6, r31
/* 805DA86C  4B A9 D4 F9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805DA870  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DA874  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DA878  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805DA87C  38 81 00 58 */	addi r4, r1, 0x58
/* 805DA880  4B A9 9B 35 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 805DA884  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805DA888  41 82 00 1C */	beq lbl_805DA8A4
/* 805DA88C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805DA890  D0 1F 06 D0 */	stfs f0, 0x6d0(r31)
/* 805DA894  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 805DA898  D0 1F 06 D4 */	stfs f0, 0x6d4(r31)
/* 805DA89C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 805DA8A0  D0 1F 06 D8 */	stfs f0, 0x6d8(r31)
lbl_805DA8A4:
/* 805DA8A4  38 61 00 58 */	addi r3, r1, 0x58
/* 805DA8A8  38 80 FF FF */	li r4, -1
/* 805DA8AC  4B A9 D4 31 */	bl __dt__11dBgS_LinChkFv
/* 805DA8B0  88 1F 08 5A */	lbz r0, 0x85a(r31)
/* 805DA8B4  28 00 00 00 */	cmplwi r0, 0
/* 805DA8B8  41 82 00 10 */	beq lbl_805DA8C8
/* 805DA8BC  7F E3 FB 78 */	mr r3, r31
/* 805DA8C0  38 80 00 04 */	li r4, 4
/* 805DA8C4  4B FF 94 51 */	bl mBattle2BreathFireSet__8daB_DS_cFUl
lbl_805DA8C8:
/* 805DA8C8  80 1F 06 80 */	lwz r0, 0x680(r31)
/* 805DA8CC  2C 00 00 02 */	cmpwi r0, 2
/* 805DA8D0  40 82 00 BC */	bne lbl_805DA98C
/* 805DA8D4  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805DA8D8  2C 00 00 03 */	cmpwi r0, 3
/* 805DA8DC  41 80 00 B0 */	blt lbl_805DA98C
/* 805DA8E0  2C 00 00 04 */	cmpwi r0, 4
/* 805DA8E4  41 81 00 A8 */	bgt lbl_805DA98C
/* 805DA8E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805DA8EC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805DA8F0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805DA8F4  38 00 00 FF */	li r0, 0xff
/* 805DA8F8  90 01 00 08 */	stw r0, 8(r1)
/* 805DA8FC  38 80 00 00 */	li r4, 0
/* 805DA900  90 81 00 0C */	stw r4, 0xc(r1)
/* 805DA904  38 00 FF FF */	li r0, -1
/* 805DA908  90 01 00 10 */	stw r0, 0x10(r1)
/* 805DA90C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805DA910  90 81 00 18 */	stw r4, 0x18(r1)
/* 805DA914  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805DA918  80 9F 2E 18 */	lwz r4, 0x2e18(r31)
/* 805DA91C  38 A0 00 00 */	li r5, 0
/* 805DA920  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008BFA@ha */
/* 805DA924  38 C6 8B FA */	addi r6, r6, 0x8BFA /* 0x00008BFA@l */
/* 805DA928  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 805DA92C  39 00 00 00 */	li r8, 0
/* 805DA930  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 805DA934  39 40 00 00 */	li r10, 0
/* 805DA938  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805DA93C  4B A7 2B 91 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805DA940  90 7F 2E 18 */	stw r3, 0x2e18(r31)
/* 805DA944  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805DA948  38 63 02 10 */	addi r3, r3, 0x210
/* 805DA94C  80 9F 2E 18 */	lwz r4, 0x2e18(r31)
/* 805DA950  4B A7 0F C9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805DA954  7C 7D 1B 79 */	or. r29, r3, r3
/* 805DA958  41 82 00 34 */	beq lbl_805DA98C
/* 805DA95C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805DA960  80 63 00 04 */	lwz r3, 4(r3)
/* 805DA964  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805DA968  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805DA96C  38 9D 00 68 */	addi r4, r29, 0x68
/* 805DA970  38 BD 00 98 */	addi r5, r29, 0x98
/* 805DA974  38 DD 00 A4 */	addi r6, r29, 0xa4
/* 805DA978  4B CA 5E 91 */	bl func_80280808
/* 805DA97C  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 805DA980  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 805DA984  D0 1D 00 B0 */	stfs f0, 0xb0(r29)
/* 805DA988  D0 3D 00 B4 */	stfs f1, 0xb4(r29)
lbl_805DA98C:
/* 805DA98C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 805DA990  4B D8 78 99 */	bl _restgpr_29
/* 805DA994  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 805DA998  7C 08 03 A6 */	mtlr r0
/* 805DA99C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 805DA9A0  4E 80 00 20 */	blr 

lbl_805A07C8:
/* 805A07C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A07CC  7C 08 02 A6 */	mflr r0
/* 805A07D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A07D4  39 61 00 30 */	addi r11, r1, 0x30
/* 805A07D8  4B DC 1A 01 */	bl _savegpr_28
/* 805A07DC  7C 7E 1B 78 */	mr r30, r3
/* 805A07E0  3C 60 80 5A */	lis r3, lit_3769@ha /* 0x805A1158@ha */
/* 805A07E4  3B E3 11 58 */	addi r31, r3, lit_3769@l /* 0x805A1158@l */
/* 805A07E8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805A07EC  D0 01 00 08 */	stfs f0, 8(r1)
/* 805A07F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805A07F4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805A07F8  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 805A07FC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A0800  FC 40 08 90 */	fmr f2, f1
/* 805A0804  C0 7F 00 84 */	lfs f3, 0x84(r31)
/* 805A0808  4B CC F2 35 */	bl cLib_addCalc2__FPffff
/* 805A080C  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 805A0810  38 03 00 01 */	addi r0, r3, 1
/* 805A0814  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 805A0818  38 60 00 00 */	li r3, 0
/* 805A081C  38 00 00 04 */	li r0, 4
/* 805A0820  7C 09 03 A6 */	mtctr r0
lbl_805A0824:
/* 805A0824  38 A3 06 00 */	addi r5, r3, 0x600
/* 805A0828  7C 9E 2A AE */	lhax r4, r30, r5
/* 805A082C  2C 04 00 00 */	cmpwi r4, 0
/* 805A0830  41 82 00 0C */	beq lbl_805A083C
/* 805A0834  38 04 FF FF */	addi r0, r4, -1
/* 805A0838  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_805A083C:
/* 805A083C  38 63 00 02 */	addi r3, r3, 2
/* 805A0840  42 00 FF E4 */	bdnz lbl_805A0824
/* 805A0844  A8 7E 06 08 */	lha r3, 0x608(r30)
/* 805A0848  2C 03 00 00 */	cmpwi r3, 0
/* 805A084C  41 82 00 0C */	beq lbl_805A0858
/* 805A0850  38 03 FF FF */	addi r0, r3, -1
/* 805A0854  B0 1E 06 08 */	sth r0, 0x608(r30)
lbl_805A0858:
/* 805A0858  A8 7E 06 0A */	lha r3, 0x60a(r30)
/* 805A085C  2C 03 00 00 */	cmpwi r3, 0
/* 805A0860  41 82 00 0C */	beq lbl_805A086C
/* 805A0864  38 03 FF FF */	addi r0, r3, -1
/* 805A0868  B0 1E 06 0A */	sth r0, 0x60a(r30)
lbl_805A086C:
/* 805A086C  7F C3 F3 78 */	mr r3, r30
/* 805A0870  4B FF FB 0D */	bl action__FP8sq_class
/* 805A0874  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A0878  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A087C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 805A0880  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 805A0884  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 805A0888  4B DA 60 61 */	bl PSMTXTrans
/* 805A088C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A0890  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A0894  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 805A0898  4B A6 BB 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 805A089C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A08A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A08A4  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 805A08A8  4B A6 BA F5 */	bl mDoMtx_XrotM__FPA4_fs
/* 805A08AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A08B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A08B4  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 805A08B8  4B A6 BC 15 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805A08BC  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 805A08C0  3C 60 80 5A */	lis r3, l_HIO@ha /* 0x805A1340@ha */
/* 805A08C4  3B A3 13 40 */	addi r29, r3, l_HIO@l /* 0x805A1340@l */
/* 805A08C8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805A08CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 805A08D0  FC 40 08 90 */	fmr f2, f1
/* 805A08D4  FC 60 08 90 */	fmr f3, f1
/* 805A08D8  4B A6 C5 61 */	bl scaleM__14mDoMtx_stack_cFfff
/* 805A08DC  80 7E 05 EC */	lwz r3, 0x5ec(r30)
/* 805A08E0  83 83 00 04 */	lwz r28, 4(r3)
/* 805A08E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805A08E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805A08EC  38 9C 00 24 */	addi r4, r28, 0x24
/* 805A08F0  4B DA 5B C1 */	bl PSMTXCopy
/* 805A08F4  80 7E 05 EC */	lwz r3, 0x5ec(r30)
/* 805A08F8  38 9E 05 38 */	addi r4, r30, 0x538
/* 805A08FC  38 A0 00 00 */	li r5, 0
/* 805A0900  38 C0 00 00 */	li r6, 0
/* 805A0904  4B A6 FC C5 */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 805A0908  88 1E 05 F4 */	lbz r0, 0x5f4(r30)
/* 805A090C  7C 00 07 74 */	extsb r0, r0
/* 805A0910  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 805A0914  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805A0918  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A091C  3C 00 43 30 */	lis r0, 0x4330
/* 805A0920  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A0924  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805A0928  EC 00 08 28 */	fsubs f0, f0, f1
/* 805A092C  80 7E 05 F0 */	lwz r3, 0x5f0(r30)
/* 805A0930  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805A0934  80 7E 05 EC */	lwz r3, 0x5ec(r30)
/* 805A0938  4B A6 FD 75 */	bl modelCalc__14mDoExt_McaMorfFv
/* 805A093C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 805A0940  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805A0944  38 63 00 60 */	addi r3, r3, 0x60
/* 805A0948  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805A094C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805A0950  80 84 00 00 */	lwz r4, 0(r4)
/* 805A0954  4B DA 5B 5D */	bl PSMTXCopy
/* 805A0958  38 61 00 08 */	addi r3, r1, 8
/* 805A095C  38 9E 05 38 */	addi r4, r30, 0x538
/* 805A0960  4B CD 05 8D */	bl MtxPosition__FP4cXyzP4cXyz
/* 805A0964  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 805A0968  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 805A096C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 805A0970  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 805A0974  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 805A0978  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 805A097C  C0 5E 05 54 */	lfs f2, 0x554(r30)
/* 805A0980  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805A0984  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805A0988  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A098C  EC 02 00 2A */	fadds f0, f2, f0
/* 805A0990  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 805A0994  38 7E 09 E8 */	addi r3, r30, 0x9e8
/* 805A0998  38 9E 05 38 */	addi r4, r30, 0x538
/* 805A099C  4B CC EC AD */	bl SetC__8cM3dGSphFRC4cXyz
/* 805A09A0  38 7E 09 E8 */	addi r3, r30, 0x9e8
/* 805A09A4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805A09A8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 805A09AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 805A09B0  4B CC ED 59 */	bl SetR__8cM3dGSphFf
/* 805A09B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A09B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A09BC  38 63 23 3C */	addi r3, r3, 0x233c
/* 805A09C0  38 9E 08 C4 */	addi r4, r30, 0x8c4
/* 805A09C4  4B CC 41 E5 */	bl Set__4cCcSFP8cCcD_Obj
/* 805A09C8  7F C3 F3 78 */	mr r3, r30
/* 805A09CC  4B FF FC D9 */	bl message__FP8sq_class
/* 805A09D0  38 60 00 01 */	li r3, 1
/* 805A09D4  39 61 00 30 */	addi r11, r1, 0x30
/* 805A09D8  4B DC 18 4D */	bl _restgpr_28
/* 805A09DC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A09E0  7C 08 03 A6 */	mtlr r0
/* 805A09E4  38 21 00 30 */	addi r1, r1, 0x30
/* 805A09E8  4E 80 00 20 */	blr 

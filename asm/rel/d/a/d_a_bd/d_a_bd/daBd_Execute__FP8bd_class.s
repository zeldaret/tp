lbl_804D91F8:
/* 804D91F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D91FC  7C 08 02 A6 */	mflr r0
/* 804D9200  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D9204  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804D9208  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804D920C  7C 7E 1B 78 */	mr r30, r3
/* 804D9210  3C 60 80 4E */	lis r3, lit_3942@ha /* 0x804D9E64@ha */
/* 804D9214  3B E3 9E 64 */	addi r31, r3, lit_3942@l /* 0x804D9E64@l */
/* 804D9218  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 804D921C  28 00 00 01 */	cmplwi r0, 1
/* 804D9220  41 80 00 F4 */	blt lbl_804D9314
/* 804D9224  A8 7E 06 42 */	lha r3, 0x642(r30)
/* 804D9228  2C 03 00 00 */	cmpwi r3, 0
/* 804D922C  41 82 00 0C */	beq lbl_804D9238
/* 804D9230  38 03 FF FF */	addi r0, r3, -1
/* 804D9234  B0 1E 06 42 */	sth r0, 0x642(r30)
lbl_804D9238:
/* 804D9238  38 60 02 59 */	li r3, 0x259
/* 804D923C  38 81 00 10 */	addi r4, r1, 0x10
/* 804D9240  4B B4 07 ED */	bl fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 804D9244  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804D9248  28 03 00 00 */	cmplwi r3, 0
/* 804D924C  41 82 00 C8 */	beq lbl_804D9314
/* 804D9250  A8 1E 06 42 */	lha r0, 0x642(r30)
/* 804D9254  2C 00 00 00 */	cmpwi r0, 0
/* 804D9258  40 82 00 BC */	bne lbl_804D9314
/* 804D925C  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 804D9260  28 00 00 01 */	cmplwi r0, 1
/* 804D9264  40 82 00 2C */	bne lbl_804D9290
/* 804D9268  80 63 05 78 */	lwz r3, 0x578(r3)
/* 804D926C  80 63 00 04 */	lwz r3, 4(r3)
/* 804D9270  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804D9274  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804D9278  38 63 00 F0 */	addi r3, r3, 0xf0
/* 804D927C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804D9280  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804D9284  80 84 00 00 */	lwz r4, 0(r4)
/* 804D9288  4B E6 D2 29 */	bl PSMTXCopy
/* 804D928C  48 00 00 58 */	b lbl_804D92E4
lbl_804D9290:
/* 804D9290  28 00 00 02 */	cmplwi r0, 2
/* 804D9294  40 82 00 2C */	bne lbl_804D92C0
/* 804D9298  80 63 05 78 */	lwz r3, 0x578(r3)
/* 804D929C  80 63 00 04 */	lwz r3, 4(r3)
/* 804D92A0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804D92A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804D92A8  38 63 01 20 */	addi r3, r3, 0x120
/* 804D92AC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804D92B0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804D92B4  80 84 00 00 */	lwz r4, 0(r4)
/* 804D92B8  4B E6 D1 F9 */	bl PSMTXCopy
/* 804D92BC  48 00 00 28 */	b lbl_804D92E4
lbl_804D92C0:
/* 804D92C0  80 63 05 78 */	lwz r3, 0x578(r3)
/* 804D92C4  80 63 00 04 */	lwz r3, 4(r3)
/* 804D92C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804D92CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804D92D0  38 63 03 30 */	addi r3, r3, 0x330
/* 804D92D4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804D92D8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804D92DC  80 84 00 00 */	lwz r4, 0(r4)
/* 804D92E0  4B E6 D1 D1 */	bl PSMTXCopy
lbl_804D92E4:
/* 804D92E4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D92E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D92EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D92F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804D92F4  38 61 00 14 */	addi r3, r1, 0x14
/* 804D92F8  38 9E 06 34 */	addi r4, r30, 0x634
/* 804D92FC  4B D9 7B F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804D9300  38 1E 06 34 */	addi r0, r30, 0x634
/* 804D9304  90 1E 06 2C */	stw r0, 0x62c(r30)
/* 804D9308  80 61 00 10 */	lwz r3, 0x10(r1)
/* 804D930C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804D9310  B0 1E 06 40 */	sth r0, 0x640(r30)
lbl_804D9314:
/* 804D9314  A8 7E 06 18 */	lha r3, 0x618(r30)
/* 804D9318  38 03 00 01 */	addi r0, r3, 1
/* 804D931C  B0 1E 06 18 */	sth r0, 0x618(r30)
/* 804D9320  38 60 00 00 */	li r3, 0
/* 804D9324  38 00 00 04 */	li r0, 4
/* 804D9328  7C 09 03 A6 */	mtctr r0
lbl_804D932C:
/* 804D932C  38 A3 06 4C */	addi r5, r3, 0x64c
/* 804D9330  7C 9E 2A AE */	lhax r4, r30, r5
/* 804D9334  2C 04 00 00 */	cmpwi r4, 0
/* 804D9338  41 82 00 0C */	beq lbl_804D9344
/* 804D933C  38 04 FF FF */	addi r0, r4, -1
/* 804D9340  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_804D9344:
/* 804D9344  38 63 00 02 */	addi r3, r3, 2
/* 804D9348  42 00 FF E4 */	bdnz lbl_804D932C
/* 804D934C  A8 7E 06 54 */	lha r3, 0x654(r30)
/* 804D9350  2C 03 00 00 */	cmpwi r3, 0
/* 804D9354  41 82 00 0C */	beq lbl_804D9360
/* 804D9358  38 03 FF FF */	addi r0, r3, -1
/* 804D935C  B0 1E 06 54 */	sth r0, 0x654(r30)
lbl_804D9360:
/* 804D9360  7F C3 F3 78 */	mr r3, r30
/* 804D9364  4B FF FB 55 */	bl action__FP8bd_class
/* 804D9368  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D936C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D9370  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804D9374  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 804D9378  C0 1E 06 20 */	lfs f0, 0x620(r30)
/* 804D937C  EC 42 00 2A */	fadds f2, f2, f0
/* 804D9380  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 804D9384  4B E6 D5 65 */	bl PSMTXTrans
/* 804D9388  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D938C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D9390  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804D9394  4B B3 30 A1 */	bl mDoMtx_YrotM__FPA4_fs
/* 804D9398  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D939C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D93A0  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 804D93A4  4B B3 2F F9 */	bl mDoMtx_XrotM__FPA4_fs
/* 804D93A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D93AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D93B0  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 804D93B4  4B B3 31 19 */	bl mDoMtx_ZrotM__FPA4_fs
/* 804D93B8  3C 60 80 4E */	lis r3, l_HIO@ha /* 0x804DA36C@ha */
/* 804D93BC  38 63 A3 6C */	addi r3, r3, l_HIO@l /* 0x804DA36C@l */
/* 804D93C0  C0 23 00 08 */	lfs f1, 8(r3)
/* 804D93C4  FC 40 08 90 */	fmr f2, f1
/* 804D93C8  FC 60 08 90 */	fmr f3, f1
/* 804D93CC  4B B3 3A 6D */	bl scaleM__14mDoMtx_stack_cFfff
/* 804D93D0  80 7E 05 E4 */	lwz r3, 0x5e4(r30)
/* 804D93D4  80 83 00 04 */	lwz r4, 4(r3)
/* 804D93D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804D93DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804D93E0  38 84 00 24 */	addi r4, r4, 0x24
/* 804D93E4  4B E6 D0 CD */	bl PSMTXCopy
/* 804D93E8  80 7E 05 E4 */	lwz r3, 0x5e4(r30)
/* 804D93EC  38 9E 05 38 */	addi r4, r30, 0x538
/* 804D93F0  38 A0 00 00 */	li r5, 0
/* 804D93F4  38 C0 00 00 */	li r6, 0
/* 804D93F8  4B B3 71 D1 */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 804D93FC  80 1E 05 F0 */	lwz r0, 0x5f0(r30)
/* 804D9400  2C 00 00 05 */	cmpwi r0, 5
/* 804D9404  40 82 00 44 */	bne lbl_804D9448
/* 804D9408  A8 7E 05 F4 */	lha r3, 0x5f4(r30)
/* 804D940C  2C 03 00 00 */	cmpwi r3, 0
/* 804D9410  41 82 00 38 */	beq lbl_804D9448
/* 804D9414  38 03 FF FF */	addi r0, r3, -1
/* 804D9418  B0 1E 05 F4 */	sth r0, 0x5f4(r30)
/* 804D941C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060003@ha */
/* 804D9420  38 03 00 03 */	addi r0, r3, 0x0003 /* 0x00060003@l */
/* 804D9424  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D9428  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 804D942C  38 81 00 0C */	addi r4, r1, 0xc
/* 804D9430  38 A0 00 00 */	li r5, 0
/* 804D9434  38 C0 FF FF */	li r6, -1
/* 804D9438  81 9E 06 08 */	lwz r12, 0x608(r30)
/* 804D943C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804D9440  7D 89 03 A6 */	mtctr r12
/* 804D9444  4E 80 04 21 */	bctrl 
lbl_804D9448:
/* 804D9448  88 1E 05 EC */	lbz r0, 0x5ec(r30)
/* 804D944C  7C 00 07 74 */	extsb r0, r0
/* 804D9450  C8 3F 00 50 */	lfd f1, 0x50(r31)
/* 804D9454  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804D9458  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D945C  3C 00 43 30 */	lis r0, 0x4330
/* 804D9460  90 01 00 20 */	stw r0, 0x20(r1)
/* 804D9464  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804D9468  EC 00 08 28 */	fsubs f0, f0, f1
/* 804D946C  80 7E 05 E8 */	lwz r3, 0x5e8(r30)
/* 804D9470  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804D9474  80 7E 05 E4 */	lwz r3, 0x5e4(r30)
/* 804D9478  4B B3 72 35 */	bl modelCalc__14mDoExt_McaMorfFv
/* 804D947C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804D9480  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 804D9484  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804D9488  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 804D948C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804D9490  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 804D9494  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 804D9498  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804D949C  EC 01 00 2A */	fadds f0, f1, f0
/* 804D94A0  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 804D94A4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 804D94A8  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 804D94AC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 804D94B0  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 804D94B4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 804D94B8  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 804D94BC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804D94C0  7C 03 07 74 */	extsb r3, r0
/* 804D94C4  4B B5 3B A9 */	bl dComIfGp_getReverb__Fi
/* 804D94C8  7C 65 1B 78 */	mr r5, r3
/* 804D94CC  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 804D94D0  38 80 00 00 */	li r4, 0
/* 804D94D4  81 9E 06 08 */	lwz r12, 0x608(r30)
/* 804D94D8  81 8C 00 08 */	lwz r12, 8(r12)
/* 804D94DC  7D 89 03 A6 */	mtctr r12
/* 804D94E0  4E 80 04 21 */	bctrl 
/* 804D94E4  88 1E 06 56 */	lbz r0, 0x656(r30)
/* 804D94E8  7C 00 07 75 */	extsb. r0, r0
/* 804D94EC  40 82 00 94 */	bne lbl_804D9580
/* 804D94F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D94F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D94F8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 804D94FC  28 00 00 00 */	cmplwi r0, 0
/* 804D9500  41 82 00 80 */	beq lbl_804D9580
/* 804D9504  38 00 01 06 */	li r0, 0x106
/* 804D9508  B0 01 00 08 */	sth r0, 8(r1)
/* 804D950C  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 804D9510  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 804D9514  38 81 00 08 */	addi r4, r1, 8
/* 804D9518  4B B4 02 E1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804D951C  28 03 00 00 */	cmplwi r3, 0
/* 804D9520  41 82 00 60 */	beq lbl_804D9580
/* 804D9524  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 804D9528  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804D952C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D9530  40 81 00 50 */	ble lbl_804D9580
/* 804D9534  38 00 00 01 */	li r0, 1
/* 804D9538  98 1E 06 56 */	stb r0, 0x656(r30)
/* 804D953C  38 00 00 00 */	li r0, 0
/* 804D9540  B0 1E 06 1A */	sth r0, 0x61a(r30)
/* 804D9544  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 804D9548  38 00 00 A0 */	li r0, 0xa0
/* 804D954C  B0 1E 06 58 */	sth r0, 0x658(r30)
/* 804D9550  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804D9554  4B D8 E4 39 */	bl cM_rndFX__Ff
/* 804D9558  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 804D955C  EC 00 08 2A */	fadds f0, f0, f1
/* 804D9560  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804D9564  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 804D9568  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804D956C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804D9570  4B D8 E4 1D */	bl cM_rndFX__Ff
/* 804D9574  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804D9578  EC 00 08 2A */	fadds f0, f0, f1
/* 804D957C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_804D9580:
/* 804D9580  38 60 00 01 */	li r3, 1
/* 804D9584  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804D9588  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804D958C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D9590  7C 08 03 A6 */	mtlr r0
/* 804D9594  38 21 00 30 */	addi r1, r1, 0x30
/* 804D9598  4E 80 00 20 */	blr 

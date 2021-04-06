lbl_804F72D0:
/* 804F72D0  94 21 FE B0 */	stwu r1, -0x150(r1)
/* 804F72D4  7C 08 02 A6 */	mflr r0
/* 804F72D8  90 01 01 54 */	stw r0, 0x154(r1)
/* 804F72DC  DB E1 01 40 */	stfd f31, 0x140(r1)
/* 804F72E0  F3 E1 01 48 */	psq_st f31, 328(r1), 0, 0 /* qr0 */
/* 804F72E4  DB C1 01 30 */	stfd f30, 0x130(r1)
/* 804F72E8  F3 C1 01 38 */	psq_st f30, 312(r1), 0, 0 /* qr0 */
/* 804F72EC  39 61 01 30 */	addi r11, r1, 0x130
/* 804F72F0  4B E6 AE B1 */	bl __save_gpr
/* 804F72F4  7C 72 1B 78 */	mr r18, r3
/* 804F72F8  3C 60 80 50 */	lis r3, cNullVec__6Z2Calc@ha /* 0x804FA950@ha */
/* 804F72FC  3B 23 A9 50 */	addi r25, r3, cNullVec__6Z2Calc@l /* 0x804FA950@l */
/* 804F7300  3C 60 80 50 */	lis r3, lit_3777@ha /* 0x804FA6BC@ha */
/* 804F7304  3B 43 A6 BC */	addi r26, r3, lit_3777@l /* 0x804FA6BC@l */
/* 804F7308  4B B2 0F A1 */	bl cDmrNowMidnaTalk__Fv
/* 804F730C  2C 03 00 00 */	cmpwi r3, 0
/* 804F7310  41 82 00 0C */	beq lbl_804F731C
/* 804F7314  38 60 00 01 */	li r3, 1
/* 804F7318  48 00 19 20 */	b lbl_804F8C38
lbl_804F731C:
/* 804F731C  3C 72 00 02 */	addis r3, r18, 2
/* 804F7320  A8 03 AF F2 */	lha r0, -0x500e(r3)
/* 804F7324  2C 00 03 E8 */	cmpwi r0, 0x3e8
/* 804F7328  40 82 00 0C */	bne lbl_804F7334
/* 804F732C  38 60 00 01 */	li r3, 1
/* 804F7330  48 00 19 08 */	b lbl_804F8C38
lbl_804F7334:
/* 804F7334  A8 72 07 A0 */	lha r3, 0x7a0(r18)
/* 804F7338  38 03 00 01 */	addi r0, r3, 1
/* 804F733C  B0 12 07 A0 */	sth r0, 0x7a0(r18)
/* 804F7340  38 60 00 00 */	li r3, 0
/* 804F7344  38 00 00 04 */	li r0, 4
/* 804F7348  7C 09 03 A6 */	mtctr r0
lbl_804F734C:
/* 804F734C  38 A3 07 AC */	addi r5, r3, 0x7ac
/* 804F7350  7C 92 2A AE */	lhax r4, r18, r5
/* 804F7354  2C 04 00 00 */	cmpwi r4, 0
/* 804F7358  41 82 00 0C */	beq lbl_804F7364
/* 804F735C  38 04 FF FF */	addi r0, r4, -1
/* 804F7360  7C 12 2B 2E */	sthx r0, r18, r5
lbl_804F7364:
/* 804F7364  38 63 00 02 */	addi r3, r3, 2
/* 804F7368  42 00 FF E4 */	bdnz lbl_804F734C
/* 804F736C  A8 72 07 B4 */	lha r3, 0x7b4(r18)
/* 804F7370  2C 03 00 00 */	cmpwi r3, 0
/* 804F7374  41 82 00 0C */	beq lbl_804F7380
/* 804F7378  38 03 FF FF */	addi r0, r3, -1
/* 804F737C  B0 12 07 B4 */	sth r0, 0x7b4(r18)
lbl_804F7380:
/* 804F7380  7E 43 93 78 */	mr r3, r18
/* 804F7384  4B FF F1 7D */	bl action__FP10e_fm_class
/* 804F7388  38 72 08 4C */	addi r3, r18, 0x84c
/* 804F738C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F7390  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F7394  3A 64 0F 38 */	addi r19, r4, 0xf38
/* 804F7398  7E 64 9B 78 */	mr r4, r19
/* 804F739C  4B B7 F7 11 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804F73A0  C0 12 04 AC */	lfs f0, 0x4ac(r18)
/* 804F73A4  D0 12 04 D4 */	stfs f0, 0x4d4(r18)
/* 804F73A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804F73AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804F73B0  C0 32 04 D0 */	lfs f1, 0x4d0(r18)
/* 804F73B4  C0 52 04 D4 */	lfs f2, 0x4d4(r18)
/* 804F73B8  C0 72 04 D8 */	lfs f3, 0x4d8(r18)
/* 804F73BC  4B E4 F5 2D */	bl PSMTXTrans
/* 804F73C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804F73C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804F73C8  A8 92 04 E6 */	lha r4, 0x4e6(r18)
/* 804F73CC  4B B1 50 69 */	bl mDoMtx_YrotM__FPA4_fs
/* 804F73D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804F73D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804F73D8  A8 92 04 E4 */	lha r4, 0x4e4(r18)
/* 804F73DC  4B B1 4F C1 */	bl mDoMtx_XrotM__FPA4_fs
/* 804F73E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804F73E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804F73E8  A8 92 04 E8 */	lha r4, 0x4e8(r18)
/* 804F73EC  4B B1 50 E1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 804F73F0  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x804FAEA4@ha */
/* 804F73F4  3A 03 AE A4 */	addi r16, r3, l_HIO@l /* 0x804FAEA4@l */
/* 804F73F8  C0 30 00 08 */	lfs f1, 8(r16)
/* 804F73FC  FC 40 08 90 */	fmr f2, f1
/* 804F7400  FC 60 08 90 */	fmr f3, f1
/* 804F7404  4B B1 5A 35 */	bl scaleM__14mDoMtx_stack_cFfff
/* 804F7408  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F740C  81 C3 00 04 */	lwz r14, 4(r3)
/* 804F7410  7D D1 73 78 */	mr r17, r14
/* 804F7414  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804F7418  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804F741C  38 8E 00 24 */	addi r4, r14, 0x24
/* 804F7420  4B E4 F0 91 */	bl PSMTXCopy
/* 804F7424  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F7428  38 92 05 38 */	addi r4, r18, 0x538
/* 804F742C  38 A0 00 00 */	li r5, 0
/* 804F7430  38 C0 00 00 */	li r6, 0
/* 804F7434  4B B1 91 95 */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 804F7438  80 12 06 20 */	lwz r0, 0x620(r18)
/* 804F743C  2C 00 00 15 */	cmpwi r0, 0x15
/* 804F7440  40 82 00 A0 */	bne lbl_804F74E0
/* 804F7444  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F7448  38 63 00 0C */	addi r3, r3, 0xc
/* 804F744C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F7450  4B E3 0F DD */	bl checkPass__12J3DFrameCtrlFf
/* 804F7454  2C 03 00 00 */	cmpwi r3, 0
/* 804F7458  41 82 00 88 */	beq lbl_804F74E0
/* 804F745C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070284@ha */
/* 804F7460  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x00070284@l */
/* 804F7464  90 01 00 54 */	stw r0, 0x54(r1)
/* 804F7468  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F746C  38 81 00 54 */	addi r4, r1, 0x54
/* 804F7470  38 A0 00 00 */	li r5, 0
/* 804F7474  38 C0 FF FF */	li r6, -1
/* 804F7478  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F747C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F7480  7D 89 03 A6 */	mtctr r12
/* 804F7484  4E 80 04 21 */	bctrl 
/* 804F7488  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070285@ha */
/* 804F748C  38 03 02 85 */	addi r0, r3, 0x0285 /* 0x00070285@l */
/* 804F7490  90 01 00 50 */	stw r0, 0x50(r1)
/* 804F7494  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F7498  38 81 00 50 */	addi r4, r1, 0x50
/* 804F749C  38 A0 00 00 */	li r5, 0
/* 804F74A0  38 C0 FF FF */	li r6, -1
/* 804F74A4  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F74A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F74AC  7D 89 03 A6 */	mtctr r12
/* 804F74B0  4E 80 04 21 */	bctrl 
/* 804F74B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070283@ha */
/* 804F74B8  38 03 02 83 */	addi r0, r3, 0x0283 /* 0x00070283@l */
/* 804F74BC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 804F74C0  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F74C4  38 81 00 4C */	addi r4, r1, 0x4c
/* 804F74C8  38 A0 FF FF */	li r5, -1
/* 804F74CC  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F74D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F74D4  7D 89 03 A6 */	mtctr r12
/* 804F74D8  4E 80 04 21 */	bctrl 
/* 804F74DC  48 00 02 B0 */	b lbl_804F778C
lbl_804F74E0:
/* 804F74E0  80 12 06 20 */	lwz r0, 0x620(r18)
/* 804F74E4  2C 00 00 0F */	cmpwi r0, 0xf
/* 804F74E8  40 82 00 48 */	bne lbl_804F7530
/* 804F74EC  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F74F0  38 63 00 0C */	addi r3, r3, 0xc
/* 804F74F4  C0 3A 00 38 */	lfs f1, 0x38(r26)
/* 804F74F8  4B E3 0F 35 */	bl checkPass__12J3DFrameCtrlFf
/* 804F74FC  2C 03 00 00 */	cmpwi r3, 0
/* 804F7500  41 82 00 30 */	beq lbl_804F7530
/* 804F7504  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070287@ha */
/* 804F7508  38 03 02 87 */	addi r0, r3, 0x0287 /* 0x00070287@l */
/* 804F750C  90 01 00 48 */	stw r0, 0x48(r1)
/* 804F7510  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F7514  38 81 00 48 */	addi r4, r1, 0x48
/* 804F7518  38 A0 FF FF */	li r5, -1
/* 804F751C  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F7520  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F7524  7D 89 03 A6 */	mtctr r12
/* 804F7528  4E 80 04 21 */	bctrl 
/* 804F752C  48 00 02 60 */	b lbl_804F778C
lbl_804F7530:
/* 804F7530  80 12 06 20 */	lwz r0, 0x620(r18)
/* 804F7534  2C 00 00 11 */	cmpwi r0, 0x11
/* 804F7538  40 82 00 60 */	bne lbl_804F7598
/* 804F753C  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F7540  38 63 00 0C */	addi r3, r3, 0xc
/* 804F7544  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F7548  4B E3 0E E5 */	bl checkPass__12J3DFrameCtrlFf
/* 804F754C  2C 03 00 00 */	cmpwi r3, 0
/* 804F7550  40 82 00 1C */	bne lbl_804F756C
/* 804F7554  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F7558  38 63 00 0C */	addi r3, r3, 0xc
/* 804F755C  C0 3A 00 B4 */	lfs f1, 0xb4(r26)
/* 804F7560  4B E3 0E CD */	bl checkPass__12J3DFrameCtrlFf
/* 804F7564  2C 03 00 00 */	cmpwi r3, 0
/* 804F7568  41 82 00 30 */	beq lbl_804F7598
lbl_804F756C:
/* 804F756C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070289@ha */
/* 804F7570  38 03 02 89 */	addi r0, r3, 0x0289 /* 0x00070289@l */
/* 804F7574  90 01 00 44 */	stw r0, 0x44(r1)
/* 804F7578  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F757C  38 81 00 44 */	addi r4, r1, 0x44
/* 804F7580  38 A0 FF FF */	li r5, -1
/* 804F7584  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F7588  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F758C  7D 89 03 A6 */	mtctr r12
/* 804F7590  4E 80 04 21 */	bctrl 
/* 804F7594  48 00 01 F8 */	b lbl_804F778C
lbl_804F7598:
/* 804F7598  80 12 06 20 */	lwz r0, 0x620(r18)
/* 804F759C  2C 00 00 1C */	cmpwi r0, 0x1c
/* 804F75A0  40 82 00 48 */	bne lbl_804F75E8
/* 804F75A4  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F75A8  38 63 00 0C */	addi r3, r3, 0xc
/* 804F75AC  C0 3A 00 0C */	lfs f1, 0xc(r26)
/* 804F75B0  4B E3 0E 7D */	bl checkPass__12J3DFrameCtrlFf
/* 804F75B4  2C 03 00 00 */	cmpwi r3, 0
/* 804F75B8  41 82 00 30 */	beq lbl_804F75E8
/* 804F75BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007028C@ha */
/* 804F75C0  38 03 02 8C */	addi r0, r3, 0x028C /* 0x0007028C@l */
/* 804F75C4  90 01 00 40 */	stw r0, 0x40(r1)
/* 804F75C8  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F75CC  38 81 00 40 */	addi r4, r1, 0x40
/* 804F75D0  38 A0 FF FF */	li r5, -1
/* 804F75D4  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F75D8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F75DC  7D 89 03 A6 */	mtctr r12
/* 804F75E0  4E 80 04 21 */	bctrl 
/* 804F75E4  48 00 01 A8 */	b lbl_804F778C
lbl_804F75E8:
/* 804F75E8  80 12 06 20 */	lwz r0, 0x620(r18)
/* 804F75EC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 804F75F0  40 82 00 60 */	bne lbl_804F7650
/* 804F75F4  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F75F8  38 63 00 0C */	addi r3, r3, 0xc
/* 804F75FC  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F7600  4B E3 0E 2D */	bl checkPass__12J3DFrameCtrlFf
/* 804F7604  2C 03 00 00 */	cmpwi r3, 0
/* 804F7608  40 82 00 1C */	bne lbl_804F7624
/* 804F760C  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F7610  38 63 00 0C */	addi r3, r3, 0xc
/* 804F7614  C0 3A 00 B4 */	lfs f1, 0xb4(r26)
/* 804F7618  4B E3 0E 15 */	bl checkPass__12J3DFrameCtrlFf
/* 804F761C  2C 03 00 00 */	cmpwi r3, 0
/* 804F7620  41 82 00 30 */	beq lbl_804F7650
lbl_804F7624:
/* 804F7624  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007028E@ha */
/* 804F7628  38 03 02 8E */	addi r0, r3, 0x028E /* 0x0007028E@l */
/* 804F762C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804F7630  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F7634  38 81 00 3C */	addi r4, r1, 0x3c
/* 804F7638  38 A0 FF FF */	li r5, -1
/* 804F763C  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F7640  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F7644  7D 89 03 A6 */	mtctr r12
/* 804F7648  4E 80 04 21 */	bctrl 
/* 804F764C  48 00 01 40 */	b lbl_804F778C
lbl_804F7650:
/* 804F7650  80 12 06 20 */	lwz r0, 0x620(r18)
/* 804F7654  2C 00 00 21 */	cmpwi r0, 0x21
/* 804F7658  40 82 00 48 */	bne lbl_804F76A0
/* 804F765C  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F7660  38 63 00 0C */	addi r3, r3, 0xc
/* 804F7664  C0 3A 02 38 */	lfs f1, 0x238(r26)
/* 804F7668  4B E3 0D C5 */	bl checkPass__12J3DFrameCtrlFf
/* 804F766C  2C 03 00 00 */	cmpwi r3, 0
/* 804F7670  41 82 00 30 */	beq lbl_804F76A0
/* 804F7674  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070291@ha */
/* 804F7678  38 03 02 91 */	addi r0, r3, 0x0291 /* 0x00070291@l */
/* 804F767C  90 01 00 38 */	stw r0, 0x38(r1)
/* 804F7680  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F7684  38 81 00 38 */	addi r4, r1, 0x38
/* 804F7688  38 A0 FF FF */	li r5, -1
/* 804F768C  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F7690  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F7694  7D 89 03 A6 */	mtctr r12
/* 804F7698  4E 80 04 21 */	bctrl 
/* 804F769C  48 00 00 F0 */	b lbl_804F778C
lbl_804F76A0:
/* 804F76A0  80 12 06 20 */	lwz r0, 0x620(r18)
/* 804F76A4  2C 00 00 22 */	cmpwi r0, 0x22
/* 804F76A8  40 82 00 48 */	bne lbl_804F76F0
/* 804F76AC  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F76B0  38 63 00 0C */	addi r3, r3, 0xc
/* 804F76B4  C0 3A 02 3C */	lfs f1, 0x23c(r26)
/* 804F76B8  4B E3 0D 75 */	bl checkPass__12J3DFrameCtrlFf
/* 804F76BC  2C 03 00 00 */	cmpwi r3, 0
/* 804F76C0  41 82 00 30 */	beq lbl_804F76F0
/* 804F76C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070292@ha */
/* 804F76C8  38 03 02 92 */	addi r0, r3, 0x0292 /* 0x00070292@l */
/* 804F76CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F76D0  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F76D4  38 81 00 34 */	addi r4, r1, 0x34
/* 804F76D8  38 A0 FF FF */	li r5, -1
/* 804F76DC  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F76E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F76E4  7D 89 03 A6 */	mtctr r12
/* 804F76E8  4E 80 04 21 */	bctrl 
/* 804F76EC  48 00 00 A0 */	b lbl_804F778C
lbl_804F76F0:
/* 804F76F0  80 12 06 20 */	lwz r0, 0x620(r18)
/* 804F76F4  2C 00 00 0A */	cmpwi r0, 0xa
/* 804F76F8  40 82 00 48 */	bne lbl_804F7740
/* 804F76FC  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F7700  38 63 00 0C */	addi r3, r3, 0xc
/* 804F7704  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F7708  4B E3 0D 25 */	bl checkPass__12J3DFrameCtrlFf
/* 804F770C  2C 03 00 00 */	cmpwi r3, 0
/* 804F7710  41 82 00 30 */	beq lbl_804F7740
/* 804F7714  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070008@ha */
/* 804F7718  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x00070008@l */
/* 804F771C  90 01 00 30 */	stw r0, 0x30(r1)
/* 804F7720  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F7724  38 81 00 30 */	addi r4, r1, 0x30
/* 804F7728  38 A0 FF FF */	li r5, -1
/* 804F772C  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F7730  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F7734  7D 89 03 A6 */	mtctr r12
/* 804F7738  4E 80 04 21 */	bctrl 
/* 804F773C  48 00 00 50 */	b lbl_804F778C
lbl_804F7740:
/* 804F7740  80 12 06 20 */	lwz r0, 0x620(r18)
/* 804F7744  2C 00 00 1D */	cmpwi r0, 0x1d
/* 804F7748  40 82 00 44 */	bne lbl_804F778C
/* 804F774C  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F7750  38 63 00 0C */	addi r3, r3, 0xc
/* 804F7754  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F7758  4B E3 0C D5 */	bl checkPass__12J3DFrameCtrlFf
/* 804F775C  2C 03 00 00 */	cmpwi r3, 0
/* 804F7760  41 82 00 2C */	beq lbl_804F778C
/* 804F7764  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007028D@ha */
/* 804F7768  38 03 02 8D */	addi r0, r3, 0x028D /* 0x0007028D@l */
/* 804F776C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804F7770  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F7774  38 81 00 2C */	addi r4, r1, 0x2c
/* 804F7778  38 A0 FF FF */	li r5, -1
/* 804F777C  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F7780  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804F7784  7D 89 03 A6 */	mtctr r12
/* 804F7788  4E 80 04 21 */	bctrl 
lbl_804F778C:
/* 804F778C  88 12 06 24 */	lbz r0, 0x624(r18)
/* 804F7790  7C 00 07 75 */	extsb. r0, r0
/* 804F7794  41 82 00 84 */	beq lbl_804F7818
/* 804F7798  C0 32 06 34 */	lfs f1, 0x634(r18)
/* 804F779C  FC 40 08 90 */	fmr f2, f1
/* 804F77A0  FC 60 08 90 */	fmr f3, f1
/* 804F77A4  4B B1 56 95 */	bl scaleM__14mDoMtx_stack_cFfff
/* 804F77A8  38 72 06 34 */	addi r3, r18, 0x634
/* 804F77AC  C0 3A 02 28 */	lfs f1, 0x228(r26)
/* 804F77B0  C0 5A 01 6C */	lfs f2, 0x16c(r26)
/* 804F77B4  C0 72 06 38 */	lfs f3, 0x638(r18)
/* 804F77B8  4B D7 82 85 */	bl cLib_addCalc2__FPffff
/* 804F77BC  38 72 06 38 */	addi r3, r18, 0x638
/* 804F77C0  C0 3A 01 78 */	lfs f1, 0x178(r26)
/* 804F77C4  C0 5A 00 00 */	lfs f2, 0(r26)
/* 804F77C8  C0 7A 02 40 */	lfs f3, 0x240(r26)
/* 804F77CC  4B D7 82 71 */	bl cLib_addCalc2__FPffff
/* 804F77D0  80 72 06 28 */	lwz r3, 0x628(r18)
/* 804F77D4  80 83 00 04 */	lwz r4, 4(r3)
/* 804F77D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804F77DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804F77E0  38 84 00 24 */	addi r4, r4, 0x24
/* 804F77E4  4B E4 EC CD */	bl PSMTXCopy
/* 804F77E8  80 72 06 30 */	lwz r3, 0x630(r18)
/* 804F77EC  4B B1 5C 3D */	bl play__14mDoExt_baseAnmFv
/* 804F77F0  80 72 06 28 */	lwz r3, 0x628(r18)
/* 804F77F4  38 92 05 38 */	addi r4, r18, 0x538
/* 804F77F8  38 A0 00 00 */	li r5, 0
/* 804F77FC  38 C0 00 00 */	li r6, 0
/* 804F7800  4B B1 8D C9 */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 804F7804  80 72 06 28 */	lwz r3, 0x628(r18)
/* 804F7808  4B B1 8E A5 */	bl modelCalc__14mDoExt_McaMorfFv
/* 804F780C  38 60 00 00 */	li r3, 0
/* 804F7810  38 80 FF FF */	li r4, -1
/* 804F7814  4B B3 62 ED */	bl dComIfGs_offOneZoneSwitch__Fii
lbl_804F7818:
/* 804F7818  80 12 06 1C */	lwz r0, 0x61c(r18)
/* 804F781C  54 00 10 3A */	slwi r0, r0, 2
/* 804F7820  7C 72 02 14 */	add r3, r18, r0
/* 804F7824  80 63 05 D4 */	lwz r3, 0x5d4(r3)
/* 804F7828  4B B1 5C 01 */	bl play__14mDoExt_baseAnmFv
/* 804F782C  80 12 06 1C */	lwz r0, 0x61c(r18)
/* 804F7830  54 00 10 3A */	slwi r0, r0, 2
/* 804F7834  7C 72 02 14 */	add r3, r18, r0
/* 804F7838  80 63 05 F8 */	lwz r3, 0x5f8(r3)
/* 804F783C  4B B1 5B ED */	bl play__14mDoExt_baseAnmFv
/* 804F7840  80 12 06 1C */	lwz r0, 0x61c(r18)
/* 804F7844  2C 00 00 00 */	cmpwi r0, 0
/* 804F7848  41 82 00 D0 */	beq lbl_804F7918
/* 804F784C  2C 00 00 03 */	cmpwi r0, 3
/* 804F7850  41 82 00 C8 */	beq lbl_804F7918
/* 804F7854  54 00 10 3A */	slwi r0, r0, 2
/* 804F7858  7C 72 02 14 */	add r3, r18, r0
/* 804F785C  80 A3 05 F8 */	lwz r5, 0x5f8(r3)
/* 804F7860  A8 85 00 08 */	lha r4, 8(r5)
/* 804F7864  C8 5A 00 A0 */	lfd f2, 0xa0(r26)
/* 804F7868  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804F786C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804F7870  3C 60 43 30 */	lis r3, 0x4330
/* 804F7874  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 804F7878  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 804F787C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804F7880  C0 65 00 10 */	lfs f3, 0x10(r5)
/* 804F7884  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 804F7888  EC 00 08 28 */	fsubs f0, f0, f1
/* 804F788C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804F7890  40 81 00 24 */	ble lbl_804F78B4
/* 804F7894  7C 80 07 34 */	extsh r0, r4
/* 804F7898  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804F789C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804F78A0  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 804F78A4  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 804F78A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804F78AC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804F78B0  D0 05 00 10 */	stfs f0, 0x10(r5)
lbl_804F78B4:
/* 804F78B4  80 12 06 1C */	lwz r0, 0x61c(r18)
/* 804F78B8  54 00 10 3A */	slwi r0, r0, 2
/* 804F78BC  7C 72 02 14 */	add r3, r18, r0
/* 804F78C0  80 A3 05 D4 */	lwz r5, 0x5d4(r3)
/* 804F78C4  A8 85 00 08 */	lha r4, 8(r5)
/* 804F78C8  C8 5A 00 A0 */	lfd f2, 0xa0(r26)
/* 804F78CC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 804F78D0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804F78D4  3C 60 43 30 */	lis r3, 0x4330
/* 804F78D8  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 804F78DC  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 804F78E0  EC 00 10 28 */	fsubs f0, f0, f2
/* 804F78E4  C0 65 00 10 */	lfs f3, 0x10(r5)
/* 804F78E8  C0 3A 00 28 */	lfs f1, 0x28(r26)
/* 804F78EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804F78F0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804F78F4  40 81 00 24 */	ble lbl_804F7918
/* 804F78F8  7C 80 07 34 */	extsh r0, r4
/* 804F78FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804F7900  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 804F7904  90 61 00 D0 */	stw r3, 0xd0(r1)
/* 804F7908  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 804F790C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804F7910  EC 00 08 28 */	fsubs f0, f0, f1
/* 804F7914  D0 05 00 10 */	stfs f0, 0x10(r5)
lbl_804F7918:
/* 804F7918  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F791C  4B B1 8D 91 */	bl modelCalc__14mDoExt_McaMorfFv
/* 804F7920  C0 1A 02 44 */	lfs f0, 0x244(r26)
/* 804F7924  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 804F7928  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 804F792C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 804F7930  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 804F7934  38 00 00 00 */	li r0, 0
/* 804F7938  3C 72 00 02 */	addis r3, r18, 2
/* 804F793C  98 03 AF F0 */	stb r0, -0x5010(r3)
/* 804F7940  80 6E 00 84 */	lwz r3, 0x84(r14)
/* 804F7944  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F7948  38 63 00 90 */	addi r3, r3, 0x90
/* 804F794C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804F7950  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804F7954  80 84 00 00 */	lwz r4, 0(r4)
/* 804F7958  4B E4 EB 59 */	bl PSMTXCopy
/* 804F795C  C0 1A 00 38 */	lfs f0, 0x38(r26)
/* 804F7960  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F7964  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F7968  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F796C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F7970  38 61 00 C0 */	addi r3, r1, 0xc0
/* 804F7974  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804F7978  4B D7 95 75 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F797C  38 72 0B C0 */	addi r3, r18, 0xbc0
/* 804F7980  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804F7984  4B D7 7C C5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804F7988  38 72 0B C0 */	addi r3, r18, 0xbc0
/* 804F798C  C0 3A 00 20 */	lfs f1, 0x20(r26)
/* 804F7990  4B D7 7D 79 */	bl SetR__8cM3dGSphFf
/* 804F7994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F7998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F799C  3A E3 23 3C */	addi r23, r3, 0x233c
/* 804F79A0  7E E3 BB 78 */	mr r3, r23
/* 804F79A4  38 92 0A 9C */	addi r4, r18, 0xa9c
/* 804F79A8  4B D6 D2 01 */	bl Set__4cCcSFP8cCcD_Obj
/* 804F79AC  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F79B0  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F79B4  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F79B8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F79BC  80 6E 00 84 */	lwz r3, 0x84(r14)
/* 804F79C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F79C4  38 63 00 30 */	addi r3, r3, 0x30
/* 804F79C8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804F79CC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804F79D0  80 84 00 00 */	lwz r4, 0(r4)
/* 804F79D4  4B E4 EA DD */	bl PSMTXCopy
/* 804F79D8  C0 1A 00 AC */	lfs f0, 0xac(r26)
/* 804F79DC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F79E0  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F79E4  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F79E8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F79EC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 804F79F0  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804F79F4  4B D7 94 F9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F79F8  38 72 0C F8 */	addi r3, r18, 0xcf8
/* 804F79FC  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804F7A00  4B D7 7C 49 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804F7A04  38 72 0C F8 */	addi r3, r18, 0xcf8
/* 804F7A08  C0 3A 02 48 */	lfs f1, 0x248(r26)
/* 804F7A0C  4B D7 7C FD */	bl SetR__8cM3dGSphFf
/* 804F7A10  7E E3 BB 78 */	mr r3, r23
/* 804F7A14  38 92 0B D4 */	addi r4, r18, 0xbd4
/* 804F7A18  4B D6 D1 91 */	bl Set__4cCcSFP8cCcD_Obj
/* 804F7A1C  80 6E 00 84 */	lwz r3, 0x84(r14)
/* 804F7A20  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F7A24  38 63 00 90 */	addi r3, r3, 0x90
/* 804F7A28  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804F7A2C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804F7A30  80 84 00 00 */	lwz r4, 0(r4)
/* 804F7A34  4B E4 EA 7D */	bl PSMTXCopy
/* 804F7A38  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F7A3C  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F7A40  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F7A44  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F7A48  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F7A4C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804F7A50  80 63 00 00 */	lwz r3, 0(r3)
/* 804F7A54  80 92 07 60 */	lwz r4, 0x760(r18)
/* 804F7A58  38 84 00 24 */	addi r4, r4, 0x24
/* 804F7A5C  4B E4 EA 55 */	bl PSMTXCopy
/* 804F7A60  C3 FA 00 3C */	lfs f31, 0x3c(r26)
/* 804F7A64  A8 12 07 70 */	lha r0, 0x770(r18)
/* 804F7A68  2C 00 00 00 */	cmpwi r0, 0
/* 804F7A6C  41 82 00 40 */	beq lbl_804F7AAC
/* 804F7A70  C3 FA 02 4C */	lfs f31, 0x24c(r26)
/* 804F7A74  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070297@ha */
/* 804F7A78  38 03 02 97 */	addi r0, r3, 0x0297 /* 0x00070297@l */
/* 804F7A7C  90 01 00 28 */	stw r0, 0x28(r1)
/* 804F7A80  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F7A84  38 81 00 28 */	addi r4, r1, 0x28
/* 804F7A88  38 A0 00 00 */	li r5, 0
/* 804F7A8C  38 C0 FF FF */	li r6, -1
/* 804F7A90  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F7A94  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804F7A98  7D 89 03 A6 */	mtctr r12
/* 804F7A9C  4E 80 04 21 */	bctrl 
/* 804F7AA0  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804F7AA4  D0 12 18 34 */	stfs f0, 0x1834(r18)
/* 804F7AA8  48 00 00 14 */	b lbl_804F7ABC
lbl_804F7AAC:
/* 804F7AAC  38 72 18 34 */	addi r3, r18, 0x1834
/* 804F7AB0  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F7AB4  C0 5A 01 64 */	lfs f2, 0x164(r26)
/* 804F7AB8  4B D7 7F C9 */	bl cLib_addCalc0__FPfff
lbl_804F7ABC:
/* 804F7ABC  38 72 07 6C */	addi r3, r18, 0x76c
/* 804F7AC0  FC 20 F8 90 */	fmr f1, f31
/* 804F7AC4  C0 5A 00 00 */	lfs f2, 0(r26)
/* 804F7AC8  FC 60 10 90 */	fmr f3, f2
/* 804F7ACC  4B D7 7F 71 */	bl cLib_addCalc2__FPffff
/* 804F7AD0  C0 32 07 6C */	lfs f1, 0x76c(r18)
/* 804F7AD4  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F7AD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F7ADC  40 81 00 10 */	ble lbl_804F7AEC
/* 804F7AE0  A8 12 07 70 */	lha r0, 0x770(r18)
/* 804F7AE4  2C 00 26 F2 */	cmpwi r0, 0x26f2
/* 804F7AE8  41 80 00 0C */	blt lbl_804F7AF4
lbl_804F7AEC:
/* 804F7AEC  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F7AF0  D0 12 18 34 */	stfs f0, 0x1834(r18)
lbl_804F7AF4:
/* 804F7AF4  C0 32 18 34 */	lfs f1, 0x1834(r18)
/* 804F7AF8  C0 1A 02 50 */	lfs f0, 0x250(r26)
/* 804F7AFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F7B00  40 81 02 00 */	ble lbl_804F7D00
/* 804F7B04  C0 1A 01 64 */	lfs f0, 0x164(r26)
/* 804F7B08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F7B0C  4C 40 13 82 */	cror 2, 0, 2
/* 804F7B10  40 82 00 0C */	bne lbl_804F7B1C
/* 804F7B14  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F7B18  D0 12 18 34 */	stfs f0, 0x1834(r18)
lbl_804F7B1C:
/* 804F7B1C  C0 1A 02 38 */	lfs f0, 0x238(r26)
/* 804F7B20  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F7B24  C0 1A 02 54 */	lfs f0, 0x254(r26)
/* 804F7B28  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F7B2C  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F7B30  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F7B34  38 61 00 C0 */	addi r3, r1, 0xc0
/* 804F7B38  38 81 00 9C */	addi r4, r1, 0x9c
/* 804F7B3C  4B D7 93 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F7B40  A8 12 07 A2 */	lha r0, 0x7a2(r18)
/* 804F7B44  2C 00 00 0C */	cmpwi r0, 0xc
/* 804F7B48  41 82 00 14 */	beq lbl_804F7B5C
/* 804F7B4C  C0 32 07 6C */	lfs f1, 0x76c(r18)
/* 804F7B50  C0 1A 00 28 */	lfs f0, 0x28(r26)
/* 804F7B54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F7B58  40 80 00 14 */	bge lbl_804F7B6C
lbl_804F7B5C:
/* 804F7B5C  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 804F7B60  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 804F7B64  EC 01 00 2A */	fadds f0, f1, f0
/* 804F7B68  D0 01 00 A0 */	stfs f0, 0xa0(r1)
lbl_804F7B6C:
/* 804F7B6C  C3 F2 18 34 */	lfs f31, 0x1834(r18)
/* 804F7B70  A8 12 07 A2 */	lha r0, 0x7a2(r18)
/* 804F7B74  2C 00 00 0B */	cmpwi r0, 0xb
/* 804F7B78  40 82 00 B8 */	bne lbl_804F7C30
/* 804F7B7C  39 C0 00 00 */	li r14, 0
/* 804F7B80  39 E0 00 00 */	li r15, 0
/* 804F7B84  3A 80 00 00 */	li r20, 0
/* 804F7B88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F7B8C  3A C3 61 C0 */	addi r22, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F7B90  3A B9 01 90 */	addi r21, r25, 0x190
lbl_804F7B94:
/* 804F7B94  80 76 5D 3C */	lwz r3, 0x5d3c(r22)
/* 804F7B98  38 00 00 FF */	li r0, 0xff
/* 804F7B9C  90 01 00 08 */	stw r0, 8(r1)
/* 804F7BA0  38 80 00 00 */	li r4, 0
/* 804F7BA4  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F7BA8  38 00 FF FF */	li r0, -1
/* 804F7BAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F7BB0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F7BB4  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F7BB8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F7BBC  3B 14 23 74 */	addi r24, r20, 0x2374
/* 804F7BC0  7C 92 C0 2E */	lwzx r4, r18, r24
/* 804F7BC4  38 A0 00 00 */	li r5, 0
/* 804F7BC8  7C D5 7A 2E */	lhzx r6, r21, r15
/* 804F7BCC  38 E1 00 9C */	addi r7, r1, 0x9c
/* 804F7BD0  39 00 00 00 */	li r8, 0
/* 804F7BD4  39 20 00 00 */	li r9, 0
/* 804F7BD8  39 40 00 00 */	li r10, 0
/* 804F7BDC  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F7BE0  4B B5 58 ED */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F7BE4  7C 72 C1 2E */	stwx r3, r18, r24
/* 804F7BE8  80 76 5D 3C */	lwz r3, 0x5d3c(r22)
/* 804F7BEC  38 63 02 10 */	addi r3, r3, 0x210
/* 804F7BF0  7C 92 C0 2E */	lwzx r4, r18, r24
/* 804F7BF4  4B B5 3D 25 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804F7BF8  28 03 00 00 */	cmplwi r3, 0
/* 804F7BFC  41 82 00 1C */	beq lbl_804F7C18
/* 804F7C00  C0 12 18 34 */	lfs f0, 0x1834(r18)
/* 804F7C04  D0 03 00 98 */	stfs f0, 0x98(r3)
/* 804F7C08  D0 03 00 9C */	stfs f0, 0x9c(r3)
/* 804F7C0C  D0 03 00 A0 */	stfs f0, 0xa0(r3)
/* 804F7C10  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 804F7C14  D0 03 00 B4 */	stfs f0, 0xb4(r3)
lbl_804F7C18:
/* 804F7C18  39 CE 00 01 */	addi r14, r14, 1
/* 804F7C1C  2C 0E 00 02 */	cmpwi r14, 2
/* 804F7C20  39 EF 00 02 */	addi r15, r15, 2
/* 804F7C24  3A 94 00 04 */	addi r20, r20, 4
/* 804F7C28  41 80 FF 6C */	blt lbl_804F7B94
/* 804F7C2C  48 00 00 D4 */	b lbl_804F7D00
lbl_804F7C30:
/* 804F7C30  39 E0 00 00 */	li r15, 0
/* 804F7C34  3A 80 00 00 */	li r20, 0
/* 804F7C38  3A A0 00 00 */	li r21, 0
/* 804F7C3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F7C40  39 C3 61 C0 */	addi r14, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F7C44  3A D9 01 94 */	addi r22, r25, 0x194
lbl_804F7C48:
/* 804F7C48  80 6E 5D 3C */	lwz r3, 0x5d3c(r14)
/* 804F7C4C  38 00 00 FF */	li r0, 0xff
/* 804F7C50  90 01 00 08 */	stw r0, 8(r1)
/* 804F7C54  38 80 00 00 */	li r4, 0
/* 804F7C58  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F7C5C  38 00 FF FF */	li r0, -1
/* 804F7C60  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F7C64  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F7C68  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F7C6C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F7C70  3B 15 23 74 */	addi r24, r21, 0x2374
/* 804F7C74  7C 92 C0 2E */	lwzx r4, r18, r24
/* 804F7C78  38 A0 00 00 */	li r5, 0
/* 804F7C7C  7C D6 A2 2E */	lhzx r6, r22, r20
/* 804F7C80  38 E1 00 9C */	addi r7, r1, 0x9c
/* 804F7C84  39 00 00 00 */	li r8, 0
/* 804F7C88  39 20 00 00 */	li r9, 0
/* 804F7C8C  39 40 00 00 */	li r10, 0
/* 804F7C90  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F7C94  4B B5 58 39 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F7C98  7C 72 C1 2E */	stwx r3, r18, r24
/* 804F7C9C  80 6E 5D 3C */	lwz r3, 0x5d3c(r14)
/* 804F7CA0  38 63 02 10 */	addi r3, r3, 0x210
/* 804F7CA4  7C 92 C0 2E */	lwzx r4, r18, r24
/* 804F7CA8  4B B5 3C 71 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804F7CAC  7C 65 1B 79 */	or. r5, r3, r3
/* 804F7CB0  41 82 00 3C */	beq lbl_804F7CEC
/* 804F7CB4  D3 E5 00 98 */	stfs f31, 0x98(r5)
/* 804F7CB8  D3 E5 00 9C */	stfs f31, 0x9c(r5)
/* 804F7CBC  D3 E5 00 A0 */	stfs f31, 0xa0(r5)
/* 804F7CC0  D3 E5 00 B0 */	stfs f31, 0xb0(r5)
/* 804F7CC4  D3 E5 00 B4 */	stfs f31, 0xb4(r5)
/* 804F7CC8  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F7CCC  80 63 00 04 */	lwz r3, 4(r3)
/* 804F7CD0  7C 71 1B 78 */	mr r17, r3
/* 804F7CD4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804F7CD8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F7CDC  38 63 00 90 */	addi r3, r3, 0x90
/* 804F7CE0  38 85 00 68 */	addi r4, r5, 0x68
/* 804F7CE4  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804F7CE8  4B D8 8A F9 */	bl func_802807E0
lbl_804F7CEC:
/* 804F7CEC  39 EF 00 01 */	addi r15, r15, 1
/* 804F7CF0  2C 0F 00 06 */	cmpwi r15, 6
/* 804F7CF4  3A 94 00 02 */	addi r20, r20, 2
/* 804F7CF8  3A B5 00 04 */	addi r21, r21, 4
/* 804F7CFC  41 80 FF 4C */	blt lbl_804F7C48
lbl_804F7D00:
/* 804F7D00  C0 12 07 6C */	lfs f0, 0x76c(r18)
/* 804F7D04  80 72 07 68 */	lwz r3, 0x768(r18)
/* 804F7D08  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804F7D0C  80 72 07 64 */	lwz r3, 0x764(r18)
/* 804F7D10  4B B1 57 19 */	bl play__14mDoExt_baseAnmFv
/* 804F7D14  C0 1A 02 58 */	lfs f0, 0x258(r26)
/* 804F7D18  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F7D1C  C0 1A 02 54 */	lfs f0, 0x254(r26)
/* 804F7D20  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F7D24  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F7D28  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F7D2C  38 61 00 C0 */	addi r3, r1, 0xc0
/* 804F7D30  38 92 05 38 */	addi r4, r18, 0x538
/* 804F7D34  4B D7 91 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F7D38  C0 12 05 38 */	lfs f0, 0x538(r18)
/* 804F7D3C  D0 12 05 50 */	stfs f0, 0x550(r18)
/* 804F7D40  C0 12 05 3C */	lfs f0, 0x53c(r18)
/* 804F7D44  D0 12 05 54 */	stfs f0, 0x554(r18)
/* 804F7D48  C0 12 05 40 */	lfs f0, 0x540(r18)
/* 804F7D4C  D0 12 05 58 */	stfs f0, 0x558(r18)
/* 804F7D50  C0 32 05 54 */	lfs f1, 0x554(r18)
/* 804F7D54  C0 1A 00 B4 */	lfs f0, 0xb4(r26)
/* 804F7D58  EC 01 00 2A */	fadds f0, f1, f0
/* 804F7D5C  D0 12 05 54 */	stfs f0, 0x554(r18)
/* 804F7D60  C0 32 05 38 */	lfs f1, 0x538(r18)
/* 804F7D64  D0 21 00 B4 */	stfs f1, 0xb4(r1)
/* 804F7D68  C0 12 05 3C */	lfs f0, 0x53c(r18)
/* 804F7D6C  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 804F7D70  C0 12 05 40 */	lfs f0, 0x540(r18)
/* 804F7D74  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 804F7D78  A8 72 07 70 */	lha r3, 0x770(r18)
/* 804F7D7C  7C 60 07 35 */	extsh. r0, r3
/* 804F7D80  41 82 00 18 */	beq lbl_804F7D98
/* 804F7D84  2C 03 00 01 */	cmpwi r3, 1
/* 804F7D88  40 81 00 1C */	ble lbl_804F7DA4
/* 804F7D8C  38 03 FF FF */	addi r0, r3, -1
/* 804F7D90  B0 12 07 70 */	sth r0, 0x770(r18)
/* 804F7D94  48 00 00 10 */	b lbl_804F7DA4
lbl_804F7D98:
/* 804F7D98  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 804F7D9C  EC 01 00 2A */	fadds f0, f1, f0
/* 804F7DA0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
lbl_804F7DA4:
/* 804F7DA4  38 72 16 B8 */	addi r3, r18, 0x16b8
/* 804F7DA8  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804F7DAC  4B D7 78 9D */	bl SetC__8cM3dGSphFRC4cXyz
/* 804F7DB0  38 72 16 B8 */	addi r3, r18, 0x16b8
/* 804F7DB4  C0 3A 00 BC */	lfs f1, 0xbc(r26)
/* 804F7DB8  4B D7 79 51 */	bl SetR__8cM3dGSphFf
/* 804F7DBC  7E E3 BB 78 */	mr r3, r23
/* 804F7DC0  38 92 15 94 */	addi r4, r18, 0x1594
/* 804F7DC4  4B D6 CD E5 */	bl Set__4cCcSFP8cCcD_Obj
/* 804F7DC8  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F7DCC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F7DD0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F7DD4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F7DD8  3A A0 00 00 */	li r21, 0
/* 804F7DDC  3A C0 00 00 */	li r22, 0
/* 804F7DE0  39 F9 01 A0 */	addi r15, r25, 0x1a0
/* 804F7DE4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F7DE8  39 C3 07 68 */	addi r14, r3, calc_mtx@l /* 0x80450768@l */
lbl_804F7DEC:
/* 804F7DEC  80 71 00 84 */	lwz r3, 0x84(r17)
/* 804F7DF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F7DF4  7C 0F B0 2E */	lwzx r0, r15, r22
/* 804F7DF8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 804F7DFC  7C 63 02 14 */	add r3, r3, r0
/* 804F7E00  80 8E 00 00 */	lwz r4, 0(r14)
/* 804F7E04  4B E4 E6 AD */	bl PSMTXCopy
/* 804F7E08  38 61 00 C0 */	addi r3, r1, 0xc0
/* 804F7E0C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804F7E10  4B D7 90 DD */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F7E14  38 15 00 02 */	addi r0, r21, 2
/* 804F7E18  1C 00 01 38 */	mulli r0, r0, 0x138
/* 804F7E1C  7E 92 02 14 */	add r20, r18, r0
/* 804F7E20  3B 14 0B C0 */	addi r24, r20, 0xbc0
/* 804F7E24  7F 03 C3 78 */	mr r3, r24
/* 804F7E28  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804F7E2C  4B D7 78 1D */	bl SetC__8cM3dGSphFRC4cXyz
/* 804F7E30  88 12 18 2B */	lbz r0, 0x182b(r18)
/* 804F7E34  7C 00 07 75 */	extsb. r0, r0
/* 804F7E38  41 82 00 20 */	beq lbl_804F7E58
/* 804F7E3C  7F 03 C3 78 */	mr r3, r24
/* 804F7E40  C0 3A 02 5C */	lfs f1, 0x25c(r26)
/* 804F7E44  38 99 01 B8 */	addi r4, r25, 0x1b8
/* 804F7E48  7C 04 B4 2E */	lfsx f0, r4, r22
/* 804F7E4C  EC 21 00 32 */	fmuls f1, f1, f0
/* 804F7E50  4B D7 78 B9 */	bl SetR__8cM3dGSphFf
/* 804F7E54  48 00 00 3C */	b lbl_804F7E90
lbl_804F7E58:
/* 804F7E58  A8 12 07 A2 */	lha r0, 0x7a2(r18)
/* 804F7E5C  2C 00 00 09 */	cmpwi r0, 9
/* 804F7E60  40 82 00 20 */	bne lbl_804F7E80
/* 804F7E64  7F 03 C3 78 */	mr r3, r24
/* 804F7E68  C0 3A 02 60 */	lfs f1, 0x260(r26)
/* 804F7E6C  38 99 01 B8 */	addi r4, r25, 0x1b8
/* 804F7E70  7C 04 B4 2E */	lfsx f0, r4, r22
/* 804F7E74  EC 21 00 32 */	fmuls f1, f1, f0
/* 804F7E78  4B D7 78 91 */	bl SetR__8cM3dGSphFf
/* 804F7E7C  48 00 00 14 */	b lbl_804F7E90
lbl_804F7E80:
/* 804F7E80  7F 03 C3 78 */	mr r3, r24
/* 804F7E84  38 99 01 B8 */	addi r4, r25, 0x1b8
/* 804F7E88  7C 24 B4 2E */	lfsx f1, r4, r22
/* 804F7E8C  4B D7 78 7D */	bl SetR__8cM3dGSphFf
lbl_804F7E90:
/* 804F7E90  7E E3 BB 78 */	mr r3, r23
/* 804F7E94  38 94 0A 9C */	addi r4, r20, 0xa9c
/* 804F7E98  4B D6 CD 11 */	bl Set__4cCcSFP8cCcD_Obj
/* 804F7E9C  3A B5 00 01 */	addi r21, r21, 1
/* 804F7EA0  2C 15 00 06 */	cmpwi r21, 6
/* 804F7EA4  3A D6 00 04 */	addi r22, r22, 4
/* 804F7EA8  41 80 FF 44 */	blt lbl_804F7DEC
/* 804F7EAC  38 60 00 00 */	li r3, 0
/* 804F7EB0  38 00 00 08 */	li r0, 8
/* 804F7EB4  7C 09 03 A6 */	mtctr r0
lbl_804F7EB8:
/* 804F7EB8  88 12 07 92 */	lbz r0, 0x792(r18)
/* 804F7EBC  7C 00 07 75 */	extsb. r0, r0
/* 804F7EC0  40 82 00 18 */	bne lbl_804F7ED8
/* 804F7EC4  38 83 0A 9C */	addi r4, r3, 0xa9c
/* 804F7EC8  7C 12 20 2E */	lwzx r0, r18, r4
/* 804F7ECC  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 804F7ED0  7C 12 21 2E */	stwx r0, r18, r4
/* 804F7ED4  48 00 00 14 */	b lbl_804F7EE8
lbl_804F7ED8:
/* 804F7ED8  38 83 0A 9C */	addi r4, r3, 0xa9c
/* 804F7EDC  7C 12 20 2E */	lwzx r0, r18, r4
/* 804F7EE0  60 00 00 0C */	ori r0, r0, 0xc
/* 804F7EE4  7C 12 21 2E */	stwx r0, r18, r4
lbl_804F7EE8:
/* 804F7EE8  88 12 18 2B */	lbz r0, 0x182b(r18)
/* 804F7EEC  7C 00 07 75 */	extsb. r0, r0
/* 804F7EF0  41 82 00 14 */	beq lbl_804F7F04
/* 804F7EF4  3C 80 00 10 */	lis r4, 0x10
/* 804F7EF8  38 03 0A AC */	addi r0, r3, 0xaac
/* 804F7EFC  7C 92 01 2E */	stwx r4, r18, r0
/* 804F7F00  48 00 00 10 */	b lbl_804F7F10
lbl_804F7F04:
/* 804F7F04  38 80 04 00 */	li r4, 0x400
/* 804F7F08  38 03 0A AC */	addi r0, r3, 0xaac
/* 804F7F0C  7C 92 01 2E */	stwx r4, r18, r0
lbl_804F7F10:
/* 804F7F10  38 63 01 38 */	addi r3, r3, 0x138
/* 804F7F14  42 00 FF A4 */	bdnz lbl_804F7EB8
/* 804F7F18  38 60 00 00 */	li r3, 0
/* 804F7F1C  98 72 18 2B */	stb r3, 0x182b(r18)
/* 804F7F20  88 12 18 29 */	lbz r0, 0x1829(r18)
/* 804F7F24  7C 00 07 75 */	extsb. r0, r0
/* 804F7F28  41 82 01 2C */	beq lbl_804F8054
/* 804F7F2C  38 72 15 80 */	addi r3, r18, 0x1580
/* 804F7F30  C0 3A 02 64 */	lfs f1, 0x264(r26)
/* 804F7F34  4B D7 77 D5 */	bl SetR__8cM3dGSphFf
/* 804F7F38  88 72 18 28 */	lbz r3, 0x1828(r18)
/* 804F7F3C  7C 60 07 75 */	extsb. r0, r3
/* 804F7F40  40 82 00 24 */	bne lbl_804F7F64
/* 804F7F44  80 71 00 84 */	lwz r3, 0x84(r17)
/* 804F7F48  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F7F4C  38 63 01 80 */	addi r3, r3, 0x180
/* 804F7F50  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804F7F54  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804F7F58  80 84 00 00 */	lwz r4, 0(r4)
/* 804F7F5C  4B E4 E5 55 */	bl PSMTXCopy
/* 804F7F60  48 00 00 A8 */	b lbl_804F8008
lbl_804F7F64:
/* 804F7F64  7C 60 07 74 */	extsb r0, r3
/* 804F7F68  2C 00 00 01 */	cmpwi r0, 1
/* 804F7F6C  40 82 00 24 */	bne lbl_804F7F90
/* 804F7F70  80 71 00 84 */	lwz r3, 0x84(r17)
/* 804F7F74  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F7F78  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 804F7F7C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804F7F80  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804F7F84  80 84 00 00 */	lwz r4, 0(r4)
/* 804F7F88  4B E4 E5 29 */	bl PSMTXCopy
/* 804F7F8C  48 00 00 7C */	b lbl_804F8008
lbl_804F7F90:
/* 804F7F90  2C 00 00 02 */	cmpwi r0, 2
/* 804F7F94  40 82 00 74 */	bne lbl_804F8008
/* 804F7F98  80 71 00 84 */	lwz r3, 0x84(r17)
/* 804F7F9C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F7FA0  38 63 00 90 */	addi r3, r3, 0x90
/* 804F7FA4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804F7FA8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804F7FAC  80 84 00 00 */	lwz r4, 0(r4)
/* 804F7FB0  4B E4 E5 01 */	bl PSMTXCopy
/* 804F7FB4  C0 52 18 30 */	lfs f2, 0x1830(r18)
/* 804F7FB8  C0 1A 02 68 */	lfs f0, 0x268(r26)
/* 804F7FBC  EC 20 00 B2 */	fmuls f1, f0, f2
/* 804F7FC0  C0 1A 00 AC */	lfs f0, 0xac(r26)
/* 804F7FC4  EC 40 00 B2 */	fmuls f2, f0, f2
/* 804F7FC8  C0 7A 00 3C */	lfs f3, 0x3c(r26)
/* 804F7FCC  38 60 00 01 */	li r3, 1
/* 804F7FD0  4B D7 8E 8D */	bl MtxTrans__FfffUc
/* 804F7FD4  38 72 15 80 */	addi r3, r18, 0x1580
/* 804F7FD8  C0 3A 01 DC */	lfs f1, 0x1dc(r26)
/* 804F7FDC  4B D7 77 2D */	bl SetR__8cM3dGSphFf
/* 804F7FE0  C0 32 18 30 */	lfs f1, 0x1830(r18)
/* 804F7FE4  C0 1A 02 6C */	lfs f0, 0x26c(r26)
/* 804F7FE8  EC 01 00 2A */	fadds f0, f1, f0
/* 804F7FEC  D0 12 18 30 */	stfs f0, 0x1830(r18)
/* 804F7FF0  C0 32 18 30 */	lfs f1, 0x1830(r18)
/* 804F7FF4  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804F7FF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F7FFC  40 81 00 0C */	ble lbl_804F8008
/* 804F8000  EC 01 00 28 */	fsubs f0, f1, f0
/* 804F8004  D0 12 18 30 */	stfs f0, 0x1830(r18)
lbl_804F8008:
/* 804F8008  38 61 00 C0 */	addi r3, r1, 0xc0
/* 804F800C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804F8010  4B D7 8E DD */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F8014  88 12 18 2A */	lbz r0, 0x182a(r18)
/* 804F8018  7C 00 07 75 */	extsb. r0, r0
/* 804F801C  40 82 00 1C */	bne lbl_804F8038
/* 804F8020  38 00 00 01 */	li r0, 1
/* 804F8024  98 12 18 2A */	stb r0, 0x182a(r18)
/* 804F8028  38 72 14 5C */	addi r3, r18, 0x145c
/* 804F802C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804F8030  4B B8 CA 49 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 804F8034  48 00 00 10 */	b lbl_804F8044
lbl_804F8038:
/* 804F8038  38 72 14 5C */	addi r3, r18, 0x145c
/* 804F803C  38 81 00 B4 */	addi r4, r1, 0xb4
/* 804F8040  4B B8 CA 85 */	bl MoveCAt__8dCcD_SphFR4cXyz
lbl_804F8044:
/* 804F8044  7E E3 BB 78 */	mr r3, r23
/* 804F8048  38 92 14 5C */	addi r4, r18, 0x145c
/* 804F804C  4B D6 CB 5D */	bl Set__4cCcSFP8cCcD_Obj
/* 804F8050  48 00 00 08 */	b lbl_804F8058
lbl_804F8054:
/* 804F8054  98 72 18 2A */	stb r3, 0x182a(r18)
lbl_804F8058:
/* 804F8058  7E 43 93 78 */	mr r3, r18
/* 804F805C  4B FF EB 75 */	bl effect_set__FP10e_fm_class
/* 804F8060  80 72 07 A8 */	lwz r3, 0x7a8(r18)
/* 804F8064  3C 03 FF FB */	addis r0, r3, 0xfffb
/* 804F8068  28 00 64 FF */	cmplwi r0, 0x64ff
/* 804F806C  41 82 00 68 */	beq lbl_804F80D4
/* 804F8070  C0 12 04 D0 */	lfs f0, 0x4d0(r18)
/* 804F8074  D0 12 23 9C */	stfs f0, 0x239c(r18)
/* 804F8078  C0 12 04 D4 */	lfs f0, 0x4d4(r18)
/* 804F807C  D0 12 23 A0 */	stfs f0, 0x23a0(r18)
/* 804F8080  C0 12 04 D8 */	lfs f0, 0x4d8(r18)
/* 804F8084  D0 12 23 A4 */	stfs f0, 0x23a4(r18)
/* 804F8088  C0 32 23 A0 */	lfs f1, 0x23a0(r18)
/* 804F808C  C0 1A 00 E8 */	lfs f0, 0xe8(r26)
/* 804F8090  EC 01 00 2A */	fadds f0, f1, f0
/* 804F8094  D0 12 23 A0 */	stfs f0, 0x23a0(r18)
/* 804F8098  38 00 00 AF */	li r0, 0xaf
/* 804F809C  B0 12 23 A8 */	sth r0, 0x23a8(r18)
/* 804F80A0  38 00 00 5D */	li r0, 0x5d
/* 804F80A4  B0 12 23 AA */	sth r0, 0x23aa(r18)
/* 804F80A8  38 00 00 00 */	li r0, 0
/* 804F80AC  B0 12 23 AC */	sth r0, 0x23ac(r18)
/* 804F80B0  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x804FAEA4@ha */
/* 804F80B4  38 63 AE A4 */	addi r3, r3, l_HIO@l /* 0x804FAEA4@l */
/* 804F80B8  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 804F80BC  C0 10 00 08 */	lfs f0, 8(r16)
/* 804F80C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804F80C4  D0 12 23 B0 */	stfs f0, 0x23b0(r18)
/* 804F80C8  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804F80CC  D0 12 23 B4 */	stfs f0, 0x23b4(r18)
/* 804F80D0  48 00 00 0C */	b lbl_804F80DC
lbl_804F80D4:
/* 804F80D4  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F80D8  D0 12 23 B0 */	stfs f0, 0x23b0(r18)
lbl_804F80DC:
/* 804F80DC  3A 00 00 00 */	li r16, 0
/* 804F80E0  3B E0 00 00 */	li r31, 0
/* 804F80E4  3B C0 00 00 */	li r30, 0
/* 804F80E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F80EC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F80F0  3D D2 00 02 */	addis r14, r18, 2
/* 804F80F4  38 19 01 D0 */	addi r0, r25, 0x1d0
/* 804F80F8  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 804F80FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804F8100  38 03 07 68 */	addi r0, r3, calc_mtx@l /* 0x80450768@l */
/* 804F8104  90 01 00 DC */	stw r0, 0xdc(r1)
lbl_804F8108:
/* 804F8108  88 0E B0 80 */	lbz r0, -0x4f80(r14)
/* 804F810C  7C 00 07 75 */	extsb. r0, r0
/* 804F8110  41 82 00 30 */	beq lbl_804F8140
/* 804F8114  2C 10 00 01 */	cmpwi r16, 1
/* 804F8118  41 81 00 18 */	bgt lbl_804F8130
/* 804F811C  38 00 00 15 */	li r0, 0x15
/* 804F8120  3C 7E 00 01 */	addis r3, r30, 1
/* 804F8124  38 63 85 8C */	addi r3, r3, -31348
/* 804F8128  7C 12 19 2E */	stwx r0, r18, r3
/* 804F812C  48 00 00 14 */	b lbl_804F8140
lbl_804F8130:
/* 804F8130  38 00 00 12 */	li r0, 0x12
/* 804F8134  3C 7E 00 01 */	addis r3, r30, 1
/* 804F8138  38 63 85 8C */	addi r3, r3, -31348
/* 804F813C  7C 12 19 2E */	stwx r0, r18, r3
lbl_804F8140:
/* 804F8140  80 71 00 84 */	lwz r3, 0x84(r17)
/* 804F8144  80 83 00 0C */	lwz r4, 0xc(r3)
/* 804F8148  80 61 00 D8 */	lwz r3, 0xd8(r1)
/* 804F814C  7C 03 F8 2E */	lwzx r0, r3, r31
/* 804F8150  1C 00 00 30 */	mulli r0, r0, 0x30
/* 804F8154  7C 64 02 14 */	add r3, r4, r0
/* 804F8158  80 81 00 DC */	lwz r4, 0xdc(r1)
/* 804F815C  80 84 00 00 */	lwz r4, 0(r4)
/* 804F8160  4B E4 E3 51 */	bl PSMTXCopy
/* 804F8164  2C 10 00 00 */	cmpwi r16, 0
/* 804F8168  40 82 00 20 */	bne lbl_804F8188
/* 804F816C  C0 1A 02 54 */	lfs f0, 0x254(r26)
/* 804F8170  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F8174  C0 1A 00 38 */	lfs f0, 0x38(r26)
/* 804F8178  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F817C  C0 1A 00 BC */	lfs f0, 0xbc(r26)
/* 804F8180  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F8184  48 00 00 6C */	b lbl_804F81F0
lbl_804F8188:
/* 804F8188  2C 10 00 01 */	cmpwi r16, 1
/* 804F818C  40 82 00 20 */	bne lbl_804F81AC
/* 804F8190  C0 1A 02 54 */	lfs f0, 0x254(r26)
/* 804F8194  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F8198  C0 1A 00 38 */	lfs f0, 0x38(r26)
/* 804F819C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F81A0  C0 1A 02 70 */	lfs f0, 0x270(r26)
/* 804F81A4  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F81A8  48 00 00 48 */	b lbl_804F81F0
lbl_804F81AC:
/* 804F81AC  2C 10 00 02 */	cmpwi r16, 2
/* 804F81B0  40 82 00 20 */	bne lbl_804F81D0
/* 804F81B4  C0 1A 02 1C */	lfs f0, 0x21c(r26)
/* 804F81B8  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F81BC  C0 1A 00 B4 */	lfs f0, 0xb4(r26)
/* 804F81C0  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F81C4  C0 1A 02 74 */	lfs f0, 0x274(r26)
/* 804F81C8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F81CC  48 00 00 24 */	b lbl_804F81F0
lbl_804F81D0:
/* 804F81D0  2C 10 00 03 */	cmpwi r16, 3
/* 804F81D4  40 82 00 1C */	bne lbl_804F81F0
/* 804F81D8  C0 1A 02 1C */	lfs f0, 0x21c(r26)
/* 804F81DC  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F81E0  C0 1A 00 B4 */	lfs f0, 0xb4(r26)
/* 804F81E4  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 804F81E8  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 804F81EC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
lbl_804F81F0:
/* 804F81F0  38 61 00 C0 */	addi r3, r1, 0xc0
/* 804F81F4  7E D2 F2 14 */	add r22, r18, r30
/* 804F81F8  38 96 24 24 */	addi r4, r22, 0x2424
/* 804F81FC  4B D7 8C F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804F8200  88 72 23 99 */	lbz r3, 0x2399(r18)
/* 804F8204  2C 03 00 01 */	cmpwi r3, 1
/* 804F8208  40 82 00 0C */	bne lbl_804F8214
/* 804F820C  2C 10 00 00 */	cmpwi r16, 0
/* 804F8210  41 82 00 4C */	beq lbl_804F825C
lbl_804F8214:
/* 804F8214  7C 60 07 74 */	extsb r0, r3
/* 804F8218  2C 00 00 02 */	cmpwi r0, 2
/* 804F821C  40 82 00 0C */	bne lbl_804F8228
/* 804F8220  2C 10 00 01 */	cmpwi r16, 1
/* 804F8224  41 82 00 38 */	beq lbl_804F825C
lbl_804F8228:
/* 804F8228  7E 43 93 78 */	mr r3, r18
/* 804F822C  39 F6 23 BC */	addi r15, r22, 0x23bc
/* 804F8230  7D E4 7B 78 */	mr r4, r15
/* 804F8234  7E 05 83 78 */	mr r5, r16
/* 804F8238  4B FF CF 11 */	bl chain_control1__FP10e_fm_classP7chain_si
/* 804F823C  7E 43 93 78 */	mr r3, r18
/* 804F8240  7D E4 7B 78 */	mr r4, r15
/* 804F8244  7E 05 83 78 */	mr r5, r16
/* 804F8248  4B FF D7 49 */	bl chain_control2__FP10e_fm_classP7chain_si
/* 804F824C  7E 43 93 78 */	mr r3, r18
/* 804F8250  7D E4 7B 78 */	mr r4, r15
/* 804F8254  7E 05 83 78 */	mr r5, r16
/* 804F8258  4B FF DC 9D */	bl chain_control3__FP10e_fm_classP7chain_si
lbl_804F825C:
/* 804F825C  2C 10 00 02 */	cmpwi r16, 2
/* 804F8260  40 80 01 A4 */	bge lbl_804F8404
/* 804F8264  88 12 18 28 */	lbz r0, 0x1828(r18)
/* 804F8268  7C 00 07 74 */	extsb r0, r0
/* 804F826C  7C 10 00 00 */	cmpw r16, r0
/* 804F8270  40 82 01 94 */	bne lbl_804F8404
/* 804F8274  88 12 18 29 */	lbz r0, 0x1829(r18)
/* 804F8278  7C 00 07 75 */	extsb. r0, r0
/* 804F827C  41 82 01 88 */	beq lbl_804F8404
/* 804F8280  3C 70 00 02 */	addis r3, r16, 2
/* 804F8284  38 63 AB 0C */	addi r3, r3, -21748
/* 804F8288  7C 12 18 AE */	lbzx r0, r18, r3
/* 804F828C  7C 00 07 75 */	extsb. r0, r0
/* 804F8290  40 82 00 7C */	bne lbl_804F830C
/* 804F8294  38 00 00 01 */	li r0, 1
/* 804F8298  7C 12 19 AE */	stbx r0, r18, r3
/* 804F829C  3B 80 00 00 */	li r28, 0
/* 804F82A0  39 E0 00 00 */	li r15, 0
/* 804F82A4  3A 80 00 00 */	li r20, 0
/* 804F82A8  3F 16 00 01 */	addis r24, r22, 1
/* 804F82AC  3A B9 01 E0 */	addi r21, r25, 0x1e0
lbl_804F82B0:
/* 804F82B0  7C 95 A0 2E */	lwzx r4, r21, r20
/* 804F82B4  80 18 85 8C */	lwz r0, -0x7a74(r24)
/* 804F82B8  7C 04 00 00 */	cmpw r4, r0
/* 804F82BC  40 80 00 24 */	bge lbl_804F82E0
/* 804F82C0  3C 6F 00 02 */	addis r3, r15, 2
/* 804F82C4  38 63 AB 10 */	addi r3, r3, -21744
/* 804F82C8  7C 72 1A 14 */	add r3, r18, r3
/* 804F82CC  1C 84 00 0C */	mulli r4, r4, 0xc
/* 804F82D0  38 84 24 30 */	addi r4, r4, 0x2430
/* 804F82D4  7C 96 22 14 */	add r4, r22, r4
/* 804F82D8  4B B8 C7 A1 */	bl StartCAt__8dCcD_SphFR4cXyz
/* 804F82DC  48 00 00 18 */	b lbl_804F82F4
lbl_804F82E0:
/* 804F82E0  3C 6F 00 02 */	addis r3, r15, 2
/* 804F82E4  38 63 AB 10 */	addi r3, r3, -21744
/* 804F82E8  7C 72 1A 14 */	add r3, r18, r3
/* 804F82EC  38 81 00 A8 */	addi r4, r1, 0xa8
/* 804F82F0  4B B8 C7 89 */	bl StartCAt__8dCcD_SphFR4cXyz
lbl_804F82F4:
/* 804F82F4  3B 9C 00 01 */	addi r28, r28, 1
/* 804F82F8  2C 1C 00 04 */	cmpwi r28, 4
/* 804F82FC  39 EF 01 38 */	addi r15, r15, 0x138
/* 804F8300  3A 94 00 04 */	addi r20, r20, 4
/* 804F8304  41 80 FF AC */	blt lbl_804F82B0
/* 804F8308  48 00 00 FC */	b lbl_804F8404
lbl_804F830C:
/* 804F830C  39 E0 00 00 */	li r15, 0
/* 804F8310  3B A0 00 00 */	li r29, 0
/* 804F8314  3B 80 00 00 */	li r28, 0
/* 804F8318  3F 16 00 01 */	addis r24, r22, 1
/* 804F831C  3A B9 01 E0 */	addi r21, r25, 0x1e0
lbl_804F8320:
/* 804F8320  7C 95 E0 2E */	lwzx r4, r21, r28
/* 804F8324  80 18 85 8C */	lwz r0, -0x7a74(r24)
/* 804F8328  7C 04 00 00 */	cmpw r4, r0
/* 804F832C  40 80 00 70 */	bge lbl_804F839C
/* 804F8330  3C 7D 00 02 */	addis r3, r29, 2
/* 804F8334  38 63 AB 10 */	addi r3, r3, -21744
/* 804F8338  7C 72 1A 14 */	add r3, r18, r3
/* 804F833C  1C 84 00 0C */	mulli r4, r4, 0xc
/* 804F8340  38 84 24 30 */	addi r4, r4, 0x2430
/* 804F8344  7C 96 22 14 */	add r4, r22, r4
/* 804F8348  4B B8 C7 7D */	bl MoveCAt__8dCcD_SphFR4cXyz
/* 804F834C  2C 0F 00 02 */	cmpwi r15, 2
/* 804F8350  40 82 00 60 */	bne lbl_804F83B0
/* 804F8354  7C 15 E0 2E */	lwzx r0, r21, r28
/* 804F8358  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F835C  38 63 24 30 */	addi r3, r3, 0x2430
/* 804F8360  7C 76 1A 14 */	add r3, r22, r3
/* 804F8364  C0 03 00 00 */	lfs f0, 0(r3)
/* 804F8368  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 804F836C  C0 23 00 04 */	lfs f1, 4(r3)
/* 804F8370  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 804F8374  C0 03 00 08 */	lfs f0, 8(r3)
/* 804F8378  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 804F837C  C0 5A 00 AC */	lfs f2, 0xac(r26)
/* 804F8380  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804F8384  40 80 00 2C */	bge lbl_804F83B0
/* 804F8388  38 61 00 C0 */	addi r3, r1, 0xc0
/* 804F838C  C0 3A 00 68 */	lfs f1, 0x68(r26)
/* 804F8390  88 92 18 28 */	lbz r4, 0x1828(r18)
/* 804F8394  4B FF 73 21 */	bl hasira_hahen_hit__FP4cXyzffSc
/* 804F8398  48 00 00 18 */	b lbl_804F83B0
lbl_804F839C:
/* 804F839C  3C 7D 00 02 */	addis r3, r29, 2
/* 804F83A0  38 63 AB 10 */	addi r3, r3, -21744
/* 804F83A4  7C 72 1A 14 */	add r3, r18, r3
/* 804F83A8  38 81 00 A8 */	addi r4, r1, 0xa8
/* 804F83AC  4B B8 C7 19 */	bl MoveCAt__8dCcD_SphFR4cXyz
lbl_804F83B0:
/* 804F83B0  7E E3 BB 78 */	mr r3, r23
/* 804F83B4  7E 92 EA 14 */	add r20, r18, r29
/* 804F83B8  3C 94 00 02 */	addis r4, r20, 2
/* 804F83BC  38 84 AB 10 */	addi r4, r4, -21744
/* 804F83C0  4B D6 C7 E9 */	bl Set__4cCcSFP8cCcD_Obj
/* 804F83C4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 804F83C8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 804F83CC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804F83D0  41 82 00 14 */	beq lbl_804F83E4
/* 804F83D4  38 00 00 02 */	li r0, 2
/* 804F83D8  3C 74 00 02 */	addis r3, r20, 2
/* 804F83DC  98 03 AB 87 */	stb r0, -0x5479(r3)
/* 804F83E0  48 00 00 10 */	b lbl_804F83F0
lbl_804F83E4:
/* 804F83E4  38 00 00 0E */	li r0, 0xe
/* 804F83E8  3C 74 00 02 */	addis r3, r20, 2
/* 804F83EC  98 03 AB 87 */	stb r0, -0x5479(r3)
lbl_804F83F0:
/* 804F83F0  39 EF 00 01 */	addi r15, r15, 1
/* 804F83F4  2C 0F 00 04 */	cmpwi r15, 4
/* 804F83F8  3B BD 01 38 */	addi r29, r29, 0x138
/* 804F83FC  3B 9C 00 04 */	addi r28, r28, 4
/* 804F8400  41 80 FF 20 */	blt lbl_804F8320
lbl_804F8404:
/* 804F8404  3C 96 00 01 */	addis r4, r22, 1
/* 804F8408  C0 04 84 44 */	lfs f0, -0x7bbc(r4)
/* 804F840C  D0 04 84 50 */	stfs f0, -0x7bb0(r4)
/* 804F8410  C0 04 84 48 */	lfs f0, -0x7bb8(r4)
/* 804F8414  D0 04 84 54 */	stfs f0, -0x7bac(r4)
/* 804F8418  C0 04 84 4C */	lfs f0, -0x7bb4(r4)
/* 804F841C  D0 04 84 58 */	stfs f0, -0x7ba8(r4)
/* 804F8420  80 04 85 8C */	lwz r0, -0x7a74(r4)
/* 804F8424  7C 00 0E 70 */	srawi r0, r0, 1
/* 804F8428  7C 60 01 94 */	addze r3, r0
/* 804F842C  38 03 00 04 */	addi r0, r3, 4
/* 804F8430  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804F8434  38 63 24 30 */	addi r3, r3, 0x2430
/* 804F8438  7C 76 1A 14 */	add r3, r22, r3
/* 804F843C  C0 03 00 00 */	lfs f0, 0(r3)
/* 804F8440  D0 04 84 44 */	stfs f0, -0x7bbc(r4)
/* 804F8444  C0 03 00 04 */	lfs f0, 4(r3)
/* 804F8448  D0 04 84 48 */	stfs f0, -0x7bb8(r4)
/* 804F844C  C0 03 00 08 */	lfs f0, 8(r3)
/* 804F8450  D0 04 84 4C */	stfs f0, -0x7bb4(r4)
/* 804F8454  3A 10 00 01 */	addi r16, r16, 1
/* 804F8458  2C 10 00 04 */	cmpwi r16, 4
/* 804F845C  3B FF 00 04 */	addi r31, r31, 4
/* 804F8460  3B DE 61 D4 */	addi r30, r30, 0x61d4
/* 804F8464  41 80 FC A4 */	blt lbl_804F8108
/* 804F8468  88 12 23 99 */	lbz r0, 0x2399(r18)
/* 804F846C  7C 00 07 75 */	extsb. r0, r0
/* 804F8470  41 82 00 B0 */	beq lbl_804F8520
/* 804F8474  3A 00 00 00 */	li r16, 0
/* 804F8478  3A A0 00 00 */	li r21, 0
/* 804F847C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F8480  39 C3 61 C0 */	addi r14, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F8484  3A F9 01 F4 */	addi r23, r25, 0x1f4
/* 804F8488  39 F9 01 F0 */	addi r15, r25, 0x1f0
lbl_804F848C:
/* 804F848C  3A 80 00 00 */	li r20, 0
/* 804F8490  3A C0 00 00 */	li r22, 0
lbl_804F8494:
/* 804F8494  80 6E 5D 3C */	lwz r3, 0x5d3c(r14)
/* 804F8498  38 80 00 00 */	li r4, 0
/* 804F849C  90 81 00 08 */	stw r4, 8(r1)
/* 804F84A0  38 00 FF FF */	li r0, -1
/* 804F84A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F84A8  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F84AC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F84B0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F84B4  38 80 00 00 */	li r4, 0
/* 804F84B8  7C AF AA 2E */	lhzx r5, r15, r21
/* 804F84BC  88 12 23 99 */	lbz r0, 0x2399(r18)
/* 804F84C0  7C 06 07 74 */	extsb r6, r0
/* 804F84C4  38 06 FF FF */	addi r0, r6, -1
/* 804F84C8  1C C0 61 D4 */	mulli r6, r0, 0x61d4
/* 804F84CC  7C 17 B0 2E */	lwzx r0, r23, r22
/* 804F84D0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 804F84D4  7C C6 02 14 */	add r6, r6, r0
/* 804F84D8  38 C6 24 30 */	addi r6, r6, 0x2430
/* 804F84DC  7C D2 32 14 */	add r6, r18, r6
/* 804F84E0  38 E0 00 00 */	li r7, 0
/* 804F84E4  39 00 00 00 */	li r8, 0
/* 804F84E8  39 20 00 00 */	li r9, 0
/* 804F84EC  39 40 00 FF */	li r10, 0xff
/* 804F84F0  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F84F4  4B B5 45 9D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F84F8  3A 94 00 01 */	addi r20, r20, 1
/* 804F84FC  2C 14 00 03 */	cmpwi r20, 3
/* 804F8500  3A D6 00 04 */	addi r22, r22, 4
/* 804F8504  41 80 FF 90 */	blt lbl_804F8494
/* 804F8508  3A 10 00 01 */	addi r16, r16, 1
/* 804F850C  2C 10 00 02 */	cmpwi r16, 2
/* 804F8510  3A B5 00 02 */	addi r21, r21, 2
/* 804F8514  41 80 FF 78 */	blt lbl_804F848C
/* 804F8518  38 00 00 00 */	li r0, 0
/* 804F851C  98 12 23 99 */	stb r0, 0x2399(r18)
lbl_804F8520:
/* 804F8520  38 00 00 00 */	li r0, 0
/* 804F8524  98 12 18 29 */	stb r0, 0x1829(r18)
/* 804F8528  88 12 04 E2 */	lbz r0, 0x4e2(r18)
/* 804F852C  7C 03 07 74 */	extsb r3, r0
/* 804F8530  4B B3 4B 3D */	bl dComIfGp_getReverb__Fi
/* 804F8534  7C 65 1B 78 */	mr r5, r3
/* 804F8538  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F853C  38 80 00 00 */	li r4, 0
/* 804F8540  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F8544  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804F8548  7D 89 03 A6 */	mtctr r12
/* 804F854C  4E 80 04 21 */	bctrl 
/* 804F8550  3C 72 00 02 */	addis r3, r18, 2
/* 804F8554  80 03 B0 7C */	lwz r0, -0x4f84(r3)
/* 804F8558  2C 00 00 00 */	cmpwi r0, 0
/* 804F855C  40 82 00 40 */	bne lbl_804F859C
/* 804F8560  7E 43 93 78 */	mr r3, r18
/* 804F8564  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 804F8568  4B B2 22 79 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804F856C  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x804FAEA4@ha */
/* 804F8570  38 63 AE A4 */	addi r3, r3, l_HIO@l /* 0x804FAEA4@l */
/* 804F8574  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 804F8578  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F857C  40 80 00 14 */	bge lbl_804F8590
/* 804F8580  38 60 00 00 */	li r3, 0
/* 804F8584  38 80 FF FF */	li r4, -1
/* 804F8588  4B B3 55 15 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 804F858C  48 00 00 10 */	b lbl_804F859C
lbl_804F8590:
/* 804F8590  38 60 00 00 */	li r3, 0
/* 804F8594  38 80 FF FF */	li r4, -1
/* 804F8598  4B B3 55 69 */	bl dComIfGs_offOneZoneSwitch__Fii
lbl_804F859C:
/* 804F859C  88 72 23 98 */	lbz r3, 0x2398(r18)
/* 804F85A0  7C 60 07 75 */	extsb. r0, r3
/* 804F85A4  41 82 00 14 */	beq lbl_804F85B8
/* 804F85A8  38 03 FF FF */	addi r0, r3, -1
/* 804F85AC  98 12 23 98 */	stb r0, 0x2398(r18)
/* 804F85B0  38 00 00 01 */	li r0, 1
/* 804F85B4  98 12 18 2C */	stb r0, 0x182c(r18)
lbl_804F85B8:
/* 804F85B8  88 72 18 2C */	lbz r3, 0x182c(r18)
/* 804F85BC  7C 60 07 75 */	extsb. r0, r3
/* 804F85C0  41 82 02 AC */	beq lbl_804F886C
/* 804F85C4  7C 60 07 74 */	extsb r0, r3
/* 804F85C8  2C 00 00 01 */	cmpwi r0, 1
/* 804F85CC  40 82 00 C8 */	bne lbl_804F8694
/* 804F85D0  39 E0 00 00 */	li r15, 0
/* 804F85D4  3A 00 00 00 */	li r16, 0
/* 804F85D8  3A 80 00 00 */	li r20, 0
/* 804F85DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F85E0  39 C3 61 C0 */	addi r14, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F85E4  3A B9 02 00 */	addi r21, r25, 0x200
lbl_804F85E8:
/* 804F85E8  80 6E 5D 3C */	lwz r3, 0x5d3c(r14)
/* 804F85EC  38 00 00 FF */	li r0, 0xff
/* 804F85F0  90 01 00 08 */	stw r0, 8(r1)
/* 804F85F4  38 80 00 00 */	li r4, 0
/* 804F85F8  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F85FC  38 00 FF FF */	li r0, -1
/* 804F8600  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F8604  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F8608  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F860C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F8610  3A D4 23 8C */	addi r22, r20, 0x238c
/* 804F8614  7C 92 B0 2E */	lwzx r4, r18, r22
/* 804F8618  38 A0 00 00 */	li r5, 0
/* 804F861C  7C D5 82 2E */	lhzx r6, r21, r16
/* 804F8620  38 F2 05 38 */	addi r7, r18, 0x538
/* 804F8624  39 00 00 00 */	li r8, 0
/* 804F8628  39 20 00 00 */	li r9, 0
/* 804F862C  39 40 00 00 */	li r10, 0
/* 804F8630  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F8634  4B B5 4E 99 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F8638  7C 72 B1 2E */	stwx r3, r18, r22
/* 804F863C  2C 0F 00 02 */	cmpwi r15, 2
/* 804F8640  40 82 00 40 */	bne lbl_804F8680
/* 804F8644  80 6E 5D 3C */	lwz r3, 0x5d3c(r14)
/* 804F8648  38 63 02 10 */	addi r3, r3, 0x210
/* 804F864C  7C 92 B0 2E */	lwzx r4, r18, r22
/* 804F8650  4B B5 32 C9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804F8654  7C 65 1B 79 */	or. r5, r3, r3
/* 804F8658  41 82 00 28 */	beq lbl_804F8680
/* 804F865C  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F8660  80 63 00 04 */	lwz r3, 4(r3)
/* 804F8664  7C 71 1B 78 */	mr r17, r3
/* 804F8668  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804F866C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F8670  38 63 00 90 */	addi r3, r3, 0x90
/* 804F8674  38 85 00 68 */	addi r4, r5, 0x68
/* 804F8678  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804F867C  4B D8 81 65 */	bl func_802807E0
lbl_804F8680:
/* 804F8680  39 EF 00 01 */	addi r15, r15, 1
/* 804F8684  2C 0F 00 03 */	cmpwi r15, 3
/* 804F8688  3A 10 00 02 */	addi r16, r16, 2
/* 804F868C  3A 94 00 04 */	addi r20, r20, 4
/* 804F8690  41 80 FF 58 */	blt lbl_804F85E8
lbl_804F8694:
/* 804F8694  88 12 18 2C */	lbz r0, 0x182c(r18)
/* 804F8698  2C 00 00 02 */	cmpwi r0, 2
/* 804F869C  40 82 01 28 */	bne lbl_804F87C4
/* 804F86A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F86A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F86A8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 804F86AC  38 80 00 00 */	li r4, 0
/* 804F86B0  90 81 00 08 */	stw r4, 8(r1)
/* 804F86B4  38 00 FF FF */	li r0, -1
/* 804F86B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F86BC  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F86C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F86C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F86C8  38 80 00 00 */	li r4, 0
/* 804F86CC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008491@ha */
/* 804F86D0  38 A5 84 91 */	addi r5, r5, 0x8491 /* 0x00008491@l */
/* 804F86D4  38 D2 05 38 */	addi r6, r18, 0x538
/* 804F86D8  38 E0 00 00 */	li r7, 0
/* 804F86DC  39 00 00 00 */	li r8, 0
/* 804F86E0  39 20 00 00 */	li r9, 0
/* 804F86E4  39 40 00 FF */	li r10, 0xff
/* 804F86E8  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F86EC  4B B5 43 A5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F86F0  7E 43 93 78 */	mr r3, r18
/* 804F86F4  38 92 05 38 */	addi r4, r18, 0x538
/* 804F86F8  38 A0 00 05 */	li r5, 5
/* 804F86FC  38 C0 00 00 */	li r6, 0
/* 804F8700  38 E0 00 FF */	li r7, 0xff
/* 804F8704  4B B2 43 D5 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 804F8708  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007016F@ha */
/* 804F870C  38 03 01 6F */	addi r0, r3, 0x016F /* 0x0007016F@l */
/* 804F8710  90 01 00 20 */	stw r0, 0x20(r1)
/* 804F8714  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804F8718  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804F871C  80 63 00 00 */	lwz r3, 0(r3)
/* 804F8720  38 81 00 20 */	addi r4, r1, 0x20
/* 804F8724  38 A0 00 00 */	li r5, 0
/* 804F8728  38 C0 00 00 */	li r6, 0
/* 804F872C  38 E0 00 00 */	li r7, 0
/* 804F8730  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F8734  FC 40 08 90 */	fmr f2, f1
/* 804F8738  C0 7A 00 88 */	lfs f3, 0x88(r26)
/* 804F873C  FC 80 18 90 */	fmr f4, f3
/* 804F8740  39 00 00 00 */	li r8, 0
/* 804F8744  4B DB 32 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804F8748  C0 3A 00 3C */	lfs f1, 0x3c(r26)
/* 804F874C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 804F8750  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804F8754  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804F8758  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 804F875C  38 73 4C 9C */	addi r3, r19, 0x4c9c
/* 804F8760  38 80 00 05 */	li r4, 5
/* 804F8764  38 A0 00 01 */	li r5, 1
/* 804F8768  38 C1 00 78 */	addi r6, r1, 0x78
/* 804F876C  4B B7 72 B9 */	bl StartShock__12dVibration_cFii4cXyz
/* 804F8770  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804F8774  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804F8778  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804F877C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 804F8780  80 12 04 E4 */	lwz r0, 0x4e4(r18)
/* 804F8784  90 01 00 58 */	stw r0, 0x58(r1)
/* 804F8788  A0 12 04 E8 */	lhz r0, 0x4e8(r18)
/* 804F878C  B0 01 00 5C */	sth r0, 0x5c(r1)
/* 804F8790  A8 61 00 5A */	lha r3, 0x5a(r1)
/* 804F8794  38 03 08 00 */	addi r0, r3, 0x800
/* 804F8798  B0 01 00 5A */	sth r0, 0x5a(r1)
/* 804F879C  38 72 05 38 */	addi r3, r18, 0x538
/* 804F87A0  38 80 00 22 */	li r4, 0x22
/* 804F87A4  88 12 04 E2 */	lbz r0, 0x4e2(r18)
/* 804F87A8  7C 05 07 74 */	extsb r5, r0
/* 804F87AC  38 C1 00 58 */	addi r6, r1, 0x58
/* 804F87B0  38 E0 00 00 */	li r7, 0
/* 804F87B4  C0 3A 00 C0 */	lfs f1, 0xc0(r26)
/* 804F87B8  C0 5A 00 B4 */	lfs f2, 0xb4(r26)
/* 804F87BC  39 00 FF FF */	li r8, -1
/* 804F87C0  4B B2 39 15 */	bl fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
lbl_804F87C4:
/* 804F87C4  88 12 18 2C */	lbz r0, 0x182c(r18)
/* 804F87C8  2C 00 00 03 */	cmpwi r0, 3
/* 804F87CC  40 82 00 98 */	bne lbl_804F8864
/* 804F87D0  3A 80 00 00 */	li r20, 0
/* 804F87D4  39 C0 00 00 */	li r14, 0
/* 804F87D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F87DC  3A 03 61 C0 */	addi r16, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F87E0  39 F9 02 08 */	addi r15, r25, 0x208
lbl_804F87E4:
/* 804F87E4  80 70 5D 3C */	lwz r3, 0x5d3c(r16)
/* 804F87E8  38 80 00 00 */	li r4, 0
/* 804F87EC  90 81 00 08 */	stw r4, 8(r1)
/* 804F87F0  38 00 FF FF */	li r0, -1
/* 804F87F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804F87F8  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F87FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F8800  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F8804  38 80 00 00 */	li r4, 0
/* 804F8808  7C AF 72 2E */	lhzx r5, r15, r14
/* 804F880C  38 D2 04 D0 */	addi r6, r18, 0x4d0
/* 804F8810  38 E0 00 00 */	li r7, 0
/* 804F8814  39 00 00 00 */	li r8, 0
/* 804F8818  39 20 00 00 */	li r9, 0
/* 804F881C  39 40 00 FF */	li r10, 0xff
/* 804F8820  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F8824  4B B5 42 6D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F8828  3A 94 00 01 */	addi r20, r20, 1
/* 804F882C  2C 14 00 03 */	cmpwi r20, 3
/* 804F8830  39 CE 00 02 */	addi r14, r14, 2
/* 804F8834  41 80 FF B0 */	blt lbl_804F87E4
/* 804F8838  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070286@ha */
/* 804F883C  38 03 02 86 */	addi r0, r3, 0x0286 /* 0x00070286@l */
/* 804F8840  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F8844  38 72 06 3C */	addi r3, r18, 0x63c
/* 804F8848  38 81 00 24 */	addi r4, r1, 0x24
/* 804F884C  38 A0 00 00 */	li r5, 0
/* 804F8850  38 C0 FF FF */	li r6, -1
/* 804F8854  81 92 06 3C */	lwz r12, 0x63c(r18)
/* 804F8858  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804F885C  7D 89 03 A6 */	mtctr r12
/* 804F8860  4E 80 04 21 */	bctrl 
lbl_804F8864:
/* 804F8864  38 00 00 00 */	li r0, 0
/* 804F8868  98 12 18 2C */	stb r0, 0x182c(r18)
lbl_804F886C:
/* 804F886C  80 12 06 20 */	lwz r0, 0x620(r18)
/* 804F8870  2C 00 00 15 */	cmpwi r0, 0x15
/* 804F8874  40 82 01 50 */	bne lbl_804F89C4
/* 804F8878  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F887C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804F8880  FC 00 00 1E */	fctiwz f0, f0
/* 804F8884  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 804F8888  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 804F888C  2C 00 00 5A */	cmpwi r0, 0x5a
/* 804F8890  41 82 00 0C */	beq lbl_804F889C
/* 804F8894  2C 00 00 78 */	cmpwi r0, 0x78
/* 804F8898  40 82 00 30 */	bne lbl_804F88C8
lbl_804F889C:
/* 804F889C  C0 3A 00 3C */	lfs f1, 0x3c(r26)
/* 804F88A0  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 804F88A4  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804F88A8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804F88AC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 804F88B0  38 73 4C 9C */	addi r3, r19, 0x4c9c
/* 804F88B4  38 80 00 03 */	li r4, 3
/* 804F88B8  38 A0 00 01 */	li r5, 1
/* 804F88BC  38 C1 00 6C */	addi r6, r1, 0x6c
/* 804F88C0  4B B7 71 65 */	bl StartShock__12dVibration_cFii4cXyz
/* 804F88C4  48 00 00 4C */	b lbl_804F8910
lbl_804F88C8:
/* 804F88C8  2C 00 00 6C */	cmpwi r0, 0x6c
/* 804F88CC  41 82 00 1C */	beq lbl_804F88E8
/* 804F88D0  2C 00 00 C4 */	cmpwi r0, 0xc4
/* 804F88D4  41 82 00 14 */	beq lbl_804F88E8
/* 804F88D8  2C 00 01 2C */	cmpwi r0, 0x12c
/* 804F88DC  41 82 00 0C */	beq lbl_804F88E8
/* 804F88E0  2C 00 01 54 */	cmpwi r0, 0x154
/* 804F88E4  40 82 00 2C */	bne lbl_804F8910
lbl_804F88E8:
/* 804F88E8  C0 3A 00 3C */	lfs f1, 0x3c(r26)
/* 804F88EC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 804F88F0  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804F88F4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 804F88F8  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 804F88FC  38 73 4C 9C */	addi r3, r19, 0x4c9c
/* 804F8900  38 80 00 05 */	li r4, 5
/* 804F8904  38 A0 00 01 */	li r5, 1
/* 804F8908  38 C1 00 60 */	addi r6, r1, 0x60
/* 804F890C  4B B7 71 19 */	bl StartShock__12dVibration_cFii4cXyz
lbl_804F8910:
/* 804F8910  39 C0 00 00 */	li r14, 0
/* 804F8914  39 E0 00 00 */	li r15, 0
/* 804F8918  3A 00 00 00 */	li r16, 0
/* 804F891C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F8920  3A 83 61 C0 */	addi r20, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F8924  3A 79 02 10 */	addi r19, r25, 0x210
lbl_804F8928:
/* 804F8928  80 74 5D 3C */	lwz r3, 0x5d3c(r20)
/* 804F892C  38 00 00 FF */	li r0, 0xff
/* 804F8930  90 01 00 08 */	stw r0, 8(r1)
/* 804F8934  38 80 00 00 */	li r4, 0
/* 804F8938  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F893C  38 00 FF FF */	li r0, -1
/* 804F8940  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F8944  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F8948  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F894C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F8950  3A B0 23 54 */	addi r21, r16, 0x2354
/* 804F8954  7C 92 A8 2E */	lwzx r4, r18, r21
/* 804F8958  38 A0 00 00 */	li r5, 0
/* 804F895C  7C D3 7A 2E */	lhzx r6, r19, r15
/* 804F8960  38 F2 05 38 */	addi r7, r18, 0x538
/* 804F8964  39 00 00 00 */	li r8, 0
/* 804F8968  39 20 00 00 */	li r9, 0
/* 804F896C  39 40 00 00 */	li r10, 0
/* 804F8970  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F8974  4B B5 4B 59 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F8978  7C 72 A9 2E */	stwx r3, r18, r21
/* 804F897C  80 74 5D 3C */	lwz r3, 0x5d3c(r20)
/* 804F8980  38 63 02 10 */	addi r3, r3, 0x210
/* 804F8984  7C 92 A8 2E */	lwzx r4, r18, r21
/* 804F8988  4B B5 2F 91 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804F898C  7C 65 1B 79 */	or. r5, r3, r3
/* 804F8990  41 82 00 1C */	beq lbl_804F89AC
/* 804F8994  80 71 00 84 */	lwz r3, 0x84(r17)
/* 804F8998  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F899C  38 63 00 90 */	addi r3, r3, 0x90
/* 804F89A0  38 85 00 68 */	addi r4, r5, 0x68
/* 804F89A4  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804F89A8  4B D8 7E 39 */	bl func_802807E0
lbl_804F89AC:
/* 804F89AC  39 CE 00 01 */	addi r14, r14, 1
/* 804F89B0  2C 0E 00 08 */	cmpwi r14, 8
/* 804F89B4  39 EF 00 02 */	addi r15, r15, 2
/* 804F89B8  3A 10 00 04 */	addi r16, r16, 4
/* 804F89BC  41 80 FF 6C */	blt lbl_804F8928
/* 804F89C0  48 00 00 A0 */	b lbl_804F8A60
lbl_804F89C4:
/* 804F89C4  2C 00 00 1F */	cmpwi r0, 0x1f
/* 804F89C8  40 82 00 98 */	bne lbl_804F8A60
/* 804F89CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804F89D0  39 C3 61 C0 */	addi r14, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804F89D4  80 6E 5D 3C */	lwz r3, 0x5d3c(r14)
/* 804F89D8  38 00 00 FF */	li r0, 0xff
/* 804F89DC  90 01 00 08 */	stw r0, 8(r1)
/* 804F89E0  38 80 00 00 */	li r4, 0
/* 804F89E4  90 81 00 0C */	stw r4, 0xc(r1)
/* 804F89E8  38 00 FF FF */	li r0, -1
/* 804F89EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804F89F0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804F89F4  90 81 00 18 */	stw r4, 0x18(r1)
/* 804F89F8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804F89FC  80 92 23 50 */	lwz r4, 0x2350(r18)
/* 804F8A00  38 A0 00 00 */	li r5, 0
/* 804F8A04  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000872C@ha */
/* 804F8A08  38 C6 87 2C */	addi r6, r6, 0x872C /* 0x0000872C@l */
/* 804F8A0C  38 F2 04 D0 */	addi r7, r18, 0x4d0
/* 804F8A10  39 00 00 00 */	li r8, 0
/* 804F8A14  39 20 00 00 */	li r9, 0
/* 804F8A18  39 40 00 00 */	li r10, 0
/* 804F8A1C  C0 3A 00 00 */	lfs f1, 0(r26)
/* 804F8A20  4B B5 4A AD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804F8A24  90 72 23 50 */	stw r3, 0x2350(r18)
/* 804F8A28  80 6E 5D 3C */	lwz r3, 0x5d3c(r14)
/* 804F8A2C  38 63 02 10 */	addi r3, r3, 0x210
/* 804F8A30  80 92 23 50 */	lwz r4, 0x2350(r18)
/* 804F8A34  4B B5 2E E5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804F8A38  7C 65 1B 79 */	or. r5, r3, r3
/* 804F8A3C  41 82 00 24 */	beq lbl_804F8A60
/* 804F8A40  80 72 05 D0 */	lwz r3, 0x5d0(r18)
/* 804F8A44  80 63 00 04 */	lwz r3, 4(r3)
/* 804F8A48  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804F8A4C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804F8A50  38 63 00 90 */	addi r3, r3, 0x90
/* 804F8A54  38 85 00 68 */	addi r4, r5, 0x68
/* 804F8A58  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 804F8A5C  4B D8 7D 85 */	bl func_802807E0
lbl_804F8A60:
/* 804F8A60  A8 12 07 A2 */	lha r0, 0x7a2(r18)
/* 804F8A64  2C 00 00 0C */	cmpwi r0, 0xc
/* 804F8A68  40 82 00 BC */	bne lbl_804F8B24
/* 804F8A6C  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 804F8A70  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804F8A74  C0 1A 02 78 */	lfs f0, 0x278(r26)
/* 804F8A78  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 804F8A7C  C0 1A 02 7C */	lfs f0, 0x27c(r26)
/* 804F8A80  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 804F8A84  39 E0 00 00 */	li r15, 0
/* 804F8A88  39 C0 00 00 */	li r14, 0
lbl_804F8A8C:
/* 804F8A8C  38 6E 0B C0 */	addi r3, r14, 0xbc0
/* 804F8A90  7C 72 1A 14 */	add r3, r18, r3
/* 804F8A94  38 81 00 84 */	addi r4, r1, 0x84
/* 804F8A98  4B D7 6B B1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804F8A9C  39 EF 00 01 */	addi r15, r15, 1
/* 804F8AA0  2C 0F 00 07 */	cmpwi r15, 7
/* 804F8AA4  39 CE 01 38 */	addi r14, r14, 0x138
/* 804F8AA8  40 81 FF E4 */	ble lbl_804F8A8C
/* 804F8AAC  38 72 15 80 */	addi r3, r18, 0x1580
/* 804F8AB0  38 81 00 84 */	addi r4, r1, 0x84
/* 804F8AB4  4B D7 6B 95 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804F8AB8  38 72 16 B8 */	addi r3, r18, 0x16b8
/* 804F8ABC  38 81 00 84 */	addi r4, r1, 0x84
/* 804F8AC0  4B D7 6B 89 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804F8AC4  38 72 17 F0 */	addi r3, r18, 0x17f0
/* 804F8AC8  38 81 00 84 */	addi r4, r1, 0x84
/* 804F8ACC  4B D7 6B 7D */	bl SetC__8cM3dGSphFRC4cXyz
/* 804F8AD0  39 E0 00 00 */	li r15, 0
/* 804F8AD4  39 C0 00 00 */	li r14, 0
lbl_804F8AD8:
/* 804F8AD8  38 6E 1A B4 */	addi r3, r14, 0x1ab4
/* 804F8ADC  7C 72 1A 14 */	add r3, r18, r3
/* 804F8AE0  38 81 00 84 */	addi r4, r1, 0x84
/* 804F8AE4  4B D7 6B 65 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804F8AE8  39 EF 00 01 */	addi r15, r15, 1
/* 804F8AEC  2C 0F 00 08 */	cmpwi r15, 8
/* 804F8AF0  39 CE 01 38 */	addi r14, r14, 0x138
/* 804F8AF4  41 80 FF E4 */	blt lbl_804F8AD8
/* 804F8AF8  39 E0 00 00 */	li r15, 0
/* 804F8AFC  39 C0 00 00 */	li r14, 0
lbl_804F8B00:
/* 804F8B00  3C 6E 00 02 */	addis r3, r14, 2
/* 804F8B04  38 63 AC 34 */	addi r3, r3, -21452
/* 804F8B08  7C 72 1A 14 */	add r3, r18, r3
/* 804F8B0C  38 81 00 84 */	addi r4, r1, 0x84
/* 804F8B10  4B D7 6B 39 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804F8B14  39 EF 00 01 */	addi r15, r15, 1
/* 804F8B18  2C 0F 00 04 */	cmpwi r15, 4
/* 804F8B1C  39 CE 01 38 */	addi r14, r14, 0x138
/* 804F8B20  41 80 FF E0 */	blt lbl_804F8B00
lbl_804F8B24:
/* 804F8B24  C3 FA 00 3C */	lfs f31, 0x3c(r26)
/* 804F8B28  C3 DA 01 64 */	lfs f30, 0x164(r26)
/* 804F8B2C  80 12 05 C8 */	lwz r0, 0x5c8(r18)
/* 804F8B30  2C 00 00 00 */	cmpwi r0, 0
/* 804F8B34  40 82 00 18 */	bne lbl_804F8B4C
/* 804F8B38  38 60 00 00 */	li r3, 0
/* 804F8B3C  38 80 00 01 */	li r4, 1
/* 804F8B40  C0 32 05 CC */	lfs f1, 0x5cc(r18)
/* 804F8B44  4B CA FC C9 */	bl dKy_custom_colset__FUcUcf
/* 804F8B48  48 00 00 B8 */	b lbl_804F8C00
lbl_804F8B4C:
/* 804F8B4C  2C 00 00 01 */	cmpwi r0, 1
/* 804F8B50  40 82 00 3C */	bne lbl_804F8B8C
/* 804F8B54  38 60 00 00 */	li r3, 0
/* 804F8B58  38 80 00 01 */	li r4, 1
/* 804F8B5C  C0 32 05 CC */	lfs f1, 0x5cc(r18)
/* 804F8B60  4B CA FC AD */	bl dKy_custom_colset__FUcUcf
/* 804F8B64  C3 FA 00 00 */	lfs f31, 0(r26)
/* 804F8B68  C3 DA 01 20 */	lfs f30, 0x120(r26)
/* 804F8B6C  C0 12 05 CC */	lfs f0, 0x5cc(r18)
/* 804F8B70  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 804F8B74  40 82 00 8C */	bne lbl_804F8C00
/* 804F8B78  38 00 00 02 */	li r0, 2
/* 804F8B7C  90 12 05 C8 */	stw r0, 0x5c8(r18)
/* 804F8B80  C0 1A 00 3C */	lfs f0, 0x3c(r26)
/* 804F8B84  D0 12 05 CC */	stfs f0, 0x5cc(r18)
/* 804F8B88  48 00 00 78 */	b lbl_804F8C00
lbl_804F8B8C:
/* 804F8B8C  2C 00 00 02 */	cmpwi r0, 2
/* 804F8B90  40 82 00 30 */	bne lbl_804F8BC0
/* 804F8B94  38 60 00 01 */	li r3, 1
/* 804F8B98  38 80 00 03 */	li r4, 3
/* 804F8B9C  C0 32 05 CC */	lfs f1, 0x5cc(r18)
/* 804F8BA0  4B CA FC 6D */	bl dKy_custom_colset__FUcUcf
/* 804F8BA4  88 12 07 B6 */	lbz r0, 0x7b6(r18)
/* 804F8BA8  2C 00 00 02 */	cmpwi r0, 2
/* 804F8BAC  40 82 00 54 */	bne lbl_804F8C00
/* 804F8BB0  C3 FA 00 00 */	lfs f31, 0(r26)
/* 804F8BB4  C3 DA 01 6C */	lfs f30, 0x16c(r26)
/* 804F8BB8  48 00 00 48 */	b lbl_804F8C00
/* 804F8BBC  48 00 00 44 */	b lbl_804F8C00
lbl_804F8BC0:
/* 804F8BC0  2C 00 00 03 */	cmpwi r0, 3
/* 804F8BC4  40 82 00 1C */	bne lbl_804F8BE0
/* 804F8BC8  38 60 00 02 */	li r3, 2
/* 804F8BCC  38 80 00 01 */	li r4, 1
/* 804F8BD0  C0 32 05 CC */	lfs f1, 0x5cc(r18)
/* 804F8BD4  4B CA FC 39 */	bl dKy_custom_colset__FUcUcf
/* 804F8BD8  C3 DA 01 78 */	lfs f30, 0x178(r26)
/* 804F8BDC  48 00 00 24 */	b lbl_804F8C00
lbl_804F8BE0:
/* 804F8BE0  2C 00 00 04 */	cmpwi r0, 4
/* 804F8BE4  40 82 00 1C */	bne lbl_804F8C00
/* 804F8BE8  38 60 00 01 */	li r3, 1
/* 804F8BEC  38 80 00 03 */	li r4, 3
/* 804F8BF0  C0 32 05 CC */	lfs f1, 0x5cc(r18)
/* 804F8BF4  4B CA FC 19 */	bl dKy_custom_colset__FUcUcf
/* 804F8BF8  C3 FA 00 00 */	lfs f31, 0(r26)
/* 804F8BFC  C3 DA 01 6C */	lfs f30, 0x16c(r26)
lbl_804F8C00:
/* 804F8C00  38 72 05 CC */	addi r3, r18, 0x5cc
/* 804F8C04  FC 20 F8 90 */	fmr f1, f31
/* 804F8C08  C0 5A 00 00 */	lfs f2, 0(r26)
/* 804F8C0C  FC 60 F0 90 */	fmr f3, f30
/* 804F8C10  4B D7 6E 2D */	bl cLib_addCalc2__FPffff
/* 804F8C14  3C 60 80 50 */	lis r3, l_HIO@ha /* 0x804FAEA4@ha */
/* 804F8C18  38 63 AE A4 */	addi r3, r3, l_HIO@l /* 0x804FAEA4@l */
/* 804F8C1C  88 03 00 AC */	lbz r0, 0xac(r3)
/* 804F8C20  28 00 00 00 */	cmplwi r0, 0
/* 804F8C24  41 82 00 10 */	beq lbl_804F8C34
/* 804F8C28  38 00 00 01 */	li r0, 1
/* 804F8C2C  3C 72 00 02 */	addis r3, r18, 2
/* 804F8C30  90 03 B0 7C */	stw r0, -0x4f84(r3)
lbl_804F8C34:
/* 804F8C34  38 60 00 01 */	li r3, 1
lbl_804F8C38:
/* 804F8C38  E3 E1 01 48 */	psq_l f31, 328(r1), 0, 0 /* qr0 */
/* 804F8C3C  CB E1 01 40 */	lfd f31, 0x140(r1)
/* 804F8C40  E3 C1 01 38 */	psq_l f30, 312(r1), 0, 0 /* qr0 */
/* 804F8C44  CB C1 01 30 */	lfd f30, 0x130(r1)
/* 804F8C48  39 61 01 30 */	addi r11, r1, 0x130
/* 804F8C4C  4B E6 95 A1 */	bl __restore_gpr
/* 804F8C50  80 01 01 54 */	lwz r0, 0x154(r1)
/* 804F8C54  7C 08 03 A6 */	mtlr r0
/* 804F8C58  38 21 01 50 */	addi r1, r1, 0x150
/* 804F8C5C  4E 80 00 20 */	blr 

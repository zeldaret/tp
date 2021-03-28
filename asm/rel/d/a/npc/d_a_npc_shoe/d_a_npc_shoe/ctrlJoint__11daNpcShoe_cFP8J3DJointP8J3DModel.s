lbl_80AE840C:
/* 80AE840C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE8410  7C 08 02 A6 */	mflr r0
/* 80AE8414  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE8418  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE841C  4B 87 9D BC */	b _savegpr_28
/* 80AE8420  7C 7D 1B 78 */	mr r29, r3
/* 80AE8424  7C BE 2B 78 */	mr r30, r5
/* 80AE8428  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80AE842C  7C BF 2B 78 */	mr r31, r5
/* 80AE8430  3C 60 80 AF */	lis r3, lit_4302@ha
/* 80AE8434  38 83 A4 38 */	addi r4, r3, lit_4302@l
/* 80AE8438  80 64 00 00 */	lwz r3, 0(r4)
/* 80AE843C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AE8440  90 61 00 08 */	stw r3, 8(r1)
/* 80AE8444  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE8448  80 04 00 08 */	lwz r0, 8(r4)
/* 80AE844C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE8450  2C 05 00 00 */	cmpwi r5, 0
/* 80AE8454  40 82 00 B0 */	bne lbl_80AE8504
/* 80AE8458  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AE845C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE8460  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AE8464  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AE8468  38 63 00 30 */	addi r3, r3, 0x30
/* 80AE846C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AE8470  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AE8474  4B 85 E0 3C */	b PSMTXCopy
/* 80AE8478  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AE847C  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80AE8480  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AE8484  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80AE8488  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AE848C  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80AE8490  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AE8494  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80AE8498  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AE849C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE84A0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AE84A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AE84A8  38 63 00 60 */	addi r3, r3, 0x60
/* 80AE84AC  7F 84 E3 78 */	mr r4, r28
/* 80AE84B0  4B 85 E0 00 */	b PSMTXCopy
/* 80AE84B4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AE84B8  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80AE84BC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AE84C0  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80AE84C4  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AE84C8  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80AE84CC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AE84D0  80 63 00 04 */	lwz r3, 4(r3)
/* 80AE84D4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AE84D8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AE84DC  38 63 00 90 */	addi r3, r3, 0x90
/* 80AE84E0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AE84E4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AE84E8  4B 85 DF C8 */	b PSMTXCopy
/* 80AE84EC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80AE84F0  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80AE84F4  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80AE84F8  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80AE84FC  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80AE8500  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80AE8504:
/* 80AE8504  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80AE8508  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80AE850C  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80AE8510  7C 60 E2 14 */	add r3, r0, r28
/* 80AE8514  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80AE8518  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80AE851C  4B 85 DF 94 */	b PSMTXCopy
/* 80AE8520  2C 1F 00 04 */	cmpwi r31, 4
/* 80AE8524  40 80 00 2C */	bge lbl_80AE8550
/* 80AE8528  2C 1F 00 01 */	cmpwi r31, 1
/* 80AE852C  40 80 00 08 */	bge lbl_80AE8534
/* 80AE8530  48 00 00 20 */	b lbl_80AE8550
lbl_80AE8534:
/* 80AE8534  7F A3 EB 78 */	mr r3, r29
/* 80AE8538  7F E4 FB 78 */	mr r4, r31
/* 80AE853C  38 A1 00 08 */	addi r5, r1, 8
/* 80AE8540  3C C0 80 AF */	lis r6, m__17daNpcShoe_Param_c@ha
/* 80AE8544  38 C6 A3 B0 */	addi r6, r6, m__17daNpcShoe_Param_c@l
/* 80AE8548  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80AE854C  4B 66 AE 30 */	b setLookatMtx__8daNpcF_cFiPif
lbl_80AE8550:
/* 80AE8550  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AE8554  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AE8558  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80AE855C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80AE8560  7C 80 E2 14 */	add r4, r0, r28
/* 80AE8564  4B 85 DF 4C */	b PSMTXCopy
/* 80AE8568  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AE856C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AE8570  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80AE8574  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80AE8578  4B 85 DF 38 */	b PSMTXCopy
/* 80AE857C  38 60 00 01 */	li r3, 1
/* 80AE8580  39 61 00 30 */	addi r11, r1, 0x30
/* 80AE8584  4B 87 9C A0 */	b _restgpr_28
/* 80AE8588  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE858C  7C 08 03 A6 */	mtlr r0
/* 80AE8590  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE8594  4E 80 00 20 */	blr 

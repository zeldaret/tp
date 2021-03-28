lbl_80C0335C:
/* 80C0335C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C03360  7C 08 02 A6 */	mflr r0
/* 80C03364  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C03368  39 61 00 40 */	addi r11, r1, 0x40
/* 80C0336C  4B 75 EE 6C */	b _savegpr_28
/* 80C03370  7C 7D 1B 78 */	mr r29, r3
/* 80C03374  3C 60 80 C1 */	lis r3, cNullVec__6Z2Calc@ha
/* 80C03378  3B E3 FE 68 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80C0337C  3B C0 00 00 */	li r30, 0
/* 80C03380  80 BD 08 48 */	lwz r5, 0x848(r29)
/* 80C03384  A0 1D 0A 7C */	lhz r0, 0xa7c(r29)
/* 80C03388  2C 00 00 01 */	cmpwi r0, 1
/* 80C0338C  41 82 00 54 */	beq lbl_80C033E0
/* 80C03390  40 80 00 10 */	bge lbl_80C033A0
/* 80C03394  2C 00 00 00 */	cmpwi r0, 0
/* 80C03398  40 80 00 14 */	bge lbl_80C033AC
/* 80C0339C  48 00 02 00 */	b lbl_80C0359C
lbl_80C033A0:
/* 80C033A0  2C 00 00 03 */	cmpwi r0, 3
/* 80C033A4  40 80 01 F8 */	bge lbl_80C0359C
/* 80C033A8  48 00 01 D8 */	b lbl_80C03580
lbl_80C033AC:
/* 80C033AC  38 00 00 00 */	li r0, 0
/* 80C033B0  90 1D 1F CC */	stw r0, 0x1fcc(r29)
/* 80C033B4  38 7D 08 4C */	addi r3, r29, 0x84c
/* 80C033B8  7F A4 EB 78 */	mr r4, r29
/* 80C033BC  38 C0 00 00 */	li r6, 0
/* 80C033C0  38 E0 00 00 */	li r7, 0
/* 80C033C4  4B 64 6B CC */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80C033C8  7F A3 EB 78 */	mr r3, r29
/* 80C033CC  38 80 00 01 */	li r4, 1
/* 80C033D0  4B FF F7 05 */	bl setLookMode__11daObj_GrA_cFi
/* 80C033D4  38 00 00 00 */	li r0, 0
/* 80C033D8  90 1D 0A A0 */	stw r0, 0xaa0(r29)
/* 80C033DC  48 00 01 C0 */	b lbl_80C0359C
lbl_80C033E0:
/* 80C033E0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C033E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C033E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C033EC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C033F0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80C033F4  4B 66 D8 10 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C033F8  7C 64 1B 78 */	mr r4, r3
/* 80C033FC  7C 83 07 34 */	extsh r3, r4
/* 80C03400  A8 1D 09 1C */	lha r0, 0x91c(r29)
/* 80C03404  7C 03 00 00 */	cmpw r3, r0
/* 80C03408  41 82 00 74 */	beq lbl_80C0347C
/* 80C0340C  80 1D 1F CC */	lwz r0, 0x1fcc(r29)
/* 80C03410  2C 00 00 02 */	cmpwi r0, 2
/* 80C03414  40 80 00 54 */	bge lbl_80C03468
/* 80C03418  7F A3 EB 78 */	mr r3, r29
/* 80C0341C  38 A0 00 00 */	li r5, 0
/* 80C03420  38 C0 00 13 */	li r6, 0x13
/* 80C03424  38 E0 00 14 */	li r7, 0x14
/* 80C03428  48 00 BD 55 */	bl turn_step__11daObj_GrA_cFsiii
/* 80C0342C  2C 03 00 00 */	cmpwi r3, 0
/* 80C03430  41 82 00 30 */	beq lbl_80C03460
/* 80C03434  7F A3 EB 78 */	mr r3, r29
/* 80C03438  38 80 00 00 */	li r4, 0
/* 80C0343C  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha
/* 80C03440  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l
/* 80C03444  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C03448  4B FF E3 45 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C0344C  7F A3 EB 78 */	mr r3, r29
/* 80C03450  38 80 00 00 */	li r4, 0
/* 80C03454  3C A0 80 C1 */	lis r5, lit_4618@ha
/* 80C03458  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)
/* 80C0345C  4B FF E3 51 */	bl setFaceMotion__11daObj_GrA_cFif
lbl_80C03460:
/* 80C03460  38 60 00 00 */	li r3, 0
/* 80C03464  48 00 01 3C */	b lbl_80C035A0
lbl_80C03468:
/* 80C03468  7F A3 EB 78 */	mr r3, r29
/* 80C0346C  38 A0 FF FF */	li r5, -1
/* 80C03470  38 C0 FF FF */	li r6, -1
/* 80C03474  38 E0 00 14 */	li r7, 0x14
/* 80C03478  48 00 BD 05 */	bl turn_step__11daObj_GrA_cFsiii
lbl_80C0347C:
/* 80C0347C  38 7D 08 4C */	addi r3, r29, 0x84c
/* 80C03480  7F A4 EB 78 */	mr r4, r29
/* 80C03484  38 A0 00 00 */	li r5, 0
/* 80C03488  38 C0 00 00 */	li r6, 0
/* 80C0348C  4B 64 6E 4C */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80C03490  2C 03 00 00 */	cmpwi r3, 0
/* 80C03494  41 82 00 60 */	beq lbl_80C034F4
/* 80C03498  A0 1D 08 86 */	lhz r0, 0x886(r29)
/* 80C0349C  7C 00 07 35 */	extsh. r0, r0
/* 80C034A0  40 82 00 2C */	bne lbl_80C034CC
/* 80C034A4  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 80C034A8  80 1F 03 38 */	lwz r0, 0x338(r31)
/* 80C034AC  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80C034B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C034B4  80 1F 03 3C */	lwz r0, 0x33c(r31)
/* 80C034B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C034BC  7F A3 EB 78 */	mr r3, r29
/* 80C034C0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80C034C4  4B FF E4 31 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C034C8  48 00 00 28 */	b lbl_80C034F0
lbl_80C034CC:
/* 80C034CC  80 7F 03 40 */	lwz r3, 0x340(r31)
/* 80C034D0  80 1F 03 44 */	lwz r0, 0x344(r31)
/* 80C034D4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80C034D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C034DC  80 1F 03 48 */	lwz r0, 0x348(r31)
/* 80C034E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C034E4  7F A3 EB 78 */	mr r3, r29
/* 80C034E8  38 81 00 10 */	addi r4, r1, 0x10
/* 80C034EC  4B FF E4 09 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
lbl_80C034F0:
/* 80C034F0  3B C0 00 01 */	li r30, 1
lbl_80C034F4:
/* 80C034F4  83 9D 0A A0 */	lwz r28, 0xaa0(r29)
/* 80C034F8  7F A3 EB 78 */	mr r3, r29
/* 80C034FC  38 81 00 0C */	addi r4, r1, 0xc
/* 80C03500  38 A1 00 08 */	addi r5, r1, 8
/* 80C03504  7F A6 EB 78 */	mr r6, r29
/* 80C03508  48 00 00 B1 */	bl ctrlMsgAnm__11daObj_GrA_cFRiRiP10fopAc_ac_c
/* 80C0350C  2C 03 00 00 */	cmpwi r3, 0
/* 80C03510  41 82 00 5C */	beq lbl_80C0356C
/* 80C03514  80 01 00 08 */	lwz r0, 8(r1)
/* 80C03518  2C 00 FF FF */	cmpwi r0, -1
/* 80C0351C  41 82 00 24 */	beq lbl_80C03540
/* 80C03520  7F A3 EB 78 */	mr r3, r29
/* 80C03524  54 00 08 3C */	slwi r0, r0, 1
/* 80C03528  38 9F 01 C4 */	addi r4, r31, 0x1c4
/* 80C0352C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C03530  3C A0 80 C1 */	lis r5, m__17daObj_GrA_Param_c@ha
/* 80C03534  38 A5 FA 7C */	addi r5, r5, m__17daObj_GrA_Param_c@l
/* 80C03538  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C0353C  4B FF E2 51 */	bl setBaseMotion__11daObj_GrA_cFif
lbl_80C03540:
/* 80C03540  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C03544  2C 00 FF FF */	cmpwi r0, -1
/* 80C03548  41 82 00 54 */	beq lbl_80C0359C
/* 80C0354C  7F A3 EB 78 */	mr r3, r29
/* 80C03550  54 00 08 3C */	slwi r0, r0, 1
/* 80C03554  38 9F 01 DC */	addi r4, r31, 0x1dc
/* 80C03558  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C0355C  3C A0 80 C1 */	lis r5, lit_4618@ha
/* 80C03560  C0 25 FB B4 */	lfs f1, lit_4618@l(r5)
/* 80C03564  4B FF E2 49 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C03568  48 00 00 34 */	b lbl_80C0359C
lbl_80C0356C:
/* 80C0356C  2C 1C 00 00 */	cmpwi r28, 0
/* 80C03570  41 82 00 2C */	beq lbl_80C0359C
/* 80C03574  7F A3 EB 78 */	mr r3, r29
/* 80C03578  48 00 14 95 */	bl setFaceTalkAfter__11daObj_GrA_cFv
/* 80C0357C  48 00 00 20 */	b lbl_80C0359C
lbl_80C03580:
/* 80C03580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C03584  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C03588  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80C0358C  4B 43 EE DC */	b reset__14dEvt_control_cFv
/* 80C03590  3B C0 00 01 */	li r30, 1
/* 80C03594  38 00 00 00 */	li r0, 0
/* 80C03598  90 1D 1F CC */	stw r0, 0x1fcc(r29)
lbl_80C0359C:
/* 80C0359C  7F C3 F3 78 */	mr r3, r30
lbl_80C035A0:
/* 80C035A0  39 61 00 40 */	addi r11, r1, 0x40
/* 80C035A4  4B 75 EC 80 */	b _restgpr_28
/* 80C035A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C035AC  7C 08 03 A6 */	mtlr r0
/* 80C035B0  38 21 00 40 */	addi r1, r1, 0x40
/* 80C035B4  4E 80 00 20 */	blr 

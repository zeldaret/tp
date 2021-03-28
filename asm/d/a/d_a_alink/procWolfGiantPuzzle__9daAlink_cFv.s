lbl_801351F8:
/* 801351F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801351FC  7C 08 02 A6 */	mflr r0
/* 80135200  90 01 00 24 */	stw r0, 0x24(r1)
/* 80135204  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80135208  7C 7F 1B 78 */	mr r31, r3
/* 8013520C  88 A3 05 6A */	lbz r5, 0x56a(r3)
/* 80135210  28 05 00 00 */	cmplwi r5, 0
/* 80135214  40 82 00 10 */	bne lbl_80135224
/* 80135218  38 80 00 00 */	li r4, 0
/* 8013521C  4B FF 49 29 */	bl checkNextActionWolf__9daAlink_cFi
/* 80135220  48 00 02 24 */	b lbl_80135444
lbl_80135224:
/* 80135224  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80135228  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8013522C  40 82 01 98 */	bne lbl_801353C4
/* 80135230  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 80135234  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80135238  7C 04 00 00 */	cmpw r4, r0
/* 8013523C  40 82 01 88 */	bne lbl_801353C4
/* 80135240  28 05 00 28 */	cmplwi r5, 0x28
/* 80135244  41 82 01 80 */	beq lbl_801353C4
/* 80135248  4B F7 E6 BD */	bl checkZeroSpeedF__9daAlink_cCFv
/* 8013524C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80135250  41 82 01 74 */	beq lbl_801353C4
/* 80135254  7F E3 FB 78 */	mr r3, r31
/* 80135258  38 80 00 1C */	li r4, 0x1c
/* 8013525C  4B F7 E0 0D */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 80135260  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 80135264  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80135268  41 82 00 30 */	beq lbl_80135298
/* 8013526C  3C 60 80 13 */	lis r3, daAlink_searchGiantTalk__FP10fopAc_ac_cPv@ha
/* 80135270  38 63 50 A4 */	addi r3, r3, daAlink_searchGiantTalk__FP10fopAc_ac_cPv@l
/* 80135274  38 80 00 00 */	li r4, 0
/* 80135278  4B EE 45 81 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8013527C  7C 64 1B 79 */	or. r4, r3, r3
/* 80135280  41 82 01 44 */	beq lbl_801353C4
/* 80135284  7F E3 FB 78 */	mr r3, r31
/* 80135288  38 A0 00 00 */	li r5, 0
/* 8013528C  38 C0 00 00 */	li r6, 0
/* 80135290  4B EE 5D D9 */	bl fopAcM_orderTalkEvent__FP10fopAc_ac_cP10fopAc_ac_cUsUs
/* 80135294  48 00 01 30 */	b lbl_801353C4
lbl_80135298:
/* 80135298  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 8013529C  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801352A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801352A4  40 81 01 20 */	ble lbl_801353C4
/* 801352A8  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 801352AC  A8 1F 2F E2 */	lha r0, 0x2fe2(r31)
/* 801352B0  7C 03 00 50 */	subf r0, r3, r0
/* 801352B4  7C 03 07 34 */	extsh r3, r0
/* 801352B8  4B F7 E1 DD */	bl getDirectionFromAngle__9daAlink_cFs
/* 801352BC  2C 03 00 00 */	cmpwi r3, 0
/* 801352C0  40 82 00 C4 */	bne lbl_80135384
/* 801352C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801352C8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 801352CC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801352D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801352D4  7C 64 02 14 */	add r3, r4, r0
/* 801352D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801352DC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 801352E0  C0 42 94 9C */	lfs f2, lit_16567(r2)
/* 801352E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801352E8  EC 81 00 2A */	fadds f4, f1, f0
/* 801352EC  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 801352F0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 801352F4  EC 61 00 2A */	fadds f3, f1, f0
/* 801352F8  7C 04 04 2E */	lfsx f0, r4, r0
/* 801352FC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80135300  EC 02 00 32 */	fmuls f0, f2, f0
/* 80135304  EC 01 00 2A */	fadds f0, f1, f0
/* 80135308  D0 01 00 08 */	stfs f0, 8(r1)
/* 8013530C  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80135310  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 80135314  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 80135318  38 81 00 08 */	addi r4, r1, 8
/* 8013531C  48 13 2A 0D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80135320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80135324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80135328  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8013532C  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 80135330  4B F3 F1 71 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80135334  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80135338  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013533C  FC 00 02 10 */	fabs f0, f0
/* 80135340  FC 20 00 18 */	frsp f1, f0
/* 80135344  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 80135348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013534C  40 80 00 78 */	bge lbl_801353C4
/* 80135350  3C 60 80 13 */	lis r3, daAlink_searchGiant__FP10fopAc_ac_cPv@ha
/* 80135354  38 63 50 50 */	addi r3, r3, daAlink_searchGiant__FP10fopAc_ac_cPv@l
/* 80135358  38 81 00 08 */	addi r4, r1, 8
/* 8013535C  4B EE 44 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80135360  28 03 00 00 */	cmplwi r3, 0
/* 80135364  40 82 00 60 */	bne lbl_801353C4
/* 80135368  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlMoveNoP_c0@ha
/* 8013536C  38 63 EF 28 */	addi r3, r3, m__23daAlinkHIO_wlMoveNoP_c0@l
/* 80135370  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80135374  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 80135378  C0 1F 05 94 */	lfs f0, 0x594(r31)
/* 8013537C  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 80135380  48 00 00 44 */	b lbl_801353C4
lbl_80135384:
/* 80135384  2C 03 00 02 */	cmpwi r3, 2
/* 80135388  40 82 00 14 */	bne lbl_8013539C
/* 8013538C  A8 7F 30 0C */	lha r3, 0x300c(r31)
/* 80135390  38 03 40 00 */	addi r0, r3, 0x4000
/* 80135394  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80135398  48 00 00 2C */	b lbl_801353C4
lbl_8013539C:
/* 8013539C  2C 03 00 03 */	cmpwi r3, 3
/* 801353A0  40 82 00 14 */	bne lbl_801353B4
/* 801353A4  A8 7F 30 0C */	lha r3, 0x300c(r31)
/* 801353A8  38 03 C0 00 */	addi r0, r3, -16384
/* 801353AC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 801353B0  48 00 00 14 */	b lbl_801353C4
lbl_801353B4:
/* 801353B4  A8 7F 30 0C */	lha r3, 0x300c(r31)
/* 801353B8  3C 63 00 01 */	addis r3, r3, 1
/* 801353BC  38 03 80 00 */	addi r0, r3, -32768
/* 801353C0  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_801353C4:
/* 801353C4  38 7F 33 98 */	addi r3, r31, 0x3398
/* 801353C8  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 801353CC  C0 5F 34 7C */	lfs f2, 0x347c(r31)
/* 801353D0  48 13 B3 71 */	bl cLib_chaseF__FPfff
/* 801353D4  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 801353D8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801353DC  7C 04 00 00 */	cmpw r4, r0
/* 801353E0  41 82 00 28 */	beq lbl_80135408
/* 801353E4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 801353E8  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlMoveNoP_c0@ha
/* 801353EC  38 E5 EF 28 */	addi r7, r5, m__23daAlinkHIO_wlMoveNoP_c0@l
/* 801353F0  A8 A7 00 04 */	lha r5, 4(r7)
/* 801353F4  A8 C7 00 00 */	lha r6, 0(r7)
/* 801353F8  A8 E7 00 02 */	lha r7, 2(r7)
/* 801353FC  48 13 B1 45 */	bl cLib_addCalcAngleS__FPsssss
/* 80135400  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80135404  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_80135408:
/* 80135408  7F E3 FB 78 */	mr r3, r31
/* 8013540C  4B F7 E4 F9 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 80135410  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80135414  41 82 00 14 */	beq lbl_80135428
/* 80135418  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8013541C  60 00 00 01 */	ori r0, r0, 1
/* 80135420  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 80135424  48 00 00 10 */	b lbl_80135434
lbl_80135428:
/* 80135428  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8013542C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80135430  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_80135434:
/* 80135434  7F E3 FB 78 */	mr r3, r31
/* 80135438  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8013543C  4B FF 34 09 */	bl setBlendWolfMoveAnime__9daAlink_cFf
/* 80135440  38 60 00 01 */	li r3, 1
lbl_80135444:
/* 80135444  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80135448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8013544C  7C 08 03 A6 */	mtlr r0
/* 80135450  38 21 00 20 */	addi r1, r1, 0x20
/* 80135454  4E 80 00 20 */	blr 

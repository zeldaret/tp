lbl_80B9877C:
/* 80B9877C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B98780  7C 08 02 A6 */	mflr r0
/* 80B98784  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B98788  39 61 00 60 */	addi r11, r1, 0x60
/* 80B9878C  4B 7C 9A 40 */	b _savegpr_25
/* 80B98790  7C 7C 1B 78 */	mr r28, r3
/* 80B98794  7C 99 23 78 */	mr r25, r4
/* 80B98798  3C 60 80 BA */	lis r3, m__17daNpc_zrZ_Param_c@ha
/* 80B9879C  3B E3 AF EC */	addi r31, r3, m__17daNpc_zrZ_Param_c@l
/* 80B987A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B987A4  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80B987A8  3B 5B 4F F8 */	addi r26, r27, 0x4ff8
/* 80B987AC  3B C0 00 00 */	li r30, 0
/* 80B987B0  3B A0 FF FF */	li r29, -1
/* 80B987B4  7F 43 D3 78 */	mr r3, r26
/* 80B987B8  3C A0 80 BA */	lis r5, stringBase0@ha
/* 80B987BC  38 A5 B2 20 */	addi r5, r5, stringBase0@l
/* 80B987C0  38 A5 00 5A */	addi r5, r5, 0x5a
/* 80B987C4  38 C0 00 03 */	li r6, 3
/* 80B987C8  4B 4A F9 24 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B987CC  28 03 00 00 */	cmplwi r3, 0
/* 80B987D0  41 82 00 08 */	beq lbl_80B987D8
/* 80B987D4  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B987D8:
/* 80B987D8  7F 43 D3 78 */	mr r3, r26
/* 80B987DC  7F 24 CB 78 */	mr r4, r25
/* 80B987E0  4B 4A F5 6C */	b getIsAddvance__16dEvent_manager_cFi
/* 80B987E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B987E8  41 82 00 B4 */	beq lbl_80B9889C
/* 80B987EC  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B987F0  41 82 00 AC */	beq lbl_80B9889C
/* 80B987F4  40 80 00 10 */	bge lbl_80B98804
/* 80B987F8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B987FC  41 82 00 14 */	beq lbl_80B98810
/* 80B98800  48 00 00 9C */	b lbl_80B9889C
lbl_80B98804:
/* 80B98804  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B98808  41 82 00 40 */	beq lbl_80B98848
/* 80B9880C  48 00 00 90 */	b lbl_80B9889C
lbl_80B98810:
/* 80B98810  38 00 00 14 */	li r0, 0x14
/* 80B98814  90 1C 09 60 */	stw r0, 0x960(r28)
/* 80B98818  38 00 00 01 */	li r0, 1
/* 80B9881C  98 1C 14 C4 */	stb r0, 0x14c4(r28)
/* 80B98820  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80B98824  7F 84 E3 78 */	mr r4, r28
/* 80B98828  3C A0 80 04 */	lis r5, dEv_defaultSkipProc__FPvi@ha
/* 80B9882C  38 A5 25 E8 */	addi r5, r5, dEv_defaultSkipProc__FPvi@l
/* 80B98830  38 C0 00 00 */	li r6, 0
/* 80B98834  4B 4A A0 E0 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80B98838  38 00 00 01 */	li r0, 1
/* 80B9883C  80 7C 14 9C */	lwz r3, 0x149c(r28)
/* 80B98840  98 03 08 1C */	stb r0, 0x81c(r3)
/* 80B98844  48 00 00 58 */	b lbl_80B9889C
lbl_80B98848:
/* 80B98848  80 7C 14 9C */	lwz r3, 0x149c(r28)
/* 80B9884C  28 03 00 00 */	cmplwi r3, 0
/* 80B98850  41 82 00 4C */	beq lbl_80B9889C
/* 80B98854  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80B98858  D0 23 05 BC */	stfs f1, 0x5bc(r3)
/* 80B9885C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080223@ha */
/* 80B98860  38 03 02 23 */	addi r0, r3, 0x0223 /* 0x00080223@l */
/* 80B98864  90 01 00 08 */	stw r0, 8(r1)
/* 80B98868  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B9886C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B98870  80 63 00 00 */	lwz r3, 0(r3)
/* 80B98874  38 81 00 08 */	addi r4, r1, 8
/* 80B98878  80 BC 14 9C */	lwz r5, 0x149c(r28)
/* 80B9887C  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80B98880  38 C0 00 00 */	li r6, 0
/* 80B98884  38 E0 00 00 */	li r7, 0
/* 80B98888  FC 40 08 90 */	fmr f2, f1
/* 80B9888C  C0 7F 00 B8 */	lfs f3, 0xb8(r31)
/* 80B98890  FC 80 18 90 */	fmr f4, f3
/* 80B98894  39 00 00 00 */	li r8, 0
/* 80B98898  4B 71 30 EC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B9889C:
/* 80B9889C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B988A0  41 82 00 38 */	beq lbl_80B988D8
/* 80B988A4  40 80 00 10 */	bge lbl_80B988B4
/* 80B988A8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B988AC  41 82 00 14 */	beq lbl_80B988C0
/* 80B988B0  48 00 00 74 */	b lbl_80B98924
lbl_80B988B4:
/* 80B988B4  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B988B8  41 82 00 34 */	beq lbl_80B988EC
/* 80B988BC  48 00 00 68 */	b lbl_80B98924
lbl_80B988C0:
/* 80B988C0  38 7C 09 60 */	addi r3, r28, 0x960
/* 80B988C4  48 00 25 81 */	bl func_80B9AE44
/* 80B988C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B988CC  40 82 00 5C */	bne lbl_80B98928
/* 80B988D0  3B C0 00 01 */	li r30, 1
/* 80B988D4  48 00 00 54 */	b lbl_80B98928
lbl_80B988D8:
/* 80B988D8  A8 1C 04 6A */	lha r0, 0x46a(r28)
/* 80B988DC  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80B988E0  41 81 00 48 */	bgt lbl_80B98928
/* 80B988E4  3B C0 00 01 */	li r30, 1
/* 80B988E8  48 00 00 40 */	b lbl_80B98928
lbl_80B988EC:
/* 80B988EC  80 7C 14 9C */	lwz r3, 0x149c(r28)
/* 80B988F0  38 80 00 01 */	li r4, 1
/* 80B988F4  88 03 05 B5 */	lbz r0, 0x5b5(r3)
/* 80B988F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B988FC  40 82 00 18 */	bne lbl_80B98914
/* 80B98900  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80B98904  C0 03 05 BC */	lfs f0, 0x5bc(r3)
/* 80B98908  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B9890C  41 82 00 08 */	beq lbl_80B98914
/* 80B98910  38 80 00 00 */	li r4, 0
lbl_80B98914:
/* 80B98914  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B98918  41 82 00 10 */	beq lbl_80B98928
/* 80B9891C  3B C0 00 01 */	li r30, 1
/* 80B98920  48 00 00 08 */	b lbl_80B98928
lbl_80B98924:
/* 80B98924  3B C0 00 01 */	li r30, 1
lbl_80B98928:
/* 80B98928  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B9892C  41 80 01 0C */	blt lbl_80B98A38
/* 80B98930  A0 1C 0C 90 */	lhz r0, 0xc90(r28)
/* 80B98934  80 7C 0C 94 */	lwz r3, 0xc94(r28)
/* 80B98938  80 63 00 08 */	lwz r3, 8(r3)
/* 80B9893C  54 00 20 36 */	slwi r0, r0, 4
/* 80B98940  7C 83 02 14 */	add r4, r3, r0
/* 80B98944  80 64 00 04 */	lwz r3, 4(r4)
/* 80B98948  80 04 00 08 */	lwz r0, 8(r4)
/* 80B9894C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80B98950  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B98954  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B98958  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B9895C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B98960  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B98964  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B98968  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B9896C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B98970  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B98974  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B98978  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B9897C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B98980  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B98984  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B98988  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B9898C  38 7C 0C 90 */	addi r3, r28, 0xc90
/* 80B98990  38 81 00 0C */	addi r4, r1, 0xc
/* 80B98994  4B 5B 80 E8 */	b chkPassedDst__13daNpcF_Path_cF4cXyz
/* 80B98998  2C 03 00 00 */	cmpwi r3, 0
/* 80B9899C  40 82 00 78 */	bne lbl_80B98A14
/* 80B989A0  38 7C 04 6A */	addi r3, r28, 0x46a
/* 80B989A4  38 80 00 08 */	li r4, 8
/* 80B989A8  38 A0 00 08 */	li r5, 8
/* 80B989AC  4B 6D 7D 24 */	b cLib_chaseS__FPsss
/* 80B989B0  38 7C 14 50 */	addi r3, r28, 0x1450
/* 80B989B4  38 9F 00 00 */	addi r4, r31, 0
/* 80B989B8  C0 24 00 78 */	lfs f1, 0x78(r4)
/* 80B989BC  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80B989C0  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 80B989C4  4B 6D 70 78 */	b cLib_addCalc2__FPffff
/* 80B989C8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B989CC  38 81 00 30 */	addi r4, r1, 0x30
/* 80B989D0  4B 6D 82 34 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B989D4  7C 7A 1B 78 */	mr r26, r3
/* 80B989D8  38 61 00 30 */	addi r3, r1, 0x30
/* 80B989DC  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B989E0  4B 6D 82 94 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B989E4  7C 7B 1B 78 */	mr r27, r3
/* 80B989E8  38 7C 14 5A */	addi r3, r28, 0x145a
/* 80B989EC  7F 44 D3 78 */	mr r4, r26
/* 80B989F0  38 A0 00 02 */	li r5, 2
/* 80B989F4  38 C0 08 00 */	li r6, 0x800
/* 80B989F8  4B 6D 7C 10 */	b cLib_addCalcAngleS2__FPssss
/* 80B989FC  38 7C 14 58 */	addi r3, r28, 0x1458
/* 80B98A00  7F 64 DB 78 */	mr r4, r27
/* 80B98A04  38 A0 00 02 */	li r5, 2
/* 80B98A08  38 C0 08 00 */	li r6, 0x800
/* 80B98A0C  4B 6D 7B FC */	b cLib_addCalcAngleS2__FPssss
/* 80B98A10  48 00 00 40 */	b lbl_80B98A50
lbl_80B98A14:
/* 80B98A14  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B98A18  D0 1C 14 50 */	stfs f0, 0x1450(r28)
/* 80B98A1C  38 7C 04 6A */	addi r3, r28, 0x46a
/* 80B98A20  38 80 00 FF */	li r4, 0xff
/* 80B98A24  38 A0 00 08 */	li r5, 8
/* 80B98A28  4B 6D 7C A8 */	b cLib_chaseS__FPsss
/* 80B98A2C  38 00 00 00 */	li r0, 0
/* 80B98A30  98 1C 14 4F */	stb r0, 0x144f(r28)
/* 80B98A34  48 00 00 1C */	b lbl_80B98A50
lbl_80B98A38:
/* 80B98A38  38 7C 14 50 */	addi r3, r28, 0x1450
/* 80B98A3C  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80B98A40  C0 5F 02 1C */	lfs f2, 0x21c(r31)
/* 80B98A44  4B 6D 7C FC */	b cLib_chaseF__FPfff
/* 80B98A48  38 00 00 00 */	li r0, 0
/* 80B98A4C  98 1C 14 4F */	stb r0, 0x144f(r28)
lbl_80B98A50:
/* 80B98A50  C0 3C 14 50 */	lfs f1, 0x1450(r28)
/* 80B98A54  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B98A58  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B98A5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B98A60  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B98A64  38 7C 14 58 */	addi r3, r28, 0x1458
/* 80B98A68  4B 47 44 A4 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B98A6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B98A70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B98A74  38 81 00 24 */	addi r4, r1, 0x24
/* 80B98A78  7C 85 23 78 */	mr r5, r4
/* 80B98A7C  4B 7A E2 F0 */	b PSMTXMultVec
/* 80B98A80  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B98A84  38 81 00 24 */	addi r4, r1, 0x24
/* 80B98A88  7C 65 1B 78 */	mr r5, r3
/* 80B98A8C  4B 7A E6 04 */	b PSVECAdd
/* 80B98A90  38 7C 08 F2 */	addi r3, r28, 0x8f2
/* 80B98A94  38 80 C0 00 */	li r4, -16384
/* 80B98A98  38 A0 00 02 */	li r5, 2
/* 80B98A9C  38 C0 08 00 */	li r6, 0x800
/* 80B98AA0  4B 6D 7B 68 */	b cLib_addCalcAngleS2__FPssss
/* 80B98AA4  7F 83 E3 78 */	mr r3, r28
/* 80B98AA8  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B98AAC  4B 5B B7 A4 */	b setAngle__8daNpcF_cFs
/* 80B98AB0  7F C3 F3 78 */	mr r3, r30
/* 80B98AB4  39 61 00 60 */	addi r11, r1, 0x60
/* 80B98AB8  4B 7C 97 60 */	b _restgpr_25
/* 80B98ABC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B98AC0  7C 08 03 A6 */	mtlr r0
/* 80B98AC4  38 21 00 60 */	addi r1, r1, 0x60
/* 80B98AC8  4E 80 00 20 */	blr 

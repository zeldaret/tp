lbl_80A6736C:
/* 80A6736C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A67370  7C 08 02 A6 */	mflr r0
/* 80A67374  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A67378  39 61 00 40 */	addi r11, r1, 0x40
/* 80A6737C  4B 8F AE 59 */	bl _savegpr_27
/* 80A67380  7C 7C 1B 78 */	mr r28, r3
/* 80A67384  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha /* 0x80A68EA4@ha */
/* 80A67388  3B E3 8E A4 */	addi r31, r3, m__17daNpc_Len_Param_c@l /* 0x80A68EA4@l */
/* 80A6738C  38 7F 00 00 */	addi r3, r31, 0
/* 80A67390  AB C3 00 8C */	lha r30, 0x8c(r3)
/* 80A67394  AB A3 00 8E */	lha r29, 0x8e(r3)
/* 80A67398  A0 1C 0E 22 */	lhz r0, 0xe22(r28)
/* 80A6739C  2C 00 00 02 */	cmpwi r0, 2
/* 80A673A0  41 82 00 90 */	beq lbl_80A67430
/* 80A673A4  40 80 03 D4 */	bge lbl_80A67778
/* 80A673A8  2C 00 00 00 */	cmpwi r0, 0
/* 80A673AC  40 80 00 0C */	bge lbl_80A673B8
/* 80A673B0  48 00 03 C8 */	b lbl_80A67778
/* 80A673B4  48 00 03 C4 */	b lbl_80A67778
lbl_80A673B8:
/* 80A673B8  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80A673BC  2C 00 00 00 */	cmpwi r0, 0
/* 80A673C0  40 82 00 70 */	bne lbl_80A67430
/* 80A673C4  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80A673C8  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A673CC  41 82 00 24 */	beq lbl_80A673F0
/* 80A673D0  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80A673D4  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80A673D8  4B 6D E4 C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A673DC  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80A673E0  38 00 00 11 */	li r0, 0x11
/* 80A673E4  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80A673E8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A673EC  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80A673F0:
/* 80A673F0  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80A673F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A673F8  41 82 00 24 */	beq lbl_80A6741C
/* 80A673FC  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80A67400  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80A67404  4B 6D E4 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A67408  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80A6740C  38 00 00 00 */	li r0, 0
/* 80A67410  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80A67414  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A67418  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80A6741C:
/* 80A6741C  38 00 00 00 */	li r0, 0
/* 80A67420  90 1C 0F E8 */	stw r0, 0xfe8(r28)
/* 80A67424  90 1C 0F E4 */	stw r0, 0xfe4(r28)
/* 80A67428  38 00 00 02 */	li r0, 2
/* 80A6742C  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80A67430:
/* 80A67430  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80A67434  2C 00 00 00 */	cmpwi r0, 0
/* 80A67438  40 82 03 40 */	bne lbl_80A67778
/* 80A6743C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80A67440  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A67444  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80A67448  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A6744C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A67450  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A67454  38 7C 0F A4 */	addi r3, r28, 0xfa4
/* 80A67458  38 81 00 08 */	addi r4, r1, 8
/* 80A6745C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A67460  80 DC 0F A4 */	lwz r6, 0xfa4(r28)
/* 80A67464  A0 C6 00 00 */	lhz r6, 0(r6)
/* 80A67468  38 E0 00 04 */	li r7, 4
/* 80A6746C  4B 6D EB 49 */	bl getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii
/* 80A67470  38 80 00 00 */	li r4, 0
/* 80A67474  2C 03 00 00 */	cmpwi r3, 0
/* 80A67478  40 82 00 10 */	bne lbl_80A67488
/* 80A6747C  80 1C 0F E4 */	lwz r0, 0xfe4(r28)
/* 80A67480  2C 00 00 00 */	cmpwi r0, 0
/* 80A67484  40 82 00 08 */	bne lbl_80A6748C
lbl_80A67488:
/* 80A67488  38 80 00 01 */	li r4, 1
lbl_80A6748C:
/* 80A6748C  54 9B 06 3F */	clrlwi. r27, r4, 0x18
/* 80A67490  41 82 00 10 */	beq lbl_80A674A0
/* 80A67494  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A67498  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A6749C  48 00 00 44 */	b lbl_80A674E0
lbl_80A674A0:
/* 80A674A0  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80A674A4  38 81 00 14 */	addi r4, r1, 0x14
/* 80A674A8  4B 80 97 5D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80A674AC  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80A674B0  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80A674B4  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80A674B8  38 A0 00 08 */	li r5, 8
/* 80A674BC  38 C0 04 00 */	li r6, 0x400
/* 80A674C0  4B 80 91 49 */	bl cLib_addCalcAngleS2__FPssss
/* 80A674C4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80A674C8  B0 1C 0D 7A */	sth r0, 0xd7a(r28)
/* 80A674CC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80A674D0  38 9F 00 00 */	addi r4, r31, 0
/* 80A674D4  C0 24 00 90 */	lfs f1, 0x90(r4)
/* 80A674D8  C0 5F 01 34 */	lfs f2, 0x134(r31)
/* 80A674DC  4B 80 92 65 */	bl cLib_chaseF__FPfff
lbl_80A674E0:
/* 80A674E0  2C 1B 00 00 */	cmpwi r27, 0
/* 80A674E4  41 82 00 E4 */	beq lbl_80A675C8
/* 80A674E8  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80A674EC  FC 00 02 10 */	fabs f0, f0
/* 80A674F0  FC 20 00 18 */	frsp f1, f0
/* 80A674F4  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80A674F8  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80A674FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A67500  40 80 00 C8 */	bge lbl_80A675C8
/* 80A67504  80 1C 0F E4 */	lwz r0, 0xfe4(r28)
/* 80A67508  2C 00 00 00 */	cmpwi r0, 0
/* 80A6750C  40 82 00 80 */	bne lbl_80A6758C
/* 80A67510  80 1C 0F E8 */	lwz r0, 0xfe8(r28)
/* 80A67514  2C 00 00 00 */	cmpwi r0, 0
/* 80A67518  40 82 00 B0 */	bne lbl_80A675C8
/* 80A6751C  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80A67520  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A67524  41 82 00 24 */	beq lbl_80A67548
/* 80A67528  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80A6752C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80A67530  4B 6D E3 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A67534  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80A67538  38 00 00 11 */	li r0, 0x11
/* 80A6753C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80A67540  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A67544  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80A67548:
/* 80A67548  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80A6754C  2C 00 00 00 */	cmpwi r0, 0
/* 80A67550  41 82 00 24 */	beq lbl_80A67574
/* 80A67554  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80A67558  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80A6755C  4B 6D E3 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A67560  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80A67564  38 00 00 00 */	li r0, 0
/* 80A67568  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80A6756C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A67570  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80A67574:
/* 80A67574  7F A0 0E 70 */	srawi r0, r29, 1
/* 80A67578  7C 60 01 94 */	addze r3, r0
/* 80A6757C  7F A4 EB 78 */	mr r4, r29
/* 80A67580  48 00 16 51 */	bl func_80A68BD0
/* 80A67584  90 7C 0F E8 */	stw r3, 0xfe8(r28)
/* 80A67588  48 00 00 40 */	b lbl_80A675C8
lbl_80A6758C:
/* 80A6758C  38 00 40 00 */	li r0, 0x4000
/* 80A67590  B0 1C 04 B6 */	sth r0, 0x4b6(r28)
/* 80A67594  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A67598  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 80A6759C  7C 04 00 00 */	cmpw r4, r0
/* 80A675A0  40 82 00 10 */	bne lbl_80A675B0
/* 80A675A4  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80A675A8  4B 6D E1 55 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A675AC  48 00 00 1C */	b lbl_80A675C8
lbl_80A675B0:
/* 80A675B0  7F 83 E3 78 */	mr r3, r28
/* 80A675B4  38 A0 00 11 */	li r5, 0x11
/* 80A675B8  38 C0 00 0D */	li r6, 0xd
/* 80A675BC  38 E0 00 0F */	li r7, 0xf
/* 80A675C0  39 00 00 00 */	li r8, 0
/* 80A675C4  4B 6E 40 85 */	bl step__8daNpcT_cFsiiii
lbl_80A675C8:
/* 80A675C8  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80A675CC  2C 00 00 07 */	cmpwi r0, 7
/* 80A675D0  41 82 00 30 */	beq lbl_80A67600
/* 80A675D4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A675D8  4B 6D E1 25 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A675DC  38 00 00 00 */	li r0, 0
/* 80A675E0  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80A675E4  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A675E8  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80A675EC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A675F0  38 00 00 07 */	li r0, 7
/* 80A675F4  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80A675F8  38 00 00 01 */	li r0, 1
/* 80A675FC  48 00 00 08 */	b lbl_80A67604
lbl_80A67600:
/* 80A67600  38 00 00 00 */	li r0, 0
lbl_80A67604:
/* 80A67604  2C 00 00 00 */	cmpwi r0, 0
/* 80A67608  41 82 00 0C */	beq lbl_80A67614
/* 80A6760C  38 00 00 00 */	li r0, 0
/* 80A67610  90 1C 0C EC */	stw r0, 0xcec(r28)
lbl_80A67614:
/* 80A67614  38 00 00 5A */	li r0, 0x5a
/* 80A67618  90 1C 0C E8 */	stw r0, 0xce8(r28)
/* 80A6761C  38 00 00 00 */	li r0, 0
/* 80A67620  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A67624  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80A67628  4B 6D E0 E1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A6762C  28 03 00 00 */	cmplwi r3, 0
/* 80A67630  41 82 00 98 */	beq lbl_80A676C8
/* 80A67634  88 1C 0A 89 */	lbz r0, 0xa89(r28)
/* 80A67638  28 00 00 00 */	cmplwi r0, 0
/* 80A6763C  40 82 00 8C */	bne lbl_80A676C8
/* 80A67640  38 7C 0B 98 */	addi r3, r28, 0xb98
/* 80A67644  4B 6D E0 C5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A67648  7C 64 1B 78 */	mr r4, r3
/* 80A6764C  7F 83 E3 78 */	mr r3, r28
/* 80A67650  C0 3C 0D F8 */	lfs f1, 0xdf8(r28)
/* 80A67654  A8 BC 0D 7A */	lha r5, 0xd7a(r28)
/* 80A67658  4B 6E 35 79 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A6765C  2C 03 00 00 */	cmpwi r3, 0
/* 80A67660  41 82 00 3C */	beq lbl_80A6769C
/* 80A67664  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80A67668  2C 00 00 01 */	cmpwi r0, 1
/* 80A6766C  41 82 00 28 */	beq lbl_80A67694
/* 80A67670  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A67674  4B 6D E0 89 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A67678  38 00 00 00 */	li r0, 0
/* 80A6767C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80A67680  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A67684  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80A67688  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A6768C  38 00 00 01 */	li r0, 1
/* 80A67690  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80A67694:
/* 80A67694  38 00 00 00 */	li r0, 0
/* 80A67698  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_80A6769C:
/* 80A6769C  7F 83 E3 78 */	mr r3, r28
/* 80A676A0  4B 6E 3C 99 */	bl srchPlayerActor__8daNpcT_cFv
/* 80A676A4  2C 03 00 00 */	cmpwi r3, 0
/* 80A676A8  40 82 00 34 */	bne lbl_80A676DC
/* 80A676AC  A8 7C 04 B6 */	lha r3, 0x4b6(r28)
/* 80A676B0  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 80A676B4  7C 03 00 00 */	cmpw r3, r0
/* 80A676B8  40 82 00 24 */	bne lbl_80A676DC
/* 80A676BC  38 00 00 01 */	li r0, 1
/* 80A676C0  B0 1C 0E 22 */	sth r0, 0xe22(r28)
/* 80A676C4  48 00 00 18 */	b lbl_80A676DC
lbl_80A676C8:
/* 80A676C8  88 1C 0A 89 */	lbz r0, 0xa89(r28)
/* 80A676CC  28 00 00 00 */	cmplwi r0, 0
/* 80A676D0  40 82 00 0C */	bne lbl_80A676DC
/* 80A676D4  7F 83 E3 78 */	mr r3, r28
/* 80A676D8  4B 6E 3C 61 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80A676DC:
/* 80A676DC  80 1C 0F E4 */	lwz r0, 0xfe4(r28)
/* 80A676E0  2C 00 00 00 */	cmpwi r0, 0
/* 80A676E4  40 82 00 84 */	bne lbl_80A67768
/* 80A676E8  38 7C 0F E8 */	addi r3, r28, 0xfe8
/* 80A676EC  48 00 14 C9 */	bl func_80A68BB4
/* 80A676F0  2C 03 00 00 */	cmpwi r3, 0
/* 80A676F4  40 82 00 84 */	bne lbl_80A67778
/* 80A676F8  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80A676FC  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A67700  41 82 00 24 */	beq lbl_80A67724
/* 80A67704  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80A67708  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80A6770C  4B 6D E1 8D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A67710  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80A67714  38 00 00 11 */	li r0, 0x11
/* 80A67718  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80A6771C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A67720  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80A67724:
/* 80A67724  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80A67728  2C 00 00 09 */	cmpwi r0, 9
/* 80A6772C  41 82 00 24 */	beq lbl_80A67750
/* 80A67730  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80A67734  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80A67738  4B 6D E1 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6773C  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80A67740  38 00 00 09 */	li r0, 9
/* 80A67744  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80A67748  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A6774C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80A67750:
/* 80A67750  7F C0 0E 70 */	srawi r0, r30, 1
/* 80A67754  7C 60 01 94 */	addze r3, r0
/* 80A67758  7F C4 F3 78 */	mr r4, r30
/* 80A6775C  48 00 14 75 */	bl func_80A68BD0
/* 80A67760  90 7C 0F E4 */	stw r3, 0xfe4(r28)
/* 80A67764  48 00 00 14 */	b lbl_80A67778
lbl_80A67768:
/* 80A67768  38 7C 0F E4 */	addi r3, r28, 0xfe4
/* 80A6776C  48 00 14 49 */	bl func_80A68BB4
/* 80A67770  38 00 00 00 */	li r0, 0
/* 80A67774  90 1C 0F E8 */	stw r0, 0xfe8(r28)
lbl_80A67778:
/* 80A67778  38 60 00 01 */	li r3, 1
/* 80A6777C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A67780  4B 8F AA A1 */	bl _restgpr_27
/* 80A67784  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A67788  7C 08 03 A6 */	mtlr r0
/* 80A6778C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A67790  4E 80 00 20 */	blr 

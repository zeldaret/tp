lbl_80B84298:
/* 80B84298  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80B8429C  7C 08 02 A6 */	mflr r0
/* 80B842A0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80B842A4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B842A8  4B 7D DF 28 */	b _savegpr_26
/* 80B842AC  7C 7B 1B 78 */	mr r27, r3
/* 80B842B0  3C 80 80 B9 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B842B4  3B A4 CE 90 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 80B842B8  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B842BC  3B C4 C4 58 */	addi r30, r4, m__17daNpc_zrA_Param_c@l
/* 80B842C0  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B842C4  2C 00 00 02 */	cmpwi r0, 2
/* 80B842C8  41 82 00 DC */	beq lbl_80B843A4
/* 80B842CC  40 80 00 10 */	bge lbl_80B842DC
/* 80B842D0  2C 00 00 00 */	cmpwi r0, 0
/* 80B842D4  41 82 00 14 */	beq lbl_80B842E8
/* 80B842D8  48 00 08 80 */	b lbl_80B84B58
lbl_80B842DC:
/* 80B842DC  2C 00 00 04 */	cmpwi r0, 4
/* 80B842E0  40 80 08 78 */	bge lbl_80B84B58
/* 80B842E4  48 00 08 6C */	b lbl_80B84B50
lbl_80B842E8:
/* 80B842E8  38 80 00 00 */	li r4, 0
/* 80B842EC  38 A0 00 00 */	li r5, 0
/* 80B842F0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B842F4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B842F8  7D 89 03 A6 */	mtctr r12
/* 80B842FC  4E 80 04 21 */	bctrl 
/* 80B84300  A8 1B 09 E0 */	lha r0, 0x9e0(r27)
/* 80B84304  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80B84308  41 82 00 24 */	beq lbl_80B8432C
/* 80B8430C  7F 63 DB 78 */	mr r3, r27
/* 80B84310  38 80 00 01 */	li r4, 1
/* 80B84314  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B84318  38 A0 00 00 */	li r5, 0
/* 80B8431C  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B84320  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B84324  7D 89 03 A6 */	mtctr r12
/* 80B84328  4E 80 04 21 */	bctrl 
lbl_80B8432C:
/* 80B8432C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B84330  D0 1B 05 30 */	stfs f0, 0x530(r27)
/* 80B84334  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80B84338  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80B8433C  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80B84340  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80B84344  7F 63 DB 78 */	mr r3, r27
/* 80B84348  38 80 00 00 */	li r4, 0
/* 80B8434C  4B FF A3 A9 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B84350  38 00 00 00 */	li r0, 0
/* 80B84354  90 1B 09 38 */	stw r0, 0x938(r27)
/* 80B84358  90 1B 09 6C */	stw r0, 0x96c(r27)
/* 80B8435C  7F 63 DB 78 */	mr r3, r27
/* 80B84360  4B FF DF 6D */	bl calcWaistAngleStop__11daNpc_zrA_cFv
/* 80B84364  38 00 00 01 */	li r0, 1
/* 80B84368  98 1B 15 50 */	stb r0, 0x1550(r27)
/* 80B8436C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B84370  D0 1B 15 24 */	stfs f0, 0x1524(r27)
/* 80B84374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B84378  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B8437C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B84380  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B84384  D0 1B 15 00 */	stfs f0, 0x1500(r27)
/* 80B84388  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B8438C  D0 1B 15 04 */	stfs f0, 0x1504(r27)
/* 80B84390  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B84394  D0 1B 15 08 */	stfs f0, 0x1508(r27)
/* 80B84398  98 1B 15 91 */	stb r0, 0x1591(r27)
/* 80B8439C  38 00 00 02 */	li r0, 2
/* 80B843A0  B0 1B 14 E6 */	sth r0, 0x14e6(r27)
lbl_80B843A4:
/* 80B843A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B843A8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B843AC  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80B843B0  7F 63 DB 78 */	mr r3, r27
/* 80B843B4  38 80 00 01 */	li r4, 1
/* 80B843B8  4B FF E2 45 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B843BC  7F 63 DB 78 */	mr r3, r27
/* 80B843C0  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80B843C4  48 00 29 D9 */	bl moveRiverPosCalc__11daNpc_zrA_cFR4cXyz
/* 80B843C8  88 1B 15 0D */	lbz r0, 0x150d(r27)
/* 80B843CC  28 00 00 03 */	cmplwi r0, 3
/* 80B843D0  40 82 01 9C */	bne lbl_80B8456C
/* 80B843D4  38 7B 13 2C */	addi r3, r27, 0x132c
/* 80B843D8  4B 5C C3 14 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B843DC  28 03 00 00 */	cmplwi r3, 0
/* 80B843E0  40 82 02 44 */	bne lbl_80B84624
/* 80B843E4  3C 60 80 B8 */	lis r3, s_sub__FPvPv@ha
/* 80B843E8  38 63 42 4C */	addi r3, r3, s_sub__FPvPv@l
/* 80B843EC  7F 64 DB 78 */	mr r4, r27
/* 80B843F0  4B 49 CF 48 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80B843F4  7C 7A 1B 79 */	or. r26, r3, r3
/* 80B843F8  41 82 02 2C */	beq lbl_80B84624
/* 80B843FC  38 61 00 9C */	addi r3, r1, 0x9c
/* 80B84400  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B84404  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80B84408  4B 6E 27 2C */	b __mi__4cXyzCFRC3Vec
/* 80B8440C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80B84410  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B84414  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B84418  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B8441C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80B84420  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B84424  38 61 00 3C */	addi r3, r1, 0x3c
/* 80B84428  4B 7C 2D 10 */	b PSVECSquareMag
/* 80B8442C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B84430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84434  40 81 00 58 */	ble lbl_80B8448C
/* 80B84438  FC 00 08 34 */	frsqrte f0, f1
/* 80B8443C  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B84440  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84444  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B84448  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8444C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84450  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84454  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84458  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8445C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84460  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84464  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84468  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8446C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84470  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84474  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84478  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8447C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84480  FC 21 00 32 */	fmul f1, f1, f0
/* 80B84484  FC 20 08 18 */	frsp f1, f1
/* 80B84488  48 00 00 88 */	b lbl_80B84510
lbl_80B8448C:
/* 80B8448C  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B84490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84494  40 80 00 10 */	bge lbl_80B844A4
/* 80B84498  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B8449C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B844A0  48 00 00 70 */	b lbl_80B84510
lbl_80B844A4:
/* 80B844A4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80B844A8  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B844AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B844B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B844B4  7C 03 00 00 */	cmpw r3, r0
/* 80B844B8  41 82 00 14 */	beq lbl_80B844CC
/* 80B844BC  40 80 00 40 */	bge lbl_80B844FC
/* 80B844C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B844C4  41 82 00 20 */	beq lbl_80B844E4
/* 80B844C8  48 00 00 34 */	b lbl_80B844FC
lbl_80B844CC:
/* 80B844CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B844D0  41 82 00 0C */	beq lbl_80B844DC
/* 80B844D4  38 00 00 01 */	li r0, 1
/* 80B844D8  48 00 00 28 */	b lbl_80B84500
lbl_80B844DC:
/* 80B844DC  38 00 00 02 */	li r0, 2
/* 80B844E0  48 00 00 20 */	b lbl_80B84500
lbl_80B844E4:
/* 80B844E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B844E8  41 82 00 0C */	beq lbl_80B844F4
/* 80B844EC  38 00 00 05 */	li r0, 5
/* 80B844F0  48 00 00 10 */	b lbl_80B84500
lbl_80B844F4:
/* 80B844F4  38 00 00 03 */	li r0, 3
/* 80B844F8  48 00 00 08 */	b lbl_80B84500
lbl_80B844FC:
/* 80B844FC  38 00 00 04 */	li r0, 4
lbl_80B84500:
/* 80B84500  2C 00 00 01 */	cmpwi r0, 1
/* 80B84504  40 82 00 0C */	bne lbl_80B84510
/* 80B84508  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B8450C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B84510:
/* 80B84510  C0 1E 07 FC */	lfs f0, 0x7fc(r30)
/* 80B84514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84518  41 81 01 0C */	bgt lbl_80B84624
/* 80B8451C  38 7B 13 2C */	addi r3, r27, 0x132c
/* 80B84520  7F 44 D3 78 */	mr r4, r26
/* 80B84524  4B 5C C1 98 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B84528  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 80B8452C  28 00 00 2D */	cmplwi r0, 0x2d
/* 80B84530  41 82 00 F4 */	beq lbl_80B84624
/* 80B84534  38 00 00 2D */	li r0, 0x2d
/* 80B84538  98 1C 05 6A */	stb r0, 0x56a(r28)
/* 80B8453C  38 00 00 04 */	li r0, 4
/* 80B84540  98 1B 15 94 */	stb r0, 0x1594(r27)
/* 80B84544  80 7D 08 E4 */	lwz r3, 0x8e4(r29)
/* 80B84548  80 1D 08 E8 */	lwz r0, 0x8e8(r29)
/* 80B8454C  90 61 00 90 */	stw r3, 0x90(r1)
/* 80B84550  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B84554  80 1D 08 EC */	lwz r0, 0x8ec(r29)
/* 80B84558  90 01 00 98 */	stw r0, 0x98(r1)
/* 80B8455C  7F 63 DB 78 */	mr r3, r27
/* 80B84560  38 81 00 90 */	addi r4, r1, 0x90
/* 80B84564  4B FF 95 BD */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B84568  48 00 05 F0 */	b lbl_80B84B58
lbl_80B8456C:
/* 80B8456C  28 00 00 00 */	cmplwi r0, 0
/* 80B84570  40 82 00 B4 */	bne lbl_80B84624
/* 80B84574  38 7B 13 2C */	addi r3, r27, 0x132c
/* 80B84578  4B 5C C1 74 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B8457C  28 03 00 00 */	cmplwi r3, 0
/* 80B84580  40 82 00 A4 */	bne lbl_80B84624
/* 80B84584  3C 60 80 B8 */	lis r3, s_subHoz__FPvPv@ha
/* 80B84588  38 63 42 00 */	addi r3, r3, s_subHoz__FPvPv@l
/* 80B8458C  7F 64 DB 78 */	mr r4, r27
/* 80B84590  4B 49 CD A8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80B84594  7C 7A 1B 79 */	or. r26, r3, r3
/* 80B84598  41 82 00 8C */	beq lbl_80B84624
/* 80B8459C  38 7B 13 2C */	addi r3, r27, 0x132c
/* 80B845A0  7F 44 D3 78 */	mr r4, r26
/* 80B845A4  4B 5C C1 18 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B845A8  7F 43 D3 78 */	mr r3, r26
/* 80B845AC  4B E7 D9 A8 */	b getType__11daNpc_Hoz_cFv
/* 80B845B0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B845B4  28 00 00 01 */	cmplwi r0, 1
/* 80B845B8  41 82 00 18 */	beq lbl_80B845D0
/* 80B845BC  7F 43 D3 78 */	mr r3, r26
/* 80B845C0  4B E7 D9 94 */	b getType__11daNpc_Hoz_cFv
/* 80B845C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B845C8  28 00 00 05 */	cmplwi r0, 5
/* 80B845CC  40 82 00 38 */	bne lbl_80B84604
lbl_80B845D0:
/* 80B845D0  38 00 00 01 */	li r0, 1
/* 80B845D4  98 1B 15 0D */	stb r0, 0x150d(r27)
/* 80B845D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B845DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B845E0  88 9B 15 0E */	lbz r4, 0x150e(r27)
/* 80B845E4  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B845E8  7C 05 07 74 */	extsb r5, r0
/* 80B845EC  4B 4B 0D 74 */	b isSwitch__10dSv_info_cCFii
/* 80B845F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B845F4  41 82 00 30 */	beq lbl_80B84624
/* 80B845F8  38 00 00 02 */	li r0, 2
/* 80B845FC  98 1B 15 C0 */	stb r0, 0x15c0(r27)
/* 80B84600  48 00 00 24 */	b lbl_80B84624
lbl_80B84604:
/* 80B84604  38 00 00 02 */	li r0, 2
/* 80B84608  98 1B 15 0D */	stb r0, 0x150d(r27)
/* 80B8460C  38 60 00 60 */	li r3, 0x60
/* 80B84610  4B 5D 10 24 */	b daNpcF_chkEvtBit__FUl
/* 80B84614  2C 03 00 00 */	cmpwi r3, 0
/* 80B84618  40 82 00 0C */	bne lbl_80B84624
/* 80B8461C  38 60 00 60 */	li r3, 0x60
/* 80B84620  4B 5D 10 54 */	b daNpcF_onEvtBit__FUl
lbl_80B84624:
/* 80B84624  7F 83 E3 78 */	mr r3, r28
/* 80B84628  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80B8462C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 80B84630  7D 89 03 A6 */	mtctr r12
/* 80B84634  4E 80 04 21 */	bctrl 
/* 80B84638  28 03 00 00 */	cmplwi r3, 0
/* 80B8463C  41 82 05 1C */	beq lbl_80B84B58
/* 80B84640  88 1B 15 0D */	lbz r0, 0x150d(r27)
/* 80B84644  28 00 00 02 */	cmplwi r0, 2
/* 80B84648  40 82 00 58 */	bne lbl_80B846A0
/* 80B8464C  38 7B 13 2C */	addi r3, r27, 0x132c
/* 80B84650  4B 5C C0 9C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B84654  28 03 00 00 */	cmplwi r3, 0
/* 80B84658  41 82 04 C8 */	beq lbl_80B84B20
/* 80B8465C  88 03 0F 8D */	lbz r0, 0xf8d(r3)
/* 80B84660  28 00 00 00 */	cmplwi r0, 0
/* 80B84664  41 82 04 BC */	beq lbl_80B84B20
/* 80B84668  38 00 00 03 */	li r0, 3
/* 80B8466C  98 1B 15 94 */	stb r0, 0x1594(r27)
/* 80B84670  38 7B 0C 18 */	addi r3, r27, 0xc18
/* 80B84674  4B 5C C5 6C */	b setNextIdx__13daNpcF_Path_cFv
/* 80B84678  80 7D 08 F0 */	lwz r3, 0x8f0(r29)
/* 80B8467C  80 1D 08 F4 */	lwz r0, 0x8f4(r29)
/* 80B84680  90 61 00 84 */	stw r3, 0x84(r1)
/* 80B84684  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B84688  80 1D 08 F8 */	lwz r0, 0x8f8(r29)
/* 80B8468C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80B84690  7F 63 DB 78 */	mr r3, r27
/* 80B84694  38 81 00 84 */	addi r4, r1, 0x84
/* 80B84698  4B FF 94 89 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B8469C  48 00 04 BC */	b lbl_80B84B58
lbl_80B846A0:
/* 80B846A0  28 00 00 01 */	cmplwi r0, 1
/* 80B846A4  40 82 04 7C */	bne lbl_80B84B20
/* 80B846A8  88 1B 15 C0 */	lbz r0, 0x15c0(r27)
/* 80B846AC  28 00 00 00 */	cmplwi r0, 0
/* 80B846B0  40 82 01 3C */	bne lbl_80B847EC
/* 80B846B4  38 61 00 78 */	addi r3, r1, 0x78
/* 80B846B8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B846BC  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80B846C0  4B 6E 24 74 */	b __mi__4cXyzCFRC3Vec
/* 80B846C4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80B846C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B846CC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B846D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B846D4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80B846D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B846DC  38 61 00 30 */	addi r3, r1, 0x30
/* 80B846E0  4B 7C 2A 58 */	b PSVECSquareMag
/* 80B846E4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B846E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B846EC  40 81 00 58 */	ble lbl_80B84744
/* 80B846F0  FC 00 08 34 */	frsqrte f0, f1
/* 80B846F4  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B846F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B846FC  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B84700  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84704  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84708  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8470C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84710  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84714  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84718  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8471C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84720  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84724  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84728  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8472C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84730  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84734  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84738  FC 21 00 32 */	fmul f1, f1, f0
/* 80B8473C  FC 20 08 18 */	frsp f1, f1
/* 80B84740  48 00 00 88 */	b lbl_80B847C8
lbl_80B84744:
/* 80B84744  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B84748  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8474C  40 80 00 10 */	bge lbl_80B8475C
/* 80B84750  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B84754  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B84758  48 00 00 70 */	b lbl_80B847C8
lbl_80B8475C:
/* 80B8475C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B84760  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80B84764  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B84768  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B8476C  7C 03 00 00 */	cmpw r3, r0
/* 80B84770  41 82 00 14 */	beq lbl_80B84784
/* 80B84774  40 80 00 40 */	bge lbl_80B847B4
/* 80B84778  2C 03 00 00 */	cmpwi r3, 0
/* 80B8477C  41 82 00 20 */	beq lbl_80B8479C
/* 80B84780  48 00 00 34 */	b lbl_80B847B4
lbl_80B84784:
/* 80B84784  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B84788  41 82 00 0C */	beq lbl_80B84794
/* 80B8478C  38 00 00 01 */	li r0, 1
/* 80B84790  48 00 00 28 */	b lbl_80B847B8
lbl_80B84794:
/* 80B84794  38 00 00 02 */	li r0, 2
/* 80B84798  48 00 00 20 */	b lbl_80B847B8
lbl_80B8479C:
/* 80B8479C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B847A0  41 82 00 0C */	beq lbl_80B847AC
/* 80B847A4  38 00 00 05 */	li r0, 5
/* 80B847A8  48 00 00 10 */	b lbl_80B847B8
lbl_80B847AC:
/* 80B847AC  38 00 00 03 */	li r0, 3
/* 80B847B0  48 00 00 08 */	b lbl_80B847B8
lbl_80B847B4:
/* 80B847B4  38 00 00 04 */	li r0, 4
lbl_80B847B8:
/* 80B847B8  2C 00 00 01 */	cmpwi r0, 1
/* 80B847BC  40 82 00 0C */	bne lbl_80B847C8
/* 80B847C0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B847C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B847C8:
/* 80B847C8  38 7E 00 00 */	addi r3, r30, 0
/* 80B847CC  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 80B847D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B847D4  40 80 03 4C */	bge lbl_80B84B20
/* 80B847D8  38 00 00 01 */	li r0, 1
/* 80B847DC  98 1B 15 C0 */	stb r0, 0x15c0(r27)
/* 80B847E0  38 00 00 02 */	li r0, 2
/* 80B847E4  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B847E8  48 00 03 38 */	b lbl_80B84B20
lbl_80B847EC:
/* 80B847EC  28 00 00 01 */	cmplwi r0, 1
/* 80B847F0  40 82 01 A4 */	bne lbl_80B84994
/* 80B847F4  C0 1E 08 00 */	lfs f0, 0x800(r30)
/* 80B847F8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80B847FC  C0 1E 08 04 */	lfs f0, 0x804(r30)
/* 80B84800  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 80B84804  C0 1E 08 08 */	lfs f0, 0x808(r30)
/* 80B84808  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 80B8480C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B84810  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B84814  88 9B 15 0E */	lbz r4, 0x150e(r27)
/* 80B84818  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B8481C  7C 05 07 74 */	extsb r5, r0
/* 80B84820  4B 4B 0B 40 */	b isSwitch__10dSv_info_cCFii
/* 80B84824  2C 03 00 00 */	cmpwi r3, 0
/* 80B84828  41 82 00 18 */	beq lbl_80B84840
/* 80B8482C  38 00 00 03 */	li r0, 3
/* 80B84830  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80B84834  38 00 00 01 */	li r0, 1
/* 80B84838  98 1B 09 ED */	stb r0, 0x9ed(r27)
/* 80B8483C  48 00 02 E4 */	b lbl_80B84B20
lbl_80B84840:
/* 80B84840  38 61 00 6C */	addi r3, r1, 0x6c
/* 80B84844  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B84848  38 A1 00 B4 */	addi r5, r1, 0xb4
/* 80B8484C  4B 6E 22 E8 */	b __mi__4cXyzCFRC3Vec
/* 80B84850  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B84854  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B84858  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B8485C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B84860  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80B84864  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B84868  38 61 00 24 */	addi r3, r1, 0x24
/* 80B8486C  4B 7C 28 CC */	b PSVECSquareMag
/* 80B84870  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B84874  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84878  40 81 00 58 */	ble lbl_80B848D0
/* 80B8487C  FC 00 08 34 */	frsqrte f0, f1
/* 80B84880  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B84884  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84888  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B8488C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84890  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84894  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84898  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8489C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B848A0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B848A4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B848A8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B848AC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B848B0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B848B4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B848B8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B848BC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B848C0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B848C4  FC 21 00 32 */	fmul f1, f1, f0
/* 80B848C8  FC 20 08 18 */	frsp f1, f1
/* 80B848CC  48 00 00 88 */	b lbl_80B84954
lbl_80B848D0:
/* 80B848D0  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B848D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B848D8  40 80 00 10 */	bge lbl_80B848E8
/* 80B848DC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B848E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B848E4  48 00 00 70 */	b lbl_80B84954
lbl_80B848E8:
/* 80B848E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B848EC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B848F0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B848F4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B848F8  7C 03 00 00 */	cmpw r3, r0
/* 80B848FC  41 82 00 14 */	beq lbl_80B84910
/* 80B84900  40 80 00 40 */	bge lbl_80B84940
/* 80B84904  2C 03 00 00 */	cmpwi r3, 0
/* 80B84908  41 82 00 20 */	beq lbl_80B84928
/* 80B8490C  48 00 00 34 */	b lbl_80B84940
lbl_80B84910:
/* 80B84910  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B84914  41 82 00 0C */	beq lbl_80B84920
/* 80B84918  38 00 00 01 */	li r0, 1
/* 80B8491C  48 00 00 28 */	b lbl_80B84944
lbl_80B84920:
/* 80B84920  38 00 00 02 */	li r0, 2
/* 80B84924  48 00 00 20 */	b lbl_80B84944
lbl_80B84928:
/* 80B84928  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8492C  41 82 00 0C */	beq lbl_80B84938
/* 80B84930  38 00 00 05 */	li r0, 5
/* 80B84934  48 00 00 10 */	b lbl_80B84944
lbl_80B84938:
/* 80B84938  38 00 00 03 */	li r0, 3
/* 80B8493C  48 00 00 08 */	b lbl_80B84944
lbl_80B84940:
/* 80B84940  38 00 00 04 */	li r0, 4
lbl_80B84944:
/* 80B84944  2C 00 00 01 */	cmpwi r0, 1
/* 80B84948  40 82 00 0C */	bne lbl_80B84954
/* 80B8494C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B84950  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B84954:
/* 80B84954  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80B84958  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8495C  4C 41 13 82 */	cror 2, 1, 2
/* 80B84960  40 82 01 C0 */	bne lbl_80B84B20
/* 80B84964  38 00 00 03 */	li r0, 3
/* 80B84968  98 1B 15 94 */	stb r0, 0x1594(r27)
/* 80B8496C  80 7D 08 FC */	lwz r3, 0x8fc(r29)
/* 80B84970  80 1D 09 00 */	lwz r0, 0x900(r29)
/* 80B84974  90 61 00 60 */	stw r3, 0x60(r1)
/* 80B84978  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B8497C  80 1D 09 04 */	lwz r0, 0x904(r29)
/* 80B84980  90 01 00 68 */	stw r0, 0x68(r1)
/* 80B84984  7F 63 DB 78 */	mr r3, r27
/* 80B84988  38 81 00 60 */	addi r4, r1, 0x60
/* 80B8498C  4B FF 91 95 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B84990  48 00 01 90 */	b lbl_80B84B20
lbl_80B84994:
/* 80B84994  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B84998  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80B8499C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B849A0  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80B849A4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B849A8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80B849AC  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80B849B0  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B849B4  7C 65 1B 78 */	mr r5, r3
/* 80B849B8  4B 7C 26 FC */	b PSVECSubtract
/* 80B849BC  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80B849C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B849C4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B849C8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B849CC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80B849D0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B849D4  38 61 00 18 */	addi r3, r1, 0x18
/* 80B849D8  4B 7C 27 60 */	b PSVECSquareMag
/* 80B849DC  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B849E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B849E4  40 81 00 58 */	ble lbl_80B84A3C
/* 80B849E8  FC 00 08 34 */	frsqrte f0, f1
/* 80B849EC  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B849F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B849F4  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B849F8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B849FC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84A00  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84A04  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84A08  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84A0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84A10  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84A14  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84A18  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84A1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B84A20  FC 00 00 32 */	fmul f0, f0, f0
/* 80B84A24  FC 01 00 32 */	fmul f0, f1, f0
/* 80B84A28  FC 03 00 28 */	fsub f0, f3, f0
/* 80B84A2C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B84A30  FC 21 00 32 */	fmul f1, f1, f0
/* 80B84A34  FC 20 08 18 */	frsp f1, f1
/* 80B84A38  48 00 00 88 */	b lbl_80B84AC0
lbl_80B84A3C:
/* 80B84A3C  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B84A40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84A44  40 80 00 10 */	bge lbl_80B84A54
/* 80B84A48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B84A4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B84A50  48 00 00 70 */	b lbl_80B84AC0
lbl_80B84A54:
/* 80B84A54  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B84A58  80 81 00 08 */	lwz r4, 8(r1)
/* 80B84A5C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B84A60  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B84A64  7C 03 00 00 */	cmpw r3, r0
/* 80B84A68  41 82 00 14 */	beq lbl_80B84A7C
/* 80B84A6C  40 80 00 40 */	bge lbl_80B84AAC
/* 80B84A70  2C 03 00 00 */	cmpwi r3, 0
/* 80B84A74  41 82 00 20 */	beq lbl_80B84A94
/* 80B84A78  48 00 00 34 */	b lbl_80B84AAC
lbl_80B84A7C:
/* 80B84A7C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B84A80  41 82 00 0C */	beq lbl_80B84A8C
/* 80B84A84  38 00 00 01 */	li r0, 1
/* 80B84A88  48 00 00 28 */	b lbl_80B84AB0
lbl_80B84A8C:
/* 80B84A8C  38 00 00 02 */	li r0, 2
/* 80B84A90  48 00 00 20 */	b lbl_80B84AB0
lbl_80B84A94:
/* 80B84A94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B84A98  41 82 00 0C */	beq lbl_80B84AA4
/* 80B84A9C  38 00 00 05 */	li r0, 5
/* 80B84AA0  48 00 00 10 */	b lbl_80B84AB0
lbl_80B84AA4:
/* 80B84AA4  38 00 00 03 */	li r0, 3
/* 80B84AA8  48 00 00 08 */	b lbl_80B84AB0
lbl_80B84AAC:
/* 80B84AAC  38 00 00 04 */	li r0, 4
lbl_80B84AB0:
/* 80B84AB0  2C 00 00 01 */	cmpwi r0, 1
/* 80B84AB4  40 82 00 0C */	bne lbl_80B84AC0
/* 80B84AB8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B84ABC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B84AC0:
/* 80B84AC0  C0 1E 07 AC */	lfs f0, 0x7ac(r30)
/* 80B84AC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B84AC8  40 80 00 58 */	bge lbl_80B84B20
/* 80B84ACC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80B84AD0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B84AD4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80B84AD8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B84ADC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80B84AE0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B84AE4  38 7B 0C 18 */	addi r3, r27, 0xc18
/* 80B84AE8  38 81 00 54 */	addi r4, r1, 0x54
/* 80B84AEC  4B FF 3C 81 */	bl setNextIdxDst__16daNpc_zrA_Path_cF4cXyz
/* 80B84AF0  38 00 00 03 */	li r0, 3
/* 80B84AF4  98 1B 15 94 */	stb r0, 0x1594(r27)
/* 80B84AF8  80 7D 09 08 */	lwz r3, 0x908(r29)
/* 80B84AFC  80 1D 09 0C */	lwz r0, 0x90c(r29)
/* 80B84B00  90 61 00 48 */	stw r3, 0x48(r1)
/* 80B84B04  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B84B08  80 1D 09 10 */	lwz r0, 0x910(r29)
/* 80B84B0C  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B84B10  7F 63 DB 78 */	mr r3, r27
/* 80B84B14  38 81 00 48 */	addi r4, r1, 0x48
/* 80B84B18  4B FF 90 09 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B84B1C  48 00 00 3C */	b lbl_80B84B58
lbl_80B84B20:
/* 80B84B20  7F 63 DB 78 */	mr r3, r27
/* 80B84B24  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B84B28  4B 49 5B E8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B84B2C  7C 64 1B 78 */	mr r4, r3
/* 80B84B30  38 7B 08 F2 */	addi r3, r27, 0x8f2
/* 80B84B34  38 A0 00 02 */	li r5, 2
/* 80B84B38  38 C0 08 00 */	li r6, 0x800
/* 80B84B3C  4B 6E BA CC */	b cLib_addCalcAngleS2__FPssss
/* 80B84B40  7F 63 DB 78 */	mr r3, r27
/* 80B84B44  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B84B48  4B 5C F7 08 */	b setAngle__8daNpcF_cFs
/* 80B84B4C  48 00 00 0C */	b lbl_80B84B58
lbl_80B84B50:
/* 80B84B50  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B84B54  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80B84B58:
/* 80B84B58  38 60 00 01 */	li r3, 1
/* 80B84B5C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 80B84B60  4B 7D D6 BC */	b _restgpr_26
/* 80B84B64  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80B84B68  7C 08 03 A6 */	mtlr r0
/* 80B84B6C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80B84B70  4E 80 00 20 */	blr 

lbl_80B837E8:
/* 80B837E8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80B837EC  7C 08 02 A6 */	mflr r0
/* 80B837F0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B837F4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80B837F8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80B837FC  39 61 00 80 */	addi r11, r1, 0x80
/* 80B83800  4B 7D E9 CD */	bl _savegpr_25
/* 80B83804  7C 7C 1B 78 */	mr r28, r3
/* 80B83808  7C 99 23 78 */	mr r25, r4
/* 80B8380C  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B83810  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B83814  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B83818  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B8381C  3B 5B 4F F8 */	addi r26, r27, 0x4ff8
/* 80B83820  3B C0 00 00 */	li r30, 0
/* 80B83824  3B A0 FF FF */	li r29, -1
/* 80B83828  7F 43 D3 78 */	mr r3, r26
/* 80B8382C  3C A0 80 B9 */	lis r5, d_a_npc_zra__stringBase0@ha /* 0x80B8CD30@ha */
/* 80B83830  38 A5 CD 30 */	addi r5, r5, d_a_npc_zra__stringBase0@l /* 0x80B8CD30@l */
/* 80B83834  38 A5 01 5B */	addi r5, r5, 0x15b
/* 80B83838  38 C0 00 03 */	li r6, 3
/* 80B8383C  4B 4C 48 B1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B83840  28 03 00 00 */	cmplwi r3, 0
/* 80B83844  41 82 00 08 */	beq lbl_80B8384C
/* 80B83848  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B8384C:
/* 80B8384C  7F 43 D3 78 */	mr r3, r26
/* 80B83850  7F 24 CB 78 */	mr r4, r25
/* 80B83854  4B 4C 44 F9 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B83858  2C 03 00 00 */	cmpwi r3, 0
/* 80B8385C  41 82 01 F8 */	beq lbl_80B83A54
/* 80B83860  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B83864  41 82 01 5C */	beq lbl_80B839C0
/* 80B83868  40 80 00 1C */	bge lbl_80B83884
/* 80B8386C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B83870  41 82 00 64 */	beq lbl_80B838D4
/* 80B83874  40 80 01 E0 */	bge lbl_80B83A54
/* 80B83878  2C 1D 00 00 */	cmpwi r29, 0
/* 80B8387C  41 82 00 20 */	beq lbl_80B8389C
/* 80B83880  48 00 01 D4 */	b lbl_80B83A54
lbl_80B83884:
/* 80B83884  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80B83888  41 82 01 CC */	beq lbl_80B83A54
/* 80B8388C  40 80 01 C8 */	bge lbl_80B83A54
/* 80B83890  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80B83894  41 82 01 B8 */	beq lbl_80B83A4C
/* 80B83898  48 00 01 BC */	b lbl_80B83A54
lbl_80B8389C:
/* 80B8389C  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80B838A0  7F 84 E3 78 */	mr r4, r28
/* 80B838A4  3C A0 80 04 */	lis r5, dEv_defaultSkipProc__FPvi@ha /* 0x800425E8@ha */
/* 80B838A8  38 A5 25 E8 */	addi r5, r5, dEv_defaultSkipProc__FPvi@l /* 0x800425E8@l */
/* 80B838AC  38 C0 00 00 */	li r6, 0
/* 80B838B0  4B 4B F0 65 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80B838B4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B838B8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B838BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B838C0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B838C4  3C 80 01 00 */	lis r4, 0x0100 /* 0x010000A6@ha */
/* 80B838C8  38 84 00 A6 */	addi r4, r4, 0x00A6 /* 0x010000A6@l */
/* 80B838CC  4B 72 BB D1 */	bl subBgmStart__8Z2SeqMgrFUl
/* 80B838D0  48 00 01 84 */	b lbl_80B83A54
lbl_80B838D4:
/* 80B838D4  7F 83 E3 78 */	mr r3, r28
/* 80B838D8  38 80 00 14 */	li r4, 0x14
/* 80B838DC  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B838E0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B838E4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B838E8  7D 89 03 A6 */	mtctr r12
/* 80B838EC  4E 80 04 21 */	bctrl 
/* 80B838F0  7F 83 E3 78 */	mr r3, r28
/* 80B838F4  38 80 00 23 */	li r4, 0x23
/* 80B838F8  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B838FC  38 A0 00 00 */	li r5, 0
/* 80B83900  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B83904  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B83908  7D 89 03 A6 */	mtctr r12
/* 80B8390C  4E 80 04 21 */	bctrl 
/* 80B83910  38 00 80 00 */	li r0, -32768
/* 80B83914  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80B83918  7F 83 E3 78 */	mr r3, r28
/* 80B8391C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80B83920  4B 5D 09 31 */	bl setAngle__8daNpcF_cFs
/* 80B83924  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B83928  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B8392C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B83930  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B83934  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B83938  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B8393C  38 7C 0C 18 */	addi r3, r28, 0xc18
/* 80B83940  38 81 00 34 */	addi r4, r1, 0x34
/* 80B83944  4B FF 4E 29 */	bl setNextIdxDst__16daNpc_zrA_Path_cF4cXyz
/* 80B83948  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80B8394C  60 00 00 02 */	ori r0, r0, 2
/* 80B83950  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80B83954  80 1C 05 FC */	lwz r0, 0x5fc(r28)
/* 80B83958  60 00 00 04 */	ori r0, r0, 4
/* 80B8395C  90 1C 05 FC */	stw r0, 0x5fc(r28)
/* 80B83960  38 80 00 00 */	li r4, 0
/* 80B83964  98 9C 15 3D */	stb r4, 0x153d(r28)
/* 80B83968  38 00 00 01 */	li r0, 1
/* 80B8396C  98 1C 15 20 */	stb r0, 0x1520(r28)
/* 80B83970  38 7F 00 00 */	addi r3, r31, 0
/* 80B83974  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80B83978  D0 1C 15 6C */	stfs f0, 0x156c(r28)
/* 80B8397C  98 9C 07 BC */	stb r4, 0x7bc(r28)
/* 80B83980  7F 83 E3 78 */	mr r3, r28
/* 80B83984  38 80 00 00 */	li r4, 0
/* 80B83988  4B FF AD 6D */	bl setLookMode__11daNpc_zrA_cFi
/* 80B8398C  38 00 00 00 */	li r0, 0
/* 80B83990  90 1C 09 38 */	stw r0, 0x938(r28)
/* 80B83994  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80B83998  98 1C 15 3E */	stb r0, 0x153e(r28)
/* 80B8399C  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B839A0  B0 1C 15 36 */	sth r0, 0x1536(r28)
/* 80B839A4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B839A8  B0 1C 15 38 */	sth r0, 0x1538(r28)
/* 80B839AC  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B839B0  B0 1C 15 3A */	sth r0, 0x153a(r28)
/* 80B839B4  7F 83 E3 78 */	mr r3, r28
/* 80B839B8  4B FF E8 81 */	bl calcWaistAngleInit__11daNpc_zrA_cFv
/* 80B839BC  48 00 00 98 */	b lbl_80B83A54
lbl_80B839C0:
/* 80B839C0  38 00 00 05 */	li r0, 5
/* 80B839C4  B0 1C 0C 18 */	sth r0, 0xc18(r28)
/* 80B839C8  80 7C 0C 1C */	lwz r3, 0xc1c(r28)
/* 80B839CC  80 83 00 08 */	lwz r4, 8(r3)
/* 80B839D0  80 64 00 54 */	lwz r3, 0x54(r4)
/* 80B839D4  80 04 00 58 */	lwz r0, 0x58(r4)
/* 80B839D8  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B839DC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B839E0  80 04 00 5C */	lwz r0, 0x5c(r4)
/* 80B839E4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B839E8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B839EC  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80B839F0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B839F4  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80B839F8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B839FC  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80B83A00  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B83A04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B83A08  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B83A0C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B83A10  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B83A14  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B83A18  38 7C 0C 18 */	addi r3, r28, 0xc18
/* 80B83A1C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B83A20  4B FF 4D 4D */	bl setNextIdxDst__16daNpc_zrA_Path_cF4cXyz
/* 80B83A24  38 00 80 00 */	li r0, -32768
/* 80B83A28  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80B83A2C  38 00 C0 00 */	li r0, -16384
/* 80B83A30  B0 1C 04 DC */	sth r0, 0x4dc(r28)
/* 80B83A34  B0 1C 08 F0 */	sth r0, 0x8f0(r28)
/* 80B83A38  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80B83A3C  7F 83 E3 78 */	mr r3, r28
/* 80B83A40  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80B83A44  4B 5D 08 0D */	bl setAngle__8daNpcF_cFs
/* 80B83A48  48 00 00 0C */	b lbl_80B83A54
lbl_80B83A4C:
/* 80B83A4C  38 00 00 3C */	li r0, 0x3c
/* 80B83A50  90 1C 09 60 */	stw r0, 0x960(r28)
lbl_80B83A54:
/* 80B83A54  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B83A58  41 82 00 50 */	beq lbl_80B83AA8
/* 80B83A5C  40 80 00 1C */	bge lbl_80B83A78
/* 80B83A60  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B83A64  41 82 00 40 */	beq lbl_80B83AA4
/* 80B83A68  40 80 02 78 */	bge lbl_80B83CE0
/* 80B83A6C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B83A70  41 82 00 20 */	beq lbl_80B83A90
/* 80B83A74  48 00 02 6C */	b lbl_80B83CE0
lbl_80B83A78:
/* 80B83A78  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80B83A7C  41 82 02 5C */	beq lbl_80B83CD8
/* 80B83A80  40 80 02 60 */	bge lbl_80B83CE0
/* 80B83A84  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80B83A88  41 82 01 E0 */	beq lbl_80B83C68
/* 80B83A8C  48 00 02 54 */	b lbl_80B83CE0
lbl_80B83A90:
/* 80B83A90  7F 83 E3 78 */	mr r3, r28
/* 80B83A94  38 80 00 00 */	li r4, 0
/* 80B83A98  4B FF EB 65 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B83A9C  3B C0 00 01 */	li r30, 1
/* 80B83AA0  48 00 02 44 */	b lbl_80B83CE4
lbl_80B83AA4:
/* 80B83AA4  3B C0 00 01 */	li r30, 1
lbl_80B83AA8:
/* 80B83AA8  7F 83 E3 78 */	mr r3, r28
/* 80B83AAC  4B FF E9 D1 */	bl resetModulation__11daNpc_zrA_cFv
/* 80B83AB0  A8 1C 09 E0 */	lha r0, 0x9e0(r28)
/* 80B83AB4  2C 00 00 23 */	cmpwi r0, 0x23
/* 80B83AB8  41 82 00 30 */	beq lbl_80B83AE8
/* 80B83ABC  7F 83 E3 78 */	mr r3, r28
/* 80B83AC0  38 80 00 00 */	li r4, 0
/* 80B83AC4  4B FF EB 39 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B83AC8  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80B83ACC  C0 1C 15 6C */	lfs f0, 0x156c(r28)
/* 80B83AD0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B83AD4  40 82 00 0C */	bne lbl_80B83AE0
/* 80B83AD8  38 00 00 00 */	li r0, 0
/* 80B83ADC  98 1C 15 20 */	stb r0, 0x1520(r28)
lbl_80B83AE0:
/* 80B83AE0  3B C0 00 01 */	li r30, 1
/* 80B83AE4  48 00 02 00 */	b lbl_80B83CE4
lbl_80B83AE8:
/* 80B83AE8  38 7F 00 00 */	addi r3, r31, 0
/* 80B83AEC  A8 03 00 74 */	lha r0, 0x74(r3)
/* 80B83AF0  54 00 08 3C */	slwi r0, r0, 1
/* 80B83AF4  7C 1A 07 34 */	extsh r26, r0
/* 80B83AF8  C3 FC 15 28 */	lfs f31, 0x1528(r28)
/* 80B83AFC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B83B00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B83B04  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B83B08  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B83B0C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B83B10  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B83B14  38 7C 0C 18 */	addi r3, r28, 0xc18
/* 80B83B18  38 81 00 10 */	addi r4, r1, 0x10
/* 80B83B1C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80B83B20  4B FF 49 ED */	bl getDstPosDst2__16daNpc_zrA_Path_cF4cXyzR4cXyz
/* 80B83B24  2C 03 00 00 */	cmpwi r3, 0
/* 80B83B28  41 82 00 60 */	beq lbl_80B83B88
/* 80B83B2C  A3 7C 0C 18 */	lhz r27, 0xc18(r28)
/* 80B83B30  38 7C 0C 18 */	addi r3, r28, 0xc18
/* 80B83B34  4B 5C D0 E5 */	bl getNextIdx__13daNpcF_Path_cFv
/* 80B83B38  7C 1B 18 00 */	cmpw r27, r3
/* 80B83B3C  40 82 00 4C */	bne lbl_80B83B88
/* 80B83B40  38 7C 0C 18 */	addi r3, r28, 0xc18
/* 80B83B44  4B 5C D0 79 */	bl reverse__13daNpcF_Path_cFv
/* 80B83B48  38 00 00 01 */	li r0, 1
/* 80B83B4C  98 1C 15 20 */	stb r0, 0x1520(r28)
/* 80B83B50  38 00 00 03 */	li r0, 3
/* 80B83B54  98 1C 15 94 */	stb r0, 0x1594(r28)
/* 80B83B58  7F 83 E3 78 */	mr r3, r28
/* 80B83B5C  38 80 00 1E */	li r4, 0x1e
/* 80B83B60  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B83B64  38 A0 00 00 */	li r5, 0
/* 80B83B68  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B83B6C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B83B70  7D 89 03 A6 */	mtctr r12
/* 80B83B74  4E 80 04 21 */	bctrl 
/* 80B83B78  7F 83 E3 78 */	mr r3, r28
/* 80B83B7C  4B FF E7 51 */	bl calcWaistAngleStop__11daNpc_zrA_cFv
/* 80B83B80  3B C0 00 01 */	li r30, 1
/* 80B83B84  48 00 01 60 */	b lbl_80B83CE4
lbl_80B83B88:
/* 80B83B88  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B83B8C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B83B90  4B 6E D0 E5 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B83B94  B0 61 00 08 */	sth r3, 8(r1)
/* 80B83B98  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B83B9C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B83BA0  4B 6E D0 65 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B83BA4  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80B83BA8  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B83BAC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B83BB0  7F 83 E3 78 */	mr r3, r28
/* 80B83BB4  38 81 00 08 */	addi r4, r1, 8
/* 80B83BB8  38 BC 15 36 */	addi r5, r28, 0x1536
/* 80B83BBC  38 C0 00 04 */	li r6, 4
/* 80B83BC0  7F 47 D3 78 */	mr r7, r26
/* 80B83BC4  4B FF E9 31 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B83BC8  38 7C 15 24 */	addi r3, r28, 0x1524
/* 80B83BCC  38 9F 00 00 */	addi r4, r31, 0
/* 80B83BD0  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 80B83BD4  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80B83BD8  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 80B83BDC  C0 7F 00 F0 */	lfs f3, 0xf0(r31)
/* 80B83BE0  4B 6E BE 5D */	bl cLib_addCalc2__FPffff
/* 80B83BE4  C0 3C 15 24 */	lfs f1, 0x1524(r28)
/* 80B83BE8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B83BEC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B83BF0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B83BF4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80B83BF8  7F 83 E3 78 */	mr r3, r28
/* 80B83BFC  38 81 00 40 */	addi r4, r1, 0x40
/* 80B83C00  4B FF E9 85 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B83C04  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80B83C08  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
/* 80B83C0C  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B83C10  B0 1C 08 F0 */	sth r0, 0x8f0(r28)
/* 80B83C14  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80B83C18  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B83C1C  B0 1C 08 F4 */	sth r0, 0x8f4(r28)
/* 80B83C20  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80B83C24  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B83C28  2C 00 E0 00 */	cmpwi r0, -8192
/* 80B83C2C  40 80 00 1C */	bge lbl_80B83C48
/* 80B83C30  38 7C 08 F2 */	addi r3, r28, 0x8f2
/* 80B83C34  38 80 80 00 */	li r4, -32768
/* 80B83C38  38 A0 00 04 */	li r5, 4
/* 80B83C3C  7F 46 D3 78 */	mr r6, r26
/* 80B83C40  4B 6E C9 C9 */	bl cLib_addCalcAngleS2__FPssss
/* 80B83C44  48 00 00 18 */	b lbl_80B83C5C
lbl_80B83C48:
/* 80B83C48  38 7C 08 F2 */	addi r3, r28, 0x8f2
/* 80B83C4C  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80B83C50  38 A0 00 04 */	li r5, 4
/* 80B83C54  7F 46 D3 78 */	mr r6, r26
/* 80B83C58  4B 6E C9 B1 */	bl cLib_addCalcAngleS2__FPssss
lbl_80B83C5C:
/* 80B83C5C  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80B83C60  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80B83C64  48 00 00 80 */	b lbl_80B83CE4
lbl_80B83C68:
/* 80B83C68  38 7C 09 60 */	addi r3, r28, 0x960
/* 80B83C6C  4B FF BA 41 */	bl func_80B7F6AC
/* 80B83C70  2C 03 00 00 */	cmpwi r3, 0
/* 80B83C74  40 82 00 08 */	bne lbl_80B83C7C
/* 80B83C78  3B C0 00 01 */	li r30, 1
lbl_80B83C7C:
/* 80B83C7C  7F 83 E3 78 */	mr r3, r28
/* 80B83C80  38 80 00 00 */	li r4, 0
/* 80B83C84  4B FF E9 79 */	bl calcWaitSwim__11daNpc_zrA_cFi
/* 80B83C88  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80B83C8C  C0 1C 15 6C */	lfs f0, 0x156c(r28)
/* 80B83C90  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B83C94  40 82 00 0C */	bne lbl_80B83CA0
/* 80B83C98  38 00 00 00 */	li r0, 0
/* 80B83C9C  98 1C 15 20 */	stb r0, 0x1520(r28)
lbl_80B83CA0:
/* 80B83CA0  7F 83 E3 78 */	mr r3, r28
/* 80B83CA4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B83CA8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B83CAC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B83CB0  4B 49 6A 61 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B83CB4  7C 64 1B 78 */	mr r4, r3
/* 80B83CB8  38 7C 08 F2 */	addi r3, r28, 0x8f2
/* 80B83CBC  38 BF 00 00 */	addi r5, r31, 0
/* 80B83CC0  A8 A5 00 74 */	lha r5, 0x74(r5)
/* 80B83CC4  4B 6E CE CD */	bl cLib_chaseAngleS__FPsss
/* 80B83CC8  7F 83 E3 78 */	mr r3, r28
/* 80B83CCC  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B83CD0  4B 5D 05 81 */	bl setAngle__8daNpcF_cFs
/* 80B83CD4  48 00 00 10 */	b lbl_80B83CE4
lbl_80B83CD8:
/* 80B83CD8  3B C0 00 01 */	li r30, 1
/* 80B83CDC  48 00 00 08 */	b lbl_80B83CE4
lbl_80B83CE0:
/* 80B83CE0  3B C0 00 01 */	li r30, 1
lbl_80B83CE4:
/* 80B83CE4  7F C3 F3 78 */	mr r3, r30
/* 80B83CE8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80B83CEC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80B83CF0  39 61 00 80 */	addi r11, r1, 0x80
/* 80B83CF4  4B 7D E5 25 */	bl _restgpr_25
/* 80B83CF8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B83CFC  7C 08 03 A6 */	mtlr r0
/* 80B83D00  38 21 00 90 */	addi r1, r1, 0x90
/* 80B83D04  4E 80 00 20 */	blr 

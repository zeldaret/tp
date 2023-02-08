lbl_80C067D8:
/* 80C067D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C067DC  7C 08 02 A6 */	mflr r0
/* 80C067E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C067E4  39 61 00 50 */	addi r11, r1, 0x50
/* 80C067E8  4B 75 B9 F1 */	bl _savegpr_28
/* 80C067EC  7C 7D 1B 78 */	mr r29, r3
/* 80C067F0  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C067F4  3B C4 FA 7C */	addi r30, r4, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C067F8  3C 80 80 C1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C0FE68@ha */
/* 80C067FC  3B E4 FE 68 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80C0FE68@l */
/* 80C06800  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C06804  2C 00 00 01 */	cmpwi r0, 1
/* 80C06808  41 82 00 58 */	beq lbl_80C06860
/* 80C0680C  40 80 00 10 */	bge lbl_80C0681C
/* 80C06810  2C 00 00 00 */	cmpwi r0, 0
/* 80C06814  40 80 00 14 */	bge lbl_80C06828
/* 80C06818  48 00 04 A8 */	b lbl_80C06CC0
lbl_80C0681C:
/* 80C0681C  2C 00 00 03 */	cmpwi r0, 3
/* 80C06820  40 80 04 A0 */	bge lbl_80C06CC0
/* 80C06824  48 00 04 54 */	b lbl_80C06C78
lbl_80C06828:
/* 80C06828  38 80 00 09 */	li r4, 9
/* 80C0682C  38 BE 00 00 */	addi r5, r30, 0
/* 80C06830  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C06834  4B FF AF 59 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C06838  7F A3 EB 78 */	mr r3, r29
/* 80C0683C  38 80 00 09 */	li r4, 9
/* 80C06840  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C06844  4B FF AF 69 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C06848  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0684C  D0 1D 10 98 */	stfs f0, 0x1098(r29)
/* 80C06850  38 00 00 00 */	li r0, 0
/* 80C06854  98 1D 1F E0 */	stb r0, 0x1fe0(r29)
/* 80C06858  90 1D 1F DC */	stw r0, 0x1fdc(r29)
/* 80C0685C  48 00 04 64 */	b lbl_80C06CC0
lbl_80C06860:
/* 80C06860  A0 1D 08 42 */	lhz r0, 0x842(r29)
/* 80C06864  28 00 00 00 */	cmplwi r0, 0
/* 80C06868  41 82 00 58 */	beq lbl_80C068C0
/* 80C0686C  38 9E 00 00 */	addi r4, r30, 0
/* 80C06870  A8 04 00 98 */	lha r0, 0x98(r4)
/* 80C06874  90 1D 1F 40 */	stw r0, 0x1f40(r29)
/* 80C06878  80 9F 03 88 */	lwz r4, 0x388(r31)
/* 80C0687C  80 1F 03 8C */	lwz r0, 0x38c(r31)
/* 80C06880  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80C06884  90 01 00 30 */	stw r0, 0x30(r1)
/* 80C06888  80 1F 03 90 */	lwz r0, 0x390(r31)
/* 80C0688C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C06890  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C06894  4B FF B0 61 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C06898  7F A3 EB 78 */	mr r3, r29
/* 80C0689C  38 80 00 08 */	li r4, 8
/* 80C068A0  38 BE 00 00 */	addi r5, r30, 0
/* 80C068A4  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C068A8  4B FF AE E5 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C068AC  7F A3 EB 78 */	mr r3, r29
/* 80C068B0  38 80 00 08 */	li r4, 8
/* 80C068B4  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C068B8  4B FF AE F5 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C068BC  48 00 04 04 */	b lbl_80C06CC0
lbl_80C068C0:
/* 80C068C0  80 9D 07 54 */	lwz r4, 0x754(r29)
/* 80C068C4  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80C068C8  C0 1E 02 20 */	lfs f0, 0x220(r30)
/* 80C068CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C068D0  4C 41 13 82 */	cror 2, 1, 2
/* 80C068D4  40 82 00 B0 */	bne lbl_80C06984
/* 80C068D8  88 1D 1F E0 */	lbz r0, 0x1fe0(r29)
/* 80C068DC  28 00 00 00 */	cmplwi r0, 0
/* 80C068E0  40 82 00 A4 */	bne lbl_80C06984
/* 80C068E4  38 9E 00 00 */	addi r4, r30, 0
/* 80C068E8  A8 04 00 98 */	lha r0, 0x98(r4)
/* 80C068EC  90 1D 1F 40 */	stw r0, 0x1f40(r29)
/* 80C068F0  80 9F 03 94 */	lwz r4, 0x394(r31)
/* 80C068F4  80 1F 03 98 */	lwz r0, 0x398(r31)
/* 80C068F8  90 81 00 20 */	stw r4, 0x20(r1)
/* 80C068FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C06900  80 1F 03 9C */	lwz r0, 0x39c(r31)
/* 80C06904  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C06908  38 81 00 20 */	addi r4, r1, 0x20
/* 80C0690C  4B FF AF E9 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C06910  7F A3 EB 78 */	mr r3, r29
/* 80C06914  38 80 00 0D */	li r4, 0xd
/* 80C06918  38 BE 00 00 */	addi r5, r30, 0
/* 80C0691C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C06920  4B FF AE 6D */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C06924  7F A3 EB 78 */	mr r3, r29
/* 80C06928  38 80 00 08 */	li r4, 8
/* 80C0692C  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C06930  4B FF AE 7D */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C06934  7F A3 EB 78 */	mr r3, r29
/* 80C06938  38 80 00 00 */	li r4, 0
/* 80C0693C  4B FF C1 99 */	bl setLookMode__11daObj_GrA_cFi
/* 80C06940  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80C06944  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C06948  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 80C0694C  38 7D 0C E0 */	addi r3, r29, 0xce0
/* 80C06950  81 9D 0D 1C */	lwz r12, 0xd1c(r29)
/* 80C06954  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80C06958  7D 89 03 A6 */	mtctr r12
/* 80C0695C  4E 80 04 21 */	bctrl 
/* 80C06960  80 1D 0E 18 */	lwz r0, 0xe18(r29)
/* 80C06964  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C06968  90 1D 0E 18 */	stw r0, 0xe18(r29)
/* 80C0696C  38 7D 0E 18 */	addi r3, r29, 0xe18
/* 80C06970  81 9D 0E 54 */	lwz r12, 0xe54(r29)
/* 80C06974  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80C06978  7D 89 03 A6 */	mtctr r12
/* 80C0697C  4E 80 04 21 */	bctrl 
/* 80C06980  48 00 03 40 */	b lbl_80C06CC0
lbl_80C06984:
/* 80C06984  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80C06988  38 9E 00 00 */	addi r4, r30, 0
/* 80C0698C  C0 24 00 90 */	lfs f1, 0x90(r4)
/* 80C06990  C0 1E 02 94 */	lfs f0, 0x294(r30)
/* 80C06994  EC 21 00 24 */	fdivs f1, f1, f0
/* 80C06998  C0 5E 02 4C */	lfs f2, 0x24c(r30)
/* 80C0699C  C0 7E 02 50 */	lfs f3, 0x250(r30)
/* 80C069A0  4B 66 90 9D */	bl cLib_addCalc2__FPffff
/* 80C069A4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80C069A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C069AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C069B0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80C069B4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80C069B8  4B 66 A2 4D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C069BC  7C 64 1B 78 */	mr r4, r3
/* 80C069C0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80C069C4  38 A0 00 04 */	li r5, 4
/* 80C069C8  38 DE 00 00 */	addi r6, r30, 0
/* 80C069CC  A8 06 00 88 */	lha r0, 0x88(r6)
/* 80C069D0  7C 00 16 70 */	srawi r0, r0, 2
/* 80C069D4  7C 00 01 94 */	addze r0, r0
/* 80C069D8  7C 06 07 34 */	extsh r6, r0
/* 80C069DC  4B 66 9C 2D */	bl cLib_addCalcAngleS2__FPssss
/* 80C069E0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C069E4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80C069E8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80C069EC  B0 1D 09 1C */	sth r0, 0x91c(r29)
/* 80C069F0  80 7D 07 54 */	lwz r3, 0x754(r29)
/* 80C069F4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80C069F8  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 80C069FC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C06A00  40 82 00 14 */	bne lbl_80C06A14
/* 80C06A04  80 1D 0E 18 */	lwz r0, 0xe18(r29)
/* 80C06A08  60 00 00 01 */	ori r0, r0, 1
/* 80C06A0C  90 1D 0E 18 */	stw r0, 0xe18(r29)
/* 80C06A10  48 00 00 58 */	b lbl_80C06A68
lbl_80C06A14:
/* 80C06A14  C0 1E 02 1C */	lfs f0, 0x21c(r30)
/* 80C06A18  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C06A1C  40 82 00 14 */	bne lbl_80C06A30
/* 80C06A20  80 1D 0E 18 */	lwz r0, 0xe18(r29)
/* 80C06A24  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C06A28  90 1D 0E 18 */	stw r0, 0xe18(r29)
/* 80C06A2C  48 00 00 3C */	b lbl_80C06A68
lbl_80C06A30:
/* 80C06A30  C0 1E 02 10 */	lfs f0, 0x210(r30)
/* 80C06A34  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C06A38  40 82 00 14 */	bne lbl_80C06A4C
/* 80C06A3C  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80C06A40  60 00 00 01 */	ori r0, r0, 1
/* 80C06A44  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 80C06A48  48 00 00 20 */	b lbl_80C06A68
lbl_80C06A4C:
/* 80C06A4C  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 80C06A50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C06A54  4C 41 13 82 */	cror 2, 1, 2
/* 80C06A58  40 82 00 10 */	bne lbl_80C06A68
/* 80C06A5C  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80C06A60  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C06A64  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80C06A68:
/* 80C06A68  80 1D 0E 74 */	lwz r0, 0xe74(r29)
/* 80C06A6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C06A70  41 82 00 BC */	beq lbl_80C06B2C
/* 80C06A74  38 7D 0E 18 */	addi r3, r29, 0xe18
/* 80C06A78  81 9D 0E 54 */	lwz r12, 0xe54(r29)
/* 80C06A7C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80C06A80  7D 89 03 A6 */	mtctr r12
/* 80C06A84  4E 80 04 21 */	bctrl 
/* 80C06A88  38 7D 0E 70 */	addi r3, r29, 0xe70
/* 80C06A8C  4B 47 CB FD */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80C06A90  7C 64 1B 78 */	mr r4, r3
/* 80C06A94  38 7D 0A B0 */	addi r3, r29, 0xab0
/* 80C06A98  4B 54 6D 85 */	bl entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
/* 80C06A9C  38 7E 00 00 */	addi r3, r30, 0
/* 80C06AA0  A8 03 00 98 */	lha r0, 0x98(r3)
/* 80C06AA4  90 1D 1F 40 */	stw r0, 0x1f40(r29)
/* 80C06AA8  80 7F 03 A0 */	lwz r3, 0x3a0(r31)
/* 80C06AAC  80 1F 03 A4 */	lwz r0, 0x3a4(r31)
/* 80C06AB0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80C06AB4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C06AB8  80 1F 03 A8 */	lwz r0, 0x3a8(r31)
/* 80C06ABC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C06AC0  7F A3 EB 78 */	mr r3, r29
/* 80C06AC4  38 81 00 14 */	addi r4, r1, 0x14
/* 80C06AC8  4B FF AE 2D */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C06ACC  7F A3 EB 78 */	mr r3, r29
/* 80C06AD0  38 80 00 0B */	li r4, 0xb
/* 80C06AD4  38 BE 00 00 */	addi r5, r30, 0
/* 80C06AD8  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C06ADC  4B FF AC B1 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C06AE0  7F A3 EB 78 */	mr r3, r29
/* 80C06AE4  38 80 00 08 */	li r4, 8
/* 80C06AE8  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C06AEC  4B FF AC C1 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C06AF0  7F A3 EB 78 */	mr r3, r29
/* 80C06AF4  38 80 00 00 */	li r4, 0
/* 80C06AF8  4B FF BF DD */	bl setLookMode__11daObj_GrA_cFi
/* 80C06AFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C06B00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C06B04  3B 83 09 78 */	addi r28, r3, 0x978
/* 80C06B08  7F 83 E3 78 */	mr r3, r28
/* 80C06B0C  38 80 00 1C */	li r4, 0x1c
/* 80C06B10  4B 42 E0 D9 */	bl isSwitch__12dSv_danBit_cCFi
/* 80C06B14  2C 03 00 00 */	cmpwi r3, 0
/* 80C06B18  40 82 00 60 */	bne lbl_80C06B78
/* 80C06B1C  7F 83 E3 78 */	mr r3, r28
/* 80C06B20  38 80 00 1C */	li r4, 0x1c
/* 80C06B24  4B 42 E0 75 */	bl onSwitch__12dSv_danBit_cFi
/* 80C06B28  48 00 00 50 */	b lbl_80C06B78
lbl_80C06B2C:
/* 80C06B2C  38 7D 0E 18 */	addi r3, r29, 0xe18
/* 80C06B30  4B 47 D7 91 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80C06B34  28 03 00 00 */	cmplwi r3, 0
/* 80C06B38  41 82 00 40 */	beq lbl_80C06B78
/* 80C06B3C  38 00 00 01 */	li r0, 1
/* 80C06B40  98 1D 1F E0 */	stb r0, 0x1fe0(r29)
/* 80C06B44  38 00 00 3C */	li r0, 0x3c
/* 80C06B48  90 1D 1F DC */	stw r0, 0x1fdc(r29)
/* 80C06B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C06B50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C06B54  3B 83 09 78 */	addi r28, r3, 0x978
/* 80C06B58  7F 83 E3 78 */	mr r3, r28
/* 80C06B5C  38 80 00 1C */	li r4, 0x1c
/* 80C06B60  4B 42 E0 89 */	bl isSwitch__12dSv_danBit_cCFi
/* 80C06B64  2C 03 00 00 */	cmpwi r3, 0
/* 80C06B68  40 82 00 10 */	bne lbl_80C06B78
/* 80C06B6C  7F 83 E3 78 */	mr r3, r28
/* 80C06B70  38 80 00 1C */	li r4, 0x1c
/* 80C06B74  4B 42 E0 25 */	bl onSwitch__12dSv_danBit_cFi
lbl_80C06B78:
/* 80C06B78  80 1D 0D 3C */	lwz r0, 0xd3c(r29)
/* 80C06B7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C06B80  41 82 00 A8 */	beq lbl_80C06C28
/* 80C06B84  38 7D 0D 38 */	addi r3, r29, 0xd38
/* 80C06B88  4B 47 CB 01 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80C06B8C  7C 64 1B 78 */	mr r4, r3
/* 80C06B90  38 7D 0A B0 */	addi r3, r29, 0xab0
/* 80C06B94  4B 54 6C 89 */	bl entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
/* 80C06B98  38 7E 00 00 */	addi r3, r30, 0
/* 80C06B9C  A8 03 00 98 */	lha r0, 0x98(r3)
/* 80C06BA0  90 1D 1F 40 */	stw r0, 0x1f40(r29)
/* 80C06BA4  80 7F 03 AC */	lwz r3, 0x3ac(r31)
/* 80C06BA8  80 1F 03 B0 */	lwz r0, 0x3b0(r31)
/* 80C06BAC  90 61 00 08 */	stw r3, 8(r1)
/* 80C06BB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C06BB4  80 1F 03 B4 */	lwz r0, 0x3b4(r31)
/* 80C06BB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C06BBC  7F A3 EB 78 */	mr r3, r29
/* 80C06BC0  38 81 00 08 */	addi r4, r1, 8
/* 80C06BC4  4B FF AD 31 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C06BC8  7F A3 EB 78 */	mr r3, r29
/* 80C06BCC  38 80 00 0C */	li r4, 0xc
/* 80C06BD0  38 BE 00 00 */	addi r5, r30, 0
/* 80C06BD4  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C06BD8  4B FF AB B5 */	bl setBaseMotion__11daObj_GrA_cFif
/* 80C06BDC  7F A3 EB 78 */	mr r3, r29
/* 80C06BE0  38 80 00 08 */	li r4, 8
/* 80C06BE4  C0 3E 01 38 */	lfs f1, 0x138(r30)
/* 80C06BE8  4B FF AB C5 */	bl setFaceMotion__11daObj_GrA_cFif
/* 80C06BEC  7F A3 EB 78 */	mr r3, r29
/* 80C06BF0  38 80 00 00 */	li r4, 0
/* 80C06BF4  4B FF BE E1 */	bl setLookMode__11daObj_GrA_cFi
/* 80C06BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C06BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C06C00  3B 83 09 78 */	addi r28, r3, 0x978
/* 80C06C04  7F 83 E3 78 */	mr r3, r28
/* 80C06C08  38 80 00 1C */	li r4, 0x1c
/* 80C06C0C  4B 42 DF DD */	bl isSwitch__12dSv_danBit_cCFi
/* 80C06C10  2C 03 00 00 */	cmpwi r3, 0
/* 80C06C14  40 82 00 AC */	bne lbl_80C06CC0
/* 80C06C18  7F 83 E3 78 */	mr r3, r28
/* 80C06C1C  38 80 00 1C */	li r4, 0x1c
/* 80C06C20  4B 42 DF 79 */	bl onSwitch__12dSv_danBit_cFi
/* 80C06C24  48 00 00 9C */	b lbl_80C06CC0
lbl_80C06C28:
/* 80C06C28  38 7D 0C E0 */	addi r3, r29, 0xce0
/* 80C06C2C  4B 47 D6 95 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80C06C30  28 03 00 00 */	cmplwi r3, 0
/* 80C06C34  41 82 00 8C */	beq lbl_80C06CC0
/* 80C06C38  38 00 00 01 */	li r0, 1
/* 80C06C3C  98 1D 1F E0 */	stb r0, 0x1fe0(r29)
/* 80C06C40  38 00 00 3C */	li r0, 0x3c
/* 80C06C44  90 1D 1F DC */	stw r0, 0x1fdc(r29)
/* 80C06C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C06C4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C06C50  3B 83 09 78 */	addi r28, r3, 0x978
/* 80C06C54  7F 83 E3 78 */	mr r3, r28
/* 80C06C58  38 80 00 1C */	li r4, 0x1c
/* 80C06C5C  4B 42 DF 8D */	bl isSwitch__12dSv_danBit_cCFi
/* 80C06C60  2C 03 00 00 */	cmpwi r3, 0
/* 80C06C64  40 82 00 5C */	bne lbl_80C06CC0
/* 80C06C68  7F 83 E3 78 */	mr r3, r28
/* 80C06C6C  38 80 00 1C */	li r4, 0x1c
/* 80C06C70  4B 42 DF 29 */	bl onSwitch__12dSv_danBit_cFi
/* 80C06C74  48 00 00 4C */	b lbl_80C06CC0
lbl_80C06C78:
/* 80C06C78  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80C06C7C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C06C80  90 1D 0C E0 */	stw r0, 0xce0(r29)
/* 80C06C84  38 7D 0C E0 */	addi r3, r29, 0xce0
/* 80C06C88  81 9D 0D 1C */	lwz r12, 0xd1c(r29)
/* 80C06C8C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80C06C90  7D 89 03 A6 */	mtctr r12
/* 80C06C94  4E 80 04 21 */	bctrl 
/* 80C06C98  80 1D 0E 18 */	lwz r0, 0xe18(r29)
/* 80C06C9C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C06CA0  90 1D 0E 18 */	stw r0, 0xe18(r29)
/* 80C06CA4  38 7D 0E 18 */	addi r3, r29, 0xe18
/* 80C06CA8  81 9D 0E 54 */	lwz r12, 0xe54(r29)
/* 80C06CAC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80C06CB0  7D 89 03 A6 */	mtctr r12
/* 80C06CB4  4E 80 04 21 */	bctrl 
/* 80C06CB8  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C06CBC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80C06CC0:
/* 80C06CC0  38 60 00 01 */	li r3, 1
/* 80C06CC4  39 61 00 50 */	addi r11, r1, 0x50
/* 80C06CC8  4B 75 B5 5D */	bl _restgpr_28
/* 80C06CCC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C06CD0  7C 08 03 A6 */	mtlr r0
/* 80C06CD4  38 21 00 50 */	addi r1, r1, 0x50
/* 80C06CD8  4E 80 00 20 */	blr 

lbl_80C08804:
/* 80C08804  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80C08808  7C 08 02 A6 */	mflr r0
/* 80C0880C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80C08810  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80C08814  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80C08818  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C0881C  4B 75 99 B4 */	b _savegpr_26
/* 80C08820  7C 7B 1B 78 */	mr r27, r3
/* 80C08824  3C 80 80 C1 */	lis r4, m__17daObj_GrA_Param_c@ha
/* 80C08828  3B C4 FA 7C */	addi r30, r4, m__17daObj_GrA_Param_c@l
/* 80C0882C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C08830  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80C08834  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80C08838  A0 03 0A 7C */	lhz r0, 0xa7c(r3)
/* 80C0883C  2C 00 00 01 */	cmpwi r0, 1
/* 80C08840  41 82 00 44 */	beq lbl_80C08884
/* 80C08844  40 80 00 10 */	bge lbl_80C08854
/* 80C08848  2C 00 00 00 */	cmpwi r0, 0
/* 80C0884C  40 80 00 14 */	bge lbl_80C08860
/* 80C08850  48 00 0A 24 */	b lbl_80C09274
lbl_80C08854:
/* 80C08854  2C 00 00 03 */	cmpwi r0, 3
/* 80C08858  40 80 0A 1C */	bge lbl_80C09274
/* 80C0885C  48 00 0A 04 */	b lbl_80C09260
lbl_80C08860:
/* 80C08860  38 00 00 00 */	li r0, 0
/* 80C08864  98 1B 1F E9 */	stb r0, 0x1fe9(r27)
/* 80C08868  38 80 00 00 */	li r4, 0
/* 80C0886C  4B FF A2 69 */	bl setLookMode__11daObj_GrA_cFi
/* 80C08870  38 00 00 00 */	li r0, 0
/* 80C08874  98 1B 20 05 */	stb r0, 0x2005(r27)
/* 80C08878  38 00 00 01 */	li r0, 1
/* 80C0887C  90 1B 20 9C */	stw r0, 0x209c(r27)
/* 80C08880  48 00 09 F4 */	b lbl_80C09274
lbl_80C08884:
/* 80C08884  4B FF AE E1 */	bl fallAbyssCheck__11daObj_GrA_cFv
/* 80C08888  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C0888C  40 82 09 E8 */	bne lbl_80C09274
/* 80C08890  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C08894  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80C08898  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C0889C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80C088A0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80C088A4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80C088A8  38 61 00 60 */	addi r3, r1, 0x60
/* 80C088AC  38 81 00 9C */	addi r4, r1, 0x9c
/* 80C088B0  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80C088B4  4B 65 E2 80 */	b __mi__4cXyzCFRC3Vec
/* 80C088B8  38 61 00 60 */	addi r3, r1, 0x60
/* 80C088BC  4B 73 E8 7C */	b PSVECSquareMag
/* 80C088C0  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C088C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C088C8  40 81 00 58 */	ble lbl_80C08920
/* 80C088CC  FC 00 08 34 */	frsqrte f0, f1
/* 80C088D0  C8 9E 01 50 */	lfd f4, 0x150(r30)
/* 80C088D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C088D8  C8 7E 01 58 */	lfd f3, 0x158(r30)
/* 80C088DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C088E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C088E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C088E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C088EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C088F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C088F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C088F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C088FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C08900  FC 44 00 32 */	fmul f2, f4, f0
/* 80C08904  FC 00 00 32 */	fmul f0, f0, f0
/* 80C08908  FC 01 00 32 */	fmul f0, f1, f0
/* 80C0890C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C08910  FC 02 00 32 */	fmul f0, f2, f0
/* 80C08914  FF E1 00 32 */	fmul f31, f1, f0
/* 80C08918  FF E0 F8 18 */	frsp f31, f31
/* 80C0891C  48 00 00 90 */	b lbl_80C089AC
lbl_80C08920:
/* 80C08920  C8 1E 01 60 */	lfd f0, 0x160(r30)
/* 80C08924  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C08928  40 80 00 10 */	bge lbl_80C08938
/* 80C0892C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C08930  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C08934  48 00 00 78 */	b lbl_80C089AC
lbl_80C08938:
/* 80C08938  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C0893C  80 81 00 08 */	lwz r4, 8(r1)
/* 80C08940  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C08944  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C08948  7C 03 00 00 */	cmpw r3, r0
/* 80C0894C  41 82 00 14 */	beq lbl_80C08960
/* 80C08950  40 80 00 40 */	bge lbl_80C08990
/* 80C08954  2C 03 00 00 */	cmpwi r3, 0
/* 80C08958  41 82 00 20 */	beq lbl_80C08978
/* 80C0895C  48 00 00 34 */	b lbl_80C08990
lbl_80C08960:
/* 80C08960  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C08964  41 82 00 0C */	beq lbl_80C08970
/* 80C08968  38 00 00 01 */	li r0, 1
/* 80C0896C  48 00 00 28 */	b lbl_80C08994
lbl_80C08970:
/* 80C08970  38 00 00 02 */	li r0, 2
/* 80C08974  48 00 00 20 */	b lbl_80C08994
lbl_80C08978:
/* 80C08978  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C0897C  41 82 00 0C */	beq lbl_80C08988
/* 80C08980  38 00 00 05 */	li r0, 5
/* 80C08984  48 00 00 10 */	b lbl_80C08994
lbl_80C08988:
/* 80C08988  38 00 00 03 */	li r0, 3
/* 80C0898C  48 00 00 08 */	b lbl_80C08994
lbl_80C08990:
/* 80C08990  38 00 00 04 */	li r0, 4
lbl_80C08994:
/* 80C08994  2C 00 00 01 */	cmpwi r0, 1
/* 80C08998  40 82 00 10 */	bne lbl_80C089A8
/* 80C0899C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C089A0  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80C089A4  48 00 00 08 */	b lbl_80C089AC
lbl_80C089A8:
/* 80C089A8  FF E0 08 90 */	fmr f31, f1
lbl_80C089AC:
/* 80C089AC  C0 1E 02 BC */	lfs f0, 0x2bc(r30)
/* 80C089B0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C089B4  4C 40 13 82 */	cror 2, 0, 2
/* 80C089B8  40 82 00 4C */	bne lbl_80C08A04
/* 80C089BC  88 1B 20 05 */	lbz r0, 0x2005(r27)
/* 80C089C0  2C 00 00 02 */	cmpwi r0, 2
/* 80C089C4  41 82 00 C8 */	beq lbl_80C08A8C
/* 80C089C8  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C089CC  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80C089D0  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80C089D4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C089D8  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80C089DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C089E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C089E4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C089E8  38 80 00 02 */	li r4, 2
/* 80C089EC  38 A0 00 0F */	li r5, 0xf
/* 80C089F0  38 C1 00 54 */	addi r6, r1, 0x54
/* 80C089F4  4B 46 71 1C */	b StartQuake__12dVibration_cFii4cXyz
/* 80C089F8  38 00 00 02 */	li r0, 2
/* 80C089FC  98 1B 20 05 */	stb r0, 0x2005(r27)
/* 80C08A00  48 00 00 8C */	b lbl_80C08A8C
lbl_80C08A04:
/* 80C08A04  C0 1E 02 C0 */	lfs f0, 0x2c0(r30)
/* 80C08A08  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C08A0C  4C 40 13 82 */	cror 2, 0, 2
/* 80C08A10  40 82 00 4C */	bne lbl_80C08A5C
/* 80C08A14  88 1B 20 05 */	lbz r0, 0x2005(r27)
/* 80C08A18  2C 00 00 01 */	cmpwi r0, 1
/* 80C08A1C  41 82 00 70 */	beq lbl_80C08A8C
/* 80C08A20  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C08A24  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C08A28  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80C08A2C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C08A30  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 80C08A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C08A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C08A3C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C08A40  38 80 00 01 */	li r4, 1
/* 80C08A44  38 A0 00 0F */	li r5, 0xf
/* 80C08A48  38 C1 00 48 */	addi r6, r1, 0x48
/* 80C08A4C  4B 46 70 C4 */	b StartQuake__12dVibration_cFii4cXyz
/* 80C08A50  38 00 00 01 */	li r0, 1
/* 80C08A54  98 1B 20 05 */	stb r0, 0x2005(r27)
/* 80C08A58  48 00 00 34 */	b lbl_80C08A8C
lbl_80C08A5C:
/* 80C08A5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C08A60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C08A64  3B 43 5B D4 */	addi r26, r3, 0x5bd4
/* 80C08A68  7F 43 D3 78 */	mr r3, r26
/* 80C08A6C  4B 46 73 F0 */	b CheckQuake__12dVibration_cFv
/* 80C08A70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C08A74  41 82 00 10 */	beq lbl_80C08A84
/* 80C08A78  7F 43 D3 78 */	mr r3, r26
/* 80C08A7C  38 80 00 1F */	li r4, 0x1f
/* 80C08A80  4B 46 73 14 */	b StopQuake__12dVibration_cFi
lbl_80C08A84:
/* 80C08A84  38 00 00 00 */	li r0, 0
/* 80C08A88  98 1B 20 05 */	stb r0, 0x2005(r27)
lbl_80C08A8C:
/* 80C08A8C  7F 63 DB 78 */	mr r3, r27
/* 80C08A90  48 00 14 79 */	bl rollLanding__11daObj_GrA_cFv
/* 80C08A94  3B 80 00 00 */	li r28, 0
/* 80C08A98  88 1B 20 1C */	lbz r0, 0x201c(r27)
/* 80C08A9C  7C 00 07 74 */	extsb r0, r0
/* 80C08AA0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C08AA4  40 80 01 2C */	bge lbl_80C08BD0
/* 80C08AA8  88 1B 1F E9 */	lbz r0, 0x1fe9(r27)
/* 80C08AAC  28 00 00 00 */	cmplwi r0, 0
/* 80C08AB0  40 82 01 20 */	bne lbl_80C08BD0
/* 80C08AB4  7F 63 DB 78 */	mr r3, r27
/* 80C08AB8  4B FF F1 E1 */	bl getSrchGraR__11daObj_GrA_cFv
/* 80C08ABC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C08AC0  40 80 01 10 */	bge lbl_80C08BD0
/* 80C08AC4  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C08AC8  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80C08ACC  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80C08AD0  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 80C08AD4  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C08AD8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80C08ADC  C0 1E 02 34 */	lfs f0, 0x234(r30)
/* 80C08AE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C08AE4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80C08AE8  38 7B 1F 4C */	addi r3, r27, 0x1f4c
/* 80C08AEC  38 81 00 90 */	addi r4, r1, 0x90
/* 80C08AF0  38 BD 05 38 */	addi r5, r29, 0x538
/* 80C08AF4  7F 66 DB 78 */	mr r6, r27
/* 80C08AF8  4B 46 F2 6C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C08AFC  80 1B 00 04 */	lwz r0, 4(r27)
/* 80C08B00  90 1B 1F 54 */	stw r0, 0x1f54(r27)
/* 80C08B04  38 61 00 90 */	addi r3, r1, 0x90
/* 80C08B08  38 9D 05 38 */	addi r4, r29, 0x538
/* 80C08B0C  4B 66 81 68 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80C08B10  7C 7A 1B 78 */	mr r26, r3
/* 80C08B14  88 1B 1F E8 */	lbz r0, 0x1fe8(r27)
/* 80C08B18  7C 00 07 75 */	extsb. r0, r0
/* 80C08B1C  41 82 00 20 */	beq lbl_80C08B3C
/* 80C08B20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C08B24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C08B28  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C08B2C  38 9B 1F 4C */	addi r4, r27, 0x1f4c
/* 80C08B30  4B 46 B8 84 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C08B34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C08B38  40 82 00 98 */	bne lbl_80C08BD0
lbl_80C08B3C:
/* 80C08B3C  7F A3 EB 78 */	mr r3, r29
/* 80C08B40  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C08B44  81 8C 00 CC */	lwz r12, 0xcc(r12)
/* 80C08B48  7D 89 03 A6 */	mtctr r12
/* 80C08B4C  4E 80 04 21 */	bctrl 
/* 80C08B50  2C 03 00 00 */	cmpwi r3, 0
/* 80C08B54  40 82 00 7C */	bne lbl_80C08BD0
/* 80C08B58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C08B5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C08B60  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80C08B64  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C08B68  40 82 00 68 */	bne lbl_80C08BD0
/* 80C08B6C  7F 40 07 34 */	extsh r0, r26
/* 80C08B70  2C 00 E0 00 */	cmpwi r0, -8192
/* 80C08B74  40 81 00 5C */	ble lbl_80C08BD0
/* 80C08B78  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80C08B7C  40 80 00 54 */	bge lbl_80C08BD0
/* 80C08B80  38 00 00 01 */	li r0, 1
/* 80C08B84  90 1B 15 0C */	stw r0, 0x150c(r27)
/* 80C08B88  3B 80 00 01 */	li r28, 1
/* 80C08B8C  88 1B 20 14 */	lbz r0, 0x2014(r27)
/* 80C08B90  28 00 00 00 */	cmplwi r0, 0
/* 80C08B94  40 82 00 3C */	bne lbl_80C08BD0
/* 80C08B98  88 1B 1F E8 */	lbz r0, 0x1fe8(r27)
/* 80C08B9C  7C 00 07 75 */	extsb. r0, r0
/* 80C08BA0  41 82 00 10 */	beq lbl_80C08BB0
/* 80C08BA4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80C08BA8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C08BAC  41 82 00 24 */	beq lbl_80C08BD0
lbl_80C08BB0:
/* 80C08BB0  7F A3 EB 78 */	mr r3, r29
/* 80C08BB4  7F 64 DB 78 */	mr r4, r27
/* 80C08BB8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C08BBC  81 8C 02 3C */	lwz r12, 0x23c(r12)
/* 80C08BC0  7D 89 03 A6 */	mtctr r12
/* 80C08BC4  4E 80 04 21 */	bctrl 
/* 80C08BC8  38 00 00 01 */	li r0, 1
/* 80C08BCC  98 1B 20 14 */	stb r0, 0x2014(r27)
lbl_80C08BD0:
/* 80C08BD0  88 1B 1F E8 */	lbz r0, 0x1fe8(r27)
/* 80C08BD4  7C 00 07 75 */	extsb. r0, r0
/* 80C08BD8  40 82 00 48 */	bne lbl_80C08C20
/* 80C08BDC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C08BE0  C0 1E 02 C4 */	lfs f0, 0x2c4(r30)
/* 80C08BE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C08BE8  40 80 00 CC */	bge lbl_80C08CB4
/* 80C08BEC  3C 60 80 C1 */	lis r3, lit_7744@ha
/* 80C08BF0  38 83 02 8C */	addi r4, r3, lit_7744@l
/* 80C08BF4  80 64 00 00 */	lwz r3, 0(r4)
/* 80C08BF8  80 04 00 04 */	lwz r0, 4(r4)
/* 80C08BFC  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80C08C00  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C08C04  80 04 00 08 */	lwz r0, 8(r4)
/* 80C08C08  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C08C0C  7F 63 DB 78 */	mr r3, r27
/* 80C08C10  38 81 00 3C */	addi r4, r1, 0x3c
/* 80C08C14  4B FF 8C E1 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C08C18  38 60 00 01 */	li r3, 1
/* 80C08C1C  48 00 06 5C */	b lbl_80C09278
lbl_80C08C20:
/* 80C08C20  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C08C24  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80C08C28  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80C08C2C  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80C08C30  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C08C34  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80C08C38  C0 1E 02 34 */	lfs f0, 0x234(r30)
/* 80C08C3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C08C40  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80C08C44  38 7B 1F 4C */	addi r3, r27, 0x1f4c
/* 80C08C48  38 81 00 84 */	addi r4, r1, 0x84
/* 80C08C4C  38 BD 05 38 */	addi r5, r29, 0x538
/* 80C08C50  7F 66 DB 78 */	mr r6, r27
/* 80C08C54  4B 46 F1 10 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C08C58  80 1B 00 04 */	lwz r0, 4(r27)
/* 80C08C5C  90 1B 1F 54 */	stw r0, 0x1f54(r27)
/* 80C08C60  7F A3 EB 78 */	mr r3, r29
/* 80C08C64  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C08C68  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C08C6C  7D 89 03 A6 */	mtctr r12
/* 80C08C70  4E 80 04 21 */	bctrl 
/* 80C08C74  28 03 00 00 */	cmplwi r3, 0
/* 80C08C78  40 82 00 3C */	bne lbl_80C08CB4
/* 80C08C7C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C08C80  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C08C84  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C08C88  C0 1E 02 80 */	lfs f0, 0x280(r30)
/* 80C08C8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C08C90  40 81 00 24 */	ble lbl_80C08CB4
/* 80C08C94  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 80C08C98  28 00 00 2B */	cmplwi r0, 0x2b
/* 80C08C9C  40 82 00 0C */	bne lbl_80C08CA8
/* 80C08CA0  38 00 00 00 */	li r0, 0
/* 80C08CA4  98 1D 05 6A */	stb r0, 0x56a(r29)
lbl_80C08CA8:
/* 80C08CA8  38 00 00 01 */	li r0, 1
/* 80C08CAC  98 1B 20 14 */	stb r0, 0x2014(r27)
/* 80C08CB0  98 1B 1F E9 */	stb r0, 0x1fe9(r27)
lbl_80C08CB4:
/* 80C08CB4  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C08CB8  40 82 00 50 */	bne lbl_80C08D08
/* 80C08CBC  38 60 00 00 */	li r3, 0
/* 80C08CC0  90 7B 15 0C */	stw r3, 0x150c(r27)
/* 80C08CC4  88 1B 20 14 */	lbz r0, 0x2014(r27)
/* 80C08CC8  28 00 00 00 */	cmplwi r0, 0
/* 80C08CCC  40 82 00 3C */	bne lbl_80C08D08
/* 80C08CD0  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80C08CD4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C08CD8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C08CDC  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C08CE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C08CE4  40 81 00 24 */	ble lbl_80C08D08
/* 80C08CE8  38 00 00 01 */	li r0, 1
/* 80C08CEC  98 1B 1F E9 */	stb r0, 0x1fe9(r27)
/* 80C08CF0  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 80C08CF4  28 00 00 2B */	cmplwi r0, 0x2b
/* 80C08CF8  40 82 00 08 */	bne lbl_80C08D00
/* 80C08CFC  98 7D 05 6A */	stb r3, 0x56a(r29)
lbl_80C08D00:
/* 80C08D00  38 00 00 01 */	li r0, 1
/* 80C08D04  98 1B 20 14 */	stb r0, 0x2014(r27)
lbl_80C08D08:
/* 80C08D08  80 1B 15 0C */	lwz r0, 0x150c(r27)
/* 80C08D0C  2C 00 00 00 */	cmpwi r0, 0
/* 80C08D10  41 82 01 24 */	beq lbl_80C08E34
/* 80C08D14  88 1B 1F E9 */	lbz r0, 0x1fe9(r27)
/* 80C08D18  28 00 00 00 */	cmplwi r0, 0
/* 80C08D1C  40 82 01 18 */	bne lbl_80C08E34
/* 80C08D20  7F 63 DB 78 */	mr r3, r27
/* 80C08D24  48 00 30 6D */	bl setCarryStatus__11daObj_GrA_cFv
/* 80C08D28  7F 63 DB 78 */	mr r3, r27
/* 80C08D2C  48 00 31 31 */	bl checkThrow__11daObj_GrA_cFv
/* 80C08D30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C08D34  41 82 00 0C */	beq lbl_80C08D40
/* 80C08D38  38 60 00 01 */	li r3, 1
/* 80C08D3C  48 00 05 3C */	b lbl_80C09278
lbl_80C08D40:
/* 80C08D40  88 1B 1F E9 */	lbz r0, 0x1fe9(r27)
/* 80C08D44  28 00 00 00 */	cmplwi r0, 0
/* 80C08D48  40 82 00 78 */	bne lbl_80C08DC0
/* 80C08D4C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80C08D50  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80C08D54  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80C08D58  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80C08D5C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 80C08D60  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C08D64  7F 63 DB 78 */	mr r3, r27
/* 80C08D68  4B FF EF 89 */	bl getSpeed__11daObj_GrA_cFv
/* 80C08D6C  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80C08D70  38 9E 00 00 */	addi r4, r30, 0
/* 80C08D74  C0 44 00 A8 */	lfs f2, 0xa8(r4)
/* 80C08D78  4B 66 79 C8 */	b cLib_chaseF__FPfff
/* 80C08D7C  88 1B 20 1C */	lbz r0, 0x201c(r27)
/* 80C08D80  7C 00 07 74 */	extsb r0, r0
/* 80C08D84  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C08D88  40 80 00 38 */	bge lbl_80C08DC0
/* 80C08D8C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80C08D90  38 81 00 78 */	addi r4, r1, 0x78
/* 80C08D94  4B 66 7E 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C08D98  7C 64 1B 78 */	mr r4, r3
/* 80C08D9C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80C08DA0  38 A0 00 01 */	li r5, 1
/* 80C08DA4  38 DE 00 00 */	addi r6, r30, 0
/* 80C08DA8  A8 C6 00 88 */	lha r6, 0x88(r6)
/* 80C08DAC  4B 66 78 5C */	b cLib_addCalcAngleS2__FPssss
/* 80C08DB0  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80C08DB4  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80C08DB8  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80C08DBC  B0 1B 09 1C */	sth r0, 0x91c(r27)
lbl_80C08DC0:
/* 80C08DC0  3B 40 00 00 */	li r26, 0
/* 80C08DC4  38 7B 15 28 */	addi r3, r27, 0x1528
/* 80C08DC8  4B 54 4B E0 */	b isPath__16daBaseNpc_path_cFv
/* 80C08DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80C08DD0  41 82 02 F0 */	beq lbl_80C090C0
/* 80C08DD4  48 00 00 54 */	b lbl_80C08E28
lbl_80C08DD8:
/* 80C08DD8  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C08DDC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C08DE0  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C08DE4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C08DE8  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C08DEC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C08DF0  38 7B 15 28 */	addi r3, r27, 0x1528
/* 80C08DF4  38 81 00 30 */	addi r4, r1, 0x30
/* 80C08DF8  4B 54 4C 6C */	b chkPnt__16daBaseNpc_path_cF4cXyz
/* 80C08DFC  7C 60 00 34 */	cntlzw r0, r3
/* 80C08E00  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80C08E04  40 82 02 BC */	bne lbl_80C090C0
/* 80C08E08  38 7B 15 28 */	addi r3, r27, 0x1528
/* 80C08E0C  4B 54 4C B8 */	b setNextPnt__16daBaseNpc_path_cFv
/* 80C08E10  2C 03 00 00 */	cmpwi r3, 0
/* 80C08E14  41 82 00 14 */	beq lbl_80C08E28
/* 80C08E18  3B 40 00 01 */	li r26, 1
/* 80C08E1C  38 00 00 01 */	li r0, 1
/* 80C08E20  98 1B 1F E9 */	stb r0, 0x1fe9(r27)
/* 80C08E24  98 1B 20 14 */	stb r0, 0x2014(r27)
lbl_80C08E28:
/* 80C08E28  2C 1A 00 00 */	cmpwi r26, 0
/* 80C08E2C  41 82 FF AC */	beq lbl_80C08DD8
/* 80C08E30  48 00 02 90 */	b lbl_80C090C0
lbl_80C08E34:
/* 80C08E34  88 1B 1F E9 */	lbz r0, 0x1fe9(r27)
/* 80C08E38  28 00 00 01 */	cmplwi r0, 1
/* 80C08E3C  40 82 00 98 */	bne lbl_80C08ED4
/* 80C08E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C08E44  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80C08E48  88 1C 4F AD */	lbz r0, 0x4fad(r28)
/* 80C08E4C  28 00 00 00 */	cmplwi r0, 0
/* 80C08E50  40 82 00 84 */	bne lbl_80C08ED4
/* 80C08E54  A8 1B 20 54 */	lha r0, 0x2054(r27)
/* 80C08E58  2C 00 00 00 */	cmpwi r0, 0
/* 80C08E5C  40 82 00 78 */	bne lbl_80C08ED4
/* 80C08E60  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha
/* 80C08E64  84 03 06 18 */	lwzu r0, g_dComIfGoat_gameInfo@l(r3)
/* 80C08E68  7C 00 D8 40 */	cmplw r0, r27
/* 80C08E6C  40 82 00 0C */	bne lbl_80C08E78
/* 80C08E70  38 00 00 00 */	li r0, 0
/* 80C08E74  90 03 00 00 */	stw r0, 0(r3)
lbl_80C08E78:
/* 80C08E78  88 1B 20 30 */	lbz r0, 0x2030(r27)
/* 80C08E7C  28 00 00 01 */	cmplwi r0, 1
/* 80C08E80  40 82 00 54 */	bne lbl_80C08ED4
/* 80C08E84  88 1B 20 05 */	lbz r0, 0x2005(r27)
/* 80C08E88  7C 00 07 75 */	extsb. r0, r0
/* 80C08E8C  40 82 00 48 */	bne lbl_80C08ED4
/* 80C08E90  7F 63 DB 78 */	mr r3, r27
/* 80C08E94  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80C08E98  4B 41 3F 64 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C08E9C  2C 03 00 00 */	cmpwi r3, 0
/* 80C08EA0  41 82 00 34 */	beq lbl_80C08ED4
/* 80C08EA4  7F 63 DB 78 */	mr r3, r27
/* 80C08EA8  4B 41 0D D4 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80C08EAC  3B 5C 5B D4 */	addi r26, r28, 0x5bd4
/* 80C08EB0  7F 43 D3 78 */	mr r3, r26
/* 80C08EB4  4B 46 6F A8 */	b CheckQuake__12dVibration_cFv
/* 80C08EB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C08EBC  41 82 00 10 */	beq lbl_80C08ECC
/* 80C08EC0  7F 43 D3 78 */	mr r3, r26
/* 80C08EC4  38 80 00 1F */	li r4, 0x1f
/* 80C08EC8  4B 46 6E CC */	b StopQuake__12dVibration_cFi
lbl_80C08ECC:
/* 80C08ECC  38 60 00 01 */	li r3, 1
/* 80C08ED0  48 00 03 A8 */	b lbl_80C09278
lbl_80C08ED4:
/* 80C08ED4  3B 40 00 00 */	li r26, 0
/* 80C08ED8  38 7B 15 28 */	addi r3, r27, 0x1528
/* 80C08EDC  4B 54 4A CC */	b isPath__16daBaseNpc_path_cFv
/* 80C08EE0  2C 03 00 00 */	cmpwi r3, 0
/* 80C08EE4  41 82 00 58 */	beq lbl_80C08F3C
/* 80C08EE8  48 00 00 48 */	b lbl_80C08F30
lbl_80C08EEC:
/* 80C08EEC  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80C08EF0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C08EF4  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80C08EF8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C08EFC  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80C08F00  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C08F04  38 7B 15 28 */	addi r3, r27, 0x1528
/* 80C08F08  38 81 00 24 */	addi r4, r1, 0x24
/* 80C08F0C  4B 54 4B 58 */	b chkPnt__16daBaseNpc_path_cF4cXyz
/* 80C08F10  7C 60 00 34 */	cntlzw r0, r3
/* 80C08F14  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 80C08F18  40 82 00 28 */	bne lbl_80C08F40
/* 80C08F1C  38 7B 15 28 */	addi r3, r27, 0x1528
/* 80C08F20  4B 54 4B A4 */	b setNextPnt__16daBaseNpc_path_cFv
/* 80C08F24  2C 03 00 00 */	cmpwi r3, 0
/* 80C08F28  41 82 00 08 */	beq lbl_80C08F30
/* 80C08F2C  3B 40 00 01 */	li r26, 1
lbl_80C08F30:
/* 80C08F30  2C 1A 00 00 */	cmpwi r26, 0
/* 80C08F34  41 82 FF B8 */	beq lbl_80C08EEC
/* 80C08F38  48 00 00 08 */	b lbl_80C08F40
lbl_80C08F3C:
/* 80C08F3C  3B 40 00 01 */	li r26, 1
lbl_80C08F40:
/* 80C08F40  2C 1A 00 00 */	cmpwi r26, 0
/* 80C08F44  40 82 00 BC */	bne lbl_80C09000
/* 80C08F48  38 7B 15 28 */	addi r3, r27, 0x1528
/* 80C08F4C  4B 54 4B B8 */	b getIdx__16daBaseNpc_path_cFv
/* 80C08F50  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 80C08F54  38 61 00 18 */	addi r3, r1, 0x18
/* 80C08F58  38 9B 15 28 */	addi r4, r27, 0x1528
/* 80C08F5C  4B 54 4B B8 */	b getPntPos__16daBaseNpc_path_cFUs
/* 80C08F60  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C08F64  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C08F68  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C08F6C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C08F70  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C08F74  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C08F78  AB 5B 04 DE */	lha r26, 0x4de(r27)
/* 80C08F7C  7F 63 DB 78 */	mr r3, r27
/* 80C08F80  4B FF ED 71 */	bl getSpeed__11daObj_GrA_cFv
/* 80C08F84  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80C08F88  38 9E 00 00 */	addi r4, r30, 0
/* 80C08F8C  C0 44 00 A8 */	lfs f2, 0xa8(r4)
/* 80C08F90  4B 66 77 B0 */	b cLib_chaseF__FPfff
/* 80C08F94  88 1B 20 1C */	lbz r0, 0x201c(r27)
/* 80C08F98  7C 00 07 74 */	extsb r0, r0
/* 80C08F9C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C08FA0  40 80 01 20 */	bge lbl_80C090C0
/* 80C08FA4  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80C08FA8  38 81 00 6C */	addi r4, r1, 0x6c
/* 80C08FAC  4B 66 7C 58 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C08FB0  7C 64 1B 78 */	mr r4, r3
/* 80C08FB4  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80C08FB8  38 A0 00 08 */	li r5, 8
/* 80C08FBC  A8 DB 1F 3C */	lha r6, 0x1f3c(r27)
/* 80C08FC0  4B 66 76 48 */	b cLib_addCalcAngleS2__FPssss
/* 80C08FC4  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80C08FC8  7C 7A 00 50 */	subf r3, r26, r0
/* 80C08FCC  4B 75 C1 04 */	b abs
/* 80C08FD0  B0 7B 1F 3C */	sth r3, 0x1f3c(r27)
/* 80C08FD4  38 7B 1F 3C */	addi r3, r27, 0x1f3c
/* 80C08FD8  38 9E 00 00 */	addi r4, r30, 0
/* 80C08FDC  A8 84 00 88 */	lha r4, 0x88(r4)
/* 80C08FE0  38 A0 00 08 */	li r5, 8
/* 80C08FE4  38 C0 00 40 */	li r6, 0x40
/* 80C08FE8  4B 66 76 20 */	b cLib_addCalcAngleS2__FPssss
/* 80C08FEC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80C08FF0  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80C08FF4  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80C08FF8  B0 1B 09 1C */	sth r0, 0x91c(r27)
/* 80C08FFC  48 00 00 C4 */	b lbl_80C090C0
lbl_80C09000:
/* 80C09000  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80C09004  FC 00 02 10 */	fabs f0, f0
/* 80C09008  FC 20 00 18 */	frsp f1, f0
/* 80C0900C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C09010  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C09014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09018  40 80 00 2C */	bge lbl_80C09044
/* 80C0901C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C09020  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C09024  80 1B 05 98 */	lwz r0, 0x598(r27)
/* 80C09028  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C0902C  41 82 00 94 */	beq lbl_80C090C0
/* 80C09030  7F 63 DB 78 */	mr r3, r27
/* 80C09034  48 00 3D 89 */	bl modeChangeCheck__11daObj_GrA_cFv
/* 80C09038  2C 03 00 00 */	cmpwi r3, 0
/* 80C0903C  40 82 02 38 */	bne lbl_80C09274
/* 80C09040  48 00 00 80 */	b lbl_80C090C0
lbl_80C09044:
/* 80C09044  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80C09048  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C0904C  C0 5E 02 4C */	lfs f2, 0x24c(r30)
/* 80C09050  C0 7E 02 50 */	lfs f3, 0x250(r30)
/* 80C09054  4B 66 69 E8 */	b cLib_addCalc2__FPffff
/* 80C09058  80 7B 07 54 */	lwz r3, 0x754(r27)
/* 80C0905C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80C09060  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80C09064  41 82 00 10 */	beq lbl_80C09074
/* 80C09068  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C0906C  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C09070  48 00 00 18 */	b lbl_80C09088
lbl_80C09074:
/* 80C09074  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 80C09078  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80C0907C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09080  40 80 00 08 */	bge lbl_80C09088
/* 80C09084  D0 1B 05 2C */	stfs f0, 0x52c(r27)
lbl_80C09088:
/* 80C09088  80 7B 07 54 */	lwz r3, 0x754(r27)
/* 80C0908C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80C09090  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 80C09094  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C09098  40 80 00 28 */	bge lbl_80C090C0
/* 80C0909C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C090A0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C090A4  80 1B 05 98 */	lwz r0, 0x598(r27)
/* 80C090A8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C090AC  41 82 00 14 */	beq lbl_80C090C0
/* 80C090B0  7F 63 DB 78 */	mr r3, r27
/* 80C090B4  48 00 3D 09 */	bl modeChangeCheck__11daObj_GrA_cFv
/* 80C090B8  2C 03 00 00 */	cmpwi r3, 0
/* 80C090BC  40 82 01 B8 */	bne lbl_80C09274
lbl_80C090C0:
/* 80C090C0  C0 3E 02 AC */	lfs f1, 0x2ac(r30)
/* 80C090C4  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 80C090C8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C090CC  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80C090D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C090D4  40 80 00 10 */	bge lbl_80C090E4
/* 80C090D8  80 7B 07 54 */	lwz r3, 0x754(r27)
/* 80C090DC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C090E0  48 00 00 0C */	b lbl_80C090EC
lbl_80C090E4:
/* 80C090E4  80 7B 07 54 */	lwz r3, 0x754(r27)
/* 80C090E8  D0 23 00 18 */	stfs f1, 0x18(r3)
lbl_80C090EC:
/* 80C090EC  88 1B 1F E9 */	lbz r0, 0x1fe9(r27)
/* 80C090F0  28 00 00 00 */	cmplwi r0, 0
/* 80C090F4  40 82 01 80 */	bne lbl_80C09274
/* 80C090F8  38 7B 0F 50 */	addi r3, r27, 0xf50
/* 80C090FC  4B 47 B5 5C */	b ChkCoHit__12dCcD_GObjInfFv
/* 80C09100  28 03 00 00 */	cmplwi r3, 0
/* 80C09104  41 82 01 70 */	beq lbl_80C09274
/* 80C09108  38 7B 0F 50 */	addi r3, r27, 0xf50
/* 80C0910C  4B 47 B5 E4 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80C09110  4B 65 A9 38 */	b GetAc__8cCcD_ObjFv
/* 80C09114  A8 03 00 08 */	lha r0, 8(r3)
/* 80C09118  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C0911C  40 82 01 58 */	bne lbl_80C09274
/* 80C09120  38 00 00 01 */	li r0, 1
/* 80C09124  98 1B 1F E9 */	stb r0, 0x1fe9(r27)
/* 80C09128  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 80C0912C  28 00 00 2B */	cmplwi r0, 0x2b
/* 80C09130  40 82 00 0C */	bne lbl_80C0913C
/* 80C09134  38 00 00 00 */	li r0, 0
/* 80C09138  98 1D 05 6A */	stb r0, 0x56a(r29)
lbl_80C0913C:
/* 80C0913C  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80C09140  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 80C09144  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80C09148  88 1B 1F E8 */	lbz r0, 0x1fe8(r27)
/* 80C0914C  7C 00 07 75 */	extsb. r0, r0
/* 80C09150  40 82 00 9C */	bne lbl_80C091EC
/* 80C09154  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80C09158  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80C0915C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C09160  41 82 00 30 */	beq lbl_80C09190
/* 80C09164  7F A3 EB 78 */	mr r3, r29
/* 80C09168  C0 3E 02 C8 */	lfs f1, 0x2c8(r30)
/* 80C0916C  C0 5E 02 18 */	lfs f2, 0x218(r30)
/* 80C09170  38 A0 00 01 */	li r5, 1
/* 80C09174  38 C0 00 00 */	li r6, 0
/* 80C09178  38 E0 00 00 */	li r7, 0
/* 80C0917C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C09180  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80C09184  7D 89 03 A6 */	mtctr r12
/* 80C09188  4E 80 04 21 */	bctrl 
/* 80C0918C  48 00 00 30 */	b lbl_80C091BC
lbl_80C09190:
/* 80C09190  7F A3 EB 78 */	mr r3, r29
/* 80C09194  38 BE 00 00 */	addi r5, r30, 0
/* 80C09198  C0 25 00 B8 */	lfs f1, 0xb8(r5)
/* 80C0919C  C0 45 00 BC */	lfs f2, 0xbc(r5)
/* 80C091A0  38 A0 00 02 */	li r5, 2
/* 80C091A4  38 C0 00 00 */	li r6, 0
/* 80C091A8  38 E0 00 00 */	li r7, 0
/* 80C091AC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C091B0  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80C091B4  7D 89 03 A6 */	mtctr r12
/* 80C091B8  4E 80 04 21 */	bctrl 
lbl_80C091BC:
/* 80C091BC  3C 60 80 C1 */	lis r3, lit_7836@ha
/* 80C091C0  38 83 02 98 */	addi r4, r3, lit_7836@l
/* 80C091C4  80 64 00 00 */	lwz r3, 0(r4)
/* 80C091C8  80 04 00 04 */	lwz r0, 4(r4)
/* 80C091CC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80C091D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C091D4  80 04 00 08 */	lwz r0, 8(r4)
/* 80C091D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C091DC  7F 63 DB 78 */	mr r3, r27
/* 80C091E0  38 81 00 0C */	addi r4, r1, 0xc
/* 80C091E4  4B FF 87 11 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C091E8  48 00 00 8C */	b lbl_80C09274
lbl_80C091EC:
/* 80C091EC  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 80C091F0  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80C091F4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80C091F8  41 82 00 30 */	beq lbl_80C09228
/* 80C091FC  7F A3 EB 78 */	mr r3, r29
/* 80C09200  C0 3E 02 C8 */	lfs f1, 0x2c8(r30)
/* 80C09204  C0 5E 02 18 */	lfs f2, 0x218(r30)
/* 80C09208  38 A0 00 01 */	li r5, 1
/* 80C0920C  38 C0 00 00 */	li r6, 0
/* 80C09210  38 E0 00 00 */	li r7, 0
/* 80C09214  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C09218  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80C0921C  7D 89 03 A6 */	mtctr r12
/* 80C09220  4E 80 04 21 */	bctrl 
/* 80C09224  48 00 00 30 */	b lbl_80C09254
lbl_80C09228:
/* 80C09228  7F A3 EB 78 */	mr r3, r29
/* 80C0922C  38 BE 00 00 */	addi r5, r30, 0
/* 80C09230  C0 25 00 B8 */	lfs f1, 0xb8(r5)
/* 80C09234  C0 45 00 BC */	lfs f2, 0xbc(r5)
/* 80C09238  38 A0 00 02 */	li r5, 2
/* 80C0923C  38 C0 00 00 */	li r6, 0
/* 80C09240  38 E0 00 00 */	li r7, 0
/* 80C09244  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80C09248  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80C0924C  7D 89 03 A6 */	mtctr r12
/* 80C09250  4E 80 04 21 */	bctrl 
lbl_80C09254:
/* 80C09254  38 00 00 3C */	li r0, 0x3c
/* 80C09258  B0 1B 1F D8 */	sth r0, 0x1fd8(r27)
/* 80C0925C  48 00 00 18 */	b lbl_80C09274
lbl_80C09260:
/* 80C09260  38 7F 5B D4 */	addi r3, r31, 0x5bd4
/* 80C09264  38 80 00 1F */	li r4, 0x1f
/* 80C09268  4B 46 6B 2C */	b StopQuake__12dVibration_cFi
/* 80C0926C  38 00 00 01 */	li r0, 1
/* 80C09270  90 1B 20 9C */	stw r0, 0x209c(r27)
lbl_80C09274:
/* 80C09274  38 60 00 01 */	li r3, 1
lbl_80C09278:
/* 80C09278  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80C0927C  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80C09280  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C09284  4B 75 8F 98 */	b _restgpr_26
/* 80C09288  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80C0928C  7C 08 03 A6 */	mtlr r0
/* 80C09290  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80C09294  4E 80 00 20 */	blr 

lbl_80C03830:
/* 80C03830  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C03834  7C 08 02 A6 */	mflr r0
/* 80C03838  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C0383C  39 61 00 70 */	addi r11, r1, 0x70
/* 80C03840  4B 75 E9 8C */	b _savegpr_25
/* 80C03844  7C 7C 1B 78 */	mr r28, r3
/* 80C03848  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C0384C  3B C3 FA 7C */	addi r30, r3, m__17daObj_GrA_Param_c@l
/* 80C03850  3B A0 00 00 */	li r29, 0
/* 80C03854  3B 40 00 00 */	li r26, 0
/* 80C03858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C0385C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
lbl_80C03860:
/* 80C03860  38 1D FF FE */	addi r0, r29, -2
/* 80C03864  28 00 00 01 */	cmplwi r0, 1
/* 80C03868  40 81 00 0C */	ble lbl_80C03874
/* 80C0386C  2C 1D 00 05 */	cmpwi r29, 5
/* 80C03870  40 82 00 0C */	bne lbl_80C0387C
lbl_80C03874:
/* 80C03874  38 C0 00 01 */	li r6, 1
/* 80C03878  48 00 00 08 */	b lbl_80C03880
lbl_80C0387C:
/* 80C0387C  38 C0 00 00 */	li r6, 0
lbl_80C03880:
/* 80C03880  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80C03884  7C 00 07 74 */	extsb r0, r0
/* 80C03888  7F 7C D2 14 */	add r27, r28, r26
/* 80C0388C  89 1B 0A B8 */	lbz r8, 0xab8(r27)
/* 80C03890  28 08 00 01 */	cmplwi r8, 1
/* 80C03894  40 82 00 0C */	bne lbl_80C038A0
/* 80C03898  39 3B 0A C8 */	addi r9, r27, 0xac8
/* 80C0389C  48 00 00 08 */	b lbl_80C038A4
lbl_80C038A0:
/* 80C038A0  39 20 00 00 */	li r9, 0
lbl_80C038A4:
/* 80C038A4  90 01 00 08 */	stw r0, 8(r1)
/* 80C038A8  38 7B 0A DC */	addi r3, r27, 0xadc
/* 80C038AC  38 9C 01 0C */	addi r4, r28, 0x10c
/* 80C038B0  38 BB 0A BC */	addi r5, r27, 0xabc
/* 80C038B4  38 E0 00 00 */	li r7, 0
/* 80C038B8  28 08 00 01 */	cmplwi r8, 1
/* 80C038BC  40 82 00 0C */	bne lbl_80C038C8
/* 80C038C0  7C A8 2B 78 */	mr r8, r5
/* 80C038C4  48 00 00 08 */	b lbl_80C038CC
lbl_80C038C8:
/* 80C038C8  39 00 00 00 */	li r8, 0
lbl_80C038CC:
/* 80C038CC  39 40 00 00 */	li r10, 0
/* 80C038D0  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80C038D4  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80C038D8  4B 44 D7 30 */	b setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 80C038DC  88 1B 0A B8 */	lbz r0, 0xab8(r27)
/* 80C038E0  28 00 00 00 */	cmplwi r0, 0
/* 80C038E4  41 82 00 C0 */	beq lbl_80C039A4
/* 80C038E8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C038EC  38 63 02 10 */	addi r3, r3, 0x210
/* 80C038F0  80 9B 0A E4 */	lwz r4, 0xae4(r27)
/* 80C038F4  4B 44 80 24 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80C038F8  28 03 00 00 */	cmplwi r3, 0
/* 80C038FC  41 82 00 A8 */	beq lbl_80C039A4
/* 80C03900  2C 1D 00 04 */	cmpwi r29, 4
/* 80C03904  41 82 00 88 */	beq lbl_80C0398C
/* 80C03908  40 80 00 18 */	bge lbl_80C03920
/* 80C0390C  2C 1D 00 02 */	cmpwi r29, 2
/* 80C03910  40 80 00 94 */	bge lbl_80C039A4
/* 80C03914  2C 1D 00 00 */	cmpwi r29, 0
/* 80C03918  40 80 00 14 */	bge lbl_80C0392C
/* 80C0391C  48 00 00 88 */	b lbl_80C039A4
lbl_80C03920:
/* 80C03920  2C 1D 00 06 */	cmpwi r29, 6
/* 80C03924  40 80 00 80 */	bge lbl_80C039A4
/* 80C03928  48 00 00 50 */	b lbl_80C03978
lbl_80C0392C:
/* 80C0392C  C0 1E 02 5C */	lfs f0, 0x25c(r30)
/* 80C03930  D0 1B 0A D0 */	stfs f0, 0xad0(r27)
/* 80C03934  D0 1B 0A D4 */	stfs f0, 0xad4(r27)
/* 80C03938  D0 1B 0A D8 */	stfs f0, 0xad8(r27)
/* 80C0393C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C03940  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 80C03944  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80C03948  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80C0394C  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 80C03950  38 9B 0A D0 */	addi r4, r27, 0xad0
/* 80C03954  E0 24 00 00 */	psq_l f1, 0(r4), 0, 0 /* qr0 */
/* 80C03958  C0 1B 0A D8 */	lfs f0, 0xad8(r27)
/* 80C0395C  F0 21 00 20 */	psq_st f1, 32(r1), 0, 0 /* qr0 */
/* 80C03960  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C03964  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C03968  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C0396C  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80C03970  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 80C03974  48 00 00 30 */	b lbl_80C039A4
lbl_80C03978:
/* 80C03978  C0 1E 02 60 */	lfs f0, 0x260(r30)
/* 80C0397C  D0 1B 0A D0 */	stfs f0, 0xad0(r27)
/* 80C03980  D0 1B 0A D4 */	stfs f0, 0xad4(r27)
/* 80C03984  D0 1B 0A D8 */	stfs f0, 0xad8(r27)
/* 80C03988  48 00 00 1C */	b lbl_80C039A4
lbl_80C0398C:
/* 80C0398C  38 00 00 28 */	li r0, 0x28
/* 80C03990  B0 03 00 54 */	sth r0, 0x54(r3)
/* 80C03994  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80C03998  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 80C0399C  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80C039A0  D0 03 00 3C */	stfs f0, 0x3c(r3)
lbl_80C039A4:
/* 80C039A4  38 00 00 00 */	li r0, 0
/* 80C039A8  98 1B 0A B8 */	stb r0, 0xab8(r27)
/* 80C039AC  3B BD 00 01 */	addi r29, r29, 1
/* 80C039B0  2C 1D 00 06 */	cmpwi r29, 6
/* 80C039B4  3B 5A 00 5C */	addi r26, r26, 0x5c
/* 80C039B8  41 80 FE A8 */	blt lbl_80C03860
/* 80C039BC  88 1C 20 1D */	lbz r0, 0x201d(r28)
/* 80C039C0  28 00 00 01 */	cmplwi r0, 1
/* 80C039C4  40 82 01 2C */	bne lbl_80C03AF0
/* 80C039C8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C039CC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C039D0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C039D4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C039D8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C039DC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C039E0  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80C039E4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C039E8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C039EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C039F0  3B A0 00 00 */	li r29, 0
/* 80C039F4  3B 60 00 00 */	li r27, 0
/* 80C039F8  3B 40 00 00 */	li r26, 0
lbl_80C039FC:
/* 80C039FC  2C 1D 00 00 */	cmpwi r29, 0
/* 80C03A00  40 82 00 60 */	bne lbl_80C03A60
/* 80C03A04  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C03A08  38 00 00 FF */	li r0, 0xff
/* 80C03A0C  90 01 00 08 */	stw r0, 8(r1)
/* 80C03A10  38 80 00 00 */	li r4, 0
/* 80C03A14  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C03A18  38 00 FF FF */	li r0, -1
/* 80C03A1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C03A20  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C03A24  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C03A28  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C03A2C  3B 3A 20 20 */	addi r25, r26, 0x2020
/* 80C03A30  7C 9C C8 2E */	lwzx r4, r28, r25
/* 80C03A34  38 A0 00 00 */	li r5, 0
/* 80C03A38  38 DE 02 54 */	addi r6, r30, 0x254
/* 80C03A3C  7C C6 DA 2E */	lhzx r6, r6, r27
/* 80C03A40  38 E1 00 38 */	addi r7, r1, 0x38
/* 80C03A44  39 1C 01 0C */	addi r8, r28, 0x10c
/* 80C03A48  39 3C 04 DC */	addi r9, r28, 0x4dc
/* 80C03A4C  39 41 00 2C */	addi r10, r1, 0x2c
/* 80C03A50  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 80C03A54  4B 44 9A 78 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C03A58  7C 7C C9 2E */	stwx r3, r28, r25
/* 80C03A5C  48 00 00 4C */	b lbl_80C03AA8
lbl_80C03A60:
/* 80C03A60  38 60 00 00 */	li r3, 0
/* 80C03A64  90 61 00 08 */	stw r3, 8(r1)
/* 80C03A68  90 61 00 0C */	stw r3, 0xc(r1)
/* 80C03A6C  38 00 FF FF */	li r0, -1
/* 80C03A70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C03A74  90 61 00 14 */	stw r3, 0x14(r1)
/* 80C03A78  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C03A7C  3B 3A 20 20 */	addi r25, r26, 0x2020
/* 80C03A80  7C 9C C8 2E */	lwzx r4, r28, r25
/* 80C03A84  38 BE 02 54 */	addi r5, r30, 0x254
/* 80C03A88  7C A5 DA 2E */	lhzx r5, r5, r27
/* 80C03A8C  38 DC 06 5C */	addi r6, r28, 0x65c
/* 80C03A90  38 E1 00 38 */	addi r7, r1, 0x38
/* 80C03A94  39 1C 01 0C */	addi r8, r28, 0x10c
/* 80C03A98  39 3C 04 DC */	addi r9, r28, 0x4dc
/* 80C03A9C  39 41 00 2C */	addi r10, r1, 0x2c
/* 80C03AA0  4B 44 9C 04 */	b setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 80C03AA4  7C 7C C9 2E */	stwx r3, r28, r25
lbl_80C03AA8:
/* 80C03AA8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C03AAC  38 63 02 10 */	addi r3, r3, 0x210
/* 80C03AB0  38 1A 20 20 */	addi r0, r26, 0x2020
/* 80C03AB4  7C 9C 00 2E */	lwzx r4, r28, r0
/* 80C03AB8  4B 44 7E 60 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80C03ABC  28 03 00 00 */	cmplwi r3, 0
/* 80C03AC0  41 82 00 1C */	beq lbl_80C03ADC
/* 80C03AC4  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80C03AC8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80C03ACC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C03AD0  D0 03 00 A4 */	stfs f0, 0xa4(r3)
/* 80C03AD4  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 80C03AD8  D0 43 00 AC */	stfs f2, 0xac(r3)
lbl_80C03ADC:
/* 80C03ADC  3B BD 00 01 */	addi r29, r29, 1
/* 80C03AE0  2C 1D 00 03 */	cmpwi r29, 3
/* 80C03AE4  3B 7B 00 02 */	addi r27, r27, 2
/* 80C03AE8  3B 5A 00 04 */	addi r26, r26, 4
/* 80C03AEC  41 80 FF 10 */	blt lbl_80C039FC
lbl_80C03AF0:
/* 80C03AF0  38 00 00 00 */	li r0, 0
/* 80C03AF4  98 1C 20 1D */	stb r0, 0x201d(r28)
/* 80C03AF8  38 60 00 01 */	li r3, 1
/* 80C03AFC  39 61 00 70 */	addi r11, r1, 0x70
/* 80C03B00  4B 75 E7 18 */	b _restgpr_25
/* 80C03B04  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C03B08  7C 08 03 A6 */	mtlr r0
/* 80C03B0C  38 21 00 70 */	addi r1, r1, 0x70
/* 80C03B10  4E 80 00 20 */	blr 

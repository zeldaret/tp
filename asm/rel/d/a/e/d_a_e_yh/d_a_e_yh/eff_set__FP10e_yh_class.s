lbl_8080285C:
/* 8080285C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80802860  7C 08 02 A6 */	mflr r0
/* 80802864  90 01 00 64 */	stw r0, 0x64(r1)
/* 80802868  39 61 00 60 */	addi r11, r1, 0x60
/* 8080286C  4B B5 F9 59 */	bl _savegpr_23
/* 80802870  7C 79 1B 78 */	mr r25, r3
/* 80802874  3C 60 80 80 */	lis r3, lit_3902@ha /* 0x8080427C@ha */
/* 80802878  3B 83 42 7C */	addi r28, r3, lit_3902@l /* 0x8080427C@l */
/* 8080287C  88 19 05 67 */	lbz r0, 0x567(r25)
/* 80802880  7C 00 07 75 */	extsb. r0, r0
/* 80802884  40 82 03 94 */	bne lbl_80802C18
/* 80802888  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 8080288C  83 63 00 04 */	lwz r27, 4(r3)
/* 80802890  88 79 12 3C */	lbz r3, 0x123c(r25)
/* 80802894  7C 60 07 75 */	extsb. r0, r3
/* 80802898  41 82 00 14 */	beq lbl_808028AC
/* 8080289C  38 03 FF FF */	addi r0, r3, -1
/* 808028A0  98 19 12 3C */	stb r0, 0x123c(r25)
/* 808028A4  38 00 00 03 */	li r0, 3
/* 808028A8  98 19 12 3D */	stb r0, 0x123d(r25)
lbl_808028AC:
/* 808028AC  88 19 12 3D */	lbz r0, 0x123d(r25)
/* 808028B0  2C 00 00 01 */	cmpwi r0, 1
/* 808028B4  41 82 00 0C */	beq lbl_808028C0
/* 808028B8  C0 3C 00 04 */	lfs f1, 4(r28)
/* 808028BC  48 00 00 08 */	b lbl_808028C4
lbl_808028C0:
/* 808028C0  C0 3C 00 08 */	lfs f1, 8(r28)
lbl_808028C4:
/* 808028C4  C0 5C 00 08 */	lfs f2, 8(r28)
/* 808028C8  C0 19 04 EC */	lfs f0, 0x4ec(r25)
/* 808028CC  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 808028D0  40 82 00 1C */	bne lbl_808028EC
/* 808028D4  C0 19 04 F0 */	lfs f0, 0x4f0(r25)
/* 808028D8  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 808028DC  40 82 00 10 */	bne lbl_808028EC
/* 808028E0  C0 19 04 F4 */	lfs f0, 0x4f4(r25)
/* 808028E4  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 808028E8  41 82 00 0C */	beq lbl_808028F4
lbl_808028EC:
/* 808028EC  C0 3C 00 04 */	lfs f1, 4(r28)
/* 808028F0  D0 39 12 58 */	stfs f1, 0x1258(r25)
lbl_808028F4:
/* 808028F4  38 79 12 58 */	addi r3, r25, 0x1258
/* 808028F8  C0 5C 00 08 */	lfs f2, 8(r28)
/* 808028FC  C0 7C 00 7C */	lfs f3, 0x7c(r28)
/* 80802900  4B A6 D1 3D */	bl cLib_addCalc2__FPffff
/* 80802904  3B 40 00 00 */	li r26, 0
/* 80802908  3B 00 00 00 */	li r24, 0
/* 8080290C  3A E0 00 00 */	li r23, 0
/* 80802910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80802914  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80802918  3C 60 80 80 */	lis r3, p_name@ha /* 0x80804560@ha */
/* 8080291C  3B C3 45 60 */	addi r30, r3, p_name@l /* 0x80804560@l */
lbl_80802920:
/* 80802920  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80802924  38 00 00 FF */	li r0, 0xff
/* 80802928  90 01 00 08 */	stw r0, 8(r1)
/* 8080292C  38 80 00 00 */	li r4, 0
/* 80802930  90 81 00 0C */	stw r4, 0xc(r1)
/* 80802934  38 00 FF FF */	li r0, -1
/* 80802938  90 01 00 10 */	stw r0, 0x10(r1)
/* 8080293C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80802940  90 81 00 18 */	stw r4, 0x18(r1)
/* 80802944  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80802948  3B F7 12 40 */	addi r31, r23, 0x1240
/* 8080294C  7C 99 F8 2E */	lwzx r4, r25, r31
/* 80802950  38 A0 00 00 */	li r5, 0
/* 80802954  7C DE C2 2E */	lhzx r6, r30, r24
/* 80802958  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 8080295C  39 00 00 00 */	li r8, 0
/* 80802960  39 20 00 00 */	li r9, 0
/* 80802964  39 40 00 00 */	li r10, 0
/* 80802968  C0 3C 00 08 */	lfs f1, 8(r28)
/* 8080296C  4B 84 AB 61 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80802970  7C 79 F9 2E */	stwx r3, r25, r31
/* 80802974  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80802978  38 63 02 10 */	addi r3, r3, 0x210
/* 8080297C  7C 99 F8 2E */	lwzx r4, r25, r31
/* 80802980  4B 84 8F 99 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80802984  7C 7F 1B 79 */	or. r31, r3, r3
/* 80802988  41 82 00 70 */	beq lbl_808029F8
/* 8080298C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80802990  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80802994  3C 60 80 80 */	lis r3, p_idx@ha /* 0x80804568@ha */
/* 80802998  38 63 45 68 */	addi r3, r3, p_idx@l /* 0x80804568@l */
/* 8080299C  7C 03 B8 2E */	lwzx r0, r3, r23
/* 808029A0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 808029A4  7C 64 02 14 */	add r3, r4, r0
/* 808029A8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 808029AC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 808029B0  80 84 00 00 */	lwz r4, 0(r4)
/* 808029B4  4B B4 3A FD */	bl PSMTXCopy
/* 808029B8  C0 39 12 58 */	lfs f1, 0x1258(r25)
/* 808029BC  FC 40 08 90 */	fmr f2, f1
/* 808029C0  FC 60 08 90 */	fmr f3, f1
/* 808029C4  38 60 00 01 */	li r3, 1
/* 808029C8  4B A6 E4 DD */	bl MtxScale__FfffUc
/* 808029CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808029D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808029D4  80 63 00 00 */	lwz r3, 0(r3)
/* 808029D8  38 9F 00 68 */	addi r4, r31, 0x68
/* 808029DC  38 BF 00 98 */	addi r5, r31, 0x98
/* 808029E0  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 808029E4  4B A7 DE 25 */	bl func_80280808
/* 808029E8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 808029EC  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 808029F0  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 808029F4  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_808029F8:
/* 808029F8  3B 5A 00 01 */	addi r26, r26, 1
/* 808029FC  2C 1A 00 02 */	cmpwi r26, 2
/* 80802A00  3B 18 00 02 */	addi r24, r24, 2
/* 80802A04  3A F7 00 04 */	addi r23, r23, 4
/* 80802A08  40 81 FF 18 */	ble lbl_80802920
/* 80802A0C  88 79 12 3D */	lbz r3, 0x123d(r25)
/* 80802A10  7C 60 07 75 */	extsb. r0, r3
/* 80802A14  41 82 02 04 */	beq lbl_80802C18
/* 80802A18  7C 60 07 74 */	extsb r0, r3
/* 80802A1C  2C 00 00 01 */	cmpwi r0, 1
/* 80802A20  40 82 00 9C */	bne lbl_80802ABC
/* 80802A24  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80802A28  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80802A2C  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 80802A30  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80802A34  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 80802A38  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80802A3C  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80802A40  EC 01 00 2A */	fadds f0, f1, f0
/* 80802A44  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80802A48  38 61 00 20 */	addi r3, r1, 0x20
/* 80802A4C  4B 81 B2 71 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80802A50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80802A54  41 82 00 10 */	beq lbl_80802A64
/* 80802A58  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80802A5C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80802A60  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_80802A64:
/* 80802A64  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80802A68  38 00 00 FF */	li r0, 0xff
/* 80802A6C  90 01 00 08 */	stw r0, 8(r1)
/* 80802A70  38 80 00 00 */	li r4, 0
/* 80802A74  90 81 00 0C */	stw r4, 0xc(r1)
/* 80802A78  38 00 FF FF */	li r0, -1
/* 80802A7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80802A80  90 81 00 14 */	stw r4, 0x14(r1)
/* 80802A84  90 81 00 18 */	stw r4, 0x18(r1)
/* 80802A88  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80802A8C  80 99 12 50 */	lwz r4, 0x1250(r25)
/* 80802A90  38 A0 00 00 */	li r5, 0
/* 80802A94  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008810@ha */
/* 80802A98  38 C6 88 10 */	addi r6, r6, 0x8810 /* 0x00008810@l */
/* 80802A9C  38 E1 00 20 */	addi r7, r1, 0x20
/* 80802AA0  39 00 00 00 */	li r8, 0
/* 80802AA4  39 20 00 00 */	li r9, 0
/* 80802AA8  39 40 00 00 */	li r10, 0
/* 80802AAC  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80802AB0  4B 84 AA 1D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80802AB4  90 79 12 50 */	stw r3, 0x1250(r25)
/* 80802AB8  48 00 01 58 */	b lbl_80802C10
lbl_80802ABC:
/* 80802ABC  2C 00 00 02 */	cmpwi r0, 2
/* 80802AC0  40 82 00 A8 */	bne lbl_80802B68
/* 80802AC4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80802AC8  38 00 00 FF */	li r0, 0xff
/* 80802ACC  90 01 00 08 */	stw r0, 8(r1)
/* 80802AD0  38 80 00 00 */	li r4, 0
/* 80802AD4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80802AD8  38 00 FF FF */	li r0, -1
/* 80802ADC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80802AE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80802AE4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80802AE8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80802AEC  80 99 12 4C */	lwz r4, 0x124c(r25)
/* 80802AF0  38 A0 00 00 */	li r5, 0
/* 80802AF4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000880E@ha */
/* 80802AF8  38 C6 88 0E */	addi r6, r6, 0x880E /* 0x0000880E@l */
/* 80802AFC  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 80802B00  39 00 00 00 */	li r8, 0
/* 80802B04  39 20 00 00 */	li r9, 0
/* 80802B08  39 40 00 00 */	li r10, 0
/* 80802B0C  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80802B10  4B 84 A9 BD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80802B14  90 79 12 4C */	stw r3, 0x124c(r25)
/* 80802B18  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80802B1C  38 63 02 10 */	addi r3, r3, 0x210
/* 80802B20  80 99 12 4C */	lwz r4, 0x124c(r25)
/* 80802B24  4B 84 8D F5 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80802B28  7C 77 1B 79 */	or. r23, r3, r3
/* 80802B2C  41 82 00 E4 */	beq lbl_80802C10
/* 80802B30  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80802B34  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80802B38  38 63 00 30 */	addi r3, r3, 0x30
/* 80802B3C  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80802B40  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80802B44  80 84 00 00 */	lwz r4, 0(r4)
/* 80802B48  4B B4 39 69 */	bl PSMTXCopy
/* 80802B4C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80802B50  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80802B54  80 63 00 00 */	lwz r3, 0(r3)
/* 80802B58  38 97 00 68 */	addi r4, r23, 0x68
/* 80802B5C  38 B7 00 A4 */	addi r5, r23, 0xa4
/* 80802B60  4B A7 DC 81 */	bl func_802807E0
/* 80802B64  48 00 00 AC */	b lbl_80802C10
lbl_80802B68:
/* 80802B68  2C 00 00 03 */	cmpwi r0, 3
/* 80802B6C  40 82 00 A4 */	bne lbl_80802C10
/* 80802B70  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80802B74  38 00 00 FF */	li r0, 0xff
/* 80802B78  90 01 00 08 */	stw r0, 8(r1)
/* 80802B7C  38 80 00 00 */	li r4, 0
/* 80802B80  90 81 00 0C */	stw r4, 0xc(r1)
/* 80802B84  38 00 FF FF */	li r0, -1
/* 80802B88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80802B8C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80802B90  90 81 00 18 */	stw r4, 0x18(r1)
/* 80802B94  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80802B98  80 99 12 54 */	lwz r4, 0x1254(r25)
/* 80802B9C  38 A0 00 00 */	li r5, 0
/* 80802BA0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000880F@ha */
/* 80802BA4  38 C6 88 0F */	addi r6, r6, 0x880F /* 0x0000880F@l */
/* 80802BA8  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 80802BAC  39 00 00 00 */	li r8, 0
/* 80802BB0  39 20 00 00 */	li r9, 0
/* 80802BB4  39 40 00 00 */	li r10, 0
/* 80802BB8  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80802BBC  4B 84 A9 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80802BC0  90 79 12 54 */	stw r3, 0x1254(r25)
/* 80802BC4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80802BC8  38 63 02 10 */	addi r3, r3, 0x210
/* 80802BCC  80 99 12 54 */	lwz r4, 0x1254(r25)
/* 80802BD0  4B 84 8D 49 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80802BD4  7C 77 1B 79 */	or. r23, r3, r3
/* 80802BD8  41 82 00 38 */	beq lbl_80802C10
/* 80802BDC  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80802BE0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80802BE4  38 63 00 30 */	addi r3, r3, 0x30
/* 80802BE8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80802BEC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80802BF0  80 84 00 00 */	lwz r4, 0(r4)
/* 80802BF4  4B B4 38 BD */	bl PSMTXCopy
/* 80802BF8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80802BFC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80802C00  80 63 00 00 */	lwz r3, 0(r3)
/* 80802C04  38 97 00 68 */	addi r4, r23, 0x68
/* 80802C08  38 B7 00 A4 */	addi r5, r23, 0xa4
/* 80802C0C  4B A7 DB D5 */	bl func_802807E0
lbl_80802C10:
/* 80802C10  38 00 00 00 */	li r0, 0
/* 80802C14  98 19 12 3D */	stb r0, 0x123d(r25)
lbl_80802C18:
/* 80802C18  39 61 00 60 */	addi r11, r1, 0x60
/* 80802C1C  4B B5 F5 F5 */	bl _restgpr_23
/* 80802C20  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80802C24  7C 08 03 A6 */	mtlr r0
/* 80802C28  38 21 00 60 */	addi r1, r1, 0x60
/* 80802C2C  4E 80 00 20 */	blr 

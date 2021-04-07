lbl_80722814:
/* 80722814  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80722818  7C 08 02 A6 */	mflr r0
/* 8072281C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80722820  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80722824  4B C3 F9 91 */	bl _savegpr_19
/* 80722828  7C 7E 1B 78 */	mr r30, r3
/* 8072282C  7C 9A 23 78 */	mr r26, r4
/* 80722830  7C BB 2B 78 */	mr r27, r5
/* 80722834  7C DC 33 78 */	mr r28, r6
/* 80722838  3C 60 80 72 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80722CF4@ha */
/* 8072283C  3A E3 2C F4 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x80722CF4@l */
/* 80722840  3C 60 80 72 */	lis r3, lit_3789@ha /* 0x80722C3C@ha */
/* 80722844  3B E3 2C 3C */	addi r31, r3, lit_3789@l /* 0x80722C3C@l */
/* 80722848  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072284C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80722850  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80722854  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80722858  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 8072285C  28 00 00 00 */	cmplwi r0, 0
/* 80722860  41 82 03 A4 */	beq lbl_80722C04
/* 80722864  7F C4 F3 78 */	mr r4, r30
/* 80722868  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8072286C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80722870  7D 89 03 A6 */	mtctr r12
/* 80722874  4E 80 04 21 */	bctrl 
/* 80722878  2C 03 00 00 */	cmpwi r3, 0
/* 8072287C  41 82 03 88 */	beq lbl_80722C04
/* 80722880  4B A8 9C FD */	bl dKy_darkworld_check__Fv
/* 80722884  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80722888  30 03 FF FF */	addic r0, r3, -1
/* 8072288C  7F A0 19 10 */	subfe r29, r0, r3
/* 80722890  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80722894  28 00 00 00 */	cmplwi r0, 0
/* 80722898  40 82 02 A0 */	bne lbl_80722B38
/* 8072289C  38 00 00 01 */	li r0, 1
/* 807228A0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807228A4  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807228A8  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 807228AC  80 63 00 00 */	lwz r3, 0(r3)
/* 807228B0  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807228B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807228B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807228BC  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807228C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807228C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807228C8  4B C2 3B E9 */	bl PSMTXCopy
/* 807228CC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807228D0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807228D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807228D8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807228DC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807228E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807228E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807228E8  38 81 00 4C */	addi r4, r1, 0x4c
/* 807228EC  38 A1 00 58 */	addi r5, r1, 0x58
/* 807228F0  4B C2 44 7D */	bl PSMTXMultVec
/* 807228F4  38 61 00 34 */	addi r3, r1, 0x34
/* 807228F8  38 81 00 58 */	addi r4, r1, 0x58
/* 807228FC  7F 65 DB 78 */	mr r5, r27
/* 80722900  4B B4 42 35 */	bl __mi__4cXyzCFRC3Vec
/* 80722904  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80722908  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8072290C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80722910  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80722914  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80722918  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8072291C  4B B4 4D 59 */	bl cM_atan2s__Fff
/* 80722920  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80722924  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80722928  EC 20 00 32 */	fmuls f1, f0, f0
/* 8072292C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80722930  EC 00 00 32 */	fmuls f0, f0, f0
/* 80722934  EC 41 00 2A */	fadds f2, f1, f0
/* 80722938  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072293C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80722940  40 81 00 0C */	ble lbl_8072294C
/* 80722944  FC 00 10 34 */	frsqrte f0, f2
/* 80722948  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8072294C:
/* 8072294C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80722950  4B B4 4D 25 */	bl cM_atan2s__Fff
/* 80722954  7C 03 00 D0 */	neg r0, r3
/* 80722958  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8072295C  38 80 00 00 */	li r4, 0
/* 80722960  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80722964  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80722968  7C 00 07 74 */	extsb r0, r0
/* 8072296C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80722970  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80722974  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80722978  57 A5 10 3A */	slwi r5, r29, 2
/* 8072297C  90 81 00 08 */	stw r4, 8(r1)
/* 80722980  90 01 00 0C */	stw r0, 0xc(r1)
/* 80722984  3A B7 00 20 */	addi r21, r23, 0x20
/* 80722988  7E B5 2A 14 */	add r21, r21, r5
/* 8072298C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80722990  3A D7 00 28 */	addi r22, r23, 0x28
/* 80722994  7E D6 2A 14 */	add r22, r22, r5
/* 80722998  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8072299C  90 81 00 18 */	stw r4, 0x18(r1)
/* 807229A0  38 80 00 00 */	li r4, 0
/* 807229A4  38 A0 02 9B */	li r5, 0x29b
/* 807229A8  7F 66 DB 78 */	mr r6, r27
/* 807229AC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807229B0  39 01 00 2C */	addi r8, r1, 0x2c
/* 807229B4  7F 89 E3 78 */	mr r9, r28
/* 807229B8  39 40 00 FF */	li r10, 0xff
/* 807229BC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807229C0  4B 92 A0 D1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807229C4  7C 79 1B 79 */	or. r25, r3, r3
/* 807229C8  41 82 00 FC */	beq lbl_80722AC4
/* 807229CC  38 61 00 40 */	addi r3, r1, 0x40
/* 807229D0  4B C2 47 69 */	bl PSVECSquareMag
/* 807229D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807229D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807229DC  40 81 00 58 */	ble lbl_80722A34
/* 807229E0  FC 00 08 34 */	frsqrte f0, f1
/* 807229E4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807229E8  FC 44 00 32 */	fmul f2, f4, f0
/* 807229EC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807229F0  FC 00 00 32 */	fmul f0, f0, f0
/* 807229F4  FC 01 00 32 */	fmul f0, f1, f0
/* 807229F8  FC 03 00 28 */	fsub f0, f3, f0
/* 807229FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80722A00  FC 44 00 32 */	fmul f2, f4, f0
/* 80722A04  FC 00 00 32 */	fmul f0, f0, f0
/* 80722A08  FC 01 00 32 */	fmul f0, f1, f0
/* 80722A0C  FC 03 00 28 */	fsub f0, f3, f0
/* 80722A10  FC 02 00 32 */	fmul f0, f2, f0
/* 80722A14  FC 44 00 32 */	fmul f2, f4, f0
/* 80722A18  FC 00 00 32 */	fmul f0, f0, f0
/* 80722A1C  FC 01 00 32 */	fmul f0, f1, f0
/* 80722A20  FC 03 00 28 */	fsub f0, f3, f0
/* 80722A24  FC 02 00 32 */	fmul f0, f2, f0
/* 80722A28  FC 21 00 32 */	fmul f1, f1, f0
/* 80722A2C  FC 20 08 18 */	frsp f1, f1
/* 80722A30  48 00 00 88 */	b lbl_80722AB8
lbl_80722A34:
/* 80722A34  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80722A38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80722A3C  40 80 00 10 */	bge lbl_80722A4C
/* 80722A40  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80722A44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80722A48  48 00 00 70 */	b lbl_80722AB8
lbl_80722A4C:
/* 80722A4C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80722A50  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80722A54  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80722A58  3C 00 7F 80 */	lis r0, 0x7f80
/* 80722A5C  7C 03 00 00 */	cmpw r3, r0
/* 80722A60  41 82 00 14 */	beq lbl_80722A74
/* 80722A64  40 80 00 40 */	bge lbl_80722AA4
/* 80722A68  2C 03 00 00 */	cmpwi r3, 0
/* 80722A6C  41 82 00 20 */	beq lbl_80722A8C
/* 80722A70  48 00 00 34 */	b lbl_80722AA4
lbl_80722A74:
/* 80722A74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80722A78  41 82 00 0C */	beq lbl_80722A84
/* 80722A7C  38 00 00 01 */	li r0, 1
/* 80722A80  48 00 00 28 */	b lbl_80722AA8
lbl_80722A84:
/* 80722A84  38 00 00 02 */	li r0, 2
/* 80722A88  48 00 00 20 */	b lbl_80722AA8
lbl_80722A8C:
/* 80722A8C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80722A90  41 82 00 0C */	beq lbl_80722A9C
/* 80722A94  38 00 00 05 */	li r0, 5
/* 80722A98  48 00 00 10 */	b lbl_80722AA8
lbl_80722A9C:
/* 80722A9C  38 00 00 03 */	li r0, 3
/* 80722AA0  48 00 00 08 */	b lbl_80722AA8
lbl_80722AA4:
/* 80722AA4  38 00 00 04 */	li r0, 4
lbl_80722AA8:
/* 80722AA8  2C 00 00 01 */	cmpwi r0, 1
/* 80722AAC  40 82 00 0C */	bne lbl_80722AB8
/* 80722AB0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80722AB4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80722AB8:
/* 80722AB8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80722ABC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80722AC0  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80722AC4:
/* 80722AC4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80722AC8  7C 04 07 74 */	extsb r4, r0
/* 80722ACC  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80722AD0  38 00 00 00 */	li r0, 0
/* 80722AD4  90 01 00 08 */	stw r0, 8(r1)
/* 80722AD8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80722ADC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80722AE0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80722AE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80722AE8  38 80 00 00 */	li r4, 0
/* 80722AEC  38 A0 02 9C */	li r5, 0x29c
/* 80722AF0  7F 66 DB 78 */	mr r6, r27
/* 80722AF4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80722AF8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80722AFC  7F 89 E3 78 */	mr r9, r28
/* 80722B00  39 40 00 FF */	li r10, 0xff
/* 80722B04  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80722B08  4B 92 9F 89 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80722B0C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80722B10  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80722B14  90 01 00 28 */	stw r0, 0x28(r1)
/* 80722B18  7F 43 D3 78 */	mr r3, r26
/* 80722B1C  38 81 00 28 */	addi r4, r1, 0x28
/* 80722B20  38 A0 00 00 */	li r5, 0
/* 80722B24  38 C0 FF FF */	li r6, -1
/* 80722B28  81 9A 00 00 */	lwz r12, 0(r26)
/* 80722B2C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80722B30  7D 89 03 A6 */	mtctr r12
/* 80722B34  4E 80 04 21 */	bctrl 
lbl_80722B38:
/* 80722B38  3A A0 00 00 */	li r21, 0
/* 80722B3C  3A C0 00 00 */	li r22, 0
/* 80722B40  3A 80 00 00 */	li r20, 0
/* 80722B44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80722B48  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80722B4C  57 A0 10 3A */	slwi r0, r29, 2
/* 80722B50  3B 17 00 28 */	addi r24, r23, 0x28
/* 80722B54  7F 18 02 14 */	add r24, r24, r0
/* 80722B58  3B B7 00 20 */	addi r29, r23, 0x20
/* 80722B5C  7F BD 02 14 */	add r29, r29, r0
/* 80722B60  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80722B64:
/* 80722B64  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80722B68  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80722B6C  7C 05 07 74 */	extsb r5, r0
/* 80722B70  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80722B74  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80722B78  38 00 00 FF */	li r0, 0xff
/* 80722B7C  90 01 00 08 */	stw r0, 8(r1)
/* 80722B80  38 00 00 00 */	li r0, 0
/* 80722B84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80722B88  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80722B8C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80722B90  93 01 00 18 */	stw r24, 0x18(r1)
/* 80722B94  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80722B98  38 A0 00 00 */	li r5, 0
/* 80722B9C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80722BA0  7F 67 DB 78 */	mr r7, r27
/* 80722BA4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80722BA8  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80722BAC  7F 8A E3 78 */	mr r10, r28
/* 80722BB0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80722BB4  4B 92 A9 19 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80722BB8  7C 7E B9 2E */	stwx r3, r30, r23
/* 80722BBC  3A B5 00 01 */	addi r21, r21, 1
/* 80722BC0  2C 15 00 03 */	cmpwi r21, 3
/* 80722BC4  3A D6 00 02 */	addi r22, r22, 2
/* 80722BC8  3A 94 00 04 */	addi r20, r20, 4
/* 80722BCC  41 80 FF 98 */	blt lbl_80722B64
/* 80722BD0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80722BD4  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80722BD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80722BDC  7F 43 D3 78 */	mr r3, r26
/* 80722BE0  38 81 00 24 */	addi r4, r1, 0x24
/* 80722BE4  38 A0 00 00 */	li r5, 0
/* 80722BE8  38 C0 FF FF */	li r6, -1
/* 80722BEC  81 9A 00 00 */	lwz r12, 0(r26)
/* 80722BF0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80722BF4  7D 89 03 A6 */	mtctr r12
/* 80722BF8  4E 80 04 21 */	bctrl 
/* 80722BFC  38 60 00 01 */	li r3, 1
/* 80722C00  48 00 00 10 */	b lbl_80722C10
lbl_80722C04:
/* 80722C04  38 00 00 00 */	li r0, 0
/* 80722C08  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80722C0C  38 60 00 00 */	li r3, 0
lbl_80722C10:
/* 80722C10  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80722C14  4B C3 F5 ED */	bl _restgpr_19
/* 80722C18  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80722C1C  7C 08 03 A6 */	mtlr r0
/* 80722C20  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80722C24  4E 80 00 20 */	blr 

lbl_80791948:
/* 80791948  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8079194C  7C 08 02 A6 */	mflr r0
/* 80791950  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80791954  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80791958  4B BD 08 5D */	bl _savegpr_19
/* 8079195C  7C 7E 1B 78 */	mr r30, r3
/* 80791960  7C 9A 23 78 */	mr r26, r4
/* 80791964  7C BB 2B 78 */	mr r27, r5
/* 80791968  7C DC 33 78 */	mr r28, r6
/* 8079196C  3C 60 80 79 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80791EC8@ha */
/* 80791970  3A E3 1E C8 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x80791EC8@l */
/* 80791974  3C 60 80 79 */	lis r3, lit_3902@ha /* 0x80791D70@ha */
/* 80791978  3B E3 1D 70 */	addi r31, r3, lit_3902@l /* 0x80791D70@l */
/* 8079197C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80791980  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80791984  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80791988  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8079198C  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 80791990  28 00 00 00 */	cmplwi r0, 0
/* 80791994  41 82 03 A4 */	beq lbl_80791D38
/* 80791998  7F C4 F3 78 */	mr r4, r30
/* 8079199C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807919A0  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807919A4  7D 89 03 A6 */	mtctr r12
/* 807919A8  4E 80 04 21 */	bctrl 
/* 807919AC  2C 03 00 00 */	cmpwi r3, 0
/* 807919B0  41 82 03 88 */	beq lbl_80791D38
/* 807919B4  4B A1 AB C9 */	bl dKy_darkworld_check__Fv
/* 807919B8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807919BC  30 03 FF FF */	addic r0, r3, -1
/* 807919C0  7F A0 19 10 */	subfe r29, r0, r3
/* 807919C4  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807919C8  28 00 00 00 */	cmplwi r0, 0
/* 807919CC  40 82 02 A0 */	bne lbl_80791C6C
/* 807919D0  38 00 00 01 */	li r0, 1
/* 807919D4  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807919D8  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807919DC  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 807919E0  80 63 00 00 */	lwz r3, 0(r3)
/* 807919E4  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807919E8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807919EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807919F0  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807919F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807919F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807919FC  4B BB 4A B5 */	bl PSMTXCopy
/* 80791A00  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80791A04  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80791A08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80791A0C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80791A10  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80791A14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80791A18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80791A1C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80791A20  38 A1 00 58 */	addi r5, r1, 0x58
/* 80791A24  4B BB 53 49 */	bl PSMTXMultVec
/* 80791A28  38 61 00 34 */	addi r3, r1, 0x34
/* 80791A2C  38 81 00 58 */	addi r4, r1, 0x58
/* 80791A30  7F 65 DB 78 */	mr r5, r27
/* 80791A34  4B AD 51 01 */	bl __mi__4cXyzCFRC3Vec
/* 80791A38  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80791A3C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80791A40  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80791A44  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80791A48  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80791A4C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80791A50  4B AD 5C 25 */	bl cM_atan2s__Fff
/* 80791A54  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80791A58  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80791A5C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80791A60  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80791A64  EC 00 00 32 */	fmuls f0, f0, f0
/* 80791A68  EC 41 00 2A */	fadds f2, f1, f0
/* 80791A6C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80791A70  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80791A74  40 81 00 0C */	ble lbl_80791A80
/* 80791A78  FC 00 10 34 */	frsqrte f0, f2
/* 80791A7C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80791A80:
/* 80791A80  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80791A84  4B AD 5B F1 */	bl cM_atan2s__Fff
/* 80791A88  7C 03 00 D0 */	neg r0, r3
/* 80791A8C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80791A90  38 80 00 00 */	li r4, 0
/* 80791A94  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80791A98  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80791A9C  7C 00 07 74 */	extsb r0, r0
/* 80791AA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80791AA4  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80791AA8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80791AAC  57 A5 10 3A */	slwi r5, r29, 2
/* 80791AB0  90 81 00 08 */	stw r4, 8(r1)
/* 80791AB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80791AB8  3A B7 00 20 */	addi r21, r23, 0x20
/* 80791ABC  7E B5 2A 14 */	add r21, r21, r5
/* 80791AC0  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80791AC4  3A D7 00 28 */	addi r22, r23, 0x28
/* 80791AC8  7E D6 2A 14 */	add r22, r22, r5
/* 80791ACC  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80791AD0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80791AD4  38 80 00 00 */	li r4, 0
/* 80791AD8  38 A0 02 9B */	li r5, 0x29b
/* 80791ADC  7F 66 DB 78 */	mr r6, r27
/* 80791AE0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80791AE4  39 01 00 2C */	addi r8, r1, 0x2c
/* 80791AE8  7F 89 E3 78 */	mr r9, r28
/* 80791AEC  39 40 00 FF */	li r10, 0xff
/* 80791AF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80791AF4  4B 8B AF 9D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80791AF8  7C 79 1B 79 */	or. r25, r3, r3
/* 80791AFC  41 82 00 FC */	beq lbl_80791BF8
/* 80791B00  38 61 00 40 */	addi r3, r1, 0x40
/* 80791B04  4B BB 56 35 */	bl PSVECSquareMag
/* 80791B08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80791B0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80791B10  40 81 00 58 */	ble lbl_80791B68
/* 80791B14  FC 00 08 34 */	frsqrte f0, f1
/* 80791B18  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80791B1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80791B20  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80791B24  FC 00 00 32 */	fmul f0, f0, f0
/* 80791B28  FC 01 00 32 */	fmul f0, f1, f0
/* 80791B2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80791B30  FC 02 00 32 */	fmul f0, f2, f0
/* 80791B34  FC 44 00 32 */	fmul f2, f4, f0
/* 80791B38  FC 00 00 32 */	fmul f0, f0, f0
/* 80791B3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80791B40  FC 03 00 28 */	fsub f0, f3, f0
/* 80791B44  FC 02 00 32 */	fmul f0, f2, f0
/* 80791B48  FC 44 00 32 */	fmul f2, f4, f0
/* 80791B4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80791B50  FC 01 00 32 */	fmul f0, f1, f0
/* 80791B54  FC 03 00 28 */	fsub f0, f3, f0
/* 80791B58  FC 02 00 32 */	fmul f0, f2, f0
/* 80791B5C  FC 21 00 32 */	fmul f1, f1, f0
/* 80791B60  FC 20 08 18 */	frsp f1, f1
/* 80791B64  48 00 00 88 */	b lbl_80791BEC
lbl_80791B68:
/* 80791B68  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80791B6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80791B70  40 80 00 10 */	bge lbl_80791B80
/* 80791B74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80791B78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80791B7C  48 00 00 70 */	b lbl_80791BEC
lbl_80791B80:
/* 80791B80  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80791B84  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80791B88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80791B8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80791B90  7C 03 00 00 */	cmpw r3, r0
/* 80791B94  41 82 00 14 */	beq lbl_80791BA8
/* 80791B98  40 80 00 40 */	bge lbl_80791BD8
/* 80791B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80791BA0  41 82 00 20 */	beq lbl_80791BC0
/* 80791BA4  48 00 00 34 */	b lbl_80791BD8
lbl_80791BA8:
/* 80791BA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80791BAC  41 82 00 0C */	beq lbl_80791BB8
/* 80791BB0  38 00 00 01 */	li r0, 1
/* 80791BB4  48 00 00 28 */	b lbl_80791BDC
lbl_80791BB8:
/* 80791BB8  38 00 00 02 */	li r0, 2
/* 80791BBC  48 00 00 20 */	b lbl_80791BDC
lbl_80791BC0:
/* 80791BC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80791BC4  41 82 00 0C */	beq lbl_80791BD0
/* 80791BC8  38 00 00 05 */	li r0, 5
/* 80791BCC  48 00 00 10 */	b lbl_80791BDC
lbl_80791BD0:
/* 80791BD0  38 00 00 03 */	li r0, 3
/* 80791BD4  48 00 00 08 */	b lbl_80791BDC
lbl_80791BD8:
/* 80791BD8  38 00 00 04 */	li r0, 4
lbl_80791BDC:
/* 80791BDC  2C 00 00 01 */	cmpwi r0, 1
/* 80791BE0  40 82 00 0C */	bne lbl_80791BEC
/* 80791BE4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80791BE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80791BEC:
/* 80791BEC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80791BF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80791BF4  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80791BF8:
/* 80791BF8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80791BFC  7C 04 07 74 */	extsb r4, r0
/* 80791C00  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80791C04  38 00 00 00 */	li r0, 0
/* 80791C08  90 01 00 08 */	stw r0, 8(r1)
/* 80791C0C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80791C10  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80791C14  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80791C18  90 01 00 18 */	stw r0, 0x18(r1)
/* 80791C1C  38 80 00 00 */	li r4, 0
/* 80791C20  38 A0 02 9C */	li r5, 0x29c
/* 80791C24  7F 66 DB 78 */	mr r6, r27
/* 80791C28  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80791C2C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80791C30  7F 89 E3 78 */	mr r9, r28
/* 80791C34  39 40 00 FF */	li r10, 0xff
/* 80791C38  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80791C3C  4B 8B AE 55 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80791C40  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80791C44  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80791C48  90 01 00 28 */	stw r0, 0x28(r1)
/* 80791C4C  7F 43 D3 78 */	mr r3, r26
/* 80791C50  38 81 00 28 */	addi r4, r1, 0x28
/* 80791C54  38 A0 00 00 */	li r5, 0
/* 80791C58  38 C0 FF FF */	li r6, -1
/* 80791C5C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80791C60  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80791C64  7D 89 03 A6 */	mtctr r12
/* 80791C68  4E 80 04 21 */	bctrl 
lbl_80791C6C:
/* 80791C6C  3A A0 00 00 */	li r21, 0
/* 80791C70  3A C0 00 00 */	li r22, 0
/* 80791C74  3A 80 00 00 */	li r20, 0
/* 80791C78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80791C7C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80791C80  57 A0 10 3A */	slwi r0, r29, 2
/* 80791C84  3B 17 00 28 */	addi r24, r23, 0x28
/* 80791C88  7F 18 02 14 */	add r24, r24, r0
/* 80791C8C  3B B7 00 20 */	addi r29, r23, 0x20
/* 80791C90  7F BD 02 14 */	add r29, r29, r0
/* 80791C94  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80791C98:
/* 80791C98  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80791C9C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80791CA0  7C 05 07 74 */	extsb r5, r0
/* 80791CA4  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80791CA8  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80791CAC  38 00 00 FF */	li r0, 0xff
/* 80791CB0  90 01 00 08 */	stw r0, 8(r1)
/* 80791CB4  38 00 00 00 */	li r0, 0
/* 80791CB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80791CBC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80791CC0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80791CC4  93 01 00 18 */	stw r24, 0x18(r1)
/* 80791CC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80791CCC  38 A0 00 00 */	li r5, 0
/* 80791CD0  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80791CD4  7F 67 DB 78 */	mr r7, r27
/* 80791CD8  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80791CDC  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80791CE0  7F 8A E3 78 */	mr r10, r28
/* 80791CE4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80791CE8  4B 8B B7 E5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80791CEC  7C 7E B9 2E */	stwx r3, r30, r23
/* 80791CF0  3A B5 00 01 */	addi r21, r21, 1
/* 80791CF4  2C 15 00 03 */	cmpwi r21, 3
/* 80791CF8  3A D6 00 02 */	addi r22, r22, 2
/* 80791CFC  3A 94 00 04 */	addi r20, r20, 4
/* 80791D00  41 80 FF 98 */	blt lbl_80791C98
/* 80791D04  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80791D08  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80791D0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80791D10  7F 43 D3 78 */	mr r3, r26
/* 80791D14  38 81 00 24 */	addi r4, r1, 0x24
/* 80791D18  38 A0 00 00 */	li r5, 0
/* 80791D1C  38 C0 FF FF */	li r6, -1
/* 80791D20  81 9A 00 00 */	lwz r12, 0(r26)
/* 80791D24  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80791D28  7D 89 03 A6 */	mtctr r12
/* 80791D2C  4E 80 04 21 */	bctrl 
/* 80791D30  38 60 00 01 */	li r3, 1
/* 80791D34  48 00 00 10 */	b lbl_80791D44
lbl_80791D38:
/* 80791D38  38 00 00 00 */	li r0, 0
/* 80791D3C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80791D40  38 60 00 00 */	li r3, 0
lbl_80791D44:
/* 80791D44  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80791D48  4B BD 04 B9 */	bl _restgpr_19
/* 80791D4C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80791D50  7C 08 03 A6 */	mtlr r0
/* 80791D54  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80791D58  4E 80 00 20 */	blr 

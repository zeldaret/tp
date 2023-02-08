lbl_80832894:
/* 80832894  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80832898  7C 08 02 A6 */	mflr r0
/* 8083289C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 808328A0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 808328A4  4B B2 F9 11 */	bl _savegpr_19
/* 808328A8  7C 7E 1B 78 */	mr r30, r3
/* 808328AC  7C 9A 23 78 */	mr r26, r4
/* 808328B0  7C BB 2B 78 */	mr r27, r5
/* 808328B4  7C DC 33 78 */	mr r28, r6
/* 808328B8  3C 60 80 83 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80832DC4@ha */
/* 808328BC  3A E3 2D C4 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x80832DC4@l */
/* 808328C0  3C 60 80 83 */	lis r3, lit_3789@ha /* 0x80832CF8@ha */
/* 808328C4  3B E3 2C F8 */	addi r31, r3, lit_3789@l /* 0x80832CF8@l */
/* 808328C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808328CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808328D0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 808328D4  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 808328D8  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 808328DC  28 00 00 00 */	cmplwi r0, 0
/* 808328E0  41 82 03 A4 */	beq lbl_80832C84
/* 808328E4  7F C4 F3 78 */	mr r4, r30
/* 808328E8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 808328EC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 808328F0  7D 89 03 A6 */	mtctr r12
/* 808328F4  4E 80 04 21 */	bctrl 
/* 808328F8  2C 03 00 00 */	cmpwi r3, 0
/* 808328FC  41 82 03 88 */	beq lbl_80832C84
/* 80832900  4B 97 9C 7D */	bl dKy_darkworld_check__Fv
/* 80832904  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80832908  30 03 FF FF */	addic r0, r3, -1
/* 8083290C  7F A0 19 10 */	subfe r29, r0, r3
/* 80832910  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80832914  28 00 00 00 */	cmplwi r0, 0
/* 80832918  40 82 02 A0 */	bne lbl_80832BB8
/* 8083291C  38 00 00 01 */	li r0, 1
/* 80832920  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80832924  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80832928  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 8083292C  80 63 00 00 */	lwz r3, 0(r3)
/* 80832930  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80832934  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80832938  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083293C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80832940  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80832944  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80832948  4B B1 3B 69 */	bl PSMTXCopy
/* 8083294C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80832950  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80832954  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80832958  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8083295C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80832960  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80832964  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80832968  38 81 00 4C */	addi r4, r1, 0x4c
/* 8083296C  38 A1 00 58 */	addi r5, r1, 0x58
/* 80832970  4B B1 43 FD */	bl PSMTXMultVec
/* 80832974  38 61 00 34 */	addi r3, r1, 0x34
/* 80832978  38 81 00 58 */	addi r4, r1, 0x58
/* 8083297C  7F 65 DB 78 */	mr r5, r27
/* 80832980  4B A3 41 B5 */	bl __mi__4cXyzCFRC3Vec
/* 80832984  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80832988  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8083298C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80832990  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80832994  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80832998  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8083299C  4B A3 4C D9 */	bl cM_atan2s__Fff
/* 808329A0  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 808329A4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 808329A8  EC 20 00 32 */	fmuls f1, f0, f0
/* 808329AC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 808329B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 808329B4  EC 41 00 2A */	fadds f2, f1, f0
/* 808329B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808329BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 808329C0  40 81 00 0C */	ble lbl_808329CC
/* 808329C4  FC 00 10 34 */	frsqrte f0, f2
/* 808329C8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_808329CC:
/* 808329CC  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 808329D0  4B A3 4C A5 */	bl cM_atan2s__Fff
/* 808329D4  7C 03 00 D0 */	neg r0, r3
/* 808329D8  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 808329DC  38 80 00 00 */	li r4, 0
/* 808329E0  B0 81 00 30 */	sth r4, 0x30(r1)
/* 808329E4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 808329E8  7C 00 07 74 */	extsb r0, r0
/* 808329EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808329F0  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808329F4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 808329F8  57 A5 10 3A */	slwi r5, r29, 2
/* 808329FC  90 81 00 08 */	stw r4, 8(r1)
/* 80832A00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80832A04  3A B7 00 20 */	addi r21, r23, 0x20
/* 80832A08  7E B5 2A 14 */	add r21, r21, r5
/* 80832A0C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80832A10  3A D7 00 28 */	addi r22, r23, 0x28
/* 80832A14  7E D6 2A 14 */	add r22, r22, r5
/* 80832A18  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80832A1C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80832A20  38 80 00 00 */	li r4, 0
/* 80832A24  38 A0 02 9B */	li r5, 0x29b
/* 80832A28  7F 66 DB 78 */	mr r6, r27
/* 80832A2C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80832A30  39 01 00 2C */	addi r8, r1, 0x2c
/* 80832A34  7F 89 E3 78 */	mr r9, r28
/* 80832A38  39 40 00 FF */	li r10, 0xff
/* 80832A3C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80832A40  4B 81 A0 51 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80832A44  7C 79 1B 79 */	or. r25, r3, r3
/* 80832A48  41 82 00 FC */	beq lbl_80832B44
/* 80832A4C  38 61 00 40 */	addi r3, r1, 0x40
/* 80832A50  4B B1 46 E9 */	bl PSVECSquareMag
/* 80832A54  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80832A58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80832A5C  40 81 00 58 */	ble lbl_80832AB4
/* 80832A60  FC 00 08 34 */	frsqrte f0, f1
/* 80832A64  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80832A68  FC 44 00 32 */	fmul f2, f4, f0
/* 80832A6C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80832A70  FC 00 00 32 */	fmul f0, f0, f0
/* 80832A74  FC 01 00 32 */	fmul f0, f1, f0
/* 80832A78  FC 03 00 28 */	fsub f0, f3, f0
/* 80832A7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80832A80  FC 44 00 32 */	fmul f2, f4, f0
/* 80832A84  FC 00 00 32 */	fmul f0, f0, f0
/* 80832A88  FC 01 00 32 */	fmul f0, f1, f0
/* 80832A8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80832A90  FC 02 00 32 */	fmul f0, f2, f0
/* 80832A94  FC 44 00 32 */	fmul f2, f4, f0
/* 80832A98  FC 00 00 32 */	fmul f0, f0, f0
/* 80832A9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80832AA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80832AA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80832AA8  FC 21 00 32 */	fmul f1, f1, f0
/* 80832AAC  FC 20 08 18 */	frsp f1, f1
/* 80832AB0  48 00 00 88 */	b lbl_80832B38
lbl_80832AB4:
/* 80832AB4  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80832AB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80832ABC  40 80 00 10 */	bge lbl_80832ACC
/* 80832AC0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80832AC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80832AC8  48 00 00 70 */	b lbl_80832B38
lbl_80832ACC:
/* 80832ACC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80832AD0  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80832AD4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80832AD8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80832ADC  7C 03 00 00 */	cmpw r3, r0
/* 80832AE0  41 82 00 14 */	beq lbl_80832AF4
/* 80832AE4  40 80 00 40 */	bge lbl_80832B24
/* 80832AE8  2C 03 00 00 */	cmpwi r3, 0
/* 80832AEC  41 82 00 20 */	beq lbl_80832B0C
/* 80832AF0  48 00 00 34 */	b lbl_80832B24
lbl_80832AF4:
/* 80832AF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80832AF8  41 82 00 0C */	beq lbl_80832B04
/* 80832AFC  38 00 00 01 */	li r0, 1
/* 80832B00  48 00 00 28 */	b lbl_80832B28
lbl_80832B04:
/* 80832B04  38 00 00 02 */	li r0, 2
/* 80832B08  48 00 00 20 */	b lbl_80832B28
lbl_80832B0C:
/* 80832B0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80832B10  41 82 00 0C */	beq lbl_80832B1C
/* 80832B14  38 00 00 05 */	li r0, 5
/* 80832B18  48 00 00 10 */	b lbl_80832B28
lbl_80832B1C:
/* 80832B1C  38 00 00 03 */	li r0, 3
/* 80832B20  48 00 00 08 */	b lbl_80832B28
lbl_80832B24:
/* 80832B24  38 00 00 04 */	li r0, 4
lbl_80832B28:
/* 80832B28  2C 00 00 01 */	cmpwi r0, 1
/* 80832B2C  40 82 00 0C */	bne lbl_80832B38
/* 80832B30  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80832B34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80832B38:
/* 80832B38  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80832B3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80832B40  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80832B44:
/* 80832B44  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80832B48  7C 04 07 74 */	extsb r4, r0
/* 80832B4C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80832B50  38 00 00 00 */	li r0, 0
/* 80832B54  90 01 00 08 */	stw r0, 8(r1)
/* 80832B58  90 81 00 0C */	stw r4, 0xc(r1)
/* 80832B5C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80832B60  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80832B64  90 01 00 18 */	stw r0, 0x18(r1)
/* 80832B68  38 80 00 00 */	li r4, 0
/* 80832B6C  38 A0 02 9C */	li r5, 0x29c
/* 80832B70  7F 66 DB 78 */	mr r6, r27
/* 80832B74  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80832B78  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80832B7C  7F 89 E3 78 */	mr r9, r28
/* 80832B80  39 40 00 FF */	li r10, 0xff
/* 80832B84  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80832B88  4B 81 9F 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80832B8C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80832B90  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80832B94  90 01 00 28 */	stw r0, 0x28(r1)
/* 80832B98  7F 43 D3 78 */	mr r3, r26
/* 80832B9C  38 81 00 28 */	addi r4, r1, 0x28
/* 80832BA0  38 A0 00 00 */	li r5, 0
/* 80832BA4  38 C0 FF FF */	li r6, -1
/* 80832BA8  81 9A 00 00 */	lwz r12, 0(r26)
/* 80832BAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80832BB0  7D 89 03 A6 */	mtctr r12
/* 80832BB4  4E 80 04 21 */	bctrl 
lbl_80832BB8:
/* 80832BB8  3A A0 00 00 */	li r21, 0
/* 80832BBC  3A C0 00 00 */	li r22, 0
/* 80832BC0  3A 80 00 00 */	li r20, 0
/* 80832BC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80832BC8  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80832BCC  57 A0 10 3A */	slwi r0, r29, 2
/* 80832BD0  3B 17 00 28 */	addi r24, r23, 0x28
/* 80832BD4  7F 18 02 14 */	add r24, r24, r0
/* 80832BD8  3B B7 00 20 */	addi r29, r23, 0x20
/* 80832BDC  7F BD 02 14 */	add r29, r29, r0
/* 80832BE0  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80832BE4:
/* 80832BE4  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80832BE8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80832BEC  7C 05 07 74 */	extsb r5, r0
/* 80832BF0  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80832BF4  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80832BF8  38 00 00 FF */	li r0, 0xff
/* 80832BFC  90 01 00 08 */	stw r0, 8(r1)
/* 80832C00  38 00 00 00 */	li r0, 0
/* 80832C04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80832C08  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80832C0C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80832C10  93 01 00 18 */	stw r24, 0x18(r1)
/* 80832C14  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80832C18  38 A0 00 00 */	li r5, 0
/* 80832C1C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80832C20  7F 67 DB 78 */	mr r7, r27
/* 80832C24  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80832C28  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80832C2C  7F 8A E3 78 */	mr r10, r28
/* 80832C30  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80832C34  4B 81 A8 99 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80832C38  7C 7E B9 2E */	stwx r3, r30, r23
/* 80832C3C  3A B5 00 01 */	addi r21, r21, 1
/* 80832C40  2C 15 00 03 */	cmpwi r21, 3
/* 80832C44  3A D6 00 02 */	addi r22, r22, 2
/* 80832C48  3A 94 00 04 */	addi r20, r20, 4
/* 80832C4C  41 80 FF 98 */	blt lbl_80832BE4
/* 80832C50  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80832C54  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80832C58  90 01 00 24 */	stw r0, 0x24(r1)
/* 80832C5C  7F 43 D3 78 */	mr r3, r26
/* 80832C60  38 81 00 24 */	addi r4, r1, 0x24
/* 80832C64  38 A0 00 00 */	li r5, 0
/* 80832C68  38 C0 FF FF */	li r6, -1
/* 80832C6C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80832C70  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80832C74  7D 89 03 A6 */	mtctr r12
/* 80832C78  4E 80 04 21 */	bctrl 
/* 80832C7C  38 60 00 01 */	li r3, 1
/* 80832C80  48 00 00 10 */	b lbl_80832C90
lbl_80832C84:
/* 80832C84  38 00 00 00 */	li r0, 0
/* 80832C88  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80832C8C  38 60 00 00 */	li r3, 0
lbl_80832C90:
/* 80832C90  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80832C94  4B B2 F5 6D */	bl _restgpr_19
/* 80832C98  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80832C9C  7C 08 03 A6 */	mtlr r0
/* 80832CA0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80832CA4  4E 80 00 20 */	blr 

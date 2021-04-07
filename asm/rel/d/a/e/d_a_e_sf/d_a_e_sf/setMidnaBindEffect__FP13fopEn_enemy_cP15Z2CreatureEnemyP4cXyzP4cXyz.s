lbl_80789810:
/* 80789810  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80789814  7C 08 02 A6 */	mflr r0
/* 80789818  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8078981C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80789820  4B BD 89 95 */	bl _savegpr_19
/* 80789824  7C 7E 1B 78 */	mr r30, r3
/* 80789828  7C 9A 23 78 */	mr r26, r4
/* 8078982C  7C BB 2B 78 */	mr r27, r5
/* 80789830  7C DC 33 78 */	mr r28, r6
/* 80789834  3C 60 80 79 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80789D90@ha */
/* 80789838  3A E3 9D 90 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x80789D90@l */
/* 8078983C  3C 60 80 79 */	lis r3, lit_3908@ha /* 0x80789C38@ha */
/* 80789840  3B E3 9C 38 */	addi r31, r3, lit_3908@l /* 0x80789C38@l */
/* 80789844  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80789848  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078984C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80789850  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80789854  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 80789858  28 00 00 00 */	cmplwi r0, 0
/* 8078985C  41 82 03 A4 */	beq lbl_80789C00
/* 80789860  7F C4 F3 78 */	mr r4, r30
/* 80789864  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80789868  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8078986C  7D 89 03 A6 */	mtctr r12
/* 80789870  4E 80 04 21 */	bctrl 
/* 80789874  2C 03 00 00 */	cmpwi r3, 0
/* 80789878  41 82 03 88 */	beq lbl_80789C00
/* 8078987C  4B A2 2D 01 */	bl dKy_darkworld_check__Fv
/* 80789880  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80789884  30 03 FF FF */	addic r0, r3, -1
/* 80789888  7F A0 19 10 */	subfe r29, r0, r3
/* 8078988C  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80789890  28 00 00 00 */	cmplwi r0, 0
/* 80789894  40 82 02 A0 */	bne lbl_80789B34
/* 80789898  38 00 00 01 */	li r0, 1
/* 8078989C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807898A0  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807898A4  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 807898A8  80 63 00 00 */	lwz r3, 0(r3)
/* 807898AC  80 63 05 74 */	lwz r3, 0x574(r3)
/* 807898B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807898B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807898B8  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 807898BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807898C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807898C4  4B BB CB ED */	bl PSMTXCopy
/* 807898C8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807898CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807898D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807898D4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807898D8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807898DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807898E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807898E4  38 81 00 4C */	addi r4, r1, 0x4c
/* 807898E8  38 A1 00 58 */	addi r5, r1, 0x58
/* 807898EC  4B BB D4 81 */	bl PSMTXMultVec
/* 807898F0  38 61 00 34 */	addi r3, r1, 0x34
/* 807898F4  38 81 00 58 */	addi r4, r1, 0x58
/* 807898F8  7F 65 DB 78 */	mr r5, r27
/* 807898FC  4B AD D2 39 */	bl __mi__4cXyzCFRC3Vec
/* 80789900  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80789904  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80789908  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8078990C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80789910  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80789914  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80789918  4B AD DD 5D */	bl cM_atan2s__Fff
/* 8078991C  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80789920  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80789924  EC 20 00 32 */	fmuls f1, f0, f0
/* 80789928  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8078992C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80789930  EC 41 00 2A */	fadds f2, f1, f0
/* 80789934  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80789938  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8078993C  40 81 00 0C */	ble lbl_80789948
/* 80789940  FC 00 10 34 */	frsqrte f0, f2
/* 80789944  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80789948:
/* 80789948  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8078994C  4B AD DD 29 */	bl cM_atan2s__Fff
/* 80789950  7C 03 00 D0 */	neg r0, r3
/* 80789954  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80789958  38 80 00 00 */	li r4, 0
/* 8078995C  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80789960  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80789964  7C 00 07 74 */	extsb r0, r0
/* 80789968  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8078996C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80789970  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80789974  57 A5 10 3A */	slwi r5, r29, 2
/* 80789978  90 81 00 08 */	stw r4, 8(r1)
/* 8078997C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80789980  3A B7 00 20 */	addi r21, r23, 0x20
/* 80789984  7E B5 2A 14 */	add r21, r21, r5
/* 80789988  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8078998C  3A D7 00 28 */	addi r22, r23, 0x28
/* 80789990  7E D6 2A 14 */	add r22, r22, r5
/* 80789994  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80789998  90 81 00 18 */	stw r4, 0x18(r1)
/* 8078999C  38 80 00 00 */	li r4, 0
/* 807899A0  38 A0 02 9B */	li r5, 0x29b
/* 807899A4  7F 66 DB 78 */	mr r6, r27
/* 807899A8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 807899AC  39 01 00 2C */	addi r8, r1, 0x2c
/* 807899B0  7F 89 E3 78 */	mr r9, r28
/* 807899B4  39 40 00 FF */	li r10, 0xff
/* 807899B8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807899BC  4B 8C 30 D5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807899C0  7C 79 1B 79 */	or. r25, r3, r3
/* 807899C4  41 82 00 FC */	beq lbl_80789AC0
/* 807899C8  38 61 00 40 */	addi r3, r1, 0x40
/* 807899CC  4B BB D7 6D */	bl PSVECSquareMag
/* 807899D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807899D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807899D8  40 81 00 58 */	ble lbl_80789A30
/* 807899DC  FC 00 08 34 */	frsqrte f0, f1
/* 807899E0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807899E4  FC 44 00 32 */	fmul f2, f4, f0
/* 807899E8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807899EC  FC 00 00 32 */	fmul f0, f0, f0
/* 807899F0  FC 01 00 32 */	fmul f0, f1, f0
/* 807899F4  FC 03 00 28 */	fsub f0, f3, f0
/* 807899F8  FC 02 00 32 */	fmul f0, f2, f0
/* 807899FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80789A00  FC 00 00 32 */	fmul f0, f0, f0
/* 80789A04  FC 01 00 32 */	fmul f0, f1, f0
/* 80789A08  FC 03 00 28 */	fsub f0, f3, f0
/* 80789A0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80789A10  FC 44 00 32 */	fmul f2, f4, f0
/* 80789A14  FC 00 00 32 */	fmul f0, f0, f0
/* 80789A18  FC 01 00 32 */	fmul f0, f1, f0
/* 80789A1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80789A20  FC 02 00 32 */	fmul f0, f2, f0
/* 80789A24  FC 21 00 32 */	fmul f1, f1, f0
/* 80789A28  FC 20 08 18 */	frsp f1, f1
/* 80789A2C  48 00 00 88 */	b lbl_80789AB4
lbl_80789A30:
/* 80789A30  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80789A34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80789A38  40 80 00 10 */	bge lbl_80789A48
/* 80789A3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80789A40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80789A44  48 00 00 70 */	b lbl_80789AB4
lbl_80789A48:
/* 80789A48  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80789A4C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80789A50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80789A54  3C 00 7F 80 */	lis r0, 0x7f80
/* 80789A58  7C 03 00 00 */	cmpw r3, r0
/* 80789A5C  41 82 00 14 */	beq lbl_80789A70
/* 80789A60  40 80 00 40 */	bge lbl_80789AA0
/* 80789A64  2C 03 00 00 */	cmpwi r3, 0
/* 80789A68  41 82 00 20 */	beq lbl_80789A88
/* 80789A6C  48 00 00 34 */	b lbl_80789AA0
lbl_80789A70:
/* 80789A70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80789A74  41 82 00 0C */	beq lbl_80789A80
/* 80789A78  38 00 00 01 */	li r0, 1
/* 80789A7C  48 00 00 28 */	b lbl_80789AA4
lbl_80789A80:
/* 80789A80  38 00 00 02 */	li r0, 2
/* 80789A84  48 00 00 20 */	b lbl_80789AA4
lbl_80789A88:
/* 80789A88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80789A8C  41 82 00 0C */	beq lbl_80789A98
/* 80789A90  38 00 00 05 */	li r0, 5
/* 80789A94  48 00 00 10 */	b lbl_80789AA4
lbl_80789A98:
/* 80789A98  38 00 00 03 */	li r0, 3
/* 80789A9C  48 00 00 08 */	b lbl_80789AA4
lbl_80789AA0:
/* 80789AA0  38 00 00 04 */	li r0, 4
lbl_80789AA4:
/* 80789AA4  2C 00 00 01 */	cmpwi r0, 1
/* 80789AA8  40 82 00 0C */	bne lbl_80789AB4
/* 80789AAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80789AB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80789AB4:
/* 80789AB4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80789AB8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80789ABC  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80789AC0:
/* 80789AC0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80789AC4  7C 04 07 74 */	extsb r4, r0
/* 80789AC8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80789ACC  38 00 00 00 */	li r0, 0
/* 80789AD0  90 01 00 08 */	stw r0, 8(r1)
/* 80789AD4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80789AD8  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80789ADC  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80789AE0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80789AE4  38 80 00 00 */	li r4, 0
/* 80789AE8  38 A0 02 9C */	li r5, 0x29c
/* 80789AEC  7F 66 DB 78 */	mr r6, r27
/* 80789AF0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80789AF4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80789AF8  7F 89 E3 78 */	mr r9, r28
/* 80789AFC  39 40 00 FF */	li r10, 0xff
/* 80789B00  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80789B04  4B 8C 2F 8D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80789B08  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80789B0C  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80789B10  90 01 00 28 */	stw r0, 0x28(r1)
/* 80789B14  7F 43 D3 78 */	mr r3, r26
/* 80789B18  38 81 00 28 */	addi r4, r1, 0x28
/* 80789B1C  38 A0 00 00 */	li r5, 0
/* 80789B20  38 C0 FF FF */	li r6, -1
/* 80789B24  81 9A 00 00 */	lwz r12, 0(r26)
/* 80789B28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80789B2C  7D 89 03 A6 */	mtctr r12
/* 80789B30  4E 80 04 21 */	bctrl 
lbl_80789B34:
/* 80789B34  3A A0 00 00 */	li r21, 0
/* 80789B38  3A C0 00 00 */	li r22, 0
/* 80789B3C  3A 80 00 00 */	li r20, 0
/* 80789B40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80789B44  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80789B48  57 A0 10 3A */	slwi r0, r29, 2
/* 80789B4C  3B 17 00 28 */	addi r24, r23, 0x28
/* 80789B50  7F 18 02 14 */	add r24, r24, r0
/* 80789B54  3B B7 00 20 */	addi r29, r23, 0x20
/* 80789B58  7F BD 02 14 */	add r29, r29, r0
/* 80789B5C  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80789B60:
/* 80789B60  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80789B64  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80789B68  7C 05 07 74 */	extsb r5, r0
/* 80789B6C  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80789B70  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80789B74  38 00 00 FF */	li r0, 0xff
/* 80789B78  90 01 00 08 */	stw r0, 8(r1)
/* 80789B7C  38 00 00 00 */	li r0, 0
/* 80789B80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80789B84  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80789B88  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80789B8C  93 01 00 18 */	stw r24, 0x18(r1)
/* 80789B90  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80789B94  38 A0 00 00 */	li r5, 0
/* 80789B98  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80789B9C  7F 67 DB 78 */	mr r7, r27
/* 80789BA0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80789BA4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80789BA8  7F 8A E3 78 */	mr r10, r28
/* 80789BAC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80789BB0  4B 8C 39 1D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80789BB4  7C 7E B9 2E */	stwx r3, r30, r23
/* 80789BB8  3A B5 00 01 */	addi r21, r21, 1
/* 80789BBC  2C 15 00 03 */	cmpwi r21, 3
/* 80789BC0  3A D6 00 02 */	addi r22, r22, 2
/* 80789BC4  3A 94 00 04 */	addi r20, r20, 4
/* 80789BC8  41 80 FF 98 */	blt lbl_80789B60
/* 80789BCC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80789BD0  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80789BD4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80789BD8  7F 43 D3 78 */	mr r3, r26
/* 80789BDC  38 81 00 24 */	addi r4, r1, 0x24
/* 80789BE0  38 A0 00 00 */	li r5, 0
/* 80789BE4  38 C0 FF FF */	li r6, -1
/* 80789BE8  81 9A 00 00 */	lwz r12, 0(r26)
/* 80789BEC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80789BF0  7D 89 03 A6 */	mtctr r12
/* 80789BF4  4E 80 04 21 */	bctrl 
/* 80789BF8  38 60 00 01 */	li r3, 1
/* 80789BFC  48 00 00 10 */	b lbl_80789C0C
lbl_80789C00:
/* 80789C00  38 00 00 00 */	li r0, 0
/* 80789C04  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80789C08  38 60 00 00 */	li r3, 0
lbl_80789C0C:
/* 80789C0C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80789C10  4B BD 85 F1 */	bl _restgpr_19
/* 80789C14  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80789C18  7C 08 03 A6 */	mtlr r0
/* 80789C1C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80789C20  4E 80 00 20 */	blr 

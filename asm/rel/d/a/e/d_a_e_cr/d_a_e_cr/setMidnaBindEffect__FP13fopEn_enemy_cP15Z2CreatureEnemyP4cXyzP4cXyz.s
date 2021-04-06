lbl_80699888:
/* 80699888  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8069988C  7C 08 02 A6 */	mflr r0
/* 80699890  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80699894  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80699898  4B CC 89 1D */	bl _savegpr_19
/* 8069989C  7C 7E 1B 78 */	mr r30, r3
/* 806998A0  7C 9A 23 78 */	mr r26, r4
/* 806998A4  7C BB 2B 78 */	mr r27, r5
/* 806998A8  7C DC 33 78 */	mr r28, r6
/* 806998AC  3C 60 80 6A */	lis r3, cNullVec__6Z2Calc@ha /* 0x80699D4C@ha */
/* 806998B0  3A E3 9D 4C */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x80699D4C@l */
/* 806998B4  3C 60 80 6A */	lis r3, lit_3788@ha /* 0x80699CB0@ha */
/* 806998B8  3B E3 9C B0 */	addi r31, r3, lit_3788@l /* 0x80699CB0@l */
/* 806998BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806998C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806998C4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806998C8  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 806998CC  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 806998D0  28 00 00 00 */	cmplwi r0, 0
/* 806998D4  41 82 03 A4 */	beq lbl_80699C78
/* 806998D8  7F C4 F3 78 */	mr r4, r30
/* 806998DC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806998E0  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806998E4  7D 89 03 A6 */	mtctr r12
/* 806998E8  4E 80 04 21 */	bctrl 
/* 806998EC  2C 03 00 00 */	cmpwi r3, 0
/* 806998F0  41 82 03 88 */	beq lbl_80699C78
/* 806998F4  4B B1 2C 89 */	bl dKy_darkworld_check__Fv
/* 806998F8  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806998FC  30 03 FF FF */	addic r0, r3, -1
/* 80699900  7F A0 19 10 */	subfe r29, r0, r3
/* 80699904  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80699908  28 00 00 00 */	cmplwi r0, 0
/* 8069990C  40 82 02 A0 */	bne lbl_80699BAC
/* 80699910  38 00 00 01 */	li r0, 1
/* 80699914  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80699918  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8069991C  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 80699920  80 63 00 00 */	lwz r3, 0(r3)
/* 80699924  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80699928  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8069992C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80699930  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80699934  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80699938  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069993C  4B CA CB 75 */	bl PSMTXCopy
/* 80699940  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80699944  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80699948  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069994C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80699950  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80699954  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80699958  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8069995C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80699960  38 A1 00 58 */	addi r5, r1, 0x58
/* 80699964  4B CA D4 09 */	bl PSMTXMultVec
/* 80699968  38 61 00 34 */	addi r3, r1, 0x34
/* 8069996C  38 81 00 58 */	addi r4, r1, 0x58
/* 80699970  7F 65 DB 78 */	mr r5, r27
/* 80699974  4B BC D1 C1 */	bl __mi__4cXyzCFRC3Vec
/* 80699978  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8069997C  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80699980  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80699984  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80699988  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8069998C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80699990  4B BC DC E5 */	bl cM_atan2s__Fff
/* 80699994  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80699998  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8069999C  EC 20 00 32 */	fmuls f1, f0, f0
/* 806999A0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806999A4  EC 00 00 32 */	fmuls f0, f0, f0
/* 806999A8  EC 41 00 2A */	fadds f2, f1, f0
/* 806999AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806999B0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806999B4  40 81 00 0C */	ble lbl_806999C0
/* 806999B8  FC 00 10 34 */	frsqrte f0, f2
/* 806999BC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806999C0:
/* 806999C0  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806999C4  4B BC DC B1 */	bl cM_atan2s__Fff
/* 806999C8  7C 03 00 D0 */	neg r0, r3
/* 806999CC  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806999D0  38 80 00 00 */	li r4, 0
/* 806999D4  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806999D8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806999DC  7C 00 07 74 */	extsb r0, r0
/* 806999E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806999E4  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806999E8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806999EC  57 A5 10 3A */	slwi r5, r29, 2
/* 806999F0  90 81 00 08 */	stw r4, 8(r1)
/* 806999F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806999F8  3A B7 00 20 */	addi r21, r23, 0x20
/* 806999FC  7E B5 2A 14 */	add r21, r21, r5
/* 80699A00  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80699A04  3A D7 00 28 */	addi r22, r23, 0x28
/* 80699A08  7E D6 2A 14 */	add r22, r22, r5
/* 80699A0C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80699A10  90 81 00 18 */	stw r4, 0x18(r1)
/* 80699A14  38 80 00 00 */	li r4, 0
/* 80699A18  38 A0 02 9B */	li r5, 0x29b
/* 80699A1C  7F 66 DB 78 */	mr r6, r27
/* 80699A20  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80699A24  39 01 00 2C */	addi r8, r1, 0x2c
/* 80699A28  7F 89 E3 78 */	mr r9, r28
/* 80699A2C  39 40 00 FF */	li r10, 0xff
/* 80699A30  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80699A34  4B 9B 30 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80699A38  7C 79 1B 79 */	or. r25, r3, r3
/* 80699A3C  41 82 00 FC */	beq lbl_80699B38
/* 80699A40  38 61 00 40 */	addi r3, r1, 0x40
/* 80699A44  4B CA D6 F5 */	bl PSVECSquareMag
/* 80699A48  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80699A4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80699A50  40 81 00 58 */	ble lbl_80699AA8
/* 80699A54  FC 00 08 34 */	frsqrte f0, f1
/* 80699A58  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80699A5C  FC 44 00 32 */	fmul f2, f4, f0
/* 80699A60  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80699A64  FC 00 00 32 */	fmul f0, f0, f0
/* 80699A68  FC 01 00 32 */	fmul f0, f1, f0
/* 80699A6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80699A70  FC 02 00 32 */	fmul f0, f2, f0
/* 80699A74  FC 44 00 32 */	fmul f2, f4, f0
/* 80699A78  FC 00 00 32 */	fmul f0, f0, f0
/* 80699A7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80699A80  FC 03 00 28 */	fsub f0, f3, f0
/* 80699A84  FC 02 00 32 */	fmul f0, f2, f0
/* 80699A88  FC 44 00 32 */	fmul f2, f4, f0
/* 80699A8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80699A90  FC 01 00 32 */	fmul f0, f1, f0
/* 80699A94  FC 03 00 28 */	fsub f0, f3, f0
/* 80699A98  FC 02 00 32 */	fmul f0, f2, f0
/* 80699A9C  FC 21 00 32 */	fmul f1, f1, f0
/* 80699AA0  FC 20 08 18 */	frsp f1, f1
/* 80699AA4  48 00 00 88 */	b lbl_80699B2C
lbl_80699AA8:
/* 80699AA8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80699AAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80699AB0  40 80 00 10 */	bge lbl_80699AC0
/* 80699AB4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80699AB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80699ABC  48 00 00 70 */	b lbl_80699B2C
lbl_80699AC0:
/* 80699AC0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80699AC4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80699AC8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80699ACC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80699AD0  7C 03 00 00 */	cmpw r3, r0
/* 80699AD4  41 82 00 14 */	beq lbl_80699AE8
/* 80699AD8  40 80 00 40 */	bge lbl_80699B18
/* 80699ADC  2C 03 00 00 */	cmpwi r3, 0
/* 80699AE0  41 82 00 20 */	beq lbl_80699B00
/* 80699AE4  48 00 00 34 */	b lbl_80699B18
lbl_80699AE8:
/* 80699AE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80699AEC  41 82 00 0C */	beq lbl_80699AF8
/* 80699AF0  38 00 00 01 */	li r0, 1
/* 80699AF4  48 00 00 28 */	b lbl_80699B1C
lbl_80699AF8:
/* 80699AF8  38 00 00 02 */	li r0, 2
/* 80699AFC  48 00 00 20 */	b lbl_80699B1C
lbl_80699B00:
/* 80699B00  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80699B04  41 82 00 0C */	beq lbl_80699B10
/* 80699B08  38 00 00 05 */	li r0, 5
/* 80699B0C  48 00 00 10 */	b lbl_80699B1C
lbl_80699B10:
/* 80699B10  38 00 00 03 */	li r0, 3
/* 80699B14  48 00 00 08 */	b lbl_80699B1C
lbl_80699B18:
/* 80699B18  38 00 00 04 */	li r0, 4
lbl_80699B1C:
/* 80699B1C  2C 00 00 01 */	cmpwi r0, 1
/* 80699B20  40 82 00 0C */	bne lbl_80699B2C
/* 80699B24  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80699B28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80699B2C:
/* 80699B2C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80699B30  EC 00 00 72 */	fmuls f0, f0, f1
/* 80699B34  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80699B38:
/* 80699B38  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80699B3C  7C 04 07 74 */	extsb r4, r0
/* 80699B40  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80699B44  38 00 00 00 */	li r0, 0
/* 80699B48  90 01 00 08 */	stw r0, 8(r1)
/* 80699B4C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80699B50  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80699B54  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80699B58  90 01 00 18 */	stw r0, 0x18(r1)
/* 80699B5C  38 80 00 00 */	li r4, 0
/* 80699B60  38 A0 02 9C */	li r5, 0x29c
/* 80699B64  7F 66 DB 78 */	mr r6, r27
/* 80699B68  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80699B6C  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80699B70  7F 89 E3 78 */	mr r9, r28
/* 80699B74  39 40 00 FF */	li r10, 0xff
/* 80699B78  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80699B7C  4B 9B 2F 15 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80699B80  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80699B84  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80699B88  90 01 00 28 */	stw r0, 0x28(r1)
/* 80699B8C  7F 43 D3 78 */	mr r3, r26
/* 80699B90  38 81 00 28 */	addi r4, r1, 0x28
/* 80699B94  38 A0 00 00 */	li r5, 0
/* 80699B98  38 C0 FF FF */	li r6, -1
/* 80699B9C  81 9A 00 00 */	lwz r12, 0(r26)
/* 80699BA0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80699BA4  7D 89 03 A6 */	mtctr r12
/* 80699BA8  4E 80 04 21 */	bctrl 
lbl_80699BAC:
/* 80699BAC  3A A0 00 00 */	li r21, 0
/* 80699BB0  3A C0 00 00 */	li r22, 0
/* 80699BB4  3A 80 00 00 */	li r20, 0
/* 80699BB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80699BBC  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80699BC0  57 A0 10 3A */	slwi r0, r29, 2
/* 80699BC4  3B 17 00 28 */	addi r24, r23, 0x28
/* 80699BC8  7F 18 02 14 */	add r24, r24, r0
/* 80699BCC  3B B7 00 20 */	addi r29, r23, 0x20
/* 80699BD0  7F BD 02 14 */	add r29, r29, r0
/* 80699BD4  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80699BD8:
/* 80699BD8  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80699BDC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80699BE0  7C 05 07 74 */	extsb r5, r0
/* 80699BE4  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80699BE8  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80699BEC  38 00 00 FF */	li r0, 0xff
/* 80699BF0  90 01 00 08 */	stw r0, 8(r1)
/* 80699BF4  38 00 00 00 */	li r0, 0
/* 80699BF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80699BFC  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80699C00  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80699C04  93 01 00 18 */	stw r24, 0x18(r1)
/* 80699C08  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80699C0C  38 A0 00 00 */	li r5, 0
/* 80699C10  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80699C14  7F 67 DB 78 */	mr r7, r27
/* 80699C18  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80699C1C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80699C20  7F 8A E3 78 */	mr r10, r28
/* 80699C24  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80699C28  4B 9B 38 A5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80699C2C  7C 7E B9 2E */	stwx r3, r30, r23
/* 80699C30  3A B5 00 01 */	addi r21, r21, 1
/* 80699C34  2C 15 00 03 */	cmpwi r21, 3
/* 80699C38  3A D6 00 02 */	addi r22, r22, 2
/* 80699C3C  3A 94 00 04 */	addi r20, r20, 4
/* 80699C40  41 80 FF 98 */	blt lbl_80699BD8
/* 80699C44  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80699C48  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80699C4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80699C50  7F 43 D3 78 */	mr r3, r26
/* 80699C54  38 81 00 24 */	addi r4, r1, 0x24
/* 80699C58  38 A0 00 00 */	li r5, 0
/* 80699C5C  38 C0 FF FF */	li r6, -1
/* 80699C60  81 9A 00 00 */	lwz r12, 0(r26)
/* 80699C64  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80699C68  7D 89 03 A6 */	mtctr r12
/* 80699C6C  4E 80 04 21 */	bctrl 
/* 80699C70  38 60 00 01 */	li r3, 1
/* 80699C74  48 00 00 10 */	b lbl_80699C84
lbl_80699C78:
/* 80699C78  38 00 00 00 */	li r0, 0
/* 80699C7C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80699C80  38 60 00 00 */	li r3, 0
lbl_80699C84:
/* 80699C84  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80699C88  4B CC 85 79 */	bl _restgpr_19
/* 80699C8C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80699C90  7C 08 03 A6 */	mtlr r0
/* 80699C94  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80699C98  4E 80 00 20 */	blr 

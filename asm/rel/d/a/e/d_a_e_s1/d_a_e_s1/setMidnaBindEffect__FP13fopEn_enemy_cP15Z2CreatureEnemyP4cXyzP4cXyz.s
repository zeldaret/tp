lbl_80780960:
/* 80780960  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80780964  7C 08 02 A6 */	mflr r0
/* 80780968  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8078096C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80780970  4B BE 18 45 */	bl _savegpr_19
/* 80780974  7C 7E 1B 78 */	mr r30, r3
/* 80780978  7C 9A 23 78 */	mr r26, r4
/* 8078097C  7C BB 2B 78 */	mr r27, r5
/* 80780980  7C DC 33 78 */	mr r28, r6
/* 80780984  3C 60 80 78 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80780FA8@ha */
/* 80780988  3A E3 0F A8 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x80780FA8@l */
/* 8078098C  3C 60 80 78 */	lis r3, lit_3903@ha /* 0x80780DC4@ha */
/* 80780990  3B E3 0D C4 */	addi r31, r3, lit_3903@l /* 0x80780DC4@l */
/* 80780994  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80780998  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8078099C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807809A0  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807809A4  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 807809A8  28 00 00 00 */	cmplwi r0, 0
/* 807809AC  41 82 03 A4 */	beq lbl_80780D50
/* 807809B0  7F C4 F3 78 */	mr r4, r30
/* 807809B4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807809B8  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 807809BC  7D 89 03 A6 */	mtctr r12
/* 807809C0  4E 80 04 21 */	bctrl 
/* 807809C4  2C 03 00 00 */	cmpwi r3, 0
/* 807809C8  41 82 03 88 */	beq lbl_80780D50
/* 807809CC  4B A2 BB B1 */	bl dKy_darkworld_check__Fv
/* 807809D0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 807809D4  30 03 FF FF */	addic r0, r3, -1
/* 807809D8  7F A0 19 10 */	subfe r29, r0, r3
/* 807809DC  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 807809E0  28 00 00 00 */	cmplwi r0, 0
/* 807809E4  40 82 02 A0 */	bne lbl_80780C84
/* 807809E8  38 00 00 01 */	li r0, 1
/* 807809EC  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 807809F0  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 807809F4  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 807809F8  80 63 00 00 */	lwz r3, 0(r3)
/* 807809FC  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80780A00  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80780A04  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80780A08  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80780A0C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80780A10  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80780A14  4B BC 5A 9D */	bl PSMTXCopy
/* 80780A18  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80780A1C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80780A20  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80780A24  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80780A28  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80780A2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80780A30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80780A34  38 81 00 4C */	addi r4, r1, 0x4c
/* 80780A38  38 A1 00 58 */	addi r5, r1, 0x58
/* 80780A3C  4B BC 63 31 */	bl PSMTXMultVec
/* 80780A40  38 61 00 34 */	addi r3, r1, 0x34
/* 80780A44  38 81 00 58 */	addi r4, r1, 0x58
/* 80780A48  7F 65 DB 78 */	mr r5, r27
/* 80780A4C  4B AE 60 E9 */	bl __mi__4cXyzCFRC3Vec
/* 80780A50  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80780A54  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80780A58  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80780A5C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80780A60  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80780A64  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80780A68  4B AE 6C 0D */	bl cM_atan2s__Fff
/* 80780A6C  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80780A70  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80780A74  EC 20 00 32 */	fmuls f1, f0, f0
/* 80780A78  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80780A7C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80780A80  EC 41 00 2A */	fadds f2, f1, f0
/* 80780A84  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80780A88  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80780A8C  40 81 00 0C */	ble lbl_80780A98
/* 80780A90  FC 00 10 34 */	frsqrte f0, f2
/* 80780A94  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80780A98:
/* 80780A98  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80780A9C  4B AE 6B D9 */	bl cM_atan2s__Fff
/* 80780AA0  7C 03 00 D0 */	neg r0, r3
/* 80780AA4  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80780AA8  38 80 00 00 */	li r4, 0
/* 80780AAC  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80780AB0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80780AB4  7C 00 07 74 */	extsb r0, r0
/* 80780AB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80780ABC  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80780AC0  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80780AC4  57 A5 10 3A */	slwi r5, r29, 2
/* 80780AC8  90 81 00 08 */	stw r4, 8(r1)
/* 80780ACC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80780AD0  3A B7 00 20 */	addi r21, r23, 0x20
/* 80780AD4  7E B5 2A 14 */	add r21, r21, r5
/* 80780AD8  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80780ADC  3A D7 00 28 */	addi r22, r23, 0x28
/* 80780AE0  7E D6 2A 14 */	add r22, r22, r5
/* 80780AE4  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80780AE8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80780AEC  38 80 00 00 */	li r4, 0
/* 80780AF0  38 A0 02 9B */	li r5, 0x29b
/* 80780AF4  7F 66 DB 78 */	mr r6, r27
/* 80780AF8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80780AFC  39 01 00 2C */	addi r8, r1, 0x2c
/* 80780B00  7F 89 E3 78 */	mr r9, r28
/* 80780B04  39 40 00 FF */	li r10, 0xff
/* 80780B08  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80780B0C  4B 8C BF 85 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80780B10  7C 79 1B 79 */	or. r25, r3, r3
/* 80780B14  41 82 00 FC */	beq lbl_80780C10
/* 80780B18  38 61 00 40 */	addi r3, r1, 0x40
/* 80780B1C  4B BC 66 1D */	bl PSVECSquareMag
/* 80780B20  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80780B24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80780B28  40 81 00 58 */	ble lbl_80780B80
/* 80780B2C  FC 00 08 34 */	frsqrte f0, f1
/* 80780B30  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80780B34  FC 44 00 32 */	fmul f2, f4, f0
/* 80780B38  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80780B3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80780B40  FC 01 00 32 */	fmul f0, f1, f0
/* 80780B44  FC 03 00 28 */	fsub f0, f3, f0
/* 80780B48  FC 02 00 32 */	fmul f0, f2, f0
/* 80780B4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80780B50  FC 00 00 32 */	fmul f0, f0, f0
/* 80780B54  FC 01 00 32 */	fmul f0, f1, f0
/* 80780B58  FC 03 00 28 */	fsub f0, f3, f0
/* 80780B5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80780B60  FC 44 00 32 */	fmul f2, f4, f0
/* 80780B64  FC 00 00 32 */	fmul f0, f0, f0
/* 80780B68  FC 01 00 32 */	fmul f0, f1, f0
/* 80780B6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80780B70  FC 02 00 32 */	fmul f0, f2, f0
/* 80780B74  FC 21 00 32 */	fmul f1, f1, f0
/* 80780B78  FC 20 08 18 */	frsp f1, f1
/* 80780B7C  48 00 00 88 */	b lbl_80780C04
lbl_80780B80:
/* 80780B80  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80780B84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80780B88  40 80 00 10 */	bge lbl_80780B98
/* 80780B8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80780B90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80780B94  48 00 00 70 */	b lbl_80780C04
lbl_80780B98:
/* 80780B98  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80780B9C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80780BA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80780BA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80780BA8  7C 03 00 00 */	cmpw r3, r0
/* 80780BAC  41 82 00 14 */	beq lbl_80780BC0
/* 80780BB0  40 80 00 40 */	bge lbl_80780BF0
/* 80780BB4  2C 03 00 00 */	cmpwi r3, 0
/* 80780BB8  41 82 00 20 */	beq lbl_80780BD8
/* 80780BBC  48 00 00 34 */	b lbl_80780BF0
lbl_80780BC0:
/* 80780BC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80780BC4  41 82 00 0C */	beq lbl_80780BD0
/* 80780BC8  38 00 00 01 */	li r0, 1
/* 80780BCC  48 00 00 28 */	b lbl_80780BF4
lbl_80780BD0:
/* 80780BD0  38 00 00 02 */	li r0, 2
/* 80780BD4  48 00 00 20 */	b lbl_80780BF4
lbl_80780BD8:
/* 80780BD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80780BDC  41 82 00 0C */	beq lbl_80780BE8
/* 80780BE0  38 00 00 05 */	li r0, 5
/* 80780BE4  48 00 00 10 */	b lbl_80780BF4
lbl_80780BE8:
/* 80780BE8  38 00 00 03 */	li r0, 3
/* 80780BEC  48 00 00 08 */	b lbl_80780BF4
lbl_80780BF0:
/* 80780BF0  38 00 00 04 */	li r0, 4
lbl_80780BF4:
/* 80780BF4  2C 00 00 01 */	cmpwi r0, 1
/* 80780BF8  40 82 00 0C */	bne lbl_80780C04
/* 80780BFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80780C00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80780C04:
/* 80780C04  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80780C08  EC 00 00 72 */	fmuls f0, f0, f1
/* 80780C0C  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80780C10:
/* 80780C10  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80780C14  7C 04 07 74 */	extsb r4, r0
/* 80780C18  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80780C1C  38 00 00 00 */	li r0, 0
/* 80780C20  90 01 00 08 */	stw r0, 8(r1)
/* 80780C24  90 81 00 0C */	stw r4, 0xc(r1)
/* 80780C28  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80780C2C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80780C30  90 01 00 18 */	stw r0, 0x18(r1)
/* 80780C34  38 80 00 00 */	li r4, 0
/* 80780C38  38 A0 02 9C */	li r5, 0x29c
/* 80780C3C  7F 66 DB 78 */	mr r6, r27
/* 80780C40  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80780C44  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80780C48  7F 89 E3 78 */	mr r9, r28
/* 80780C4C  39 40 00 FF */	li r10, 0xff
/* 80780C50  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80780C54  4B 8C BE 3D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80780C58  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80780C5C  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80780C60  90 01 00 28 */	stw r0, 0x28(r1)
/* 80780C64  7F 43 D3 78 */	mr r3, r26
/* 80780C68  38 81 00 28 */	addi r4, r1, 0x28
/* 80780C6C  38 A0 00 00 */	li r5, 0
/* 80780C70  38 C0 FF FF */	li r6, -1
/* 80780C74  81 9A 00 00 */	lwz r12, 0(r26)
/* 80780C78  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80780C7C  7D 89 03 A6 */	mtctr r12
/* 80780C80  4E 80 04 21 */	bctrl 
lbl_80780C84:
/* 80780C84  3A A0 00 00 */	li r21, 0
/* 80780C88  3A C0 00 00 */	li r22, 0
/* 80780C8C  3A 80 00 00 */	li r20, 0
/* 80780C90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80780C94  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80780C98  57 A0 10 3A */	slwi r0, r29, 2
/* 80780C9C  3B 17 00 28 */	addi r24, r23, 0x28
/* 80780CA0  7F 18 02 14 */	add r24, r24, r0
/* 80780CA4  3B B7 00 20 */	addi r29, r23, 0x20
/* 80780CA8  7F BD 02 14 */	add r29, r29, r0
/* 80780CAC  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80780CB0:
/* 80780CB0  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80780CB4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80780CB8  7C 05 07 74 */	extsb r5, r0
/* 80780CBC  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80780CC0  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80780CC4  38 00 00 FF */	li r0, 0xff
/* 80780CC8  90 01 00 08 */	stw r0, 8(r1)
/* 80780CCC  38 00 00 00 */	li r0, 0
/* 80780CD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80780CD4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80780CD8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80780CDC  93 01 00 18 */	stw r24, 0x18(r1)
/* 80780CE0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80780CE4  38 A0 00 00 */	li r5, 0
/* 80780CE8  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80780CEC  7F 67 DB 78 */	mr r7, r27
/* 80780CF0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80780CF4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80780CF8  7F 8A E3 78 */	mr r10, r28
/* 80780CFC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80780D00  4B 8C C7 CD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80780D04  7C 7E B9 2E */	stwx r3, r30, r23
/* 80780D08  3A B5 00 01 */	addi r21, r21, 1
/* 80780D0C  2C 15 00 03 */	cmpwi r21, 3
/* 80780D10  3A D6 00 02 */	addi r22, r22, 2
/* 80780D14  3A 94 00 04 */	addi r20, r20, 4
/* 80780D18  41 80 FF 98 */	blt lbl_80780CB0
/* 80780D1C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80780D20  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80780D24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80780D28  7F 43 D3 78 */	mr r3, r26
/* 80780D2C  38 81 00 24 */	addi r4, r1, 0x24
/* 80780D30  38 A0 00 00 */	li r5, 0
/* 80780D34  38 C0 FF FF */	li r6, -1
/* 80780D38  81 9A 00 00 */	lwz r12, 0(r26)
/* 80780D3C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80780D40  7D 89 03 A6 */	mtctr r12
/* 80780D44  4E 80 04 21 */	bctrl 
/* 80780D48  38 60 00 01 */	li r3, 1
/* 80780D4C  48 00 00 10 */	b lbl_80780D5C
lbl_80780D50:
/* 80780D50  38 00 00 00 */	li r0, 0
/* 80780D54  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80780D58  38 60 00 00 */	li r3, 0
lbl_80780D5C:
/* 80780D5C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80780D60  4B BE 14 A1 */	bl _restgpr_19
/* 80780D64  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80780D68  7C 08 03 A6 */	mtlr r0
/* 80780D6C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80780D70  4E 80 00 20 */	blr 

lbl_807648E4:
/* 807648E4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807648E8  7C 08 02 A6 */	mflr r0
/* 807648EC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807648F0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 807648F4  4B BF D8 C0 */	b _savegpr_19
/* 807648F8  7C 7E 1B 78 */	mr r30, r3
/* 807648FC  7C 9A 23 78 */	mr r26, r4
/* 80764900  7C BB 2B 78 */	mr r27, r5
/* 80764904  7C DC 33 78 */	mr r28, r6
/* 80764908  3C 60 80 76 */	lis r3, cNullVec__6Z2Calc@ha
/* 8076490C  3A E3 4D DC */	addi r23, r3, cNullVec__6Z2Calc@l
/* 80764910  3C 60 80 76 */	lis r3, lit_3788@ha
/* 80764914  3B E3 4D 0C */	addi r31, r3, lit_3788@l
/* 80764918  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8076491C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80764920  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80764924  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 80764928  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 8076492C  28 00 00 00 */	cmplwi r0, 0
/* 80764930  41 82 03 A4 */	beq lbl_80764CD4
/* 80764934  7F C4 F3 78 */	mr r4, r30
/* 80764938  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8076493C  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80764940  7D 89 03 A6 */	mtctr r12
/* 80764944  4E 80 04 21 */	bctrl 
/* 80764948  2C 03 00 00 */	cmpwi r3, 0
/* 8076494C  41 82 03 88 */	beq lbl_80764CD4
/* 80764950  4B A4 7C 2C */	b dKy_darkworld_check__Fv
/* 80764954  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80764958  30 03 FF FF */	addic r0, r3, -1
/* 8076495C  7F A0 19 10 */	subfe r29, r0, r3
/* 80764960  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80764964  28 00 00 00 */	cmplwi r0, 0
/* 80764968  40 82 02 A0 */	bne lbl_80764C08
/* 8076496C  38 00 00 01 */	li r0, 1
/* 80764970  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80764974  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80764978  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 8076497C  80 63 00 00 */	lwz r3, 0(r3)
/* 80764980  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80764984  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80764988  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8076498C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80764990  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80764994  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80764998  4B BE 1B 18 */	b PSMTXCopy
/* 8076499C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807649A0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807649A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807649A8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807649AC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807649B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807649B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807649B8  38 81 00 4C */	addi r4, r1, 0x4c
/* 807649BC  38 A1 00 58 */	addi r5, r1, 0x58
/* 807649C0  4B BE 23 AC */	b PSMTXMultVec
/* 807649C4  38 61 00 34 */	addi r3, r1, 0x34
/* 807649C8  38 81 00 58 */	addi r4, r1, 0x58
/* 807649CC  7F 65 DB 78 */	mr r5, r27
/* 807649D0  4B B0 21 64 */	b __mi__4cXyzCFRC3Vec
/* 807649D4  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 807649D8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807649DC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807649E0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807649E4  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 807649E8  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807649EC  4B B0 2C 88 */	b cM_atan2s__Fff
/* 807649F0  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 807649F4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807649F8  EC 20 00 32 */	fmuls f1, f0, f0
/* 807649FC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80764A00  EC 00 00 32 */	fmuls f0, f0, f0
/* 80764A04  EC 41 00 2A */	fadds f2, f1, f0
/* 80764A08  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80764A0C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80764A10  40 81 00 0C */	ble lbl_80764A1C
/* 80764A14  FC 00 10 34 */	frsqrte f0, f2
/* 80764A18  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80764A1C:
/* 80764A1C  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80764A20  4B B0 2C 54 */	b cM_atan2s__Fff
/* 80764A24  7C 03 00 D0 */	neg r0, r3
/* 80764A28  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80764A2C  38 80 00 00 */	li r4, 0
/* 80764A30  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80764A34  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80764A38  7C 00 07 74 */	extsb r0, r0
/* 80764A3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80764A40  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80764A44  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80764A48  57 A5 10 3A */	slwi r5, r29, 2
/* 80764A4C  90 81 00 08 */	stw r4, 8(r1)
/* 80764A50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80764A54  3A B7 00 20 */	addi r21, r23, 0x20
/* 80764A58  7E B5 2A 14 */	add r21, r21, r5
/* 80764A5C  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80764A60  3A D7 00 28 */	addi r22, r23, 0x28
/* 80764A64  7E D6 2A 14 */	add r22, r22, r5
/* 80764A68  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80764A6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80764A70  38 80 00 00 */	li r4, 0
/* 80764A74  38 A0 02 9B */	li r5, 0x29b
/* 80764A78  7F 66 DB 78 */	mr r6, r27
/* 80764A7C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80764A80  39 01 00 2C */	addi r8, r1, 0x2c
/* 80764A84  7F 89 E3 78 */	mr r9, r28
/* 80764A88  39 40 00 FF */	li r10, 0xff
/* 80764A8C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80764A90  4B 8E 80 00 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80764A94  7C 79 1B 79 */	or. r25, r3, r3
/* 80764A98  41 82 00 FC */	beq lbl_80764B94
/* 80764A9C  38 61 00 40 */	addi r3, r1, 0x40
/* 80764AA0  4B BE 26 98 */	b PSVECSquareMag
/* 80764AA4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80764AA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80764AAC  40 81 00 58 */	ble lbl_80764B04
/* 80764AB0  FC 00 08 34 */	frsqrte f0, f1
/* 80764AB4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80764AB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80764ABC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80764AC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80764AC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80764AC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80764ACC  FC 02 00 32 */	fmul f0, f2, f0
/* 80764AD0  FC 44 00 32 */	fmul f2, f4, f0
/* 80764AD4  FC 00 00 32 */	fmul f0, f0, f0
/* 80764AD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80764ADC  FC 03 00 28 */	fsub f0, f3, f0
/* 80764AE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80764AE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80764AE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80764AEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80764AF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80764AF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80764AF8  FC 21 00 32 */	fmul f1, f1, f0
/* 80764AFC  FC 20 08 18 */	frsp f1, f1
/* 80764B00  48 00 00 88 */	b lbl_80764B88
lbl_80764B04:
/* 80764B04  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80764B08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80764B0C  40 80 00 10 */	bge lbl_80764B1C
/* 80764B10  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80764B14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80764B18  48 00 00 70 */	b lbl_80764B88
lbl_80764B1C:
/* 80764B1C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80764B20  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80764B24  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80764B28  3C 00 7F 80 */	lis r0, 0x7f80
/* 80764B2C  7C 03 00 00 */	cmpw r3, r0
/* 80764B30  41 82 00 14 */	beq lbl_80764B44
/* 80764B34  40 80 00 40 */	bge lbl_80764B74
/* 80764B38  2C 03 00 00 */	cmpwi r3, 0
/* 80764B3C  41 82 00 20 */	beq lbl_80764B5C
/* 80764B40  48 00 00 34 */	b lbl_80764B74
lbl_80764B44:
/* 80764B44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80764B48  41 82 00 0C */	beq lbl_80764B54
/* 80764B4C  38 00 00 01 */	li r0, 1
/* 80764B50  48 00 00 28 */	b lbl_80764B78
lbl_80764B54:
/* 80764B54  38 00 00 02 */	li r0, 2
/* 80764B58  48 00 00 20 */	b lbl_80764B78
lbl_80764B5C:
/* 80764B5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80764B60  41 82 00 0C */	beq lbl_80764B6C
/* 80764B64  38 00 00 05 */	li r0, 5
/* 80764B68  48 00 00 10 */	b lbl_80764B78
lbl_80764B6C:
/* 80764B6C  38 00 00 03 */	li r0, 3
/* 80764B70  48 00 00 08 */	b lbl_80764B78
lbl_80764B74:
/* 80764B74  38 00 00 04 */	li r0, 4
lbl_80764B78:
/* 80764B78  2C 00 00 01 */	cmpwi r0, 1
/* 80764B7C  40 82 00 0C */	bne lbl_80764B88
/* 80764B80  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80764B84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80764B88:
/* 80764B88  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80764B8C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80764B90  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80764B94:
/* 80764B94  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80764B98  7C 04 07 74 */	extsb r4, r0
/* 80764B9C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80764BA0  38 00 00 00 */	li r0, 0
/* 80764BA4  90 01 00 08 */	stw r0, 8(r1)
/* 80764BA8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80764BAC  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80764BB0  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80764BB4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80764BB8  38 80 00 00 */	li r4, 0
/* 80764BBC  38 A0 02 9C */	li r5, 0x29c
/* 80764BC0  7F 66 DB 78 */	mr r6, r27
/* 80764BC4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80764BC8  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80764BCC  7F 89 E3 78 */	mr r9, r28
/* 80764BD0  39 40 00 FF */	li r10, 0xff
/* 80764BD4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80764BD8  4B 8E 7E B8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80764BDC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80764BE0  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80764BE4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80764BE8  7F 43 D3 78 */	mr r3, r26
/* 80764BEC  38 81 00 28 */	addi r4, r1, 0x28
/* 80764BF0  38 A0 00 00 */	li r5, 0
/* 80764BF4  38 C0 FF FF */	li r6, -1
/* 80764BF8  81 9A 00 00 */	lwz r12, 0(r26)
/* 80764BFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80764C00  7D 89 03 A6 */	mtctr r12
/* 80764C04  4E 80 04 21 */	bctrl 
lbl_80764C08:
/* 80764C08  3A A0 00 00 */	li r21, 0
/* 80764C0C  3A C0 00 00 */	li r22, 0
/* 80764C10  3A 80 00 00 */	li r20, 0
/* 80764C14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80764C18  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80764C1C  57 A0 10 3A */	slwi r0, r29, 2
/* 80764C20  3B 17 00 28 */	addi r24, r23, 0x28
/* 80764C24  7F 18 02 14 */	add r24, r24, r0
/* 80764C28  3B B7 00 20 */	addi r29, r23, 0x20
/* 80764C2C  7F BD 02 14 */	add r29, r29, r0
/* 80764C30  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80764C34:
/* 80764C34  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80764C38  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80764C3C  7C 05 07 74 */	extsb r5, r0
/* 80764C40  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80764C44  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80764C48  38 00 00 FF */	li r0, 0xff
/* 80764C4C  90 01 00 08 */	stw r0, 8(r1)
/* 80764C50  38 00 00 00 */	li r0, 0
/* 80764C54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80764C58  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80764C5C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80764C60  93 01 00 18 */	stw r24, 0x18(r1)
/* 80764C64  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80764C68  38 A0 00 00 */	li r5, 0
/* 80764C6C  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80764C70  7F 67 DB 78 */	mr r7, r27
/* 80764C74  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80764C78  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80764C7C  7F 8A E3 78 */	mr r10, r28
/* 80764C80  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80764C84  4B 8E 88 48 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80764C88  7C 7E B9 2E */	stwx r3, r30, r23
/* 80764C8C  3A B5 00 01 */	addi r21, r21, 1
/* 80764C90  2C 15 00 03 */	cmpwi r21, 3
/* 80764C94  3A D6 00 02 */	addi r22, r22, 2
/* 80764C98  3A 94 00 04 */	addi r20, r20, 4
/* 80764C9C  41 80 FF 98 */	blt lbl_80764C34
/* 80764CA0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80764CA4  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80764CA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80764CAC  7F 43 D3 78 */	mr r3, r26
/* 80764CB0  38 81 00 24 */	addi r4, r1, 0x24
/* 80764CB4  38 A0 00 00 */	li r5, 0
/* 80764CB8  38 C0 FF FF */	li r6, -1
/* 80764CBC  81 9A 00 00 */	lwz r12, 0(r26)
/* 80764CC0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80764CC4  7D 89 03 A6 */	mtctr r12
/* 80764CC8  4E 80 04 21 */	bctrl 
/* 80764CCC  38 60 00 01 */	li r3, 1
/* 80764CD0  48 00 00 10 */	b lbl_80764CE0
lbl_80764CD4:
/* 80764CD4  38 00 00 00 */	li r0, 0
/* 80764CD8  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80764CDC  38 60 00 00 */	li r3, 0
lbl_80764CE0:
/* 80764CE0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80764CE4  4B BF D5 1C */	b _restgpr_19
/* 80764CE8  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80764CEC  7C 08 03 A6 */	mtlr r0
/* 80764CF0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80764CF4  4E 80 00 20 */	blr 

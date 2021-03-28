lbl_806909B0:
/* 806909B0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806909B4  7C 08 02 A6 */	mflr r0
/* 806909B8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806909BC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806909C0  4B CD 17 F4 */	b _savegpr_19
/* 806909C4  7C 7E 1B 78 */	mr r30, r3
/* 806909C8  7C 9A 23 78 */	mr r26, r4
/* 806909CC  7C BB 2B 78 */	mr r27, r5
/* 806909D0  7C DC 33 78 */	mr r28, r6
/* 806909D4  3C 60 80 69 */	lis r3, cNullVec__6Z2Calc@ha
/* 806909D8  3A E3 0E C4 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 806909DC  3C 60 80 69 */	lis r3, lit_3788@ha
/* 806909E0  3B E3 0D D8 */	addi r31, r3, lit_3788@l
/* 806909E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806909E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806909EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806909F0  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 806909F4  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 806909F8  28 00 00 00 */	cmplwi r0, 0
/* 806909FC  41 82 03 A4 */	beq lbl_80690DA0
/* 80690A00  7F C4 F3 78 */	mr r4, r30
/* 80690A04  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80690A08  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80690A0C  7D 89 03 A6 */	mtctr r12
/* 80690A10  4E 80 04 21 */	bctrl 
/* 80690A14  2C 03 00 00 */	cmpwi r3, 0
/* 80690A18  41 82 03 88 */	beq lbl_80690DA0
/* 80690A1C  4B B1 BB 60 */	b dKy_darkworld_check__Fv
/* 80690A20  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80690A24  30 03 FF FF */	addic r0, r3, -1
/* 80690A28  7F A0 19 10 */	subfe r29, r0, r3
/* 80690A2C  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80690A30  28 00 00 00 */	cmplwi r0, 0
/* 80690A34  40 82 02 A0 */	bne lbl_80690CD4
/* 80690A38  38 00 00 01 */	li r0, 1
/* 80690A3C  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80690A40  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80690A44  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 80690A48  80 63 00 00 */	lwz r3, 0(r3)
/* 80690A4C  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80690A50  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80690A54  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80690A58  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80690A5C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80690A60  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80690A64  4B CB 5A 4C */	b PSMTXCopy
/* 80690A68  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80690A6C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80690A70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80690A74  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80690A78  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80690A7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80690A80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80690A84  38 81 00 4C */	addi r4, r1, 0x4c
/* 80690A88  38 A1 00 58 */	addi r5, r1, 0x58
/* 80690A8C  4B CB 62 E0 */	b PSMTXMultVec
/* 80690A90  38 61 00 34 */	addi r3, r1, 0x34
/* 80690A94  38 81 00 58 */	addi r4, r1, 0x58
/* 80690A98  7F 65 DB 78 */	mr r5, r27
/* 80690A9C  4B BD 60 98 */	b __mi__4cXyzCFRC3Vec
/* 80690AA0  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80690AA4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80690AA8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80690AAC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80690AB0  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80690AB4  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80690AB8  4B BD 6B BC */	b cM_atan2s__Fff
/* 80690ABC  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80690AC0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80690AC4  EC 20 00 32 */	fmuls f1, f0, f0
/* 80690AC8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80690ACC  EC 00 00 32 */	fmuls f0, f0, f0
/* 80690AD0  EC 41 00 2A */	fadds f2, f1, f0
/* 80690AD4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80690AD8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80690ADC  40 81 00 0C */	ble lbl_80690AE8
/* 80690AE0  FC 00 10 34 */	frsqrte f0, f2
/* 80690AE4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80690AE8:
/* 80690AE8  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80690AEC  4B BD 6B 88 */	b cM_atan2s__Fff
/* 80690AF0  7C 03 00 D0 */	neg r0, r3
/* 80690AF4  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80690AF8  38 80 00 00 */	li r4, 0
/* 80690AFC  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80690B00  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80690B04  7C 00 07 74 */	extsb r0, r0
/* 80690B08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80690B0C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80690B10  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80690B14  57 A5 10 3A */	slwi r5, r29, 2
/* 80690B18  90 81 00 08 */	stw r4, 8(r1)
/* 80690B1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80690B20  3A B7 00 20 */	addi r21, r23, 0x20
/* 80690B24  7E B5 2A 14 */	add r21, r21, r5
/* 80690B28  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80690B2C  3A D7 00 28 */	addi r22, r23, 0x28
/* 80690B30  7E D6 2A 14 */	add r22, r22, r5
/* 80690B34  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80690B38  90 81 00 18 */	stw r4, 0x18(r1)
/* 80690B3C  38 80 00 00 */	li r4, 0
/* 80690B40  38 A0 02 9B */	li r5, 0x29b
/* 80690B44  7F 66 DB 78 */	mr r6, r27
/* 80690B48  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80690B4C  39 01 00 2C */	addi r8, r1, 0x2c
/* 80690B50  7F 89 E3 78 */	mr r9, r28
/* 80690B54  39 40 00 FF */	li r10, 0xff
/* 80690B58  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80690B5C  4B 9B BF 34 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80690B60  7C 79 1B 79 */	or. r25, r3, r3
/* 80690B64  41 82 00 FC */	beq lbl_80690C60
/* 80690B68  38 61 00 40 */	addi r3, r1, 0x40
/* 80690B6C  4B CB 65 CC */	b PSVECSquareMag
/* 80690B70  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80690B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80690B78  40 81 00 58 */	ble lbl_80690BD0
/* 80690B7C  FC 00 08 34 */	frsqrte f0, f1
/* 80690B80  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80690B84  FC 44 00 32 */	fmul f2, f4, f0
/* 80690B88  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80690B8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80690B90  FC 01 00 32 */	fmul f0, f1, f0
/* 80690B94  FC 03 00 28 */	fsub f0, f3, f0
/* 80690B98  FC 02 00 32 */	fmul f0, f2, f0
/* 80690B9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80690BA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80690BA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80690BA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80690BAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80690BB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80690BB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80690BB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80690BBC  FC 03 00 28 */	fsub f0, f3, f0
/* 80690BC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80690BC4  FC 21 00 32 */	fmul f1, f1, f0
/* 80690BC8  FC 20 08 18 */	frsp f1, f1
/* 80690BCC  48 00 00 88 */	b lbl_80690C54
lbl_80690BD0:
/* 80690BD0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80690BD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80690BD8  40 80 00 10 */	bge lbl_80690BE8
/* 80690BDC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80690BE0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80690BE4  48 00 00 70 */	b lbl_80690C54
lbl_80690BE8:
/* 80690BE8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80690BEC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80690BF0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80690BF4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80690BF8  7C 03 00 00 */	cmpw r3, r0
/* 80690BFC  41 82 00 14 */	beq lbl_80690C10
/* 80690C00  40 80 00 40 */	bge lbl_80690C40
/* 80690C04  2C 03 00 00 */	cmpwi r3, 0
/* 80690C08  41 82 00 20 */	beq lbl_80690C28
/* 80690C0C  48 00 00 34 */	b lbl_80690C40
lbl_80690C10:
/* 80690C10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80690C14  41 82 00 0C */	beq lbl_80690C20
/* 80690C18  38 00 00 01 */	li r0, 1
/* 80690C1C  48 00 00 28 */	b lbl_80690C44
lbl_80690C20:
/* 80690C20  38 00 00 02 */	li r0, 2
/* 80690C24  48 00 00 20 */	b lbl_80690C44
lbl_80690C28:
/* 80690C28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80690C2C  41 82 00 0C */	beq lbl_80690C38
/* 80690C30  38 00 00 05 */	li r0, 5
/* 80690C34  48 00 00 10 */	b lbl_80690C44
lbl_80690C38:
/* 80690C38  38 00 00 03 */	li r0, 3
/* 80690C3C  48 00 00 08 */	b lbl_80690C44
lbl_80690C40:
/* 80690C40  38 00 00 04 */	li r0, 4
lbl_80690C44:
/* 80690C44  2C 00 00 01 */	cmpwi r0, 1
/* 80690C48  40 82 00 0C */	bne lbl_80690C54
/* 80690C4C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80690C50  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80690C54:
/* 80690C54  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80690C58  EC 00 00 72 */	fmuls f0, f0, f1
/* 80690C5C  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_80690C60:
/* 80690C60  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80690C64  7C 04 07 74 */	extsb r4, r0
/* 80690C68  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80690C6C  38 00 00 00 */	li r0, 0
/* 80690C70  90 01 00 08 */	stw r0, 8(r1)
/* 80690C74  90 81 00 0C */	stw r4, 0xc(r1)
/* 80690C78  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80690C7C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80690C80  90 01 00 18 */	stw r0, 0x18(r1)
/* 80690C84  38 80 00 00 */	li r4, 0
/* 80690C88  38 A0 02 9C */	li r5, 0x29c
/* 80690C8C  7F 66 DB 78 */	mr r6, r27
/* 80690C90  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80690C94  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 80690C98  7F 89 E3 78 */	mr r9, r28
/* 80690C9C  39 40 00 FF */	li r10, 0xff
/* 80690CA0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80690CA4  4B 9B BD EC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80690CA8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 80690CAC  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 80690CB0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80690CB4  7F 43 D3 78 */	mr r3, r26
/* 80690CB8  38 81 00 28 */	addi r4, r1, 0x28
/* 80690CBC  38 A0 00 00 */	li r5, 0
/* 80690CC0  38 C0 FF FF */	li r6, -1
/* 80690CC4  81 9A 00 00 */	lwz r12, 0(r26)
/* 80690CC8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80690CCC  7D 89 03 A6 */	mtctr r12
/* 80690CD0  4E 80 04 21 */	bctrl 
lbl_80690CD4:
/* 80690CD4  3A A0 00 00 */	li r21, 0
/* 80690CD8  3A C0 00 00 */	li r22, 0
/* 80690CDC  3A 80 00 00 */	li r20, 0
/* 80690CE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80690CE4  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80690CE8  57 A0 10 3A */	slwi r0, r29, 2
/* 80690CEC  3B 17 00 28 */	addi r24, r23, 0x28
/* 80690CF0  7F 18 02 14 */	add r24, r24, r0
/* 80690CF4  3B B7 00 20 */	addi r29, r23, 0x20
/* 80690CF8  7F BD 02 14 */	add r29, r29, r0
/* 80690CFC  3A 77 00 30 */	addi r19, r23, 0x30
lbl_80690D00:
/* 80690D00  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80690D04  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80690D08  7C 05 07 74 */	extsb r5, r0
/* 80690D0C  7C 9E B8 2E */	lwzx r4, r30, r23
/* 80690D10  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80690D14  38 00 00 FF */	li r0, 0xff
/* 80690D18  90 01 00 08 */	stw r0, 8(r1)
/* 80690D1C  38 00 00 00 */	li r0, 0
/* 80690D20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80690D24  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80690D28  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80690D2C  93 01 00 18 */	stw r24, 0x18(r1)
/* 80690D30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80690D34  38 A0 00 00 */	li r5, 0
/* 80690D38  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80690D3C  7F 67 DB 78 */	mr r7, r27
/* 80690D40  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80690D44  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80690D48  7F 8A E3 78 */	mr r10, r28
/* 80690D4C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80690D50  4B 9B C7 7C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80690D54  7C 7E B9 2E */	stwx r3, r30, r23
/* 80690D58  3A B5 00 01 */	addi r21, r21, 1
/* 80690D5C  2C 15 00 03 */	cmpwi r21, 3
/* 80690D60  3A D6 00 02 */	addi r22, r22, 2
/* 80690D64  3A 94 00 04 */	addi r20, r20, 4
/* 80690D68  41 80 FF 98 */	blt lbl_80690D00
/* 80690D6C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 80690D70  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 80690D74  90 01 00 24 */	stw r0, 0x24(r1)
/* 80690D78  7F 43 D3 78 */	mr r3, r26
/* 80690D7C  38 81 00 24 */	addi r4, r1, 0x24
/* 80690D80  38 A0 00 00 */	li r5, 0
/* 80690D84  38 C0 FF FF */	li r6, -1
/* 80690D88  81 9A 00 00 */	lwz r12, 0(r26)
/* 80690D8C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80690D90  7D 89 03 A6 */	mtctr r12
/* 80690D94  4E 80 04 21 */	bctrl 
/* 80690D98  38 60 00 01 */	li r3, 1
/* 80690D9C  48 00 00 10 */	b lbl_80690DAC
lbl_80690DA0:
/* 80690DA0  38 00 00 00 */	li r0, 0
/* 80690DA4  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80690DA8  38 60 00 00 */	li r3, 0
lbl_80690DAC:
/* 80690DAC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80690DB0  4B CD 14 50 */	b _restgpr_19
/* 80690DB4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80690DB8  7C 08 03 A6 */	mtlr r0
/* 80690DBC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80690DC0  4E 80 00 20 */	blr 

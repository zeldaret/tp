lbl_806D0A20:
/* 806D0A20  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806D0A24  7C 08 02 A6 */	mflr r0
/* 806D0A28  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806D0A2C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806D0A30  4B C9 17 84 */	b _savegpr_19
/* 806D0A34  7C 7E 1B 78 */	mr r30, r3
/* 806D0A38  7C 9A 23 78 */	mr r26, r4
/* 806D0A3C  7C BB 2B 78 */	mr r27, r5
/* 806D0A40  7C DC 33 78 */	mr r28, r6
/* 806D0A44  3C 60 80 6D */	lis r3, cNullVec__6Z2Calc@ha
/* 806D0A48  3A E3 0F 84 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 806D0A4C  3C 60 80 6D */	lis r3, lit_3907@ha
/* 806D0A50  3B E3 0E 60 */	addi r31, r3, lit_3907@l
/* 806D0A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D0A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806D0A5C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806D0A60  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 806D0A64  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 806D0A68  28 00 00 00 */	cmplwi r0, 0
/* 806D0A6C  41 82 03 A4 */	beq lbl_806D0E10
/* 806D0A70  7F C4 F3 78 */	mr r4, r30
/* 806D0A74  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806D0A78  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806D0A7C  7D 89 03 A6 */	mtctr r12
/* 806D0A80  4E 80 04 21 */	bctrl 
/* 806D0A84  2C 03 00 00 */	cmpwi r3, 0
/* 806D0A88  41 82 03 88 */	beq lbl_806D0E10
/* 806D0A8C  4B AD BA F0 */	b dKy_darkworld_check__Fv
/* 806D0A90  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 806D0A94  30 03 FF FF */	addic r0, r3, -1
/* 806D0A98  7F A0 19 10 */	subfe r29, r0, r3
/* 806D0A9C  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 806D0AA0  28 00 00 00 */	cmplwi r0, 0
/* 806D0AA4  40 82 02 A0 */	bne lbl_806D0D44
/* 806D0AA8  38 00 00 01 */	li r0, 1
/* 806D0AAC  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806D0AB0  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 806D0AB4  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 806D0AB8  80 63 00 00 */	lwz r3, 0(r3)
/* 806D0ABC  80 63 05 74 */	lwz r3, 0x574(r3)
/* 806D0AC0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806D0AC4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806D0AC8  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 806D0ACC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806D0AD0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806D0AD4  4B C7 59 DC */	b PSMTXCopy
/* 806D0AD8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806D0ADC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806D0AE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D0AE4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806D0AE8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 806D0AEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806D0AF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806D0AF4  38 81 00 4C */	addi r4, r1, 0x4c
/* 806D0AF8  38 A1 00 58 */	addi r5, r1, 0x58
/* 806D0AFC  4B C7 62 70 */	b PSMTXMultVec
/* 806D0B00  38 61 00 34 */	addi r3, r1, 0x34
/* 806D0B04  38 81 00 58 */	addi r4, r1, 0x58
/* 806D0B08  7F 65 DB 78 */	mr r5, r27
/* 806D0B0C  4B B9 60 28 */	b __mi__4cXyzCFRC3Vec
/* 806D0B10  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 806D0B14  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806D0B18  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 806D0B1C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806D0B20  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 806D0B24  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 806D0B28  4B B9 6B 4C */	b cM_atan2s__Fff
/* 806D0B2C  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 806D0B30  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 806D0B34  EC 20 00 32 */	fmuls f1, f0, f0
/* 806D0B38  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806D0B3C  EC 00 00 32 */	fmuls f0, f0, f0
/* 806D0B40  EC 41 00 2A */	fadds f2, f1, f0
/* 806D0B44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D0B48  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806D0B4C  40 81 00 0C */	ble lbl_806D0B58
/* 806D0B50  FC 00 10 34 */	frsqrte f0, f2
/* 806D0B54  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_806D0B58:
/* 806D0B58  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 806D0B5C  4B B9 6B 18 */	b cM_atan2s__Fff
/* 806D0B60  7C 03 00 D0 */	neg r0, r3
/* 806D0B64  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 806D0B68  38 80 00 00 */	li r4, 0
/* 806D0B6C  B0 81 00 30 */	sth r4, 0x30(r1)
/* 806D0B70  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D0B74  7C 00 07 74 */	extsb r0, r0
/* 806D0B78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D0B7C  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 806D0B80  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806D0B84  57 A5 10 3A */	slwi r5, r29, 2
/* 806D0B88  90 81 00 08 */	stw r4, 8(r1)
/* 806D0B8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D0B90  3A B7 00 20 */	addi r21, r23, 0x20
/* 806D0B94  7E B5 2A 14 */	add r21, r21, r5
/* 806D0B98  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806D0B9C  3A D7 00 28 */	addi r22, r23, 0x28
/* 806D0BA0  7E D6 2A 14 */	add r22, r22, r5
/* 806D0BA4  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806D0BA8  90 81 00 18 */	stw r4, 0x18(r1)
/* 806D0BAC  38 80 00 00 */	li r4, 0
/* 806D0BB0  38 A0 02 9B */	li r5, 0x29b
/* 806D0BB4  7F 66 DB 78 */	mr r6, r27
/* 806D0BB8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806D0BBC  39 01 00 2C */	addi r8, r1, 0x2c
/* 806D0BC0  7F 89 E3 78 */	mr r9, r28
/* 806D0BC4  39 40 00 FF */	li r10, 0xff
/* 806D0BC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D0BCC  4B 97 BE C4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D0BD0  7C 79 1B 79 */	or. r25, r3, r3
/* 806D0BD4  41 82 00 FC */	beq lbl_806D0CD0
/* 806D0BD8  38 61 00 40 */	addi r3, r1, 0x40
/* 806D0BDC  4B C7 65 5C */	b PSVECSquareMag
/* 806D0BE0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806D0BE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D0BE8  40 81 00 58 */	ble lbl_806D0C40
/* 806D0BEC  FC 00 08 34 */	frsqrte f0, f1
/* 806D0BF0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806D0BF4  FC 44 00 32 */	fmul f2, f4, f0
/* 806D0BF8  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806D0BFC  FC 00 00 32 */	fmul f0, f0, f0
/* 806D0C00  FC 01 00 32 */	fmul f0, f1, f0
/* 806D0C04  FC 03 00 28 */	fsub f0, f3, f0
/* 806D0C08  FC 02 00 32 */	fmul f0, f2, f0
/* 806D0C0C  FC 44 00 32 */	fmul f2, f4, f0
/* 806D0C10  FC 00 00 32 */	fmul f0, f0, f0
/* 806D0C14  FC 01 00 32 */	fmul f0, f1, f0
/* 806D0C18  FC 03 00 28 */	fsub f0, f3, f0
/* 806D0C1C  FC 02 00 32 */	fmul f0, f2, f0
/* 806D0C20  FC 44 00 32 */	fmul f2, f4, f0
/* 806D0C24  FC 00 00 32 */	fmul f0, f0, f0
/* 806D0C28  FC 01 00 32 */	fmul f0, f1, f0
/* 806D0C2C  FC 03 00 28 */	fsub f0, f3, f0
/* 806D0C30  FC 02 00 32 */	fmul f0, f2, f0
/* 806D0C34  FC 21 00 32 */	fmul f1, f1, f0
/* 806D0C38  FC 20 08 18 */	frsp f1, f1
/* 806D0C3C  48 00 00 88 */	b lbl_806D0CC4
lbl_806D0C40:
/* 806D0C40  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806D0C44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806D0C48  40 80 00 10 */	bge lbl_806D0C58
/* 806D0C4C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D0C50  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806D0C54  48 00 00 70 */	b lbl_806D0CC4
lbl_806D0C58:
/* 806D0C58  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806D0C5C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 806D0C60  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806D0C64  3C 00 7F 80 */	lis r0, 0x7f80
/* 806D0C68  7C 03 00 00 */	cmpw r3, r0
/* 806D0C6C  41 82 00 14 */	beq lbl_806D0C80
/* 806D0C70  40 80 00 40 */	bge lbl_806D0CB0
/* 806D0C74  2C 03 00 00 */	cmpwi r3, 0
/* 806D0C78  41 82 00 20 */	beq lbl_806D0C98
/* 806D0C7C  48 00 00 34 */	b lbl_806D0CB0
lbl_806D0C80:
/* 806D0C80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D0C84  41 82 00 0C */	beq lbl_806D0C90
/* 806D0C88  38 00 00 01 */	li r0, 1
/* 806D0C8C  48 00 00 28 */	b lbl_806D0CB4
lbl_806D0C90:
/* 806D0C90  38 00 00 02 */	li r0, 2
/* 806D0C94  48 00 00 20 */	b lbl_806D0CB4
lbl_806D0C98:
/* 806D0C98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806D0C9C  41 82 00 0C */	beq lbl_806D0CA8
/* 806D0CA0  38 00 00 05 */	li r0, 5
/* 806D0CA4  48 00 00 10 */	b lbl_806D0CB4
lbl_806D0CA8:
/* 806D0CA8  38 00 00 03 */	li r0, 3
/* 806D0CAC  48 00 00 08 */	b lbl_806D0CB4
lbl_806D0CB0:
/* 806D0CB0  38 00 00 04 */	li r0, 4
lbl_806D0CB4:
/* 806D0CB4  2C 00 00 01 */	cmpwi r0, 1
/* 806D0CB8  40 82 00 0C */	bne lbl_806D0CC4
/* 806D0CBC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806D0CC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806D0CC4:
/* 806D0CC4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806D0CC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 806D0CCC  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_806D0CD0:
/* 806D0CD0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D0CD4  7C 04 07 74 */	extsb r4, r0
/* 806D0CD8  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 806D0CDC  38 00 00 00 */	li r0, 0
/* 806D0CE0  90 01 00 08 */	stw r0, 8(r1)
/* 806D0CE4  90 81 00 0C */	stw r4, 0xc(r1)
/* 806D0CE8  92 A1 00 10 */	stw r21, 0x10(r1)
/* 806D0CEC  92 C1 00 14 */	stw r22, 0x14(r1)
/* 806D0CF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 806D0CF4  38 80 00 00 */	li r4, 0
/* 806D0CF8  38 A0 02 9C */	li r5, 0x29c
/* 806D0CFC  7F 66 DB 78 */	mr r6, r27
/* 806D0D00  38 FE 01 0C */	addi r7, r30, 0x10c
/* 806D0D04  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 806D0D08  7F 89 E3 78 */	mr r9, r28
/* 806D0D0C  39 40 00 FF */	li r10, 0xff
/* 806D0D10  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D0D14  4B 97 BD 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D0D18  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 806D0D1C  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 806D0D20  90 01 00 28 */	stw r0, 0x28(r1)
/* 806D0D24  7F 43 D3 78 */	mr r3, r26
/* 806D0D28  38 81 00 28 */	addi r4, r1, 0x28
/* 806D0D2C  38 A0 00 00 */	li r5, 0
/* 806D0D30  38 C0 FF FF */	li r6, -1
/* 806D0D34  81 9A 00 00 */	lwz r12, 0(r26)
/* 806D0D38  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D0D3C  7D 89 03 A6 */	mtctr r12
/* 806D0D40  4E 80 04 21 */	bctrl 
lbl_806D0D44:
/* 806D0D44  3A A0 00 00 */	li r21, 0
/* 806D0D48  3A C0 00 00 */	li r22, 0
/* 806D0D4C  3A 80 00 00 */	li r20, 0
/* 806D0D50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806D0D54  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 806D0D58  57 A0 10 3A */	slwi r0, r29, 2
/* 806D0D5C  3B 17 00 28 */	addi r24, r23, 0x28
/* 806D0D60  7F 18 02 14 */	add r24, r24, r0
/* 806D0D64  3B B7 00 20 */	addi r29, r23, 0x20
/* 806D0D68  7F BD 02 14 */	add r29, r29, r0
/* 806D0D6C  3A 77 00 30 */	addi r19, r23, 0x30
lbl_806D0D70:
/* 806D0D70  3A F4 05 9C */	addi r23, r20, 0x59c
/* 806D0D74  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D0D78  7C 05 07 74 */	extsb r5, r0
/* 806D0D7C  7C 9E B8 2E */	lwzx r4, r30, r23
/* 806D0D80  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 806D0D84  38 00 00 FF */	li r0, 0xff
/* 806D0D88  90 01 00 08 */	stw r0, 8(r1)
/* 806D0D8C  38 00 00 00 */	li r0, 0
/* 806D0D90  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D0D94  90 A1 00 10 */	stw r5, 0x10(r1)
/* 806D0D98  93 A1 00 14 */	stw r29, 0x14(r1)
/* 806D0D9C  93 01 00 18 */	stw r24, 0x18(r1)
/* 806D0DA0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806D0DA4  38 A0 00 00 */	li r5, 0
/* 806D0DA8  7C D3 B2 2E */	lhzx r6, r19, r22
/* 806D0DAC  7F 67 DB 78 */	mr r7, r27
/* 806D0DB0  39 1E 01 0C */	addi r8, r30, 0x10c
/* 806D0DB4  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 806D0DB8  7F 8A E3 78 */	mr r10, r28
/* 806D0DBC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806D0DC0  4B 97 C7 0C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806D0DC4  7C 7E B9 2E */	stwx r3, r30, r23
/* 806D0DC8  3A B5 00 01 */	addi r21, r21, 1
/* 806D0DCC  2C 15 00 03 */	cmpwi r21, 3
/* 806D0DD0  3A D6 00 02 */	addi r22, r22, 2
/* 806D0DD4  3A 94 00 04 */	addi r20, r20, 4
/* 806D0DD8  41 80 FF 98 */	blt lbl_806D0D70
/* 806D0DDC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 806D0DE0  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 806D0DE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D0DE8  7F 43 D3 78 */	mr r3, r26
/* 806D0DEC  38 81 00 24 */	addi r4, r1, 0x24
/* 806D0DF0  38 A0 00 00 */	li r5, 0
/* 806D0DF4  38 C0 FF FF */	li r6, -1
/* 806D0DF8  81 9A 00 00 */	lwz r12, 0(r26)
/* 806D0DFC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806D0E00  7D 89 03 A6 */	mtctr r12
/* 806D0E04  4E 80 04 21 */	bctrl 
/* 806D0E08  38 60 00 01 */	li r3, 1
/* 806D0E0C  48 00 00 10 */	b lbl_806D0E1C
lbl_806D0E10:
/* 806D0E10  38 00 00 00 */	li r0, 0
/* 806D0E14  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 806D0E18  38 60 00 00 */	li r3, 0
lbl_806D0E1C:
/* 806D0E1C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 806D0E20  4B C9 13 E0 */	b _restgpr_19
/* 806D0E24  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806D0E28  7C 08 03 A6 */	mtlr r0
/* 806D0E2C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806D0E30  4E 80 00 20 */	blr 

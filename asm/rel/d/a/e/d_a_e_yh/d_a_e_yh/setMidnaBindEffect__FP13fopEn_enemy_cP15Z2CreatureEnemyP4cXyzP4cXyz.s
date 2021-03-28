lbl_80803DDC:
/* 80803DDC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80803DE0  7C 08 02 A6 */	mflr r0
/* 80803DE4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80803DE8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80803DEC  4B B5 E3 C8 */	b _savegpr_19
/* 80803DF0  7C 7E 1B 78 */	mr r30, r3
/* 80803DF4  7C 9A 23 78 */	mr r26, r4
/* 80803DF8  7C BB 2B 78 */	mr r27, r5
/* 80803DFC  7C DC 33 78 */	mr r28, r6
/* 80803E00  3C 60 80 80 */	lis r3, cNullVec__6Z2Calc@ha
/* 80803E04  3A E3 43 E8 */	addi r23, r3, cNullVec__6Z2Calc@l
/* 80803E08  3C 60 80 80 */	lis r3, lit_3902@ha
/* 80803E0C  3B E3 42 7C */	addi r31, r3, lit_3902@l
/* 80803E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80803E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80803E18  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80803E1C  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha
/* 80803E20  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)
/* 80803E24  28 00 00 00 */	cmplwi r0, 0
/* 80803E28  41 82 03 A4 */	beq lbl_808041CC
/* 80803E2C  7F C4 F3 78 */	mr r4, r30
/* 80803E30  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80803E34  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 80803E38  7D 89 03 A6 */	mtctr r12
/* 80803E3C  4E 80 04 21 */	bctrl 
/* 80803E40  2C 03 00 00 */	cmpwi r3, 0
/* 80803E44  41 82 03 88 */	beq lbl_808041CC
/* 80803E48  4B 9A 87 34 */	b dKy_darkworld_check__Fv
/* 80803E4C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80803E50  30 03 FF FF */	addic r0, r3, -1
/* 80803E54  7F A0 19 10 */	subfe r29, r0, r3
/* 80803E58  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 80803E5C  28 00 00 00 */	cmplwi r0, 0
/* 80803E60  40 82 02 A0 */	bne lbl_80804100
/* 80803E64  38 00 00 01 */	li r0, 1
/* 80803E68  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 80803E6C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha
/* 80803E70  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l
/* 80803E74  80 63 00 00 */	lwz r3, 0(r3)
/* 80803E78  80 63 05 74 */	lwz r3, 0x574(r3)
/* 80803E7C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80803E80  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80803E84  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80803E88  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80803E8C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80803E90  4B B4 26 20 */	b PSMTXCopy
/* 80803E94  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80803E98  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80803E9C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80803EA0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80803EA4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80803EA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80803EAC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80803EB0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80803EB4  38 A1 00 58 */	addi r5, r1, 0x58
/* 80803EB8  4B B4 2E B4 */	b PSMTXMultVec
/* 80803EBC  38 61 00 34 */	addi r3, r1, 0x34
/* 80803EC0  38 81 00 58 */	addi r4, r1, 0x58
/* 80803EC4  7F 65 DB 78 */	mr r5, r27
/* 80803EC8  4B A6 2C 6C */	b __mi__4cXyzCFRC3Vec
/* 80803ECC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80803ED0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80803ED4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80803ED8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80803EDC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80803EE0  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80803EE4  4B A6 37 90 */	b cM_atan2s__Fff
/* 80803EE8  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 80803EEC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80803EF0  EC 20 00 32 */	fmuls f1, f0, f0
/* 80803EF4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80803EF8  EC 00 00 32 */	fmuls f0, f0, f0
/* 80803EFC  EC 41 00 2A */	fadds f2, f1, f0
/* 80803F00  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80803F04  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80803F08  40 81 00 0C */	ble lbl_80803F14
/* 80803F0C  FC 00 10 34 */	frsqrte f0, f2
/* 80803F10  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80803F14:
/* 80803F14  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 80803F18  4B A6 37 5C */	b cM_atan2s__Fff
/* 80803F1C  7C 03 00 D0 */	neg r0, r3
/* 80803F20  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 80803F24  38 80 00 00 */	li r4, 0
/* 80803F28  B0 81 00 30 */	sth r4, 0x30(r1)
/* 80803F2C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80803F30  7C 00 07 74 */	extsb r0, r0
/* 80803F34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80803F38  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 80803F3C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80803F40  57 A5 10 3A */	slwi r5, r29, 2
/* 80803F44  90 81 00 08 */	stw r4, 8(r1)
/* 80803F48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80803F4C  3A B7 00 20 */	addi r21, r23, 0x20
/* 80803F50  7E B5 2A 14 */	add r21, r21, r5
/* 80803F54  92 A1 00 10 */	stw r21, 0x10(r1)
/* 80803F58  3A D7 00 28 */	addi r22, r23, 0x28
/* 80803F5C  7E D6 2A 14 */	add r22, r22, r5
/* 80803F60  92 C1 00 14 */	stw r22, 0x14(r1)
/* 80803F64  90 81 00 18 */	stw r4, 0x18(r1)
/* 80803F68  38 80 00 00 */	li r4, 0
/* 80803F6C  38 A0 02 9B */	li r5, 0x29b
/* 80803F70  7F 66 DB 78 */	mr r6, r27
/* 80803F74  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80803F78  39 01 00 2C */	addi r8, r1, 0x2c
/* 80803F7C  7F 89 E3 78 */	mr r9, r28
/* 80803F80  39 40 00 FF */	li r10, 0xff
/* 80803F84  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80803F88  4B 84 8B 08 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80803F8C  7C 79 1B 79 */	or. r25, r3, r3
/* 80803F90  41 82 00 FC */	beq lbl_8080408C
/* 80803F94  38 61 00 40 */	addi r3, r1, 0x40
/* 80803F98  4B B4 31 A0 */	b PSVECSquareMag
/* 80803F9C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80803FA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80803FA4  40 81 00 58 */	ble lbl_80803FFC
/* 80803FA8  FC 00 08 34 */	frsqrte f0, f1
/* 80803FAC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80803FB0  FC 44 00 32 */	fmul f2, f4, f0
/* 80803FB4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80803FB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80803FBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80803FC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80803FC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80803FC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80803FCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80803FD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80803FD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80803FD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80803FDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80803FE0  FC 00 00 32 */	fmul f0, f0, f0
/* 80803FE4  FC 01 00 32 */	fmul f0, f1, f0
/* 80803FE8  FC 03 00 28 */	fsub f0, f3, f0
/* 80803FEC  FC 02 00 32 */	fmul f0, f2, f0
/* 80803FF0  FC 21 00 32 */	fmul f1, f1, f0
/* 80803FF4  FC 20 08 18 */	frsp f1, f1
/* 80803FF8  48 00 00 88 */	b lbl_80804080
lbl_80803FFC:
/* 80803FFC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80804000  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80804004  40 80 00 10 */	bge lbl_80804014
/* 80804008  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080400C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80804010  48 00 00 70 */	b lbl_80804080
lbl_80804014:
/* 80804014  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80804018  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8080401C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80804020  3C 00 7F 80 */	lis r0, 0x7f80
/* 80804024  7C 03 00 00 */	cmpw r3, r0
/* 80804028  41 82 00 14 */	beq lbl_8080403C
/* 8080402C  40 80 00 40 */	bge lbl_8080406C
/* 80804030  2C 03 00 00 */	cmpwi r3, 0
/* 80804034  41 82 00 20 */	beq lbl_80804054
/* 80804038  48 00 00 34 */	b lbl_8080406C
lbl_8080403C:
/* 8080403C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80804040  41 82 00 0C */	beq lbl_8080404C
/* 80804044  38 00 00 01 */	li r0, 1
/* 80804048  48 00 00 28 */	b lbl_80804070
lbl_8080404C:
/* 8080404C  38 00 00 02 */	li r0, 2
/* 80804050  48 00 00 20 */	b lbl_80804070
lbl_80804054:
/* 80804054  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80804058  41 82 00 0C */	beq lbl_80804064
/* 8080405C  38 00 00 05 */	li r0, 5
/* 80804060  48 00 00 10 */	b lbl_80804070
lbl_80804064:
/* 80804064  38 00 00 03 */	li r0, 3
/* 80804068  48 00 00 08 */	b lbl_80804070
lbl_8080406C:
/* 8080406C  38 00 00 04 */	li r0, 4
lbl_80804070:
/* 80804070  2C 00 00 01 */	cmpwi r0, 1
/* 80804074  40 82 00 0C */	bne lbl_80804080
/* 80804078  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8080407C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80804080:
/* 80804080  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80804084  EC 00 00 72 */	fmuls f0, f0, f1
/* 80804088  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8080408C:
/* 8080408C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80804090  7C 04 07 74 */	extsb r4, r0
/* 80804094  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 80804098  38 00 00 00 */	li r0, 0
/* 8080409C  90 01 00 08 */	stw r0, 8(r1)
/* 808040A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 808040A4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 808040A8  92 C1 00 14 */	stw r22, 0x14(r1)
/* 808040AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 808040B0  38 80 00 00 */	li r4, 0
/* 808040B4  38 A0 02 9C */	li r5, 0x29c
/* 808040B8  7F 66 DB 78 */	mr r6, r27
/* 808040BC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 808040C0  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 808040C4  7F 89 E3 78 */	mr r9, r28
/* 808040C8  39 40 00 FF */	li r10, 0xff
/* 808040CC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808040D0  4B 84 89 C0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808040D4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 808040D8  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 808040DC  90 01 00 28 */	stw r0, 0x28(r1)
/* 808040E0  7F 43 D3 78 */	mr r3, r26
/* 808040E4  38 81 00 28 */	addi r4, r1, 0x28
/* 808040E8  38 A0 00 00 */	li r5, 0
/* 808040EC  38 C0 FF FF */	li r6, -1
/* 808040F0  81 9A 00 00 */	lwz r12, 0(r26)
/* 808040F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 808040F8  7D 89 03 A6 */	mtctr r12
/* 808040FC  4E 80 04 21 */	bctrl 
lbl_80804100:
/* 80804100  3A A0 00 00 */	li r21, 0
/* 80804104  3A C0 00 00 */	li r22, 0
/* 80804108  3A 80 00 00 */	li r20, 0
/* 8080410C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80804110  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l
/* 80804114  57 A0 10 3A */	slwi r0, r29, 2
/* 80804118  3B 17 00 28 */	addi r24, r23, 0x28
/* 8080411C  7F 18 02 14 */	add r24, r24, r0
/* 80804120  3B B7 00 20 */	addi r29, r23, 0x20
/* 80804124  7F BD 02 14 */	add r29, r29, r0
/* 80804128  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8080412C:
/* 8080412C  3A F4 05 9C */	addi r23, r20, 0x59c
/* 80804130  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80804134  7C 05 07 74 */	extsb r5, r0
/* 80804138  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8080413C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80804140  38 00 00 FF */	li r0, 0xff
/* 80804144  90 01 00 08 */	stw r0, 8(r1)
/* 80804148  38 00 00 00 */	li r0, 0
/* 8080414C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80804150  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80804154  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80804158  93 01 00 18 */	stw r24, 0x18(r1)
/* 8080415C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80804160  38 A0 00 00 */	li r5, 0
/* 80804164  7C D3 B2 2E */	lhzx r6, r19, r22
/* 80804168  7F 67 DB 78 */	mr r7, r27
/* 8080416C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80804170  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80804174  7F 8A E3 78 */	mr r10, r28
/* 80804178  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8080417C  4B 84 93 50 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80804180  7C 7E B9 2E */	stwx r3, r30, r23
/* 80804184  3A B5 00 01 */	addi r21, r21, 1
/* 80804188  2C 15 00 03 */	cmpwi r21, 3
/* 8080418C  3A D6 00 02 */	addi r22, r22, 2
/* 80804190  3A 94 00 04 */	addi r20, r20, 4
/* 80804194  41 80 FF 98 */	blt lbl_8080412C
/* 80804198  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8080419C  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 808041A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 808041A4  7F 43 D3 78 */	mr r3, r26
/* 808041A8  38 81 00 24 */	addi r4, r1, 0x24
/* 808041AC  38 A0 00 00 */	li r5, 0
/* 808041B0  38 C0 FF FF */	li r6, -1
/* 808041B4  81 9A 00 00 */	lwz r12, 0(r26)
/* 808041B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 808041BC  7D 89 03 A6 */	mtctr r12
/* 808041C0  4E 80 04 21 */	bctrl 
/* 808041C4  38 60 00 01 */	li r3, 1
/* 808041C8  48 00 00 10 */	b lbl_808041D8
lbl_808041CC:
/* 808041CC  38 00 00 00 */	li r0, 0
/* 808041D0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 808041D4  38 60 00 00 */	li r3, 0
lbl_808041D8:
/* 808041D8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 808041DC  4B B5 E0 24 */	b _restgpr_19
/* 808041E0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 808041E4  7C 08 03 A6 */	mtlr r0
/* 808041E8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 808041EC  4E 80 00 20 */	blr 

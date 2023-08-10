lbl_801A8E20:
/* 801A8E20  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 801A8E24  7C 08 02 A6 */	mflr r0
/* 801A8E28  90 01 01 74 */	stw r0, 0x174(r1)
/* 801A8E2C  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 801A8E30  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 801A8E34  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 801A8E38  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 801A8E3C  DB A1 01 40 */	stfd f29, 0x140(r1)
/* 801A8E40  F3 A1 01 48 */	psq_st f29, 328(r1), 0, 0 /* qr0 */
/* 801A8E44  39 61 01 40 */	addi r11, r1, 0x140
/* 801A8E48  48 1B 93 59 */	bl _savegpr_14
/* 801A8E4C  7C 6E 1B 78 */	mr r14, r3
/* 801A8E50  7C 99 23 78 */	mr r25, r4
/* 801A8E54  7C BA 2B 78 */	mr r26, r5
/* 801A8E58  7C DB 33 78 */	mr r27, r6
/* 801A8E5C  7C FC 3B 78 */	mr r28, r7
/* 801A8E60  7D 1D 43 78 */	mr r29, r8
/* 801A8E64  FF A0 08 90 */	fmr f29, f1
/* 801A8E68  3C 60 80 39 */	lis r3, lit_9035@ha /* 0x80394C60@ha */
/* 801A8E6C  38 83 4C 60 */	addi r4, r3, lit_9035@l /* 0x80394C60@l */
/* 801A8E70  80 64 00 00 */	lwz r3, 0(r4)
/* 801A8E74  80 04 00 04 */	lwz r0, 4(r4)
/* 801A8E78  90 61 00 18 */	stw r3, 0x18(r1)
/* 801A8E7C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A8E80  80 04 00 08 */	lwz r0, 8(r4)
/* 801A8E84  90 01 00 20 */	stw r0, 0x20(r1)
/* 801A8E88  3B C0 00 00 */	li r30, 0
/* 801A8E8C  3B E0 00 00 */	li r31, 0
/* 801A8E90  3B 00 00 00 */	li r24, 0
/* 801A8E94  3A E0 00 00 */	li r23, 0
/* 801A8E98  3A C0 00 00 */	li r22, 0
/* 801A8E9C  3A A0 00 00 */	li r21, 0
/* 801A8EA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A8EA4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A8EA8  39 E4 4E C4 */	addi r15, r4, 0x4ec4
/* 801A8EAC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8EB0  38 03 CA 54 */	addi r0, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8EB4  90 01 00 EC */	stw r0, 0xec(r1)
/* 801A8EB8  38 04 4E 00 */	addi r0, r4, 0x4e00
/* 801A8EBC  90 01 00 E8 */	stw r0, 0xe8(r1)
lbl_801A8EC0:
/* 801A8EC0  28 19 00 00 */	cmplwi r25, 0
/* 801A8EC4  41 82 00 20 */	beq lbl_801A8EE4
/* 801A8EC8  38 75 00 74 */	addi r3, r21, 0x74
/* 801A8ECC  7C 79 1A 14 */	add r3, r25, r3
/* 801A8ED0  8A 63 00 18 */	lbz r19, 0x18(r3)
/* 801A8ED4  8A 43 00 19 */	lbz r18, 0x19(r3)
/* 801A8ED8  8A 23 00 1A */	lbz r17, 0x1a(r3)
/* 801A8EDC  8A 03 00 1B */	lbz r16, 0x1b(r3)
/* 801A8EE0  48 00 00 C0 */	b lbl_801A8FA0
lbl_801A8EE4:
/* 801A8EE4  8A 8D 87 E4 */	lbz r20, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 801A8EE8  7E 94 07 74 */	extsb r20, r20
/* 801A8EEC  48 00 32 7D */	bl dKy_SunMoon_Light_Check__Fv
/* 801A8EF0  2C 03 00 01 */	cmpwi r3, 1
/* 801A8EF4  40 82 00 2C */	bne lbl_801A8F20
/* 801A8EF8  2C 1F 00 01 */	cmpwi r31, 1
/* 801A8EFC  41 81 00 24 */	bgt lbl_801A8F20
/* 801A8F00  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8F04  38 03 CA 54 */	addi r0, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8F08  7C 60 B2 14 */	add r3, r0, r22
/* 801A8F0C  8A 63 09 C4 */	lbz r19, 0x9c4(r3)
/* 801A8F10  8A 43 09 C5 */	lbz r18, 0x9c5(r3)
/* 801A8F14  8A 23 09 C6 */	lbz r17, 0x9c6(r3)
/* 801A8F18  8A 03 09 C7 */	lbz r16, 0x9c7(r3)
/* 801A8F1C  48 00 00 84 */	b lbl_801A8FA0
lbl_801A8F20:
/* 801A8F20  7D E3 7B 78 */	mr r3, r15
/* 801A8F24  7E 84 A3 78 */	mr r4, r20
/* 801A8F28  4B E7 B4 5D */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A8F2C  28 03 00 00 */	cmplwi r3, 0
/* 801A8F30  41 82 00 70 */	beq lbl_801A8FA0
/* 801A8F34  7D E3 7B 78 */	mr r3, r15
/* 801A8F38  7E 84 A3 78 */	mr r4, r20
/* 801A8F3C  4B E7 B4 49 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A8F40  81 83 00 00 */	lwz r12, 0(r3)
/* 801A8F44  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801A8F48  7D 89 03 A6 */	mtctr r12
/* 801A8F4C  4E 80 04 21 */	bctrl 
/* 801A8F50  7D E3 7B 78 */	mr r3, r15
/* 801A8F54  7E 84 A3 78 */	mr r4, r20
/* 801A8F58  4B E7 B4 2D */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A8F5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A8F60  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801A8F64  7D 89 03 A6 */	mtctr r12
/* 801A8F68  4E 80 04 21 */	bctrl 
/* 801A8F6C  7C 1F 18 00 */	cmpw r31, r3
/* 801A8F70  40 80 00 24 */	bge lbl_801A8F94
/* 801A8F74  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A8F78  38 03 CA 54 */	addi r0, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A8F7C  7C 60 B2 14 */	add r3, r0, r22
/* 801A8F80  8A 63 09 C4 */	lbz r19, 0x9c4(r3)
/* 801A8F84  8A 43 09 C5 */	lbz r18, 0x9c5(r3)
/* 801A8F88  8A 23 09 C6 */	lbz r17, 0x9c6(r3)
/* 801A8F8C  8A 03 09 C7 */	lbz r16, 0x9c7(r3)
/* 801A8F90  48 00 00 10 */	b lbl_801A8FA0
lbl_801A8F94:
/* 801A8F94  3A 60 00 00 */	li r19, 0
/* 801A8F98  7E 72 9B 78 */	mr r18, r19
/* 801A8F9C  7E 71 9B 78 */	mr r17, r19
lbl_801A8FA0:
/* 801A8FA0  48 00 31 C9 */	bl dKy_SunMoon_Light_Check__Fv
/* 801A8FA4  2C 03 00 01 */	cmpwi r3, 1
/* 801A8FA8  40 82 01 04 */	bne lbl_801A90AC
/* 801A8FAC  2C 1F 00 01 */	cmpwi r31, 1
/* 801A8FB0  41 81 00 FC */	bgt lbl_801A90AC
/* 801A8FB4  80 61 00 EC */	lwz r3, 0xec(r1)
/* 801A8FB8  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 801A8FBC  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 801A8FC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A8FC4  4C 41 13 82 */	cror 2, 1, 2
/* 801A8FC8  40 82 00 2C */	bne lbl_801A8FF4
/* 801A8FCC  C0 02 A3 B0 */	lfs f0, lit_9254(r2)
/* 801A8FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A8FD4  4C 40 13 82 */	cror 2, 0, 2
/* 801A8FD8  40 82 00 1C */	bne lbl_801A8FF4
/* 801A8FDC  2C 1F 00 00 */	cmpwi r31, 0
/* 801A8FE0  40 82 00 0C */	bne lbl_801A8FEC
/* 801A8FE4  C3 E2 A2 48 */	lfs f31, lit_4505(r2)
/* 801A8FE8  48 00 00 20 */	b lbl_801A9008
lbl_801A8FEC:
/* 801A8FEC  C3 E2 A2 4C */	lfs f31, lit_4506(r2)
/* 801A8FF0  48 00 00 18 */	b lbl_801A9008
lbl_801A8FF4:
/* 801A8FF4  2C 1F 00 00 */	cmpwi r31, 0
/* 801A8FF8  40 82 00 0C */	bne lbl_801A9004
/* 801A8FFC  C3 E2 A2 4C */	lfs f31, lit_4506(r2)
/* 801A9000  48 00 00 08 */	b lbl_801A9008
lbl_801A9004:
/* 801A9004  C3 E2 A2 48 */	lfs f31, lit_4505(r2)
lbl_801A9008:
/* 801A9008  80 61 00 E8 */	lwz r3, 0xe8(r1)
/* 801A900C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A9010  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A9014  38 84 00 27 */	addi r4, r4, 0x27
/* 801A9018  48 1B F9 7D */	bl strcmp
/* 801A901C  2C 03 00 00 */	cmpwi r3, 0
/* 801A9020  40 82 03 B0 */	bne lbl_801A93D0
/* 801A9024  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 801A9028  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A902C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A9030  3C 00 43 30 */	lis r0, 0x4330
/* 801A9034  90 01 00 40 */	stw r0, 0x40(r1)
/* 801A9038  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801A903C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801A9040  C0 02 A2 AC */	lfs f0, lit_5347(r2)
/* 801A9044  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A9048  40 80 00 08 */	bge lbl_801A9050
/* 801A904C  3A 60 00 0F */	li r19, 0xf
lbl_801A9050:
/* 801A9050  56 40 06 3E */	clrlwi r0, r18, 0x18
/* 801A9054  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A9058  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801A905C  3C 00 43 30 */	lis r0, 0x4330
/* 801A9060  90 01 00 48 */	stw r0, 0x48(r1)
/* 801A9064  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801A9068  EC 20 08 28 */	fsubs f1, f0, f1
/* 801A906C  C0 02 A3 B4 */	lfs f0, lit_9255(r2)
/* 801A9070  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A9074  40 80 00 08 */	bge lbl_801A907C
/* 801A9078  3A 40 00 11 */	li r18, 0x11
lbl_801A907C:
/* 801A907C  56 20 06 3E */	clrlwi r0, r17, 0x18
/* 801A9080  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A9084  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A9088  3C 00 43 30 */	lis r0, 0x4330
/* 801A908C  90 01 00 50 */	stw r0, 0x50(r1)
/* 801A9090  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801A9094  EC 20 08 28 */	fsubs f1, f0, f1
/* 801A9098  C0 02 A3 B8 */	lfs f0, lit_9256(r2)
/* 801A909C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A90A0  40 80 03 30 */	bge lbl_801A93D0
/* 801A90A4  3A 20 00 14 */	li r17, 0x14
/* 801A90A8  48 00 03 28 */	b lbl_801A93D0
lbl_801A90AC:
/* 801A90AC  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 801A90B0  40 82 00 14 */	bne lbl_801A90C4
/* 801A90B4  56 40 06 3F */	clrlwi. r0, r18, 0x18
/* 801A90B8  40 82 00 0C */	bne lbl_801A90C4
/* 801A90BC  56 20 06 3F */	clrlwi. r0, r17, 0x18
/* 801A90C0  41 82 03 10 */	beq lbl_801A93D0
lbl_801A90C4:
/* 801A90C4  28 19 00 00 */	cmplwi r25, 0
/* 801A90C8  41 82 00 54 */	beq lbl_801A911C
/* 801A90CC  88 99 03 80 */	lbz r4, 0x380(r25)
/* 801A90D0  7C 80 07 75 */	extsb. r0, r4
/* 801A90D4  41 80 00 48 */	blt lbl_801A911C
/* 801A90D8  7D E3 7B 78 */	mr r3, r15
/* 801A90DC  7C 84 07 74 */	extsb r4, r4
/* 801A90E0  4B E7 B2 A5 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A90E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801A90E8  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801A90EC  7D 89 03 A6 */	mtctr r12
/* 801A90F0  4E 80 04 21 */	bctrl 
/* 801A90F4  7C 74 1B 78 */	mr r20, r3
/* 801A90F8  7D E3 7B 78 */	mr r3, r15
/* 801A90FC  88 99 03 80 */	lbz r4, 0x380(r25)
/* 801A9100  7C 84 07 74 */	extsb r4, r4
/* 801A9104  4B E7 B2 81 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A9108  81 83 00 00 */	lwz r12, 0(r3)
/* 801A910C  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801A9110  7D 89 03 A6 */	mtctr r12
/* 801A9114  4E 80 04 21 */	bctrl 
/* 801A9118  48 00 00 48 */	b lbl_801A9160
lbl_801A911C:
/* 801A911C  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 801A9120  7C 84 07 74 */	extsb r4, r4
/* 801A9124  7D E3 7B 78 */	mr r3, r15
/* 801A9128  4B E7 B2 5D */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A912C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A9130  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801A9134  7D 89 03 A6 */	mtctr r12
/* 801A9138  4E 80 04 21 */	bctrl 
/* 801A913C  7C 74 1B 78 */	mr r20, r3
/* 801A9140  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 801A9144  7C 84 07 74 */	extsb r4, r4
/* 801A9148  7D E3 7B 78 */	mr r3, r15
/* 801A914C  4B E7 B2 39 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A9150  81 83 00 00 */	lwz r12, 0(r3)
/* 801A9154  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801A9158  7D 89 03 A6 */	mtctr r12
/* 801A915C  4E 80 04 21 */	bctrl 
lbl_801A9160:
/* 801A9160  28 14 00 00 */	cmplwi r20, 0
/* 801A9164  41 82 00 B0 */	beq lbl_801A9214
/* 801A9168  7C 1F 18 00 */	cmpw r31, r3
/* 801A916C  40 80 00 70 */	bge lbl_801A91DC
/* 801A9170  7E 94 BA 14 */	add r20, r20, r23
/* 801A9174  C0 14 00 00 */	lfs f0, 0(r20)
/* 801A9178  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801A917C  C0 14 00 04 */	lfs f0, 4(r20)
/* 801A9180  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A9184  C0 14 00 08 */	lfs f0, 8(r20)
/* 801A9188  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801A918C  28 19 00 00 */	cmplwi r25, 0
/* 801A9190  41 82 00 18 */	beq lbl_801A91A8
/* 801A9194  88 79 03 80 */	lbz r3, 0x380(r25)
/* 801A9198  7C 60 07 75 */	extsb. r0, r3
/* 801A919C  41 80 00 0C */	blt lbl_801A91A8
/* 801A91A0  7C 60 1B 78 */	mr r0, r3
/* 801A91A4  48 00 00 0C */	b lbl_801A91B0
lbl_801A91A8:
/* 801A91A8  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 801A91AC  7C 00 07 74 */	extsb r0, r0
lbl_801A91B0:
/* 801A91B0  7E 83 A3 78 */	mr r3, r20
/* 801A91B4  7C 04 07 74 */	extsb r4, r0
/* 801A91B8  4B FF D0 3D */	bl dKy_lightswitch_check__FP30stage_pure_lightvec_info_classc
/* 801A91BC  2C 03 00 01 */	cmpwi r3, 1
/* 801A91C0  40 82 00 14 */	bne lbl_801A91D4
/* 801A91C4  C0 22 A3 BC */	lfs f1, lit_9257(r2)
/* 801A91C8  C0 14 00 0C */	lfs f0, 0xc(r20)
/* 801A91CC  EF C1 00 32 */	fmuls f30, f1, f0
/* 801A91D0  48 00 00 58 */	b lbl_801A9228
lbl_801A91D4:
/* 801A91D4  C3 C2 A2 0C */	lfs f30, lit_4409(r2)
/* 801A91D8  48 00 00 50 */	b lbl_801A9228
lbl_801A91DC:
/* 801A91DC  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A91E0  7C 83 C2 14 */	add r4, r3, r24
/* 801A91E4  C0 04 01 D0 */	lfs f0, 0x1d0(r4)
/* 801A91E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801A91EC  C0 04 01 D4 */	lfs f0, 0x1d4(r4)
/* 801A91F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A91F4  38 18 01 D8 */	addi r0, r24, 0x1d8
/* 801A91F8  7C 03 04 2E */	lfsx f0, r3, r0
/* 801A91FC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801A9200  C0 22 A3 BC */	lfs f1, lit_9257(r2)
/* 801A9204  38 18 02 1C */	addi r0, r24, 0x21c
/* 801A9208  7C 03 04 2E */	lfsx f0, r3, r0
/* 801A920C  EF C1 00 32 */	fmuls f30, f1, f0
/* 801A9210  48 00 00 18 */	b lbl_801A9228
lbl_801A9214:
/* 801A9214  C0 02 A3 C0 */	lfs f0, lit_9258(r2)
/* 801A9218  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801A921C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A9220  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801A9224  C3 C2 A2 0C */	lfs f30, lit_4409(r2)
lbl_801A9228:
/* 801A9228  7D C3 73 78 */	mr r3, r14
/* 801A922C  38 81 00 24 */	addi r4, r1, 0x24
/* 801A9230  48 19 E1 6D */	bl PSVECSquareDistance
/* 801A9234  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A9238  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A923C  40 81 00 58 */	ble lbl_801A9294
/* 801A9240  FC 00 08 34 */	frsqrte f0, f1
/* 801A9244  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A9248  FC 44 00 32 */	fmul f2, f4, f0
/* 801A924C  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A9250  FC 00 00 32 */	fmul f0, f0, f0
/* 801A9254  FC 01 00 32 */	fmul f0, f1, f0
/* 801A9258  FC 03 00 28 */	fsub f0, f3, f0
/* 801A925C  FC 02 00 32 */	fmul f0, f2, f0
/* 801A9260  FC 44 00 32 */	fmul f2, f4, f0
/* 801A9264  FC 00 00 32 */	fmul f0, f0, f0
/* 801A9268  FC 01 00 32 */	fmul f0, f1, f0
/* 801A926C  FC 03 00 28 */	fsub f0, f3, f0
/* 801A9270  FC 02 00 32 */	fmul f0, f2, f0
/* 801A9274  FC 44 00 32 */	fmul f2, f4, f0
/* 801A9278  FC 00 00 32 */	fmul f0, f0, f0
/* 801A927C  FC 01 00 32 */	fmul f0, f1, f0
/* 801A9280  FC 03 00 28 */	fsub f0, f3, f0
/* 801A9284  FC 02 00 32 */	fmul f0, f2, f0
/* 801A9288  FC 21 00 32 */	fmul f1, f1, f0
/* 801A928C  FC 20 08 18 */	frsp f1, f1
/* 801A9290  48 00 00 88 */	b lbl_801A9318
lbl_801A9294:
/* 801A9294  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A9298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A929C  40 80 00 10 */	bge lbl_801A92AC
/* 801A92A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801A92A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801A92A8  48 00 00 70 */	b lbl_801A9318
lbl_801A92AC:
/* 801A92AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 801A92B0  80 81 00 08 */	lwz r4, 8(r1)
/* 801A92B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A92B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A92BC  7C 03 00 00 */	cmpw r3, r0
/* 801A92C0  41 82 00 14 */	beq lbl_801A92D4
/* 801A92C4  40 80 00 40 */	bge lbl_801A9304
/* 801A92C8  2C 03 00 00 */	cmpwi r3, 0
/* 801A92CC  41 82 00 20 */	beq lbl_801A92EC
/* 801A92D0  48 00 00 34 */	b lbl_801A9304
lbl_801A92D4:
/* 801A92D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A92D8  41 82 00 0C */	beq lbl_801A92E4
/* 801A92DC  38 00 00 01 */	li r0, 1
/* 801A92E0  48 00 00 28 */	b lbl_801A9308
lbl_801A92E4:
/* 801A92E4  38 00 00 02 */	li r0, 2
/* 801A92E8  48 00 00 20 */	b lbl_801A9308
lbl_801A92EC:
/* 801A92EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A92F0  41 82 00 0C */	beq lbl_801A92FC
/* 801A92F4  38 00 00 05 */	li r0, 5
/* 801A92F8  48 00 00 10 */	b lbl_801A9308
lbl_801A92FC:
/* 801A92FC  38 00 00 03 */	li r0, 3
/* 801A9300  48 00 00 08 */	b lbl_801A9308
lbl_801A9304:
/* 801A9304  38 00 00 04 */	li r0, 4
lbl_801A9308:
/* 801A9308  2C 00 00 01 */	cmpwi r0, 1
/* 801A930C  40 82 00 0C */	bne lbl_801A9318
/* 801A9310  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801A9314  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801A9318:
/* 801A9318  FF E0 08 90 */	fmr f31, f1
/* 801A931C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A9320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A9324  4C 40 13 82 */	cror 2, 0, 2
/* 801A9328  40 82 00 08 */	bne lbl_801A9330
/* 801A932C  C3 E2 A2 F0 */	lfs f31, lit_6034(r2)
lbl_801A9330:
/* 801A9330  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A9334  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 801A9338  40 81 00 0C */	ble lbl_801A9344
/* 801A933C  EC 5E F8 24 */	fdivs f2, f30, f31
/* 801A9340  48 00 00 08 */	b lbl_801A9348
lbl_801A9344:
/* 801A9344  FC 40 00 90 */	fmr f2, f0
lbl_801A9348:
/* 801A9348  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A934C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A9350  40 80 00 7C */	bge lbl_801A93CC
/* 801A9354  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 801A9358  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A935C  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A9360  3C 60 43 30 */	lis r3, 0x4330
/* 801A9364  90 61 00 50 */	stw r3, 0x50(r1)
/* 801A9368  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801A936C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9370  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A9374  FC 00 00 1E */	fctiwz f0, f0
/* 801A9378  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 801A937C  82 61 00 4C */	lwz r19, 0x4c(r1)
/* 801A9380  56 40 06 3E */	clrlwi r0, r18, 0x18
/* 801A9384  90 01 00 44 */	stw r0, 0x44(r1)
/* 801A9388  90 61 00 40 */	stw r3, 0x40(r1)
/* 801A938C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801A9390  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9394  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A9398  FC 00 00 1E */	fctiwz f0, f0
/* 801A939C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 801A93A0  82 41 00 5C */	lwz r18, 0x5c(r1)
/* 801A93A4  56 20 06 3E */	clrlwi r0, r17, 0x18
/* 801A93A8  90 01 00 64 */	stw r0, 0x64(r1)
/* 801A93AC  90 61 00 60 */	stw r3, 0x60(r1)
/* 801A93B0  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 801A93B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A93B8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A93BC  FC 00 00 1E */	fctiwz f0, f0
/* 801A93C0  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 801A93C4  82 21 00 6C */	lwz r17, 0x6c(r1)
/* 801A93C8  48 00 00 08 */	b lbl_801A93D0
lbl_801A93CC:
/* 801A93CC  C3 E2 A3 C4 */	lfs f31, lit_9259(r2)
lbl_801A93D0:
/* 801A93D0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801A93D4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 801A93D8  40 81 00 68 */	ble lbl_801A9440
/* 801A93DC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801A93E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801A93E4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801A93E8  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 801A93EC  88 01 00 34 */	lbz r0, 0x34(r1)
/* 801A93F0  98 01 00 38 */	stb r0, 0x38(r1)
/* 801A93F4  88 01 00 35 */	lbz r0, 0x35(r1)
/* 801A93F8  98 01 00 39 */	stb r0, 0x39(r1)
/* 801A93FC  88 01 00 36 */	lbz r0, 0x36(r1)
/* 801A9400  98 01 00 3A */	stb r0, 0x3a(r1)
/* 801A9404  88 01 00 37 */	lbz r0, 0x37(r1)
/* 801A9408  98 01 00 3B */	stb r0, 0x3b(r1)
/* 801A940C  88 01 00 30 */	lbz r0, 0x30(r1)
/* 801A9410  98 01 00 34 */	stb r0, 0x34(r1)
/* 801A9414  88 01 00 31 */	lbz r0, 0x31(r1)
/* 801A9418  98 01 00 35 */	stb r0, 0x35(r1)
/* 801A941C  88 01 00 32 */	lbz r0, 0x32(r1)
/* 801A9420  98 01 00 36 */	stb r0, 0x36(r1)
/* 801A9424  88 01 00 33 */	lbz r0, 0x33(r1)
/* 801A9428  98 01 00 37 */	stb r0, 0x37(r1)
/* 801A942C  9A 61 00 30 */	stb r19, 0x30(r1)
/* 801A9430  9A 41 00 31 */	stb r18, 0x31(r1)
/* 801A9434  9A 21 00 32 */	stb r17, 0x32(r1)
/* 801A9438  9A 01 00 33 */	stb r16, 0x33(r1)
/* 801A943C  48 00 00 6C */	b lbl_801A94A8
lbl_801A9440:
/* 801A9440  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801A9444  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801A9448  40 81 00 40 */	ble lbl_801A9488
/* 801A944C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801A9450  D3 E1 00 1C */	stfs f31, 0x1c(r1)
/* 801A9454  88 01 00 34 */	lbz r0, 0x34(r1)
/* 801A9458  98 01 00 38 */	stb r0, 0x38(r1)
/* 801A945C  88 01 00 35 */	lbz r0, 0x35(r1)
/* 801A9460  98 01 00 39 */	stb r0, 0x39(r1)
/* 801A9464  88 01 00 36 */	lbz r0, 0x36(r1)
/* 801A9468  98 01 00 3A */	stb r0, 0x3a(r1)
/* 801A946C  88 01 00 37 */	lbz r0, 0x37(r1)
/* 801A9470  98 01 00 3B */	stb r0, 0x3b(r1)
/* 801A9474  9A 61 00 34 */	stb r19, 0x34(r1)
/* 801A9478  9A 41 00 35 */	stb r18, 0x35(r1)
/* 801A947C  9A 21 00 36 */	stb r17, 0x36(r1)
/* 801A9480  9A 01 00 37 */	stb r16, 0x37(r1)
/* 801A9484  48 00 00 24 */	b lbl_801A94A8
lbl_801A9488:
/* 801A9488  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801A948C  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 801A9490  40 81 00 18 */	ble lbl_801A94A8
/* 801A9494  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 801A9498  9A 61 00 38 */	stb r19, 0x38(r1)
/* 801A949C  9A 41 00 39 */	stb r18, 0x39(r1)
/* 801A94A0  9A 21 00 3A */	stb r17, 0x3a(r1)
/* 801A94A4  9A 01 00 3B */	stb r16, 0x3b(r1)
lbl_801A94A8:
/* 801A94A8  3B FF 00 01 */	addi r31, r31, 1
/* 801A94AC  2C 1F 00 06 */	cmpwi r31, 6
/* 801A94B0  3B 18 00 E8 */	addi r24, r24, 0xe8
/* 801A94B4  3A F7 00 20 */	addi r23, r23, 0x20
/* 801A94B8  3A D6 00 4C */	addi r22, r22, 0x4c
/* 801A94BC  3A B5 00 74 */	addi r21, r21, 0x74
/* 801A94C0  41 80 FA 00 */	blt lbl_801A8EC0
/* 801A94C4  38 00 00 00 */	li r0, 0
/* 801A94C8  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801A94CC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801A94D0  B0 01 00 14 */	sth r0, 0x14(r1)
/* 801A94D4  38 60 00 00 */	li r3, 0
/* 801A94D8  38 A1 00 18 */	addi r5, r1, 0x18
/* 801A94DC  C0 02 A3 C0 */	lfs f0, lit_9258(r2)
/* 801A94E0  38 00 00 03 */	li r0, 3
/* 801A94E4  7C 09 03 A6 */	mtctr r0
lbl_801A94E8:
/* 801A94E8  7C 25 1C 2E */	lfsx f1, r5, r3
/* 801A94EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A94F0  40 80 00 10 */	bge lbl_801A9500
/* 801A94F4  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 801A94F8  38 04 00 01 */	addi r0, r4, 1
/* 801A94FC  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_801A9500:
/* 801A9500  38 63 00 04 */	addi r3, r3, 4
/* 801A9504  42 00 FF E4 */	bdnz lbl_801A94E8
/* 801A9508  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801A950C  C0 02 A3 C0 */	lfs f0, lit_9258(r2)
/* 801A9510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A9514  40 80 00 98 */	bge lbl_801A95AC
/* 801A9518  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801A951C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801A9520  3C 60 80 3C */	lis r3, parcent_tabel@ha /* 0x803BC0DC@ha */
/* 801A9524  38 63 C0 DC */	addi r3, r3, parcent_tabel@l /* 0x803BC0DC@l */
/* 801A9528  7C 43 04 2E */	lfsx f2, r3, r0
/* 801A952C  88 01 00 30 */	lbz r0, 0x30(r1)
/* 801A9530  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A9534  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801A9538  3C 60 43 30 */	lis r3, 0x4330
/* 801A953C  90 61 00 68 */	stw r3, 0x68(r1)
/* 801A9540  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 801A9544  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9548  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A954C  FC 00 00 1E */	fctiwz f0, f0
/* 801A9550  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 801A9554  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801A9558  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801A955C  88 01 00 31 */	lbz r0, 0x31(r1)
/* 801A9560  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801A9564  90 61 00 58 */	stw r3, 0x58(r1)
/* 801A9568  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801A956C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9570  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A9574  FC 00 00 1E */	fctiwz f0, f0
/* 801A9578  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 801A957C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A9580  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801A9584  88 01 00 32 */	lbz r0, 0x32(r1)
/* 801A9588  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801A958C  90 61 00 48 */	stw r3, 0x48(r1)
/* 801A9590  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801A9594  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9598  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A959C  FC 00 00 1E */	fctiwz f0, f0
/* 801A95A0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801A95A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A95A8  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_801A95AC:
/* 801A95AC  38 60 00 04 */	li r3, 4
/* 801A95B0  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801A95B4  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801A95B8  3C 80 80 3C */	lis r4, parcent_tabel@ha /* 0x803BC0DC@ha */
/* 801A95BC  38 04 C0 DC */	addi r0, r4, parcent_tabel@l /* 0x803BC0DC@l */
/* 801A95C0  7C E0 2A 14 */	add r7, r0, r5
/* 801A95C4  38 C1 00 18 */	addi r6, r1, 0x18
/* 801A95C8  C0 42 A3 C0 */	lfs f2, lit_9258(r2)
/* 801A95CC  38 00 00 02 */	li r0, 2
/* 801A95D0  7C 09 03 A6 */	mtctr r0
lbl_801A95D4:
/* 801A95D4  7C 06 1C 2E */	lfsx f0, r6, r3
/* 801A95D8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 801A95DC  40 80 00 A8 */	bge lbl_801A9684
/* 801A95E0  7C 67 1C 2E */	lfsx f3, r7, r3
/* 801A95E4  A8 81 00 10 */	lha r4, 0x10(r1)
/* 801A95E8  39 01 00 30 */	addi r8, r1, 0x30
/* 801A95EC  7D 08 1A 14 */	add r8, r8, r3
/* 801A95F0  88 08 00 00 */	lbz r0, 0(r8)
/* 801A95F4  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A95F8  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801A95FC  3C A0 43 30 */	lis r5, 0x4330
/* 801A9600  90 A1 00 68 */	stw r5, 0x68(r1)
/* 801A9604  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 801A9608  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A960C  EC 03 00 32 */	fmuls f0, f3, f0
/* 801A9610  FC 00 00 1E */	fctiwz f0, f0
/* 801A9614  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 801A9618  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801A961C  7C 04 02 14 */	add r0, r4, r0
/* 801A9620  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801A9624  A8 81 00 12 */	lha r4, 0x12(r1)
/* 801A9628  88 08 00 01 */	lbz r0, 1(r8)
/* 801A962C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801A9630  90 A1 00 58 */	stw r5, 0x58(r1)
/* 801A9634  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801A9638  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A963C  EC 03 00 32 */	fmuls f0, f3, f0
/* 801A9640  FC 00 00 1E */	fctiwz f0, f0
/* 801A9644  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 801A9648  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A964C  7C 04 02 14 */	add r0, r4, r0
/* 801A9650  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801A9654  A8 81 00 14 */	lha r4, 0x14(r1)
/* 801A9658  88 08 00 02 */	lbz r0, 2(r8)
/* 801A965C  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801A9660  90 A1 00 48 */	stw r5, 0x48(r1)
/* 801A9664  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801A9668  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A966C  EC 03 00 32 */	fmuls f0, f3, f0
/* 801A9670  FC 00 00 1E */	fctiwz f0, f0
/* 801A9674  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801A9678  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A967C  7C 04 02 14 */	add r0, r4, r0
/* 801A9680  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_801A9684:
/* 801A9684  38 63 00 04 */	addi r3, r3, 4
/* 801A9688  42 00 FF 4C */	bdnz lbl_801A95D4
/* 801A968C  38 61 00 10 */	addi r3, r1, 0x10
/* 801A9690  4B FF F5 75 */	bl NewAmbColGet__FP11_GXColorS10
/* 801A9694  90 61 00 0C */	stw r3, 0xc(r1)
/* 801A9698  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801A969C  98 1B 00 00 */	stb r0, 0(r27)
/* 801A96A0  88 01 00 0D */	lbz r0, 0xd(r1)
/* 801A96A4  98 1B 00 01 */	stb r0, 1(r27)
/* 801A96A8  88 01 00 0E */	lbz r0, 0xe(r1)
/* 801A96AC  98 1B 00 02 */	stb r0, 2(r27)
/* 801A96B0  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801A96B4  98 1B 00 03 */	stb r0, 3(r27)
/* 801A96B8  C0 82 A2 F8 */	lfs f4, lit_6036(r2)
/* 801A96BC  88 1A 00 00 */	lbz r0, 0(r26)
/* 801A96C0  C8 62 A2 80 */	lfd f3, lit_4964(r2)
/* 801A96C4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801A96C8  3C C0 43 30 */	lis r6, 0x4330
/* 801A96CC  90 C1 00 68 */	stw r6, 0x68(r1)
/* 801A96D0  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 801A96D4  EC 00 18 28 */	fsubs f0, f0, f3
/* 801A96D8  EC 24 00 32 */	fmuls f1, f4, f0
/* 801A96DC  C0 42 A3 8C */	lfs f2, lit_7027(r2)
/* 801A96E0  88 1B 00 00 */	lbz r0, 0(r27)
/* 801A96E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 801A96E8  90 C1 00 60 */	stw r6, 0x60(r1)
/* 801A96EC  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 801A96F0  EC 00 18 28 */	fsubs f0, f0, f3
/* 801A96F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A96F8  EC 01 00 2A */	fadds f0, f1, f0
/* 801A96FC  FC 00 00 1E */	fctiwz f0, f0
/* 801A9700  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 801A9704  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 801A9708  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 801A970C  88 1A 00 01 */	lbz r0, 1(r26)
/* 801A9710  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A9714  90 C1 00 50 */	stw r6, 0x50(r1)
/* 801A9718  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 801A971C  EC 00 18 28 */	fsubs f0, f0, f3
/* 801A9720  EC 24 00 32 */	fmuls f1, f4, f0
/* 801A9724  88 1B 00 01 */	lbz r0, 1(r27)
/* 801A9728  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801A972C  90 C1 00 48 */	stw r6, 0x48(r1)
/* 801A9730  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801A9734  EC 00 18 28 */	fsubs f0, f0, f3
/* 801A9738  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A973C  EC 01 00 2A */	fadds f0, f1, f0
/* 801A9740  FC 00 00 1E */	fctiwz f0, f0
/* 801A9744  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 801A9748  80 81 00 44 */	lwz r4, 0x44(r1)
/* 801A974C  B0 81 00 12 */	sth r4, 0x12(r1)
/* 801A9750  88 1A 00 02 */	lbz r0, 2(r26)
/* 801A9754  90 01 00 74 */	stw r0, 0x74(r1)
/* 801A9758  90 C1 00 70 */	stw r6, 0x70(r1)
/* 801A975C  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 801A9760  EC 00 18 28 */	fsubs f0, f0, f3
/* 801A9764  EC 24 00 32 */	fmuls f1, f4, f0
/* 801A9768  88 1B 00 02 */	lbz r0, 2(r27)
/* 801A976C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801A9770  90 C1 00 78 */	stw r6, 0x78(r1)
/* 801A9774  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 801A9778  EC 00 18 28 */	fsubs f0, f0, f3
/* 801A977C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A9780  EC 01 00 2A */	fadds f0, f1, f0
/* 801A9784  FC 00 00 1E */	fctiwz f0, f0
/* 801A9788  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 801A978C  80 61 00 84 */	lwz r3, 0x84(r1)
/* 801A9790  B0 61 00 14 */	sth r3, 0x14(r1)
/* 801A9794  7C A0 07 34 */	extsh r0, r5
/* 801A9798  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A979C  40 81 00 A0 */	ble lbl_801A983C
/* 801A97A0  C0 42 A2 6C */	lfs f2, lit_4732(r2)
/* 801A97A4  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A97A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A97AC  90 01 00 84 */	stw r0, 0x84(r1)
/* 801A97B0  90 C1 00 80 */	stw r6, 0x80(r1)
/* 801A97B4  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 801A97B8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A97BC  EC 42 00 24 */	fdivs f2, f2, f0
/* 801A97C0  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801A97C4  90 C1 00 78 */	stw r6, 0x78(r1)
/* 801A97C8  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 801A97CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A97D0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A97D4  FC 00 00 1E */	fctiwz f0, f0
/* 801A97D8  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 801A97DC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801A97E0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801A97E4  7C 80 07 34 */	extsh r0, r4
/* 801A97E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A97EC  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801A97F0  90 C1 00 68 */	stw r6, 0x68(r1)
/* 801A97F4  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 801A97F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A97FC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A9800  FC 00 00 1E */	fctiwz f0, f0
/* 801A9804  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 801A9808  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801A980C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801A9810  7C 60 07 34 */	extsh r0, r3
/* 801A9814  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A9818  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801A981C  90 C1 00 58 */	stw r6, 0x58(r1)
/* 801A9820  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801A9824  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9828  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A982C  FC 00 00 1E */	fctiwz f0, f0
/* 801A9830  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 801A9834  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A9838  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_801A983C:
/* 801A983C  A8 01 00 12 */	lha r0, 0x12(r1)
/* 801A9840  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A9844  40 81 00 A4 */	ble lbl_801A98E8
/* 801A9848  C0 42 A2 6C */	lfs f2, lit_4732(r2)
/* 801A984C  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A9850  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 801A9854  90 81 00 84 */	stw r4, 0x84(r1)
/* 801A9858  3C 60 43 30 */	lis r3, 0x4330
/* 801A985C  90 61 00 80 */	stw r3, 0x80(r1)
/* 801A9860  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 801A9864  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9868  EC 42 00 24 */	fdivs f2, f2, f0
/* 801A986C  A8 01 00 10 */	lha r0, 0x10(r1)
/* 801A9870  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A9874  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801A9878  90 61 00 78 */	stw r3, 0x78(r1)
/* 801A987C  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 801A9880  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9884  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A9888  FC 00 00 1E */	fctiwz f0, f0
/* 801A988C  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 801A9890  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801A9894  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801A9898  90 81 00 6C */	stw r4, 0x6c(r1)
/* 801A989C  90 61 00 68 */	stw r3, 0x68(r1)
/* 801A98A0  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 801A98A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A98A8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A98AC  FC 00 00 1E */	fctiwz f0, f0
/* 801A98B0  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 801A98B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801A98B8  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801A98BC  A8 01 00 14 */	lha r0, 0x14(r1)
/* 801A98C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A98C4  90 01 00 5C */	stw r0, 0x5c(r1)
/* 801A98C8  90 61 00 58 */	stw r3, 0x58(r1)
/* 801A98CC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801A98D0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A98D4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A98D8  FC 00 00 1E */	fctiwz f0, f0
/* 801A98DC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 801A98E0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A98E4  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_801A98E8:
/* 801A98E8  A8 01 00 14 */	lha r0, 0x14(r1)
/* 801A98EC  2C 00 00 FF */	cmpwi r0, 0xff
/* 801A98F0  40 81 00 A4 */	ble lbl_801A9994
/* 801A98F4  C0 42 A2 6C */	lfs f2, lit_4732(r2)
/* 801A98F8  C8 22 A2 30 */	lfd f1, lit_4444(r2)
/* 801A98FC  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 801A9900  90 81 00 84 */	stw r4, 0x84(r1)
/* 801A9904  3C 60 43 30 */	lis r3, 0x4330
/* 801A9908  90 61 00 80 */	stw r3, 0x80(r1)
/* 801A990C  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 801A9910  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9914  EC 42 00 24 */	fdivs f2, f2, f0
/* 801A9918  A8 01 00 10 */	lha r0, 0x10(r1)
/* 801A991C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A9920  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801A9924  90 61 00 78 */	stw r3, 0x78(r1)
/* 801A9928  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 801A992C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9930  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A9934  FC 00 00 1E */	fctiwz f0, f0
/* 801A9938  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 801A993C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 801A9940  B0 01 00 10 */	sth r0, 0x10(r1)
/* 801A9944  A8 01 00 12 */	lha r0, 0x12(r1)
/* 801A9948  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801A994C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801A9950  90 61 00 68 */	stw r3, 0x68(r1)
/* 801A9954  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 801A9958  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A995C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A9960  FC 00 00 1E */	fctiwz f0, f0
/* 801A9964  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 801A9968  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801A996C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 801A9970  90 81 00 5C */	stw r4, 0x5c(r1)
/* 801A9974  90 61 00 58 */	stw r3, 0x58(r1)
/* 801A9978  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 801A997C  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9980  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801A9984  FC 00 00 1E */	fctiwz f0, f0
/* 801A9988  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 801A998C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A9990  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_801A9994:
/* 801A9994  A8 01 00 10 */	lha r0, 0x10(r1)
/* 801A9998  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 801A999C  A8 01 00 12 */	lha r0, 0x12(r1)
/* 801A99A0  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 801A99A4  A8 01 00 14 */	lha r0, 0x14(r1)
/* 801A99A8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801A99AC  88 FC 00 00 */	lbz r7, 0(r28)
/* 801A99B0  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801A99B4  90 E1 00 84 */	stw r7, 0x84(r1)
/* 801A99B8  3C 60 43 30 */	lis r3, 0x4330
/* 801A99BC  90 61 00 80 */	stw r3, 0x80(r1)
/* 801A99C0  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 801A99C4  EC 40 08 28 */	fsubs f2, f0, f1
/* 801A99C8  C0 02 A2 6C */	lfs f0, lit_4732(r2)
/* 801A99CC  EC 82 00 24 */	fdivs f4, f2, f0
/* 801A99D0  88 1C 00 01 */	lbz r0, 1(r28)
/* 801A99D4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801A99D8  90 61 00 78 */	stw r3, 0x78(r1)
/* 801A99DC  C8 41 00 78 */	lfd f2, 0x78(r1)
/* 801A99E0  EC 42 08 28 */	fsubs f2, f2, f1
/* 801A99E4  EC A2 00 24 */	fdivs f5, f2, f0
/* 801A99E8  88 1C 00 02 */	lbz r0, 2(r28)
/* 801A99EC  90 01 00 74 */	stw r0, 0x74(r1)
/* 801A99F0  90 61 00 70 */	stw r3, 0x70(r1)
/* 801A99F4  C8 41 00 70 */	lfd f2, 0x70(r1)
/* 801A99F8  EC 42 08 28 */	fsubs f2, f2, f1
/* 801A99FC  ED 02 00 24 */	fdivs f8, f2, f0
/* 801A9A00  C8 C2 A2 30 */	lfd f6, lit_4444(r2)
/* 801A9A04  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 801A9A08  90 01 00 6C */	stw r0, 0x6c(r1)
/* 801A9A0C  90 61 00 68 */	stw r3, 0x68(r1)
/* 801A9A10  C8 41 00 68 */	lfd f2, 0x68(r1)
/* 801A9A14  EC 62 30 28 */	fsubs f3, f2, f6
/* 801A9A18  C0 42 A2 48 */	lfs f2, lit_4505(r2)
/* 801A9A1C  EC E2 E8 28 */	fsubs f7, f2, f29
/* 801A9A20  EC 43 01 F2 */	fmuls f2, f3, f7
/* 801A9A24  EC 84 00 B2 */	fmuls f4, f4, f2
/* 801A9A28  90 E1 00 64 */	stw r7, 0x64(r1)
/* 801A9A2C  90 61 00 60 */	stw r3, 0x60(r1)
/* 801A9A30  C8 61 00 60 */	lfd f3, 0x60(r1)
/* 801A9A34  EC 63 08 28 */	fsubs f3, f3, f1
/* 801A9A38  EC 63 07 72 */	fmuls f3, f3, f29
/* 801A9A3C  EC 64 18 2A */	fadds f3, f4, f3
/* 801A9A40  FC 60 18 1E */	fctiwz f3, f3
/* 801A9A44  D8 61 00 58 */	stfd f3, 0x58(r1)
/* 801A9A48  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 801A9A4C  98 1A 00 00 */	stb r0, 0(r26)
/* 801A9A50  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 801A9A54  90 01 00 54 */	stw r0, 0x54(r1)
/* 801A9A58  90 61 00 50 */	stw r3, 0x50(r1)
/* 801A9A5C  C8 61 00 50 */	lfd f3, 0x50(r1)
/* 801A9A60  EC 63 30 28 */	fsubs f3, f3, f6
/* 801A9A64  EC 63 01 F2 */	fmuls f3, f3, f7
/* 801A9A68  EC A5 00 F2 */	fmuls f5, f5, f3
/* 801A9A6C  88 1C 00 01 */	lbz r0, 1(r28)
/* 801A9A70  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801A9A74  90 61 00 48 */	stw r3, 0x48(r1)
/* 801A9A78  C8 81 00 48 */	lfd f4, 0x48(r1)
/* 801A9A7C  EC 84 08 28 */	fsubs f4, f4, f1
/* 801A9A80  EC 84 07 72 */	fmuls f4, f4, f29
/* 801A9A84  EC 85 20 2A */	fadds f4, f5, f4
/* 801A9A88  FC 80 20 1E */	fctiwz f4, f4
/* 801A9A8C  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 801A9A90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801A9A94  98 1A 00 01 */	stb r0, 1(r26)
/* 801A9A98  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801A9A9C  90 01 00 8C */	stw r0, 0x8c(r1)
/* 801A9AA0  90 61 00 88 */	stw r3, 0x88(r1)
/* 801A9AA4  C8 81 00 88 */	lfd f4, 0x88(r1)
/* 801A9AA8  EC 84 30 28 */	fsubs f4, f4, f6
/* 801A9AAC  EC C4 01 F2 */	fmuls f6, f4, f7
/* 801A9AB0  EC A8 01 B2 */	fmuls f5, f8, f6
/* 801A9AB4  88 1C 00 02 */	lbz r0, 2(r28)
/* 801A9AB8  90 01 00 94 */	stw r0, 0x94(r1)
/* 801A9ABC  90 61 00 90 */	stw r3, 0x90(r1)
/* 801A9AC0  C8 81 00 90 */	lfd f4, 0x90(r1)
/* 801A9AC4  EC 84 08 28 */	fsubs f4, f4, f1
/* 801A9AC8  EC 84 07 72 */	fmuls f4, f4, f29
/* 801A9ACC  EC 85 20 2A */	fadds f4, f5, f4
/* 801A9AD0  FC 80 20 1E */	fctiwz f4, f4
/* 801A9AD4  D8 81 00 98 */	stfd f4, 0x98(r1)
/* 801A9AD8  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 801A9ADC  98 1A 00 02 */	stb r0, 2(r26)
/* 801A9AE0  88 1D 00 01 */	lbz r0, 1(r29)
/* 801A9AE4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801A9AE8  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 801A9AEC  C8 81 00 A0 */	lfd f4, 0xa0(r1)
/* 801A9AF0  EC 84 08 28 */	fsubs f4, f4, f1
/* 801A9AF4  EC A4 00 24 */	fdivs f5, f4, f0
/* 801A9AF8  88 1D 00 02 */	lbz r0, 2(r29)
/* 801A9AFC  90 01 00 AC */	stw r0, 0xac(r1)
/* 801A9B00  90 61 00 A8 */	stw r3, 0xa8(r1)
/* 801A9B04  C8 81 00 A8 */	lfd f4, 0xa8(r1)
/* 801A9B08  EC 84 08 28 */	fsubs f4, f4, f1
/* 801A9B0C  EC E4 00 24 */	fdivs f7, f4, f0
/* 801A9B10  88 1D 00 00 */	lbz r0, 0(r29)
/* 801A9B14  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 801A9B18  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 801A9B1C  C8 81 00 B0 */	lfd f4, 0xb0(r1)
/* 801A9B20  EC 84 08 28 */	fsubs f4, f4, f1
/* 801A9B24  EC 04 00 24 */	fdivs f0, f4, f0
/* 801A9B28  EC 40 00 B2 */	fmuls f2, f0, f2
/* 801A9B2C  90 01 00 BC */	stw r0, 0xbc(r1)
/* 801A9B30  90 61 00 B8 */	stw r3, 0xb8(r1)
/* 801A9B34  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 801A9B38  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9B3C  EC 00 07 72 */	fmuls f0, f0, f29
/* 801A9B40  EC 02 00 2A */	fadds f0, f2, f0
/* 801A9B44  FC 00 00 1E */	fctiwz f0, f0
/* 801A9B48  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 801A9B4C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801A9B50  98 1B 00 00 */	stb r0, 0(r27)
/* 801A9B54  EC 45 00 F2 */	fmuls f2, f5, f3
/* 801A9B58  88 1D 00 01 */	lbz r0, 1(r29)
/* 801A9B5C  90 01 00 CC */	stw r0, 0xcc(r1)
/* 801A9B60  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 801A9B64  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 801A9B68  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9B6C  EC 00 07 72 */	fmuls f0, f0, f29
/* 801A9B70  EC 02 00 2A */	fadds f0, f2, f0
/* 801A9B74  FC 00 00 1E */	fctiwz f0, f0
/* 801A9B78  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 801A9B7C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 801A9B80  98 1B 00 01 */	stb r0, 1(r27)
/* 801A9B84  EC 47 01 B2 */	fmuls f2, f7, f6
/* 801A9B88  88 1D 00 02 */	lbz r0, 2(r29)
/* 801A9B8C  90 01 00 DC */	stw r0, 0xdc(r1)
/* 801A9B90  90 61 00 D8 */	stw r3, 0xd8(r1)
/* 801A9B94  C8 01 00 D8 */	lfd f0, 0xd8(r1)
/* 801A9B98  EC 00 08 28 */	fsubs f0, f0, f1
/* 801A9B9C  EC 00 07 72 */	fmuls f0, f0, f29
/* 801A9BA0  EC 02 00 2A */	fadds f0, f2, f0
/* 801A9BA4  FC 00 00 1E */	fctiwz f0, f0
/* 801A9BA8  D8 01 00 E0 */	stfd f0, 0xe0(r1)
/* 801A9BAC  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 801A9BB0  98 1B 00 02 */	stb r0, 2(r27)
/* 801A9BB4  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 801A9BB8  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 801A9BBC  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 801A9BC0  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 801A9BC4  E3 A1 01 48 */	psq_l f29, 328(r1), 0, 0 /* qr0 */
/* 801A9BC8  CB A1 01 40 */	lfd f29, 0x140(r1)
/* 801A9BCC  39 61 01 40 */	addi r11, r1, 0x140
/* 801A9BD0  48 1B 86 1D */	bl _restgpr_14
/* 801A9BD4  80 01 01 74 */	lwz r0, 0x174(r1)
/* 801A9BD8  7C 08 03 A6 */	mtlr r0
/* 801A9BDC  38 21 01 70 */	addi r1, r1, 0x170
/* 801A9BE0  4E 80 00 20 */	blr 

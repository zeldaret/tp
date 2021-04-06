lbl_801A9D60:
/* 801A9D60  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801A9D64  7C 08 02 A6 */	mflr r0
/* 801A9D68  90 01 00 84 */	stw r0, 0x84(r1)
/* 801A9D6C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801A9D70  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 801A9D74  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801A9D78  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 801A9D7C  39 61 00 60 */	addi r11, r1, 0x60
/* 801A9D80  48 1B 84 3D */	bl _savegpr_21
/* 801A9D84  7C 76 1B 78 */	mr r22, r3
/* 801A9D88  7C 97 23 78 */	mr r23, r4
/* 801A9D8C  FF E0 08 90 */	fmr f31, f1
/* 801A9D90  7C B8 2B 78 */	mr r24, r5
/* 801A9D94  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A9D98  3B 83 CA 54 */	addi r28, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A9D9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A9DA0  3A A3 61 C0 */	addi r21, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A9DA4  83 75 5D 74 */	lwz r27, 0x5d74(r21)
/* 801A9DA8  3B 40 00 00 */	li r26, 0
/* 801A9DAC  C3 C2 A2 0C */	lfs f30, lit_4409(r2)
/* 801A9DB0  3B 20 00 FF */	li r25, 0xff
/* 801A9DB4  3B A0 00 00 */	li r29, 0
/* 801A9DB8  3B D5 4E 00 */	addi r30, r21, 0x4e00
/* 801A9DBC  7F C3 F3 78 */	mr r3, r30
/* 801A9DC0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A9DC4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A9DC8  38 84 02 49 */	addi r4, r4, 0x249
/* 801A9DCC  48 1B EB C9 */	bl strcmp
/* 801A9DD0  2C 03 00 00 */	cmpwi r3, 0
/* 801A9DD4  41 82 00 58 */	beq lbl_801A9E2C
/* 801A9DD8  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 801A9DDC  3B B5 4E C4 */	addi r29, r21, 0x4ec4
/* 801A9DE0  7F A3 EB 78 */	mr r3, r29
/* 801A9DE4  7C 95 23 78 */	mr r21, r4
/* 801A9DE8  4B E7 A5 9D */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A9DEC  28 03 00 00 */	cmplwi r3, 0
/* 801A9DF0  40 82 00 0C */	bne lbl_801A9DFC
/* 801A9DF4  38 60 00 00 */	li r3, 0
/* 801A9DF8  48 00 08 44 */	b lbl_801AA63C
lbl_801A9DFC:
/* 801A9DFC  7F A3 EB 78 */	mr r3, r29
/* 801A9E00  7E A4 AB 78 */	mr r4, r21
/* 801A9E04  4B E7 A5 81 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A9E08  81 83 00 00 */	lwz r12, 0(r3)
/* 801A9E0C  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801A9E10  7D 89 03 A6 */	mtctr r12
/* 801A9E14  4E 80 04 21 */	bctrl 
/* 801A9E18  7C 7D 1B 79 */	or. r29, r3, r3
/* 801A9E1C  41 80 00 0C */	blt lbl_801A9E28
/* 801A9E20  2C 1D 00 06 */	cmpwi r29, 6
/* 801A9E24  40 81 00 08 */	ble lbl_801A9E2C
lbl_801A9E28:
/* 801A9E28  3B A0 00 06 */	li r29, 6
lbl_801A9E2C:
/* 801A9E2C  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801A9E30  40 82 00 0C */	bne lbl_801A9E3C
/* 801A9E34  3B 1C 0C 18 */	addi r24, r28, 0xc18
/* 801A9E38  48 00 00 08 */	b lbl_801A9E40
lbl_801A9E3C:
/* 801A9E3C  3B 1C 0D 58 */	addi r24, r28, 0xd58
lbl_801A9E40:
/* 801A9E40  38 60 00 28 */	li r3, 0x28
/* 801A9E44  23 FD 00 06 */	subfic r31, r29, 6
/* 801A9E48  38 1F FF FF */	addi r0, r31, -1
/* 801A9E4C  7C 09 03 A6 */	mtctr r0
/* 801A9E50  2C 1F 00 01 */	cmpwi r31, 1
/* 801A9E54  40 81 00 54 */	ble lbl_801A9EA8
lbl_801A9E58:
/* 801A9E58  7C 98 1A 14 */	add r4, r24, r3
/* 801A9E5C  88 04 00 26 */	lbz r0, 0x26(r4)
/* 801A9E60  28 00 00 01 */	cmplwi r0, 1
/* 801A9E64  40 82 00 3C */	bne lbl_801A9EA0
/* 801A9E68  C0 36 00 00 */	lfs f1, 0(r22)
/* 801A9E6C  C0 04 00 00 */	lfs f0, 0(r4)
/* 801A9E70  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801A9E74  40 82 00 2C */	bne lbl_801A9EA0
/* 801A9E78  C0 36 00 04 */	lfs f1, 4(r22)
/* 801A9E7C  C0 04 00 04 */	lfs f0, 4(r4)
/* 801A9E80  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801A9E84  40 82 00 1C */	bne lbl_801A9EA0
/* 801A9E88  C0 36 00 08 */	lfs f1, 8(r22)
/* 801A9E8C  C0 04 00 08 */	lfs f0, 8(r4)
/* 801A9E90  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801A9E94  40 82 00 0C */	bne lbl_801A9EA0
/* 801A9E98  38 60 00 00 */	li r3, 0
/* 801A9E9C  48 00 07 A0 */	b lbl_801AA63C
lbl_801A9EA0:
/* 801A9EA0  38 63 00 28 */	addi r3, r3, 0x28
/* 801A9EA4  42 00 FF B4 */	bdnz lbl_801A9E58
lbl_801A9EA8:
/* 801A9EA8  38 60 00 28 */	li r3, 0x28
/* 801A9EAC  38 1F FF FF */	addi r0, r31, -1
/* 801A9EB0  7C 09 03 A6 */	mtctr r0
/* 801A9EB4  2C 1F 00 01 */	cmpwi r31, 1
/* 801A9EB8  40 81 00 94 */	ble lbl_801A9F4C
lbl_801A9EBC:
/* 801A9EBC  7C 98 1A 14 */	add r4, r24, r3
/* 801A9EC0  88 04 00 26 */	lbz r0, 0x26(r4)
/* 801A9EC4  28 00 00 00 */	cmplwi r0, 0
/* 801A9EC8  40 82 00 7C */	bne lbl_801A9F44
/* 801A9ECC  C0 16 00 00 */	lfs f0, 0(r22)
/* 801A9ED0  D0 04 00 00 */	stfs f0, 0(r4)
/* 801A9ED4  C0 16 00 04 */	lfs f0, 4(r22)
/* 801A9ED8  D0 04 00 04 */	stfs f0, 4(r4)
/* 801A9EDC  C0 16 00 08 */	lfs f0, 8(r22)
/* 801A9EE0  D0 04 00 08 */	stfs f0, 8(r4)
/* 801A9EE4  88 17 00 00 */	lbz r0, 0(r23)
/* 801A9EE8  98 04 00 0C */	stb r0, 0xc(r4)
/* 801A9EEC  88 17 00 01 */	lbz r0, 1(r23)
/* 801A9EF0  98 04 00 0D */	stb r0, 0xd(r4)
/* 801A9EF4  88 17 00 02 */	lbz r0, 2(r23)
/* 801A9EF8  98 04 00 0E */	stb r0, 0xe(r4)
/* 801A9EFC  38 00 00 FF */	li r0, 0xff
/* 801A9F00  98 04 00 0F */	stb r0, 0xf(r4)
/* 801A9F04  D3 E4 00 10 */	stfs f31, 0x10(r4)
/* 801A9F08  C0 02 A2 90 */	lfs f0, lit_5191(r2)
/* 801A9F0C  D0 04 00 14 */	stfs f0, 0x14(r4)
/* 801A9F10  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 801A9F14  D0 04 00 18 */	stfs f0, 0x18(r4)
/* 801A9F18  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A9F1C  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 801A9F20  D0 04 00 20 */	stfs f0, 0x20(r4)
/* 801A9F24  38 00 00 00 */	li r0, 0
/* 801A9F28  98 04 00 24 */	stb r0, 0x24(r4)
/* 801A9F2C  38 00 00 03 */	li r0, 3
/* 801A9F30  98 04 00 25 */	stb r0, 0x25(r4)
/* 801A9F34  38 00 00 01 */	li r0, 1
/* 801A9F38  98 04 00 26 */	stb r0, 0x26(r4)
/* 801A9F3C  3B 40 00 01 */	li r26, 1
/* 801A9F40  48 00 00 0C */	b lbl_801A9F4C
lbl_801A9F44:
/* 801A9F44  38 63 00 28 */	addi r3, r3, 0x28
/* 801A9F48  42 00 FF 74 */	bdnz lbl_801A9EBC
lbl_801A9F4C:
/* 801A9F4C  3B 80 00 01 */	li r28, 1
/* 801A9F50  3A A0 00 28 */	li r21, 0x28
/* 801A9F54  48 00 05 4C */	b lbl_801AA4A0
lbl_801A9F58:
/* 801A9F58  7F B8 AA 14 */	add r29, r24, r21
/* 801A9F5C  88 1D 00 26 */	lbz r0, 0x26(r29)
/* 801A9F60  28 00 00 00 */	cmplwi r0, 0
/* 801A9F64  41 82 05 34 */	beq lbl_801AA498
/* 801A9F68  C0 1D 00 00 */	lfs f0, 0(r29)
/* 801A9F6C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801A9F70  C0 1D 00 04 */	lfs f0, 4(r29)
/* 801A9F74  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801A9F78  C0 1D 00 08 */	lfs f0, 8(r29)
/* 801A9F7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A9F80  7F C3 F3 78 */	mr r3, r30
/* 801A9F84  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha /* 0x80394C6C@ha */
/* 801A9F88  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l /* 0x80394C6C@l */
/* 801A9F8C  38 84 01 0E */	addi r4, r4, 0x10e
/* 801A9F90  48 1B EA 05 */	bl strcmp
/* 801A9F94  2C 03 00 00 */	cmpwi r3, 0
/* 801A9F98  40 82 03 10 */	bne lbl_801AA2A8
/* 801A9F9C  C0 1B 00 D8 */	lfs f0, 0xd8(r27)
/* 801A9FA0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801A9FA4  C0 1B 00 E0 */	lfs f0, 0xe0(r27)
/* 801A9FA8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A9FAC  38 61 00 20 */	addi r3, r1, 0x20
/* 801A9FB0  38 9B 00 D8 */	addi r4, r27, 0xd8
/* 801A9FB4  48 19 D3 E9 */	bl PSVECSquareDistance
/* 801A9FB8  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A9FBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A9FC0  40 81 00 58 */	ble lbl_801AA018
/* 801A9FC4  FC 00 08 34 */	frsqrte f0, f1
/* 801A9FC8  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A9FCC  FC 44 00 32 */	fmul f2, f4, f0
/* 801A9FD0  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A9FD4  FC 00 00 32 */	fmul f0, f0, f0
/* 801A9FD8  FC 01 00 32 */	fmul f0, f1, f0
/* 801A9FDC  FC 03 00 28 */	fsub f0, f3, f0
/* 801A9FE0  FC 02 00 32 */	fmul f0, f2, f0
/* 801A9FE4  FC 44 00 32 */	fmul f2, f4, f0
/* 801A9FE8  FC 00 00 32 */	fmul f0, f0, f0
/* 801A9FEC  FC 01 00 32 */	fmul f0, f1, f0
/* 801A9FF0  FC 03 00 28 */	fsub f0, f3, f0
/* 801A9FF4  FC 02 00 32 */	fmul f0, f2, f0
/* 801A9FF8  FC 44 00 32 */	fmul f2, f4, f0
/* 801A9FFC  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA000  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA004  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA008  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA00C  FC 21 00 32 */	fmul f1, f1, f0
/* 801AA010  FC 20 08 18 */	frsp f1, f1
/* 801AA014  48 00 00 88 */	b lbl_801AA09C
lbl_801AA018:
/* 801AA018  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AA01C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA020  40 80 00 10 */	bge lbl_801AA030
/* 801AA024  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA028  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AA02C  48 00 00 70 */	b lbl_801AA09C
lbl_801AA030:
/* 801AA030  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 801AA034  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 801AA038  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AA03C  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AA040  7C 03 00 00 */	cmpw r3, r0
/* 801AA044  41 82 00 14 */	beq lbl_801AA058
/* 801AA048  40 80 00 40 */	bge lbl_801AA088
/* 801AA04C  2C 03 00 00 */	cmpwi r3, 0
/* 801AA050  41 82 00 20 */	beq lbl_801AA070
/* 801AA054  48 00 00 34 */	b lbl_801AA088
lbl_801AA058:
/* 801AA058  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA05C  41 82 00 0C */	beq lbl_801AA068
/* 801AA060  38 00 00 01 */	li r0, 1
/* 801AA064  48 00 00 28 */	b lbl_801AA08C
lbl_801AA068:
/* 801AA068  38 00 00 02 */	li r0, 2
/* 801AA06C  48 00 00 20 */	b lbl_801AA08C
lbl_801AA070:
/* 801AA070  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA074  41 82 00 0C */	beq lbl_801AA080
/* 801AA078  38 00 00 05 */	li r0, 5
/* 801AA07C  48 00 00 10 */	b lbl_801AA08C
lbl_801AA080:
/* 801AA080  38 00 00 03 */	li r0, 3
/* 801AA084  48 00 00 08 */	b lbl_801AA08C
lbl_801AA088:
/* 801AA088  38 00 00 04 */	li r0, 4
lbl_801AA08C:
/* 801AA08C  2C 00 00 01 */	cmpwi r0, 1
/* 801AA090  40 82 00 0C */	bne lbl_801AA09C
/* 801AA094  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA098  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801AA09C:
/* 801AA09C  C0 02 A1 EC */	lfs f0, lit_4356(r2)
/* 801AA0A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA0A4  40 81 00 10 */	ble lbl_801AA0B4
/* 801AA0A8  C3 C2 A2 88 */	lfs f30, lit_5077(r2)
/* 801AA0AC  57 99 06 3E */	clrlwi r25, r28, 0x18
/* 801AA0B0  48 00 03 F8 */	b lbl_801AA4A8
lbl_801AA0B4:
/* 801AA0B4  7F A3 EB 78 */	mr r3, r29
/* 801AA0B8  38 9B 00 D8 */	addi r4, r27, 0xd8
/* 801AA0BC  48 19 D2 E1 */	bl PSVECSquareDistance
/* 801AA0C0  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AA0C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA0C8  40 81 00 58 */	ble lbl_801AA120
/* 801AA0CC  FC 00 08 34 */	frsqrte f0, f1
/* 801AA0D0  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AA0D4  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA0D8  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AA0DC  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA0E0  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA0E4  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA0E8  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA0EC  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA0F0  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA0F4  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA0F8  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA0FC  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA100  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA104  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA108  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA10C  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA110  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA114  FC 21 00 32 */	fmul f1, f1, f0
/* 801AA118  FC 20 08 18 */	frsp f1, f1
/* 801AA11C  48 00 00 88 */	b lbl_801AA1A4
lbl_801AA120:
/* 801AA120  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AA124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA128  40 80 00 10 */	bge lbl_801AA138
/* 801AA12C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA130  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AA134  48 00 00 70 */	b lbl_801AA1A4
lbl_801AA138:
/* 801AA138  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801AA13C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 801AA140  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AA144  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AA148  7C 03 00 00 */	cmpw r3, r0
/* 801AA14C  41 82 00 14 */	beq lbl_801AA160
/* 801AA150  40 80 00 40 */	bge lbl_801AA190
/* 801AA154  2C 03 00 00 */	cmpwi r3, 0
/* 801AA158  41 82 00 20 */	beq lbl_801AA178
/* 801AA15C  48 00 00 34 */	b lbl_801AA190
lbl_801AA160:
/* 801AA160  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA164  41 82 00 0C */	beq lbl_801AA170
/* 801AA168  38 00 00 01 */	li r0, 1
/* 801AA16C  48 00 00 28 */	b lbl_801AA194
lbl_801AA170:
/* 801AA170  38 00 00 02 */	li r0, 2
/* 801AA174  48 00 00 20 */	b lbl_801AA194
lbl_801AA178:
/* 801AA178  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA17C  41 82 00 0C */	beq lbl_801AA188
/* 801AA180  38 00 00 05 */	li r0, 5
/* 801AA184  48 00 00 10 */	b lbl_801AA194
lbl_801AA188:
/* 801AA188  38 00 00 03 */	li r0, 3
/* 801AA18C  48 00 00 08 */	b lbl_801AA194
lbl_801AA190:
/* 801AA190  38 00 00 04 */	li r0, 4
lbl_801AA194:
/* 801AA194  2C 00 00 01 */	cmpwi r0, 1
/* 801AA198  40 82 00 0C */	bne lbl_801AA1A4
/* 801AA19C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA1A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801AA1A4:
/* 801AA1A4  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 801AA1A8  40 81 02 F0 */	ble lbl_801AA498
/* 801AA1AC  7F A3 EB 78 */	mr r3, r29
/* 801AA1B0  38 9B 00 D8 */	addi r4, r27, 0xd8
/* 801AA1B4  48 19 D1 E9 */	bl PSVECSquareDistance
/* 801AA1B8  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AA1BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA1C0  40 81 00 58 */	ble lbl_801AA218
/* 801AA1C4  FC 00 08 34 */	frsqrte f0, f1
/* 801AA1C8  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AA1CC  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA1D0  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AA1D4  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA1D8  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA1DC  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA1E0  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA1E4  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA1E8  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA1EC  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA1F0  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA1F4  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA1F8  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA1FC  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA200  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA204  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA208  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA20C  FC 21 00 32 */	fmul f1, f1, f0
/* 801AA210  FC 20 08 18 */	frsp f1, f1
/* 801AA214  48 00 00 88 */	b lbl_801AA29C
lbl_801AA218:
/* 801AA218  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AA21C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA220  40 80 00 10 */	bge lbl_801AA230
/* 801AA224  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA228  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AA22C  48 00 00 70 */	b lbl_801AA29C
lbl_801AA230:
/* 801AA230  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 801AA234  80 81 00 14 */	lwz r4, 0x14(r1)
/* 801AA238  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AA23C  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AA240  7C 03 00 00 */	cmpw r3, r0
/* 801AA244  41 82 00 14 */	beq lbl_801AA258
/* 801AA248  40 80 00 40 */	bge lbl_801AA288
/* 801AA24C  2C 03 00 00 */	cmpwi r3, 0
/* 801AA250  41 82 00 20 */	beq lbl_801AA270
/* 801AA254  48 00 00 34 */	b lbl_801AA288
lbl_801AA258:
/* 801AA258  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA25C  41 82 00 0C */	beq lbl_801AA268
/* 801AA260  38 00 00 01 */	li r0, 1
/* 801AA264  48 00 00 28 */	b lbl_801AA28C
lbl_801AA268:
/* 801AA268  38 00 00 02 */	li r0, 2
/* 801AA26C  48 00 00 20 */	b lbl_801AA28C
lbl_801AA270:
/* 801AA270  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA274  41 82 00 0C */	beq lbl_801AA280
/* 801AA278  38 00 00 05 */	li r0, 5
/* 801AA27C  48 00 00 10 */	b lbl_801AA28C
lbl_801AA280:
/* 801AA280  38 00 00 03 */	li r0, 3
/* 801AA284  48 00 00 08 */	b lbl_801AA28C
lbl_801AA288:
/* 801AA288  38 00 00 04 */	li r0, 4
lbl_801AA28C:
/* 801AA28C  2C 00 00 01 */	cmpwi r0, 1
/* 801AA290  40 82 00 0C */	bne lbl_801AA29C
/* 801AA294  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA298  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801AA29C:
/* 801AA29C  FF C0 08 90 */	fmr f30, f1
/* 801AA2A0  57 99 06 3E */	clrlwi r25, r28, 0x18
/* 801AA2A4  48 00 01 F4 */	b lbl_801AA498
lbl_801AA2A8:
/* 801AA2A8  7F A3 EB 78 */	mr r3, r29
/* 801AA2AC  38 9B 00 D8 */	addi r4, r27, 0xd8
/* 801AA2B0  48 19 D0 ED */	bl PSVECSquareDistance
/* 801AA2B4  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AA2B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA2BC  40 81 00 58 */	ble lbl_801AA314
/* 801AA2C0  FC 00 08 34 */	frsqrte f0, f1
/* 801AA2C4  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AA2C8  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA2CC  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AA2D0  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA2D4  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA2D8  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA2DC  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA2E0  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA2E4  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA2E8  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA2EC  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA2F0  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA2F4  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA2F8  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA2FC  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA300  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA304  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA308  FC 21 00 32 */	fmul f1, f1, f0
/* 801AA30C  FC 20 08 18 */	frsp f1, f1
/* 801AA310  48 00 00 88 */	b lbl_801AA398
lbl_801AA314:
/* 801AA314  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AA318  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA31C  40 80 00 10 */	bge lbl_801AA32C
/* 801AA320  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA324  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AA328  48 00 00 70 */	b lbl_801AA398
lbl_801AA32C:
/* 801AA32C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 801AA330  80 81 00 10 */	lwz r4, 0x10(r1)
/* 801AA334  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AA338  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AA33C  7C 03 00 00 */	cmpw r3, r0
/* 801AA340  41 82 00 14 */	beq lbl_801AA354
/* 801AA344  40 80 00 40 */	bge lbl_801AA384
/* 801AA348  2C 03 00 00 */	cmpwi r3, 0
/* 801AA34C  41 82 00 20 */	beq lbl_801AA36C
/* 801AA350  48 00 00 34 */	b lbl_801AA384
lbl_801AA354:
/* 801AA354  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA358  41 82 00 0C */	beq lbl_801AA364
/* 801AA35C  38 00 00 01 */	li r0, 1
/* 801AA360  48 00 00 28 */	b lbl_801AA388
lbl_801AA364:
/* 801AA364  38 00 00 02 */	li r0, 2
/* 801AA368  48 00 00 20 */	b lbl_801AA388
lbl_801AA36C:
/* 801AA36C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA370  41 82 00 0C */	beq lbl_801AA37C
/* 801AA374  38 00 00 05 */	li r0, 5
/* 801AA378  48 00 00 10 */	b lbl_801AA388
lbl_801AA37C:
/* 801AA37C  38 00 00 03 */	li r0, 3
/* 801AA380  48 00 00 08 */	b lbl_801AA388
lbl_801AA384:
/* 801AA384  38 00 00 04 */	li r0, 4
lbl_801AA388:
/* 801AA388  2C 00 00 01 */	cmpwi r0, 1
/* 801AA38C  40 82 00 0C */	bne lbl_801AA398
/* 801AA390  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA394  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801AA398:
/* 801AA398  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 801AA39C  40 81 00 FC */	ble lbl_801AA498
/* 801AA3A0  7F A3 EB 78 */	mr r3, r29
/* 801AA3A4  38 9B 00 D8 */	addi r4, r27, 0xd8
/* 801AA3A8  48 19 CF F5 */	bl PSVECSquareDistance
/* 801AA3AC  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AA3B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA3B4  40 81 00 58 */	ble lbl_801AA40C
/* 801AA3B8  FC 00 08 34 */	frsqrte f0, f1
/* 801AA3BC  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AA3C0  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA3C4  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AA3C8  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA3CC  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA3D0  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA3D4  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA3D8  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA3DC  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA3E0  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA3E4  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA3E8  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA3EC  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA3F0  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA3F4  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA3F8  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA3FC  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA400  FC 21 00 32 */	fmul f1, f1, f0
/* 801AA404  FC 20 08 18 */	frsp f1, f1
/* 801AA408  48 00 00 88 */	b lbl_801AA490
lbl_801AA40C:
/* 801AA40C  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AA410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA414  40 80 00 10 */	bge lbl_801AA424
/* 801AA418  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA41C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AA420  48 00 00 70 */	b lbl_801AA490
lbl_801AA424:
/* 801AA424  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801AA428  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801AA42C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AA430  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AA434  7C 03 00 00 */	cmpw r3, r0
/* 801AA438  41 82 00 14 */	beq lbl_801AA44C
/* 801AA43C  40 80 00 40 */	bge lbl_801AA47C
/* 801AA440  2C 03 00 00 */	cmpwi r3, 0
/* 801AA444  41 82 00 20 */	beq lbl_801AA464
/* 801AA448  48 00 00 34 */	b lbl_801AA47C
lbl_801AA44C:
/* 801AA44C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA450  41 82 00 0C */	beq lbl_801AA45C
/* 801AA454  38 00 00 01 */	li r0, 1
/* 801AA458  48 00 00 28 */	b lbl_801AA480
lbl_801AA45C:
/* 801AA45C  38 00 00 02 */	li r0, 2
/* 801AA460  48 00 00 20 */	b lbl_801AA480
lbl_801AA464:
/* 801AA464  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA468  41 82 00 0C */	beq lbl_801AA474
/* 801AA46C  38 00 00 05 */	li r0, 5
/* 801AA470  48 00 00 10 */	b lbl_801AA480
lbl_801AA474:
/* 801AA474  38 00 00 03 */	li r0, 3
/* 801AA478  48 00 00 08 */	b lbl_801AA480
lbl_801AA47C:
/* 801AA47C  38 00 00 04 */	li r0, 4
lbl_801AA480:
/* 801AA480  2C 00 00 01 */	cmpwi r0, 1
/* 801AA484  40 82 00 0C */	bne lbl_801AA490
/* 801AA488  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA48C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801AA490:
/* 801AA490  FF C0 08 90 */	fmr f30, f1
/* 801AA494  57 99 06 3E */	clrlwi r25, r28, 0x18
lbl_801AA498:
/* 801AA498  3B 9C 00 01 */	addi r28, r28, 1
/* 801AA49C  3A B5 00 28 */	addi r21, r21, 0x28
lbl_801AA4A0:
/* 801AA4A0  7C 1C F8 00 */	cmpw r28, r31
/* 801AA4A4  41 80 FA B4 */	blt lbl_801A9F58
lbl_801AA4A8:
/* 801AA4A8  2C 1A 00 00 */	cmpwi r26, 0
/* 801AA4AC  40 82 01 8C */	bne lbl_801AA638
/* 801AA4B0  57 35 06 3E */	clrlwi r21, r25, 0x18
/* 801AA4B4  28 15 00 FF */	cmplwi r21, 0xff
/* 801AA4B8  41 82 01 80 */	beq lbl_801AA638
/* 801AA4BC  2C 15 00 06 */	cmpwi r21, 6
/* 801AA4C0  40 80 01 78 */	bge lbl_801AA638
/* 801AA4C4  7E C3 B3 78 */	mr r3, r22
/* 801AA4C8  38 9B 00 D8 */	addi r4, r27, 0xd8
/* 801AA4CC  48 19 CE D1 */	bl PSVECSquareDistance
/* 801AA4D0  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AA4D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA4D8  40 81 00 58 */	ble lbl_801AA530
/* 801AA4DC  FC 00 08 34 */	frsqrte f0, f1
/* 801AA4E0  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AA4E4  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA4E8  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AA4EC  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA4F0  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA4F4  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA4F8  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA4FC  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA500  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA504  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA508  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA50C  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA510  FC 44 00 32 */	fmul f2, f4, f0
/* 801AA514  FC 00 00 32 */	fmul f0, f0, f0
/* 801AA518  FC 01 00 32 */	fmul f0, f1, f0
/* 801AA51C  FC 03 00 28 */	fsub f0, f3, f0
/* 801AA520  FC 02 00 32 */	fmul f0, f2, f0
/* 801AA524  FC 21 00 32 */	fmul f1, f1, f0
/* 801AA528  FC 20 08 18 */	frsp f1, f1
/* 801AA52C  48 00 00 88 */	b lbl_801AA5B4
lbl_801AA530:
/* 801AA530  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AA534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AA538  40 80 00 10 */	bge lbl_801AA548
/* 801AA53C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA540  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801AA544  48 00 00 70 */	b lbl_801AA5B4
lbl_801AA548:
/* 801AA548  D0 21 00 08 */	stfs f1, 8(r1)
/* 801AA54C  80 81 00 08 */	lwz r4, 8(r1)
/* 801AA550  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AA554  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AA558  7C 03 00 00 */	cmpw r3, r0
/* 801AA55C  41 82 00 14 */	beq lbl_801AA570
/* 801AA560  40 80 00 40 */	bge lbl_801AA5A0
/* 801AA564  2C 03 00 00 */	cmpwi r3, 0
/* 801AA568  41 82 00 20 */	beq lbl_801AA588
/* 801AA56C  48 00 00 34 */	b lbl_801AA5A0
lbl_801AA570:
/* 801AA570  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA574  41 82 00 0C */	beq lbl_801AA580
/* 801AA578  38 00 00 01 */	li r0, 1
/* 801AA57C  48 00 00 28 */	b lbl_801AA5A4
lbl_801AA580:
/* 801AA580  38 00 00 02 */	li r0, 2
/* 801AA584  48 00 00 20 */	b lbl_801AA5A4
lbl_801AA588:
/* 801AA588  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AA58C  41 82 00 0C */	beq lbl_801AA598
/* 801AA590  38 00 00 05 */	li r0, 5
/* 801AA594  48 00 00 10 */	b lbl_801AA5A4
lbl_801AA598:
/* 801AA598  38 00 00 03 */	li r0, 3
/* 801AA59C  48 00 00 08 */	b lbl_801AA5A4
lbl_801AA5A0:
/* 801AA5A0  38 00 00 04 */	li r0, 4
lbl_801AA5A4:
/* 801AA5A4  2C 00 00 01 */	cmpwi r0, 1
/* 801AA5A8  40 82 00 0C */	bne lbl_801AA5B4
/* 801AA5AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801AA5B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801AA5B4:
/* 801AA5B4  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 801AA5B8  40 80 00 80 */	bge lbl_801AA638
/* 801AA5BC  C0 16 00 00 */	lfs f0, 0(r22)
/* 801AA5C0  1C 15 00 28 */	mulli r0, r21, 0x28
/* 801AA5C4  7C 18 05 2E */	stfsx f0, r24, r0
/* 801AA5C8  C0 16 00 04 */	lfs f0, 4(r22)
/* 801AA5CC  7C 78 02 14 */	add r3, r24, r0
/* 801AA5D0  D0 03 00 04 */	stfs f0, 4(r3)
/* 801AA5D4  C0 16 00 08 */	lfs f0, 8(r22)
/* 801AA5D8  D0 03 00 08 */	stfs f0, 8(r3)
/* 801AA5DC  88 17 00 00 */	lbz r0, 0(r23)
/* 801AA5E0  98 03 00 0C */	stb r0, 0xc(r3)
/* 801AA5E4  88 17 00 01 */	lbz r0, 1(r23)
/* 801AA5E8  98 03 00 0D */	stb r0, 0xd(r3)
/* 801AA5EC  88 17 00 02 */	lbz r0, 2(r23)
/* 801AA5F0  98 03 00 0E */	stb r0, 0xe(r3)
/* 801AA5F4  38 00 00 FF */	li r0, 0xff
/* 801AA5F8  98 03 00 0F */	stb r0, 0xf(r3)
/* 801AA5FC  D3 E3 00 10 */	stfs f31, 0x10(r3)
/* 801AA600  C0 02 A2 90 */	lfs f0, lit_5191(r2)
/* 801AA604  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801AA608  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 801AA60C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 801AA610  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AA614  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801AA618  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801AA61C  38 00 00 00 */	li r0, 0
/* 801AA620  98 03 00 24 */	stb r0, 0x24(r3)
/* 801AA624  38 00 00 03 */	li r0, 3
/* 801AA628  98 03 00 25 */	stb r0, 0x25(r3)
/* 801AA62C  38 00 00 01 */	li r0, 1
/* 801AA630  98 03 00 26 */	stb r0, 0x26(r3)
/* 801AA634  3B 40 00 01 */	li r26, 1
lbl_801AA638:
/* 801AA638  7F 43 D3 78 */	mr r3, r26
lbl_801AA63C:
/* 801AA63C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 801AA640  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801AA644  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 801AA648  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801AA64C  39 61 00 60 */	addi r11, r1, 0x60
/* 801AA650  48 1B 7B B9 */	bl _restgpr_21
/* 801AA654  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801AA658  7C 08 03 A6 */	mtlr r0
/* 801AA65C  38 21 00 80 */	addi r1, r1, 0x80
/* 801AA660  4E 80 00 20 */	blr 

lbl_80087C04:
/* 80087C04  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80087C08  7C 08 02 A6 */	mflr r0
/* 80087C0C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80087C10  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80087C14  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80087C18  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80087C1C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80087C20  39 61 00 40 */	addi r11, r1, 0x40
/* 80087C24  48 2D A5 A9 */	bl _savegpr_25
/* 80087C28  7C 7B 1B 78 */	mr r27, r3
/* 80087C2C  7C 9C 23 78 */	mr r28, r4
/* 80087C30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80087C34  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80087C38  83 DF 5D AC */	lwz r30, 0x5dac(r31)
/* 80087C3C  7F 83 E3 78 */	mr r3, r28
/* 80087C40  4B FF FE 19 */	bl at_power_check__FP11dCcU_AtInfo
/* 80087C44  90 7C 00 04 */	stw r3, 4(r28)
/* 80087C48  80 7C 00 04 */	lwz r3, 4(r28)
/* 80087C4C  28 03 00 00 */	cmplwi r3, 0
/* 80087C50  41 82 04 B8 */	beq lbl_80088108
/* 80087C54  C0 03 04 F8 */	lfs f0, 0x4f8(r3)
/* 80087C58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80087C5C  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80087C60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80087C64  C0 03 05 00 */	lfs f0, 0x500(r3)
/* 80087C68  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80087C6C  C0 02 8D 98 */	lfs f0, lit_4212(r2)
/* 80087C70  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80087C74  38 61 00 0C */	addi r3, r1, 0xc
/* 80087C78  48 2B F4 C1 */	bl PSVECSquareMag
/* 80087C7C  C0 02 8D 98 */	lfs f0, lit_4212(r2)
/* 80087C80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80087C84  40 81 00 58 */	ble lbl_80087CDC
/* 80087C88  FC 00 08 34 */	frsqrte f0, f1
/* 80087C8C  C8 82 8D A0 */	lfd f4, lit_4213(r2)
/* 80087C90  FC 44 00 32 */	fmul f2, f4, f0
/* 80087C94  C8 62 8D A8 */	lfd f3, lit_4214(r2)
/* 80087C98  FC 00 00 32 */	fmul f0, f0, f0
/* 80087C9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80087CA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80087CA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80087CA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80087CAC  FC 00 00 32 */	fmul f0, f0, f0
/* 80087CB0  FC 01 00 32 */	fmul f0, f1, f0
/* 80087CB4  FC 03 00 28 */	fsub f0, f3, f0
/* 80087CB8  FC 02 00 32 */	fmul f0, f2, f0
/* 80087CBC  FC 44 00 32 */	fmul f2, f4, f0
/* 80087CC0  FC 00 00 32 */	fmul f0, f0, f0
/* 80087CC4  FC 01 00 32 */	fmul f0, f1, f0
/* 80087CC8  FC 03 00 28 */	fsub f0, f3, f0
/* 80087CCC  FC 02 00 32 */	fmul f0, f2, f0
/* 80087CD0  FC 21 00 32 */	fmul f1, f1, f0
/* 80087CD4  FC 20 08 18 */	frsp f1, f1
/* 80087CD8  48 00 00 88 */	b lbl_80087D60
lbl_80087CDC:
/* 80087CDC  C8 02 8D B0 */	lfd f0, lit_4215(r2)
/* 80087CE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80087CE4  40 80 00 10 */	bge lbl_80087CF4
/* 80087CE8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80087CEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80087CF0  48 00 00 70 */	b lbl_80087D60
lbl_80087CF4:
/* 80087CF4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80087CF8  80 81 00 08 */	lwz r4, 8(r1)
/* 80087CFC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80087D00  3C 00 7F 80 */	lis r0, 0x7f80
/* 80087D04  7C 03 00 00 */	cmpw r3, r0
/* 80087D08  41 82 00 14 */	beq lbl_80087D1C
/* 80087D0C  40 80 00 40 */	bge lbl_80087D4C
/* 80087D10  2C 03 00 00 */	cmpwi r3, 0
/* 80087D14  41 82 00 20 */	beq lbl_80087D34
/* 80087D18  48 00 00 34 */	b lbl_80087D4C
lbl_80087D1C:
/* 80087D1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80087D20  41 82 00 0C */	beq lbl_80087D2C
/* 80087D24  38 00 00 01 */	li r0, 1
/* 80087D28  48 00 00 28 */	b lbl_80087D50
lbl_80087D2C:
/* 80087D2C  38 00 00 02 */	li r0, 2
/* 80087D30  48 00 00 20 */	b lbl_80087D50
lbl_80087D34:
/* 80087D34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80087D38  41 82 00 0C */	beq lbl_80087D44
/* 80087D3C  38 00 00 05 */	li r0, 5
/* 80087D40  48 00 00 10 */	b lbl_80087D50
lbl_80087D44:
/* 80087D44  38 00 00 03 */	li r0, 3
/* 80087D48  48 00 00 08 */	b lbl_80087D50
lbl_80087D4C:
/* 80087D4C  38 00 00 04 */	li r0, 4
lbl_80087D50:
/* 80087D50  2C 00 00 01 */	cmpwi r0, 1
/* 80087D54  40 82 00 0C */	bne lbl_80087D60
/* 80087D58  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80087D5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80087D60:
/* 80087D60  C0 02 8D B8 */	lfs f0, lit_4216(r2)
/* 80087D64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80087D68  40 81 00 3C */	ble lbl_80087DA4
/* 80087D6C  80 7C 00 04 */	lwz r3, 4(r28)
/* 80087D70  C3 C3 04 F8 */	lfs f30, 0x4f8(r3)
/* 80087D74  C3 E3 05 00 */	lfs f31, 0x500(r3)
/* 80087D78  C0 22 8D BC */	lfs f1, lit_4217(r2)
/* 80087D7C  48 1D FC 11 */	bl cM_rndFX__Ff
/* 80087D80  FC 00 08 1E */	fctiwz f0, f1
/* 80087D84  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80087D88  83 41 00 1C */	lwz r26, 0x1c(r1)
/* 80087D8C  FC 20 F0 50 */	fneg f1, f30
/* 80087D90  FC 40 F8 50 */	fneg f2, f31
/* 80087D94  48 1D F8 E1 */	bl cM_atan2s__Fff
/* 80087D98  7C 03 D2 14 */	add r0, r3, r26
/* 80087D9C  B0 1C 00 0E */	sth r0, 0xe(r28)
/* 80087DA0  48 00 00 80 */	b lbl_80087E20
lbl_80087DA4:
/* 80087DA4  80 7C 00 04 */	lwz r3, 4(r28)
/* 80087DA8  A8 03 00 08 */	lha r0, 8(r3)
/* 80087DAC  2C 00 00 FE */	cmpwi r0, 0xfe
/* 80087DB0  40 82 00 48 */	bne lbl_80087DF8
/* 80087DB4  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 80087DB8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80087DBC  EF E1 00 28 */	fsubs f31, f1, f0
/* 80087DC0  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80087DC4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80087DC8  EF C1 00 28 */	fsubs f30, f1, f0
/* 80087DCC  C0 22 8D C0 */	lfs f1, lit_4218(r2)
/* 80087DD0  48 1D FB BD */	bl cM_rndFX__Ff
/* 80087DD4  FC 00 08 1E */	fctiwz f0, f1
/* 80087DD8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80087DDC  83 41 00 1C */	lwz r26, 0x1c(r1)
/* 80087DE0  FC 20 F8 50 */	fneg f1, f31
/* 80087DE4  FC 40 F0 50 */	fneg f2, f30
/* 80087DE8  48 1D F8 8D */	bl cM_atan2s__Fff
/* 80087DEC  7C 03 D2 14 */	add r0, r3, r26
/* 80087DF0  B0 1C 00 0E */	sth r0, 0xe(r28)
/* 80087DF4  48 00 00 2C */	b lbl_80087E20
lbl_80087DF8:
/* 80087DF8  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 80087DFC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80087E00  EC 41 00 28 */	fsubs f2, f1, f0
/* 80087E04  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 80087E08  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80087E0C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80087E10  FC 20 10 50 */	fneg f1, f2
/* 80087E14  FC 40 00 50 */	fneg f2, f0
/* 80087E18  48 1D F8 5D */	bl cM_atan2s__Fff
/* 80087E1C  B0 7C 00 0E */	sth r3, 0xe(r28)
lbl_80087E20:
/* 80087E20  88 1C 00 20 */	lbz r0, 0x20(r28)
/* 80087E24  28 00 00 01 */	cmplwi r0, 1
/* 80087E28  40 82 00 18 */	bne lbl_80087E40
/* 80087E2C  88 1E 05 68 */	lbz r0, 0x568(r30)
/* 80087E30  28 00 00 05 */	cmplwi r0, 5
/* 80087E34  40 82 00 0C */	bne lbl_80087E40
/* 80087E38  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80087E3C  B0 1C 00 0E */	sth r0, 0xe(r28)
lbl_80087E40:
/* 80087E40  80 7C 00 00 */	lwz r3, 0(r28)
/* 80087E44  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80087E48  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80087E4C  41 82 00 18 */	beq lbl_80087E64
/* 80087E50  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 80087E54  54 00 02 99 */	rlwinm. r0, r0, 0, 0xa, 0xc
/* 80087E58  41 82 00 0C */	beq lbl_80087E64
/* 80087E5C  38 00 00 00 */	li r0, 0
/* 80087E60  B0 1C 00 1C */	sth r0, 0x1c(r28)
lbl_80087E64:
/* 80087E64  80 7C 00 00 */	lwz r3, 0(r28)
/* 80087E68  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80087E6C  28 00 00 04 */	cmplwi r0, 4
/* 80087E70  40 82 00 2C */	bne lbl_80087E9C
/* 80087E74  A8 1B 00 08 */	lha r0, 8(r27)
/* 80087E78  2C 00 02 0E */	cmpwi r0, 0x20e
/* 80087E7C  40 82 00 10 */	bne lbl_80087E8C
/* 80087E80  38 00 00 00 */	li r0, 0
/* 80087E84  B0 1C 00 1C */	sth r0, 0x1c(r28)
/* 80087E88  48 00 00 14 */	b lbl_80087E9C
lbl_80087E8C:
/* 80087E8C  2C 00 00 F9 */	cmpwi r0, 0xf9
/* 80087E90  41 82 00 0C */	beq lbl_80087E9C
/* 80087E94  38 00 00 64 */	li r0, 0x64
/* 80087E98  B0 1C 00 1C */	sth r0, 0x1c(r28)
lbl_80087E9C:
/* 80087E9C  88 1C 00 20 */	lbz r0, 0x20(r28)
/* 80087EA0  28 00 00 01 */	cmplwi r0, 1
/* 80087EA4  40 82 00 78 */	bne lbl_80087F1C
/* 80087EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80087EAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80087EB0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80087EB4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80087EB8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80087EBC  40 82 00 40 */	bne lbl_80087EFC
/* 80087EC0  48 0D 74 D9 */	bl checkMasterSwordEquip__9daPy_py_cFv
/* 80087EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80087EC8  41 82 00 10 */	beq lbl_80087ED8
/* 80087ECC  A0 1C 00 1C */	lhz r0, 0x1c(r28)
/* 80087ED0  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 80087ED4  B0 1C 00 1C */	sth r0, 0x1c(r28)
lbl_80087ED8:
/* 80087ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80087EDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80087EE0  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80087EE4  28 00 00 3F */	cmplwi r0, 0x3f
/* 80087EE8  40 82 00 14 */	bne lbl_80087EFC
/* 80087EEC  A0 1C 00 1C */	lhz r0, 0x1c(r28)
/* 80087EF0  7C 00 0E 70 */	srawi r0, r0, 1
/* 80087EF4  7C 00 01 94 */	addze r0, r0
/* 80087EF8  B0 1C 00 1C */	sth r0, 0x1c(r28)
lbl_80087EFC:
/* 80087EFC  A0 1E 05 6E */	lhz r0, 0x56e(r30)
/* 80087F00  28 00 00 00 */	cmplwi r0, 0
/* 80087F04  41 82 00 18 */	beq lbl_80087F1C
/* 80087F08  A0 1C 00 1C */	lhz r0, 0x1c(r28)
/* 80087F0C  54 00 0C 3C */	rlwinm r0, r0, 1, 0x10, 0x1e
/* 80087F10  B0 1C 00 1C */	sth r0, 0x1c(r28)
/* 80087F14  38 00 00 01 */	li r0, 1
/* 80087F18  98 1C 00 1F */	stb r0, 0x1f(r28)
lbl_80087F1C:
/* 80087F1C  A0 7C 00 1C */	lhz r3, 0x1c(r28)
/* 80087F20  28 03 00 00 */	cmplwi r3, 0
/* 80087F24  41 82 00 10 */	beq lbl_80087F34
/* 80087F28  A8 1B 05 62 */	lha r0, 0x562(r27)
/* 80087F2C  7C 03 00 50 */	subf r0, r3, r0
/* 80087F30  B0 1B 05 62 */	sth r0, 0x562(r27)
lbl_80087F34:
/* 80087F34  3B A0 00 00 */	li r29, 0
/* 80087F38  A0 1C 00 1C */	lhz r0, 0x1c(r28)
/* 80087F3C  28 00 00 00 */	cmplwi r0, 0
/* 80087F40  41 82 00 20 */	beq lbl_80087F60
/* 80087F44  A8 1B 05 62 */	lha r0, 0x562(r27)
/* 80087F48  2C 00 00 00 */	cmpwi r0, 0
/* 80087F4C  41 81 00 14 */	bgt lbl_80087F60
/* 80087F50  38 00 00 02 */	li r0, 2
/* 80087F54  98 1C 00 1F */	stb r0, 0x1f(r28)
/* 80087F58  38 00 00 00 */	li r0, 0
/* 80087F5C  B0 1B 05 62 */	sth r0, 0x562(r27)
lbl_80087F60:
/* 80087F60  80 7C 00 00 */	lwz r3, 0(r28)
/* 80087F64  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80087F68  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80087F6C  41 82 00 18 */	beq lbl_80087F84
/* 80087F70  80 1B 04 9C */	lwz r0, 0x49c(r27)
/* 80087F74  74 00 00 28 */	andis. r0, r0, 0x28
/* 80087F78  40 82 00 0C */	bne lbl_80087F84
/* 80087F7C  3B 20 00 01 */	li r25, 1
/* 80087F80  48 00 00 08 */	b lbl_80087F88
lbl_80087F84:
/* 80087F84  3B 20 00 00 */	li r25, 0
lbl_80087F88:
/* 80087F88  80 1C 00 08 */	lwz r0, 8(r28)
/* 80087F8C  28 00 00 00 */	cmplwi r0, 0
/* 80087F90  41 82 00 6C */	beq lbl_80087FFC
/* 80087F94  83 5C 00 18 */	lwz r26, 0x18(r28)
/* 80087F98  28 1A 00 00 */	cmplwi r26, 0
/* 80087F9C  41 82 00 2C */	beq lbl_80087FC8
/* 80087FA0  7F 24 CB 78 */	mr r4, r25
/* 80087FA4  4B FF F5 4D */	bl getHitId__FP8cCcD_Obji
/* 80087FA8  7C 64 1B 78 */	mr r4, r3
/* 80087FAC  80 7C 00 08 */	lwz r3, 8(r28)
/* 80087FB0  7F 45 D3 78 */	mr r5, r26
/* 80087FB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80087FB8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80087FBC  7D 89 03 A6 */	mtctr r12
/* 80087FC0  4E 80 04 21 */	bctrl 
/* 80087FC4  48 00 00 38 */	b lbl_80087FFC
lbl_80087FC8:
/* 80087FC8  88 7C 00 1F */	lbz r3, 0x1f(r28)
/* 80087FCC  4B FF F4 F9 */	bl getMapInfo__FSc
/* 80087FD0  7C 7A 1B 78 */	mr r26, r3
/* 80087FD4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80087FD8  7F 24 CB 78 */	mr r4, r25
/* 80087FDC  4B FF F5 15 */	bl getHitId__FP8cCcD_Obji
/* 80087FE0  7C 64 1B 78 */	mr r4, r3
/* 80087FE4  80 7C 00 08 */	lwz r3, 8(r28)
/* 80087FE8  7F 45 D3 78 */	mr r5, r26
/* 80087FEC  81 83 00 00 */	lwz r12, 0(r3)
/* 80087FF0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80087FF4  7D 89 03 A6 */	mtctr r12
/* 80087FF8  4E 80 04 21 */	bctrl 
lbl_80087FFC:
/* 80087FFC  88 1C 00 1F */	lbz r0, 0x1f(r28)
/* 80088000  7C 00 07 75 */	extsb. r0, r0
/* 80088004  41 82 00 0C */	beq lbl_80088010
/* 80088008  3B A0 00 05 */	li r29, 5
/* 8008800C  48 00 00 14 */	b lbl_80088020
lbl_80088010:
/* 80088010  A0 1C 00 1C */	lhz r0, 0x1c(r28)
/* 80088014  28 00 00 01 */	cmplwi r0, 1
/* 80088018  40 81 00 08 */	ble lbl_80088020
/* 8008801C  3B A0 00 02 */	li r29, 2
lbl_80088020:
/* 80088020  80 7C 00 00 */	lwz r3, 0(r28)
/* 80088024  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80088028  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 8008802C  40 82 00 20 */	bne lbl_8008804C
/* 80088030  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80088034  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80088038  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8008803C  7D 89 03 A6 */	mtctr r12
/* 80088040  4E 80 04 21 */	bctrl 
/* 80088044  28 03 00 00 */	cmplwi r3, 0
/* 80088048  41 82 00 30 */	beq lbl_80088078
lbl_8008804C:
/* 8008804C  A8 7B 00 08 */	lha r3, 8(r27)
/* 80088050  2C 03 01 D4 */	cmpwi r3, 0x1d4
/* 80088054  40 82 00 10 */	bne lbl_80088064
/* 80088058  88 1B 12 9A */	lbz r0, 0x129a(r27)
/* 8008805C  7C 00 07 75 */	extsb. r0, r0
/* 80088060  40 82 00 0C */	bne lbl_8008806C
lbl_80088064:
/* 80088064  2C 03 02 0E */	cmpwi r3, 0x20e
/* 80088068  40 82 00 0C */	bne lbl_80088074
lbl_8008806C:
/* 8008806C  3B A0 00 03 */	li r29, 3
/* 80088070  48 00 00 08 */	b lbl_80088078
lbl_80088074:
/* 80088074  3B A0 00 00 */	li r29, 0
lbl_80088078:
/* 80088078  A8 1B 00 08 */	lha r0, 8(r27)
/* 8008807C  2C 00 01 B7 */	cmpwi r0, 0x1b7
/* 80088080  41 82 00 34 */	beq lbl_800880B4
/* 80088084  2C 00 01 BE */	cmpwi r0, 0x1be
/* 80088088  41 82 00 2C */	beq lbl_800880B4
/* 8008808C  2C 00 01 EA */	cmpwi r0, 0x1ea
/* 80088090  41 82 00 24 */	beq lbl_800880B4
/* 80088094  2C 00 01 F9 */	cmpwi r0, 0x1f9
/* 80088098  41 82 00 1C */	beq lbl_800880B4
/* 8008809C  2C 00 01 FB */	cmpwi r0, 0x1fb
/* 800880A0  41 82 00 14 */	beq lbl_800880B4
/* 800880A4  2C 00 01 BB */	cmpwi r0, 0x1bb
/* 800880A8  41 82 00 0C */	beq lbl_800880B4
/* 800880AC  2C 00 01 E7 */	cmpwi r0, 0x1e7
/* 800880B0  40 82 00 08 */	bne lbl_800880B8
lbl_800880B4:
/* 800880B4  3B A0 00 00 */	li r29, 0
lbl_800880B8:
/* 800880B8  88 1C 00 20 */	lbz r0, 0x20(r28)
/* 800880BC  28 00 00 01 */	cmplwi r0, 1
/* 800880C0  41 82 00 14 */	beq lbl_800880D4
/* 800880C4  80 7C 00 00 */	lwz r3, 0(r28)
/* 800880C8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800880CC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800880D0  41 82 00 38 */	beq lbl_80088108
lbl_800880D4:
/* 800880D4  7F C3 F3 78 */	mr r3, r30
/* 800880D8  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800880DC  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 800880E0  7D 89 03 A6 */	mtctr r12
/* 800880E4  4E 80 04 21 */	bctrl 
/* 800880E8  2C 03 00 00 */	cmpwi r3, 0
/* 800880EC  40 82 00 1C */	bne lbl_80088108
/* 800880F0  80 7C 00 00 */	lwz r3, 0(r28)
/* 800880F4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 800880F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800880FC  41 82 00 08 */	beq lbl_80088104
/* 80088100  3B A0 00 04 */	li r29, 4
lbl_80088104:
/* 80088104  9B AD 8B A5 */	stb r29, struct_80451124+0x1(r13)
lbl_80088108:
/* 80088108  80 7C 00 04 */	lwz r3, 4(r28)
/* 8008810C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80088110  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80088114  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80088118  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 8008811C  39 61 00 40 */	addi r11, r1, 0x40
/* 80088120  48 2D A0 F9 */	bl _restgpr_25
/* 80088124  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80088128  7C 08 03 A6 */	mtlr r0
/* 8008812C  38 21 00 60 */	addi r1, r1, 0x60
/* 80088130  4E 80 00 20 */	blr 

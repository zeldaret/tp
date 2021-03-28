lbl_805898A0:
/* 805898A0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805898A4  7C 08 02 A6 */	mflr r0
/* 805898A8  90 01 00 74 */	stw r0, 0x74(r1)
/* 805898AC  39 61 00 70 */	addi r11, r1, 0x70
/* 805898B0  4B DD 89 1C */	b _savegpr_25
/* 805898B4  7C 7A 1B 78 */	mr r26, r3
/* 805898B8  3C 60 80 59 */	lis r3, l_gateBmdIdx@ha
/* 805898BC  3B A3 AB 30 */	addi r29, r3, l_gateBmdIdx@l
/* 805898C0  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 805898C4  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 805898C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805898CC  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 805898D0  83 3C 5D AC */	lwz r25, 0x5dac(r28)
/* 805898D4  7F 83 E3 78 */	mr r3, r28
/* 805898D8  7F 64 DB 78 */	mr r4, r27
/* 805898DC  88 1A 04 BA */	lbz r0, 0x4ba(r26)
/* 805898E0  7C 05 07 74 */	extsb r5, r0
/* 805898E4  4B AA BA 7C */	b isSwitch__10dSv_info_cCFii
/* 805898E8  2C 03 00 00 */	cmpwi r3, 0
/* 805898EC  40 82 00 0C */	bne lbl_805898F8
/* 805898F0  28 1B 00 FF */	cmplwi r27, 0xff
/* 805898F4  40 82 04 9C */	bne lbl_80589D90
lbl_805898F8:
/* 805898F8  7F 43 D3 78 */	mr r3, r26
/* 805898FC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80589900  38 A1 00 20 */	addi r5, r1, 0x20
/* 80589904  4B FF F3 FD */	bl checkAreaL__12daObjKGate_cFPC4cXyzPC4cXyz
/* 80589908  7C 7E 1B 78 */	mr r30, r3
/* 8058990C  7F 43 D3 78 */	mr r3, r26
/* 80589910  38 81 00 2C */	addi r4, r1, 0x2c
/* 80589914  38 A1 00 20 */	addi r5, r1, 0x20
/* 80589918  4B FF F7 BD */	bl checkAreaR__12daObjKGate_cFPC4cXyzPC4cXyz
/* 8058991C  7C 7F 1B 78 */	mr r31, r3
/* 80589920  AB 9A 0B A0 */	lha r28, 0xba0(r26)
/* 80589924  AB 7A 0B A2 */	lha r27, 0xba2(r26)
/* 80589928  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 8058992C  C0 19 05 2C */	lfs f0, 0x52c(r25)
/* 80589930  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80589934  41 82 00 8C */	beq lbl_805899C0
/* 80589938  2C 1E 00 01 */	cmpwi r30, 1
/* 8058993C  40 82 00 44 */	bne lbl_80589980
/* 80589940  7F 43 D3 78 */	mr r3, r26
/* 80589944  7F 24 CB 78 */	mr r4, r25
/* 80589948  4B FF FC 89 */	bl checkDirL__12daObjKGate_cFP10fopAc_ac_c
/* 8058994C  2C 03 00 01 */	cmpwi r3, 1
/* 80589950  41 82 00 20 */	beq lbl_80589970
/* 80589954  40 80 00 24 */	bge lbl_80589978
/* 80589958  2C 03 00 00 */	cmpwi r3, 0
/* 8058995C  40 80 00 08 */	bge lbl_80589964
/* 80589960  48 00 00 18 */	b lbl_80589978
lbl_80589964:
/* 80589964  38 00 01 F4 */	li r0, 0x1f4
/* 80589968  B0 1A 0B A0 */	sth r0, 0xba0(r26)
/* 8058996C  48 00 00 0C */	b lbl_80589978
lbl_80589970:
/* 80589970  38 00 FE 0C */	li r0, -500
/* 80589974  B0 1A 0B A0 */	sth r0, 0xba0(r26)
lbl_80589978:
/* 80589978  C0 1D 01 24 */	lfs f0, 0x124(r29)
/* 8058997C  D0 1A 0B B4 */	stfs f0, 0xbb4(r26)
lbl_80589980:
/* 80589980  2C 1F 00 01 */	cmpwi r31, 1
/* 80589984  40 82 00 3C */	bne lbl_805899C0
/* 80589988  7F 43 D3 78 */	mr r3, r26
/* 8058998C  7F 24 CB 78 */	mr r4, r25
/* 80589990  4B FF FC D5 */	bl checkDirR__12daObjKGate_cFP10fopAc_ac_c
/* 80589994  2C 03 00 01 */	cmpwi r3, 1
/* 80589998  41 82 00 20 */	beq lbl_805899B8
/* 8058999C  40 80 00 24 */	bge lbl_805899C0
/* 805899A0  2C 03 00 00 */	cmpwi r3, 0
/* 805899A4  40 80 00 08 */	bge lbl_805899AC
/* 805899A8  48 00 00 18 */	b lbl_805899C0
lbl_805899AC:
/* 805899AC  38 00 FE 0C */	li r0, -500
/* 805899B0  B0 1A 0B A2 */	sth r0, 0xba2(r26)
/* 805899B4  48 00 00 0C */	b lbl_805899C0
lbl_805899B8:
/* 805899B8  38 00 01 F4 */	li r0, 0x1f4
/* 805899BC  B0 1A 0B A2 */	sth r0, 0xba2(r26)
lbl_805899C0:
/* 805899C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805899C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805899C8  83 23 5D B8 */	lwz r25, 0x5db8(r3)
/* 805899CC  28 19 00 00 */	cmplwi r25, 0
/* 805899D0  41 82 00 9C */	beq lbl_80589A6C
/* 805899D4  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 805899D8  C0 19 05 2C */	lfs f0, 0x52c(r25)
/* 805899DC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805899E0  41 82 00 8C */	beq lbl_80589A6C
/* 805899E4  2C 1E 00 03 */	cmpwi r30, 3
/* 805899E8  40 82 00 44 */	bne lbl_80589A2C
/* 805899EC  7F 43 D3 78 */	mr r3, r26
/* 805899F0  7F 24 CB 78 */	mr r4, r25
/* 805899F4  4B FF FB DD */	bl checkDirL__12daObjKGate_cFP10fopAc_ac_c
/* 805899F8  2C 03 00 01 */	cmpwi r3, 1
/* 805899FC  41 82 00 20 */	beq lbl_80589A1C
/* 80589A00  40 80 00 24 */	bge lbl_80589A24
/* 80589A04  2C 03 00 00 */	cmpwi r3, 0
/* 80589A08  40 80 00 08 */	bge lbl_80589A10
/* 80589A0C  48 00 00 18 */	b lbl_80589A24
lbl_80589A10:
/* 80589A10  38 00 03 20 */	li r0, 0x320
/* 80589A14  B0 1A 0B A0 */	sth r0, 0xba0(r26)
/* 80589A18  48 00 00 0C */	b lbl_80589A24
lbl_80589A1C:
/* 80589A1C  38 00 FC E0 */	li r0, -800
/* 80589A20  B0 1A 0B A0 */	sth r0, 0xba0(r26)
lbl_80589A24:
/* 80589A24  C0 1D 01 28 */	lfs f0, 0x128(r29)
/* 80589A28  D0 1A 0B B4 */	stfs f0, 0xbb4(r26)
lbl_80589A2C:
/* 80589A2C  2C 1F 00 03 */	cmpwi r31, 3
/* 80589A30  40 82 00 3C */	bne lbl_80589A6C
/* 80589A34  7F 43 D3 78 */	mr r3, r26
/* 80589A38  7F 24 CB 78 */	mr r4, r25
/* 80589A3C  4B FF FC 29 */	bl checkDirR__12daObjKGate_cFP10fopAc_ac_c
/* 80589A40  2C 03 00 01 */	cmpwi r3, 1
/* 80589A44  41 82 00 20 */	beq lbl_80589A64
/* 80589A48  40 80 00 24 */	bge lbl_80589A6C
/* 80589A4C  2C 03 00 00 */	cmpwi r3, 0
/* 80589A50  40 80 00 08 */	bge lbl_80589A58
/* 80589A54  48 00 00 18 */	b lbl_80589A6C
lbl_80589A58:
/* 80589A58  38 00 FC E0 */	li r0, -800
/* 80589A5C  B0 1A 0B A2 */	sth r0, 0xba2(r26)
/* 80589A60  48 00 00 0C */	b lbl_80589A6C
lbl_80589A64:
/* 80589A64  38 00 03 20 */	li r0, 0x320
/* 80589A68  B0 1A 0B A2 */	sth r0, 0xba2(r26)
lbl_80589A6C:
/* 80589A6C  3C 60 80 59 */	lis r3, search_coach__FPvPv@ha
/* 80589A70  38 63 80 78 */	addi r3, r3, search_coach__FPvPv@l
/* 80589A74  7F 44 D3 78 */	mr r4, r26
/* 80589A78  4B A8 FD 80 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80589A7C  7C 79 1B 79 */	or. r25, r3, r3
/* 80589A80  41 82 00 9C */	beq lbl_80589B1C
/* 80589A84  C0 3D 00 AC */	lfs f1, 0xac(r29)
/* 80589A88  C0 19 05 2C */	lfs f0, 0x52c(r25)
/* 80589A8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80589A90  41 82 00 8C */	beq lbl_80589B1C
/* 80589A94  2C 1E 00 02 */	cmpwi r30, 2
/* 80589A98  40 82 00 44 */	bne lbl_80589ADC
/* 80589A9C  7F 43 D3 78 */	mr r3, r26
/* 80589AA0  7F 24 CB 78 */	mr r4, r25
/* 80589AA4  4B FF FB 2D */	bl checkDirL__12daObjKGate_cFP10fopAc_ac_c
/* 80589AA8  2C 03 00 01 */	cmpwi r3, 1
/* 80589AAC  41 82 00 20 */	beq lbl_80589ACC
/* 80589AB0  40 80 00 24 */	bge lbl_80589AD4
/* 80589AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80589AB8  40 80 00 08 */	bge lbl_80589AC0
/* 80589ABC  48 00 00 18 */	b lbl_80589AD4
lbl_80589AC0:
/* 80589AC0  38 00 03 84 */	li r0, 0x384
/* 80589AC4  B0 1A 0B A0 */	sth r0, 0xba0(r26)
/* 80589AC8  48 00 00 0C */	b lbl_80589AD4
lbl_80589ACC:
/* 80589ACC  38 00 FC 7C */	li r0, -900
/* 80589AD0  B0 1A 0B A0 */	sth r0, 0xba0(r26)
lbl_80589AD4:
/* 80589AD4  C0 1D 01 28 */	lfs f0, 0x128(r29)
/* 80589AD8  D0 1A 0B B4 */	stfs f0, 0xbb4(r26)
lbl_80589ADC:
/* 80589ADC  2C 1F 00 02 */	cmpwi r31, 2
/* 80589AE0  40 82 00 3C */	bne lbl_80589B1C
/* 80589AE4  7F 43 D3 78 */	mr r3, r26
/* 80589AE8  7F 24 CB 78 */	mr r4, r25
/* 80589AEC  4B FF FB 79 */	bl checkDirR__12daObjKGate_cFP10fopAc_ac_c
/* 80589AF0  2C 03 00 01 */	cmpwi r3, 1
/* 80589AF4  41 82 00 20 */	beq lbl_80589B14
/* 80589AF8  40 80 00 24 */	bge lbl_80589B1C
/* 80589AFC  2C 03 00 00 */	cmpwi r3, 0
/* 80589B00  40 80 00 08 */	bge lbl_80589B08
/* 80589B04  48 00 00 18 */	b lbl_80589B1C
lbl_80589B08:
/* 80589B08  38 00 FC 7C */	li r0, -900
/* 80589B0C  B0 1A 0B A2 */	sth r0, 0xba2(r26)
/* 80589B10  48 00 00 0C */	b lbl_80589B1C
lbl_80589B14:
/* 80589B14  38 00 03 84 */	li r0, 0x384
/* 80589B18  B0 1A 0B A2 */	sth r0, 0xba2(r26)
lbl_80589B1C:
/* 80589B1C  7F 83 E3 78 */	mr r3, r28
/* 80589B20  4B DD B5 B0 */	b abs
/* 80589B24  7C 7C 1B 78 */	mr r28, r3
/* 80589B28  A8 7A 0B A0 */	lha r3, 0xba0(r26)
/* 80589B2C  4B DD B5 A4 */	b abs
/* 80589B30  7C 63 E0 50 */	subf r3, r3, r28
/* 80589B34  4B DD B5 9C */	b abs
/* 80589B38  2C 03 01 90 */	cmpwi r3, 0x190
/* 80589B3C  41 81 00 28 */	bgt lbl_80589B64
/* 80589B40  7F 63 DB 78 */	mr r3, r27
/* 80589B44  4B DD B5 8C */	b abs
/* 80589B48  7C 7B 1B 78 */	mr r27, r3
/* 80589B4C  A8 7A 0B A2 */	lha r3, 0xba2(r26)
/* 80589B50  4B DD B5 80 */	b abs
/* 80589B54  7C 63 D8 50 */	subf r3, r3, r27
/* 80589B58  4B DD B5 78 */	b abs
/* 80589B5C  2C 03 01 90 */	cmpwi r3, 0x190
/* 80589B60  40 81 00 0C */	ble lbl_80589B6C
lbl_80589B64:
/* 80589B64  7F 43 D3 78 */	mr r3, r26
/* 80589B68  4B FF FC 0D */	bl setCrkSE__12daObjKGate_cFv
lbl_80589B6C:
/* 80589B6C  A8 1A 0B A0 */	lha r0, 0xba0(r26)
/* 80589B70  2C 00 05 DC */	cmpwi r0, 0x5dc
/* 80589B74  40 81 00 0C */	ble lbl_80589B80
/* 80589B78  38 00 05 DC */	li r0, 0x5dc
/* 80589B7C  B0 1A 0B A0 */	sth r0, 0xba0(r26)
lbl_80589B80:
/* 80589B80  A8 1A 0B A0 */	lha r0, 0xba0(r26)
/* 80589B84  2C 00 FA 24 */	cmpwi r0, -1500
/* 80589B88  40 80 00 0C */	bge lbl_80589B94
/* 80589B8C  38 00 FA 24 */	li r0, -1500
/* 80589B90  B0 1A 0B A0 */	sth r0, 0xba0(r26)
lbl_80589B94:
/* 80589B94  A8 1A 0B A2 */	lha r0, 0xba2(r26)
/* 80589B98  2C 00 05 DC */	cmpwi r0, 0x5dc
/* 80589B9C  40 81 00 0C */	ble lbl_80589BA8
/* 80589BA0  38 00 05 DC */	li r0, 0x5dc
/* 80589BA4  B0 1A 0B A2 */	sth r0, 0xba2(r26)
lbl_80589BA8:
/* 80589BA8  A8 1A 0B A2 */	lha r0, 0xba2(r26)
/* 80589BAC  2C 00 FA 24 */	cmpwi r0, -1500
/* 80589BB0  40 80 00 0C */	bge lbl_80589BBC
/* 80589BB4  38 00 FA 24 */	li r0, -1500
/* 80589BB8  B0 1A 0B A2 */	sth r0, 0xba2(r26)
lbl_80589BBC:
/* 80589BBC  A8 7A 0B 7A */	lha r3, 0xb7a(r26)
/* 80589BC0  A8 1A 0B A0 */	lha r0, 0xba0(r26)
/* 80589BC4  7C 03 02 14 */	add r0, r3, r0
/* 80589BC8  B0 1A 0B 7A */	sth r0, 0xb7a(r26)
/* 80589BCC  A8 1A 0B 7A */	lha r0, 0xb7a(r26)
/* 80589BD0  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80589BD4  40 81 00 44 */	ble lbl_80589C18
/* 80589BD8  38 00 40 00 */	li r0, 0x4000
/* 80589BDC  B0 1A 0B 7A */	sth r0, 0xb7a(r26)
/* 80589BE0  A8 1A 0B A0 */	lha r0, 0xba0(r26)
/* 80589BE4  C8 3D 01 50 */	lfd f1, 0x150(r29)
/* 80589BE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80589BEC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80589BF0  3C 00 43 30 */	lis r0, 0x4330
/* 80589BF4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80589BF8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80589BFC  EC 20 08 28 */	fsubs f1, f0, f1
/* 80589C00  C0 1D 01 2C */	lfs f0, 0x12c(r29)
/* 80589C04  EC 01 00 32 */	fmuls f0, f1, f0
/* 80589C08  FC 00 00 1E */	fctiwz f0, f0
/* 80589C0C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80589C10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80589C14  B0 1A 0B A0 */	sth r0, 0xba0(r26)
lbl_80589C18:
/* 80589C18  A8 1A 0B 7A */	lha r0, 0xb7a(r26)
/* 80589C1C  2C 00 C0 00 */	cmpwi r0, -16384
/* 80589C20  40 80 00 44 */	bge lbl_80589C64
/* 80589C24  38 00 C0 00 */	li r0, -16384
/* 80589C28  B0 1A 0B 7A */	sth r0, 0xb7a(r26)
/* 80589C2C  A8 1A 0B A0 */	lha r0, 0xba0(r26)
/* 80589C30  C8 3D 01 50 */	lfd f1, 0x150(r29)
/* 80589C34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80589C38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80589C3C  3C 00 43 30 */	lis r0, 0x4330
/* 80589C40  90 01 00 40 */	stw r0, 0x40(r1)
/* 80589C44  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80589C48  EC 20 08 28 */	fsubs f1, f0, f1
/* 80589C4C  C0 1D 01 2C */	lfs f0, 0x12c(r29)
/* 80589C50  EC 01 00 32 */	fmuls f0, f1, f0
/* 80589C54  FC 00 00 1E */	fctiwz f0, f0
/* 80589C58  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80589C5C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80589C60  B0 1A 0B A0 */	sth r0, 0xba0(r26)
lbl_80589C64:
/* 80589C64  A8 7A 0B 78 */	lha r3, 0xb78(r26)
/* 80589C68  A8 1A 0B A2 */	lha r0, 0xba2(r26)
/* 80589C6C  7C 03 02 14 */	add r0, r3, r0
/* 80589C70  B0 1A 0B 78 */	sth r0, 0xb78(r26)
/* 80589C74  A8 1A 0B 78 */	lha r0, 0xb78(r26)
/* 80589C78  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80589C7C  40 81 00 44 */	ble lbl_80589CC0
/* 80589C80  38 00 40 00 */	li r0, 0x4000
/* 80589C84  B0 1A 0B 78 */	sth r0, 0xb78(r26)
/* 80589C88  A8 1A 0B A2 */	lha r0, 0xba2(r26)
/* 80589C8C  C8 3D 01 50 */	lfd f1, 0x150(r29)
/* 80589C90  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80589C94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80589C98  3C 00 43 30 */	lis r0, 0x4330
/* 80589C9C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80589CA0  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80589CA4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80589CA8  C0 1D 01 2C */	lfs f0, 0x12c(r29)
/* 80589CAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80589CB0  FC 00 00 1E */	fctiwz f0, f0
/* 80589CB4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80589CB8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80589CBC  B0 1A 0B A2 */	sth r0, 0xba2(r26)
lbl_80589CC0:
/* 80589CC0  A8 1A 0B 78 */	lha r0, 0xb78(r26)
/* 80589CC4  2C 00 C0 00 */	cmpwi r0, -16384
/* 80589CC8  40 80 00 44 */	bge lbl_80589D0C
/* 80589CCC  38 00 C0 00 */	li r0, -16384
/* 80589CD0  B0 1A 0B 78 */	sth r0, 0xb78(r26)
/* 80589CD4  A8 1A 0B A2 */	lha r0, 0xba2(r26)
/* 80589CD8  C8 3D 01 50 */	lfd f1, 0x150(r29)
/* 80589CDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80589CE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80589CE4  3C 00 43 30 */	lis r0, 0x4330
/* 80589CE8  90 01 00 40 */	stw r0, 0x40(r1)
/* 80589CEC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80589CF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80589CF4  C0 1D 01 2C */	lfs f0, 0x12c(r29)
/* 80589CF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80589CFC  FC 00 00 1E */	fctiwz f0, f0
/* 80589D00  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80589D04  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80589D08  B0 1A 0B A2 */	sth r0, 0xba2(r26)
lbl_80589D0C:
/* 80589D0C  38 7A 0B A0 */	addi r3, r26, 0xba0
/* 80589D10  38 80 00 00 */	li r4, 0
/* 80589D14  38 A0 00 0A */	li r5, 0xa
/* 80589D18  38 C0 00 64 */	li r6, 0x64
/* 80589D1C  38 E0 00 0A */	li r7, 0xa
/* 80589D20  4B CE 68 20 */	b cLib_addCalcAngleS__FPsssss
/* 80589D24  38 7A 0B A2 */	addi r3, r26, 0xba2
/* 80589D28  38 80 00 00 */	li r4, 0
/* 80589D2C  38 A0 00 0A */	li r5, 0xa
/* 80589D30  38 C0 00 64 */	li r6, 0x64
/* 80589D34  38 E0 00 0A */	li r7, 0xa
/* 80589D38  4B CE 68 08 */	b cLib_addCalcAngleS__FPsssss
/* 80589D3C  38 7A 0B B2 */	addi r3, r26, 0xbb2
/* 80589D40  38 80 30 00 */	li r4, 0x3000
/* 80589D44  38 A0 00 0A */	li r5, 0xa
/* 80589D48  38 C0 04 00 */	li r6, 0x400
/* 80589D4C  38 E0 01 00 */	li r7, 0x100
/* 80589D50  4B CE 67 F0 */	b cLib_addCalcAngleS__FPsssss
/* 80589D54  38 7A 0B B8 */	addi r3, r26, 0xbb8
/* 80589D58  C0 3D 01 30 */	lfs f1, 0x130(r29)
/* 80589D5C  C0 5D 00 A4 */	lfs f2, 0xa4(r29)
/* 80589D60  4B CE 69 E0 */	b cLib_chaseF__FPfff
/* 80589D64  38 7A 0B C4 */	addi r3, r26, 0xbc4
/* 80589D68  C0 3D 01 34 */	lfs f1, 0x134(r29)
/* 80589D6C  C0 5D 00 A4 */	lfs f2, 0xa4(r29)
/* 80589D70  4B CE 69 D0 */	b cLib_chaseF__FPfff
/* 80589D74  38 7A 0B D0 */	addi r3, r26, 0xbd0
/* 80589D78  38 80 7F FF */	li r4, 0x7fff
/* 80589D7C  38 A0 00 0A */	li r5, 0xa
/* 80589D80  38 C0 04 00 */	li r6, 0x400
/* 80589D84  38 E0 01 00 */	li r7, 0x100
/* 80589D88  4B CE 67 B8 */	b cLib_addCalcAngleS__FPsssss
/* 80589D8C  48 00 01 9C */	b lbl_80589F28
lbl_80589D90:
/* 80589D90  7F 43 D3 78 */	mr r3, r26
/* 80589D94  38 81 00 14 */	addi r4, r1, 0x14
/* 80589D98  38 A1 00 08 */	addi r5, r1, 8
/* 80589D9C  4B FF EF 65 */	bl checkAreaL__12daObjKGate_cFPC4cXyzPC4cXyz
/* 80589DA0  7C 7B 1B 78 */	mr r27, r3
/* 80589DA4  7F 43 D3 78 */	mr r3, r26
/* 80589DA8  38 81 00 14 */	addi r4, r1, 0x14
/* 80589DAC  38 A1 00 08 */	addi r5, r1, 8
/* 80589DB0  4B FF F3 25 */	bl checkAreaR__12daObjKGate_cFPC4cXyzPC4cXyz
/* 80589DB4  2C 1B 00 00 */	cmpwi r27, 0
/* 80589DB8  40 82 00 0C */	bne lbl_80589DC4
/* 80589DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80589DC0  41 82 00 80 */	beq lbl_80589E40
lbl_80589DC4:
/* 80589DC4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80589DC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80589DCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80589DD0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80589DD4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80589DD8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80589DDC  41 82 00 3C */	beq lbl_80589E18
/* 80589DE0  80 04 05 84 */	lwz r0, 0x584(r4)
/* 80589DE4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80589DE8  40 82 00 10 */	bne lbl_80589DF8
/* 80589DEC  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80589DF0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80589DF4  41 82 00 4C */	beq lbl_80589E40
lbl_80589DF8:
/* 80589DF8  C0 1D 01 38 */	lfs f0, 0x138(r29)
/* 80589DFC  D0 1A 0B 98 */	stfs f0, 0xb98(r26)
/* 80589E00  D0 1A 0B 94 */	stfs f0, 0xb94(r26)
/* 80589E04  38 00 08 00 */	li r0, 0x800
/* 80589E08  B0 1A 0B B0 */	sth r0, 0xbb0(r26)
/* 80589E0C  7F 43 D3 78 */	mr r3, r26
/* 80589E10  4B FF F8 E9 */	bl setAtkSE__12daObjKGate_cFv
/* 80589E14  48 00 00 2C */	b lbl_80589E40
lbl_80589E18:
/* 80589E18  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80589E1C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80589E20  41 82 00 20 */	beq lbl_80589E40
/* 80589E24  C0 1D 01 3C */	lfs f0, 0x13c(r29)
/* 80589E28  D0 1A 0B 98 */	stfs f0, 0xb98(r26)
/* 80589E2C  D0 1A 0B 94 */	stfs f0, 0xb94(r26)
/* 80589E30  38 00 08 00 */	li r0, 0x800
/* 80589E34  B0 1A 0B B0 */	sth r0, 0xbb0(r26)
/* 80589E38  7F 43 D3 78 */	mr r3, r26
/* 80589E3C  4B FF F8 BD */	bl setAtkSE__12daObjKGate_cFv
lbl_80589E40:
/* 80589E40  80 1A 0B 9C */	lwz r0, 0xb9c(r26)
/* 80589E44  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80589E48  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80589E4C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80589E50  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80589E54  7C 23 04 2E */	lfsx f1, r3, r0
/* 80589E58  C0 1A 0B 94 */	lfs f0, 0xb94(r26)
/* 80589E5C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80589E60  FC 00 00 1E */	fctiwz f0, f0
/* 80589E64  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80589E68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80589E6C  B0 1A 0B 7A */	sth r0, 0xb7a(r26)
/* 80589E70  80 1A 0B 9C */	lwz r0, 0xb9c(r26)
/* 80589E74  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80589E78  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80589E7C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80589E80  C0 3A 0B 98 */	lfs f1, 0xb98(r26)
/* 80589E84  FC 00 00 50 */	fneg f0, f0
/* 80589E88  EC 01 00 32 */	fmuls f0, f1, f0
/* 80589E8C  FC 00 00 1E */	fctiwz f0, f0
/* 80589E90  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80589E94  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80589E98  B0 1A 0B 78 */	sth r0, 0xb78(r26)
/* 80589E9C  38 7A 0B 94 */	addi r3, r26, 0xb94
/* 80589EA0  C0 3D 01 40 */	lfs f1, 0x140(r29)
/* 80589EA4  C0 5D 01 44 */	lfs f2, 0x144(r29)
/* 80589EA8  4B CE 5B D8 */	b cLib_addCalc0__FPfff
/* 80589EAC  38 7A 0B 98 */	addi r3, r26, 0xb98
/* 80589EB0  C0 3D 01 40 */	lfs f1, 0x140(r29)
/* 80589EB4  C0 5D 01 44 */	lfs f2, 0x144(r29)
/* 80589EB8  4B CE 5B C8 */	b cLib_addCalc0__FPfff
/* 80589EBC  A8 7A 0B B0 */	lha r3, 0xbb0(r26)
/* 80589EC0  38 03 FE A0 */	addi r0, r3, -352
/* 80589EC4  B0 1A 0B B0 */	sth r0, 0xbb0(r26)
/* 80589EC8  A8 7A 0B AE */	lha r3, 0xbae(r26)
/* 80589ECC  A8 1A 0B B0 */	lha r0, 0xbb0(r26)
/* 80589ED0  7C 03 02 14 */	add r0, r3, r0
/* 80589ED4  B0 1A 0B AE */	sth r0, 0xbae(r26)
/* 80589ED8  A8 1A 0B AE */	lha r0, 0xbae(r26)
/* 80589EDC  2C 00 00 00 */	cmpwi r0, 0
/* 80589EE0  40 80 00 48 */	bge lbl_80589F28
/* 80589EE4  38 00 00 00 */	li r0, 0
/* 80589EE8  B0 1A 0B AE */	sth r0, 0xbae(r26)
/* 80589EEC  C0 5D 01 48 */	lfs f2, 0x148(r29)
/* 80589EF0  A8 1A 0B B0 */	lha r0, 0xbb0(r26)
/* 80589EF4  7C 00 00 D0 */	neg r0, r0
/* 80589EF8  C8 3D 01 50 */	lfd f1, 0x150(r29)
/* 80589EFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80589F00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80589F04  3C 00 43 30 */	lis r0, 0x4330
/* 80589F08  90 01 00 40 */	stw r0, 0x40(r1)
/* 80589F0C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80589F10  EC 00 08 28 */	fsubs f0, f0, f1
/* 80589F14  EC 02 00 32 */	fmuls f0, f2, f0
/* 80589F18  FC 00 00 1E */	fctiwz f0, f0
/* 80589F1C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80589F20  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80589F24  B0 1A 0B B0 */	sth r0, 0xbb0(r26)
lbl_80589F28:
/* 80589F28  39 61 00 70 */	addi r11, r1, 0x70
/* 80589F2C  4B DD 82 EC */	b _restgpr_25
/* 80589F30  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80589F34  7C 08 03 A6 */	mtlr r0
/* 80589F38  38 21 00 70 */	addi r1, r1, 0x70
/* 80589F3C  4E 80 00 20 */	blr 

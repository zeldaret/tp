lbl_806C8C20:
/* 806C8C20  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806C8C24  7C 08 02 A6 */	mflr r0
/* 806C8C28  90 01 00 84 */	stw r0, 0x84(r1)
/* 806C8C2C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806C8C30  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806C8C34  39 61 00 70 */	addi r11, r1, 0x70
/* 806C8C38  4B C9 95 A0 */	b _savegpr_28
/* 806C8C3C  7C 7C 1B 78 */	mr r28, r3
/* 806C8C40  3C 60 80 6D */	lis r3, lit_3904@ha
/* 806C8C44  3B C3 D0 00 */	addi r30, r3, lit_3904@l
/* 806C8C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806C8C4C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806C8C50  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 806C8C54  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806C8C58  38 63 D3 68 */	addi r3, r3, l_HIO@l
/* 806C8C5C  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 806C8C60  88 1C 0B 9A */	lbz r0, 0xb9a(r28)
/* 806C8C64  28 00 00 02 */	cmplwi r0, 2
/* 806C8C68  40 82 00 08 */	bne lbl_806C8C70
/* 806C8C6C  C3 FE 00 80 */	lfs f31, 0x80(r30)
lbl_806C8C70:
/* 806C8C70  80 1C 0B 78 */	lwz r0, 0xb78(r28)
/* 806C8C74  2C 00 00 02 */	cmpwi r0, 2
/* 806C8C78  41 82 03 D0 */	beq lbl_806C9048
/* 806C8C7C  40 80 00 14 */	bge lbl_806C8C90
/* 806C8C80  2C 00 00 00 */	cmpwi r0, 0
/* 806C8C84  41 82 00 18 */	beq lbl_806C8C9C
/* 806C8C88  40 80 01 1C */	bge lbl_806C8DA4
/* 806C8C8C  48 00 04 A4 */	b lbl_806C9130
lbl_806C8C90:
/* 806C8C90  2C 00 00 0A */	cmpwi r0, 0xa
/* 806C8C94  41 82 00 08 */	beq lbl_806C8C9C
/* 806C8C98  48 00 04 98 */	b lbl_806C9130
lbl_806C8C9C:
/* 806C8C9C  38 00 00 00 */	li r0, 0
/* 806C8CA0  98 1C 0B 9E */	stb r0, 0xb9e(r28)
/* 806C8CA4  80 1C 0B 78 */	lwz r0, 0xb78(r28)
/* 806C8CA8  2C 00 00 0A */	cmpwi r0, 0xa
/* 806C8CAC  40 82 00 20 */	bne lbl_806C8CCC
/* 806C8CB0  7F 83 E3 78 */	mr r3, r28
/* 806C8CB4  38 80 00 07 */	li r4, 7
/* 806C8CB8  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 806C8CBC  38 A0 00 02 */	li r5, 2
/* 806C8CC0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C8CC4  4B FF ED F5 */	bl bckSet__8daE_GE_cFifUcf
/* 806C8CC8  48 00 00 1C */	b lbl_806C8CE4
lbl_806C8CCC:
/* 806C8CCC  7F 83 E3 78 */	mr r3, r28
/* 806C8CD0  38 80 00 07 */	li r4, 7
/* 806C8CD4  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 806C8CD8  38 A0 00 02 */	li r5, 2
/* 806C8CDC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C8CE0  4B FF ED D9 */	bl bckSet__8daE_GE_cFifUcf
lbl_806C8CE4:
/* 806C8CE4  38 00 00 01 */	li r0, 1
/* 806C8CE8  90 1C 0B 78 */	stw r0, 0xb78(r28)
/* 806C8CEC  4B B9 EB 80 */	b cM_rnd__Fv
/* 806C8CF0  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 806C8CF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C8CF8  40 80 00 10 */	bge lbl_806C8D08
/* 806C8CFC  38 00 00 01 */	li r0, 1
/* 806C8D00  98 1C 0B 9D */	stb r0, 0xb9d(r28)
/* 806C8D04  48 00 00 0C */	b lbl_806C8D10
lbl_806C8D08:
/* 806C8D08  38 00 00 00 */	li r0, 0
/* 806C8D0C  98 1C 0B 9D */	stb r0, 0xb9d(r28)
lbl_806C8D10:
/* 806C8D10  88 1C 0B 9D */	lbz r0, 0xb9d(r28)
/* 806C8D14  28 00 00 00 */	cmplwi r0, 0
/* 806C8D18  41 82 00 30 */	beq lbl_806C8D48
/* 806C8D1C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806C8D20  4B B9 EC 6C */	b cM_rndFX__Ff
/* 806C8D24  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 806C8D28  EC 20 00 72 */	fmuls f1, f0, f1
/* 806C8D2C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806C8D30  EC 00 08 2A */	fadds f0, f0, f1
/* 806C8D34  FC 00 00 1E */	fctiwz f0, f0
/* 806C8D38  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806C8D3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806C8D40  B0 1C 0B 8A */	sth r0, 0xb8a(r28)
/* 806C8D44  48 00 00 2C */	b lbl_806C8D70
lbl_806C8D48:
/* 806C8D48  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806C8D4C  4B B9 EC 40 */	b cM_rndFX__Ff
/* 806C8D50  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 806C8D54  EC 20 00 72 */	fmuls f1, f0, f1
/* 806C8D58  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 806C8D5C  EC 00 08 2A */	fadds f0, f0, f1
/* 806C8D60  FC 00 00 1E */	fctiwz f0, f0
/* 806C8D64  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806C8D68  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806C8D6C  B0 1C 0B 8A */	sth r0, 0xb8a(r28)
lbl_806C8D70:
/* 806C8D70  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 806C8D74  4B B9 EB E0 */	b cM_rndF__Ff
/* 806C8D78  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 806C8D7C  EC 00 08 2A */	fadds f0, f0, f1
/* 806C8D80  FC 00 00 1E */	fctiwz f0, f0
/* 806C8D84  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806C8D88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806C8D8C  B0 1C 0B 96 */	sth r0, 0xb96(r28)
/* 806C8D90  38 00 00 00 */	li r0, 0
/* 806C8D94  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 806C8D98  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C8D9C  D0 1C 0B 5C */	stfs f0, 0xb5c(r28)
/* 806C8DA0  48 00 03 90 */	b lbl_806C9130
lbl_806C8DA4:
/* 806C8DA4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 806C8DA8  2C 00 00 00 */	cmpwi r0, 0
/* 806C8DAC  40 82 00 84 */	bne lbl_806C8E30
/* 806C8DB0  C0 3C 0B 5C */	lfs f1, 0xb5c(r28)
/* 806C8DB4  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 806C8DB8  EC 01 00 2A */	fadds f0, f1, f0
/* 806C8DBC  D0 1C 0B 5C */	stfs f0, 0xb5c(r28)
/* 806C8DC0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806C8DC4  38 63 00 0C */	addi r3, r3, 0xc
/* 806C8DC8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806C8DCC  4B C5 F6 60 */	b checkPass__12J3DFrameCtrlFf
/* 806C8DD0  2C 03 00 00 */	cmpwi r3, 0
/* 806C8DD4  41 82 00 98 */	beq lbl_806C8E6C
/* 806C8DD8  C0 3C 0B 5C */	lfs f1, 0xb5c(r28)
/* 806C8DDC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C8DE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C8DE4  4C 41 13 82 */	cror 2, 1, 2
/* 806C8DE8  40 82 00 84 */	bne lbl_806C8E6C
/* 806C8DEC  7F 83 E3 78 */	mr r3, r28
/* 806C8DF0  38 80 00 0A */	li r4, 0xa
/* 806C8DF4  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 806C8DF8  38 A0 00 02 */	li r5, 2
/* 806C8DFC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C8E00  4B FF EC B9 */	bl bckSet__8daE_GE_cFifUcf
/* 806C8E04  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 806C8E08  4B B9 EB 4C */	b cM_rndF__Ff
/* 806C8E0C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 806C8E10  EC 00 08 2A */	fadds f0, f0, f1
/* 806C8E14  FC 00 00 1E */	fctiwz f0, f0
/* 806C8E18  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806C8E1C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806C8E20  B0 1C 0B 96 */	sth r0, 0xb96(r28)
/* 806C8E24  38 00 00 01 */	li r0, 1
/* 806C8E28  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 806C8E2C  48 00 00 40 */	b lbl_806C8E6C
lbl_806C8E30:
/* 806C8E30  C0 3C 0B 5C */	lfs f1, 0xb5c(r28)
/* 806C8E34  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 806C8E38  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C8E3C  D0 1C 0B 5C */	stfs f0, 0xb5c(r28)
/* 806C8E40  A8 1C 0B 96 */	lha r0, 0xb96(r28)
/* 806C8E44  2C 00 00 00 */	cmpwi r0, 0
/* 806C8E48  40 82 00 24 */	bne lbl_806C8E6C
/* 806C8E4C  7F 83 E3 78 */	mr r3, r28
/* 806C8E50  38 80 00 07 */	li r4, 7
/* 806C8E54  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 806C8E58  38 A0 00 02 */	li r5, 2
/* 806C8E5C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C8E60  4B FF EC 59 */	bl bckSet__8daE_GE_cFifUcf
/* 806C8E64  38 00 00 00 */	li r0, 0
/* 806C8E68  90 1C 0B 7C */	stw r0, 0xb7c(r28)
lbl_806C8E6C:
/* 806C8E6C  C0 3C 0B 5C */	lfs f1, 0xb5c(r28)
/* 806C8E70  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C8E74  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806C8E78  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 806C8E7C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 806C8E80  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806C8E84  7F 83 E3 78 */	mr r3, r28
/* 806C8E88  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 806C8E8C  38 A1 00 40 */	addi r5, r1, 0x40
/* 806C8E90  4B FF F6 11 */	bl checkCircleSpeedAdd__8daE_GE_cFP4cXyzP4cXyz
/* 806C8E94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C8E98  41 82 00 14 */	beq lbl_806C8EAC
/* 806C8E9C  A8 7C 0B 8C */	lha r3, 0xb8c(r28)
/* 806C8EA0  A8 1C 0B 8A */	lha r0, 0xb8a(r28)
/* 806C8EA4  7C 03 02 14 */	add r0, r3, r0
/* 806C8EA8  B0 1C 0B 8C */	sth r0, 0xb8c(r28)
lbl_806C8EAC:
/* 806C8EAC  38 61 00 34 */	addi r3, r1, 0x34
/* 806C8EB0  7F 84 E3 78 */	mr r4, r28
/* 806C8EB4  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 806C8EB8  38 C1 00 40 */	addi r6, r1, 0x40
/* 806C8EBC  A8 FC 0B 8C */	lha r7, 0xb8c(r28)
/* 806C8EC0  FC 20 F8 90 */	fmr f1, f31
/* 806C8EC4  39 00 00 06 */	li r8, 6
/* 806C8EC8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C8ECC  4B FF F9 FD */	bl calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf
/* 806C8ED0  A8 1C 0B 90 */	lha r0, 0xb90(r28)
/* 806C8ED4  2C 00 00 00 */	cmpwi r0, 0
/* 806C8ED8  40 82 02 58 */	bne lbl_806C9130
/* 806C8EDC  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 806C8EE0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806C8EE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806C8EE8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806C8EEC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806C8EF0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 806C8EF4  C0 5C 04 B0 */	lfs f2, 0x4b0(r28)
/* 806C8EF8  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 806C8EFC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806C8F00  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806C8F04  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 806C8F08  38 61 00 10 */	addi r3, r1, 0x10
/* 806C8F0C  38 81 00 1C */	addi r4, r1, 0x1c
/* 806C8F10  4B C7 E4 8C */	b PSVECSquareDistance
/* 806C8F14  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C8F18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C8F1C  40 81 00 58 */	ble lbl_806C8F74
/* 806C8F20  FC 00 08 34 */	frsqrte f0, f1
/* 806C8F24  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806C8F28  FC 44 00 32 */	fmul f2, f4, f0
/* 806C8F2C  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806C8F30  FC 00 00 32 */	fmul f0, f0, f0
/* 806C8F34  FC 01 00 32 */	fmul f0, f1, f0
/* 806C8F38  FC 03 00 28 */	fsub f0, f3, f0
/* 806C8F3C  FC 02 00 32 */	fmul f0, f2, f0
/* 806C8F40  FC 44 00 32 */	fmul f2, f4, f0
/* 806C8F44  FC 00 00 32 */	fmul f0, f0, f0
/* 806C8F48  FC 01 00 32 */	fmul f0, f1, f0
/* 806C8F4C  FC 03 00 28 */	fsub f0, f3, f0
/* 806C8F50  FC 02 00 32 */	fmul f0, f2, f0
/* 806C8F54  FC 44 00 32 */	fmul f2, f4, f0
/* 806C8F58  FC 00 00 32 */	fmul f0, f0, f0
/* 806C8F5C  FC 01 00 32 */	fmul f0, f1, f0
/* 806C8F60  FC 03 00 28 */	fsub f0, f3, f0
/* 806C8F64  FC 02 00 32 */	fmul f0, f2, f0
/* 806C8F68  FC 21 00 32 */	fmul f1, f1, f0
/* 806C8F6C  FC 20 08 18 */	frsp f1, f1
/* 806C8F70  48 00 00 88 */	b lbl_806C8FF8
lbl_806C8F74:
/* 806C8F74  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806C8F78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C8F7C  40 80 00 10 */	bge lbl_806C8F8C
/* 806C8F80  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C8F84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806C8F88  48 00 00 70 */	b lbl_806C8FF8
lbl_806C8F8C:
/* 806C8F8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 806C8F90  80 81 00 08 */	lwz r4, 8(r1)
/* 806C8F94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C8F98  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C8F9C  7C 03 00 00 */	cmpw r3, r0
/* 806C8FA0  41 82 00 14 */	beq lbl_806C8FB4
/* 806C8FA4  40 80 00 40 */	bge lbl_806C8FE4
/* 806C8FA8  2C 03 00 00 */	cmpwi r3, 0
/* 806C8FAC  41 82 00 20 */	beq lbl_806C8FCC
/* 806C8FB0  48 00 00 34 */	b lbl_806C8FE4
lbl_806C8FB4:
/* 806C8FB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C8FB8  41 82 00 0C */	beq lbl_806C8FC4
/* 806C8FBC  38 00 00 01 */	li r0, 1
/* 806C8FC0  48 00 00 28 */	b lbl_806C8FE8
lbl_806C8FC4:
/* 806C8FC4  38 00 00 02 */	li r0, 2
/* 806C8FC8  48 00 00 20 */	b lbl_806C8FE8
lbl_806C8FCC:
/* 806C8FCC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C8FD0  41 82 00 0C */	beq lbl_806C8FDC
/* 806C8FD4  38 00 00 05 */	li r0, 5
/* 806C8FD8  48 00 00 10 */	b lbl_806C8FE8
lbl_806C8FDC:
/* 806C8FDC  38 00 00 03 */	li r0, 3
/* 806C8FE0  48 00 00 08 */	b lbl_806C8FE8
lbl_806C8FE4:
/* 806C8FE4  38 00 00 04 */	li r0, 4
lbl_806C8FE8:
/* 806C8FE8  2C 00 00 01 */	cmpwi r0, 1
/* 806C8FEC  40 82 00 0C */	bne lbl_806C8FF8
/* 806C8FF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806C8FF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806C8FF8:
/* 806C8FF8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 806C8FFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9000  40 80 01 30 */	bge lbl_806C9130
/* 806C9004  7F 83 E3 78 */	mr r3, r28
/* 806C9008  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806C900C  4B 95 19 58 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806C9010  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806C9014  38 63 D3 68 */	addi r3, r3, l_HIO@l
/* 806C9018  C0 03 00 08 */	lfs f0, 8(r3)
/* 806C901C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9020  40 80 01 10 */	bge lbl_806C9130
/* 806C9024  7F 83 E3 78 */	mr r3, r28
/* 806C9028  38 80 00 04 */	li r4, 4
/* 806C902C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 806C9030  38 A0 00 00 */	li r5, 0
/* 806C9034  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C9038  4B FF EA 81 */	bl bckSet__8daE_GE_cFifUcf
/* 806C903C  38 00 00 02 */	li r0, 2
/* 806C9040  90 1C 0B 78 */	stw r0, 0xb78(r28)
/* 806C9044  48 00 00 EC */	b lbl_806C9130
lbl_806C9048:
/* 806C9048  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806C904C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806C9050  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 806C9054  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 806C9058  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 806C905C  7F 83 E3 78 */	mr r3, r28
/* 806C9060  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 806C9064  38 A1 00 40 */	addi r5, r1, 0x40
/* 806C9068  4B FF F4 39 */	bl checkCircleSpeedAdd__8daE_GE_cFP4cXyzP4cXyz
/* 806C906C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C9070  41 82 00 14 */	beq lbl_806C9084
/* 806C9074  A8 7C 0B 8C */	lha r3, 0xb8c(r28)
/* 806C9078  A8 1C 0B 8A */	lha r0, 0xb8a(r28)
/* 806C907C  7C 03 02 14 */	add r0, r3, r0
/* 806C9080  B0 1C 0B 8C */	sth r0, 0xb8c(r28)
lbl_806C9084:
/* 806C9084  38 61 00 28 */	addi r3, r1, 0x28
/* 806C9088  7F 84 E3 78 */	mr r4, r28
/* 806C908C  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 806C9090  38 C1 00 40 */	addi r6, r1, 0x40
/* 806C9094  A8 FC 0B 8C */	lha r7, 0xb8c(r28)
/* 806C9098  FC 20 F8 90 */	fmr f1, f31
/* 806C909C  39 00 00 06 */	li r8, 6
/* 806C90A0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806C90A4  4B FF F8 25 */	bl calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf
/* 806C90A8  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806C90AC  38 63 00 0C */	addi r3, r3, 0xc
/* 806C90B0  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 806C90B4  4B C5 F3 78 */	b checkPass__12J3DFrameCtrlFf
/* 806C90B8  2C 03 00 00 */	cmpwi r3, 0
/* 806C90BC  41 82 00 2C */	beq lbl_806C90E8
/* 806C90C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070467@ha */
/* 806C90C4  38 03 04 67 */	addi r0, r3, 0x0467 /* 0x00070467@l */
/* 806C90C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806C90CC  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806C90D0  38 81 00 0C */	addi r4, r1, 0xc
/* 806C90D4  38 A0 FF FF */	li r5, -1
/* 806C90D8  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806C90DC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C90E0  7D 89 03 A6 */	mtctr r12
/* 806C90E4  4E 80 04 21 */	bctrl 
lbl_806C90E8:
/* 806C90E8  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806C90EC  38 80 00 01 */	li r4, 1
/* 806C90F0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C90F4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C90F8  40 82 00 18 */	bne lbl_806C9110
/* 806C90FC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806C9100  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C9104  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C9108  41 82 00 08 */	beq lbl_806C9110
/* 806C910C  38 80 00 00 */	li r4, 0
lbl_806C9110:
/* 806C9110  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C9114  41 82 00 1C */	beq lbl_806C9130
/* 806C9118  7F 83 E3 78 */	mr r3, r28
/* 806C911C  4B FF F2 DD */	bl searchNextAttacker__8daE_GE_cFv
/* 806C9120  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C9124  40 82 00 0C */	bne lbl_806C9130
/* 806C9128  38 00 00 00 */	li r0, 0
/* 806C912C  90 1C 0B 78 */	stw r0, 0xb78(r28)
lbl_806C9130:
/* 806C9130  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806C9134  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806C9138  39 61 00 70 */	addi r11, r1, 0x70
/* 806C913C  4B C9 90 E8 */	b _restgpr_28
/* 806C9140  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806C9144  7C 08 03 A6 */	mtlr r0
/* 806C9148  38 21 00 80 */	addi r1, r1, 0x80
/* 806C914C  4E 80 00 20 */	blr 

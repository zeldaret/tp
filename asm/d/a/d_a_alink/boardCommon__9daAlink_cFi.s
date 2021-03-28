lbl_80105B58:
/* 80105B58  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80105B5C  7C 08 02 A6 */	mflr r0
/* 80105B60  90 01 00 84 */	stw r0, 0x84(r1)
/* 80105B64  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80105B68  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80105B6C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80105B70  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80105B74  39 61 00 60 */	addi r11, r1, 0x60
/* 80105B78  48 25 C6 59 */	bl _savegpr_26
/* 80105B7C  7C 7B 1B 78 */	mr r27, r3
/* 80105B80  7C 9C 23 78 */	mr r28, r4
/* 80105B84  A8 63 04 E4 */	lha r3, 0x4e4(r3)
/* 80105B88  48 25 F5 49 */	bl abs
/* 80105B8C  7C 7D 1B 78 */	mr r29, r3
/* 80105B90  A8 7B 04 E8 */	lha r3, 0x4e8(r27)
/* 80105B94  48 25 F5 3D */	bl abs
/* 80105B98  7C 1D 18 00 */	cmpw r29, r3
/* 80105B9C  40 81 00 08 */	ble lbl_80105BA4
/* 80105BA0  7F A3 EB 78 */	mr r3, r29
lbl_80105BA4:
/* 80105BA4  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80105BA8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80105BAC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80105BB0  7F C3 04 2E */	lfsx f30, r3, r0
/* 80105BB4  3B C0 00 00 */	li r30, 0
/* 80105BB8  3B A0 00 00 */	li r29, 0
/* 80105BBC  C3 E2 93 BC */	lfs f31, lit_10042(r2)
lbl_80105BC0:
/* 80105BC0  7C 9B EA 14 */	add r4, r27, r29
/* 80105BC4  38 64 18 B0 */	addi r3, r4, 0x18b0
/* 80105BC8  C0 04 18 E0 */	lfs f0, 0x18e0(r4)
/* 80105BCC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80105BD0  EC 3F 00 2A */	fadds f1, f31, f0
/* 80105BD4  4B F7 03 6D */	bl SetWallR__12dBgS_AcchCirFf
/* 80105BD8  3B DE 00 01 */	addi r30, r30, 1
/* 80105BDC  2C 1E 00 03 */	cmpwi r30, 3
/* 80105BE0  3B BD 00 40 */	addi r29, r29, 0x40
/* 80105BE4  41 80 FF DC */	blt lbl_80105BC0
/* 80105BE8  C0 3B 33 98 */	lfs f1, 0x3398(r27)
/* 80105BEC  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 80105BF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80105BF4  40 81 00 98 */	ble lbl_80105C8C
/* 80105BF8  80 1B 19 9C */	lwz r0, 0x199c(r27)
/* 80105BFC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80105C00  41 82 00 8C */	beq lbl_80105C8C
/* 80105C04  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 80105C08  3C 63 00 01 */	addis r3, r3, 1
/* 80105C0C  38 03 80 00 */	addi r0, r3, -32768
/* 80105C10  7C 1E 07 34 */	extsh r30, r0
/* 80105C14  3B E0 00 00 */	li r31, 0
/* 80105C18  3B A0 00 00 */	li r29, 0
/* 80105C1C  C3 E2 92 E0 */	lfs f31, lit_6845(r2)
lbl_80105C20:
/* 80105C20  7C 9B EA 14 */	add r4, r27, r29
/* 80105C24  80 04 18 C0 */	lwz r0, 0x18c0(r4)
/* 80105C28  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80105C2C  41 82 00 50 */	beq lbl_80105C7C
/* 80105C30  7F C3 F3 78 */	mr r3, r30
/* 80105C34  A8 84 18 EC */	lha r4, 0x18ec(r4)
/* 80105C38  48 16 B1 ED */	bl cLib_distanceAngleS__Fss
/* 80105C3C  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80105C40  41 81 00 3C */	bgt lbl_80105C7C
/* 80105C44  C0 1B 33 98 */	lfs f0, 0x3398(r27)
/* 80105C48  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80105C4C  40 81 00 30 */	ble lbl_80105C7C
/* 80105C50  7F 63 DB 78 */	mr r3, r27
/* 80105C54  4B FA EC 7D */	bl setJumpMode__9daAlink_cFv
/* 80105C58  7F 63 DB 78 */	mr r3, r27
/* 80105C5C  38 80 FF FC */	li r4, -4
/* 80105C60  38 A0 00 01 */	li r5, 1
/* 80105C64  38 C0 00 00 */	li r6, 0
/* 80105C68  38 E0 00 00 */	li r7, 0
/* 80105C6C  39 00 00 00 */	li r8, 0
/* 80105C70  39 20 00 00 */	li r9, 0
/* 80105C74  4B FD 3A 69 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 80105C78  48 00 08 94 */	b lbl_8010650C
lbl_80105C7C:
/* 80105C7C  3B FF 00 01 */	addi r31, r31, 1
/* 80105C80  2C 1F 00 03 */	cmpwi r31, 3
/* 80105C84  3B BD 00 40 */	addi r29, r29, 0x40
/* 80105C88  41 80 FF 98 */	blt lbl_80105C20
lbl_80105C8C:
/* 80105C8C  7F 63 DB 78 */	mr r3, r27
/* 80105C90  4B FF FE 09 */	bl checkSnowCode__9daAlink_cCFv
/* 80105C94  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80105C98  40 82 00 54 */	bne lbl_80105CEC
/* 80105C9C  80 1B 19 9C */	lwz r0, 0x199c(r27)
/* 80105CA0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80105CA4  41 82 00 48 */	beq lbl_80105CEC
/* 80105CA8  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 80105CAC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80105CB0  40 82 00 3C */	bne lbl_80105CEC
/* 80105CB4  7F 63 DB 78 */	mr r3, r27
/* 80105CB8  4B FA EC 19 */	bl setJumpMode__9daAlink_cFv
/* 80105CBC  7F 63 DB 78 */	mr r3, r27
/* 80105CC0  38 80 00 00 */	li r4, 0
/* 80105CC4  4B FB FA E1 */	bl procBackJumpInit__9daAlink_cFi
/* 80105CC8  80 7B 28 18 */	lwz r3, 0x2818(r27)
/* 80105CCC  28 03 00 00 */	cmplwi r3, 0
/* 80105CD0  41 82 00 14 */	beq lbl_80105CE4
/* 80105CD4  38 00 00 01 */	li r0, 1
/* 80105CD8  98 03 09 61 */	stb r0, 0x961(r3)
/* 80105CDC  38 7B 28 14 */	addi r3, r27, 0x2814
/* 80105CE0  48 05 90 1D */	bl clearData__16daPy_actorKeep_cFv
lbl_80105CE4:
/* 80105CE4  38 60 00 01 */	li r3, 1
/* 80105CE8  48 00 08 24 */	b lbl_8010650C
lbl_80105CEC:
/* 80105CEC  80 1B 19 9C */	lwz r0, 0x199c(r27)
/* 80105CF0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80105CF4  41 82 01 80 */	beq lbl_80105E74
/* 80105CF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80105CFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80105D00  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80105D04  7F A3 EB 78 */	mr r3, r29
/* 80105D08  38 9B 1A 60 */	addi r4, r27, 0x1a60
/* 80105D0C  4B F6 E9 55 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 80105D10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80105D14  41 82 01 60 */	beq lbl_80105E74
/* 80105D18  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80105D1C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80105D20  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80105D24  7F A3 EB 78 */	mr r3, r29
/* 80105D28  38 9B 1A 60 */	addi r4, r27, 0x1a60
/* 80105D2C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80105D30  4B F6 EA 15 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80105D34  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80105D38  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80105D3C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80105D40  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80105D44  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80105D48  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80105D4C  38 61 00 10 */	addi r3, r1, 0x10
/* 80105D50  48 24 13 E9 */	bl PSVECSquareMag
/* 80105D54  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80105D58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80105D5C  40 81 00 58 */	ble lbl_80105DB4
/* 80105D60  FC 00 08 34 */	frsqrte f0, f1
/* 80105D64  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 80105D68  FC 44 00 32 */	fmul f2, f4, f0
/* 80105D6C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 80105D70  FC 00 00 32 */	fmul f0, f0, f0
/* 80105D74  FC 01 00 32 */	fmul f0, f1, f0
/* 80105D78  FC 03 00 28 */	fsub f0, f3, f0
/* 80105D7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80105D80  FC 44 00 32 */	fmul f2, f4, f0
/* 80105D84  FC 00 00 32 */	fmul f0, f0, f0
/* 80105D88  FC 01 00 32 */	fmul f0, f1, f0
/* 80105D8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80105D90  FC 02 00 32 */	fmul f0, f2, f0
/* 80105D94  FC 44 00 32 */	fmul f2, f4, f0
/* 80105D98  FC 00 00 32 */	fmul f0, f0, f0
/* 80105D9C  FC 01 00 32 */	fmul f0, f1, f0
/* 80105DA0  FC 03 00 28 */	fsub f0, f3, f0
/* 80105DA4  FC 02 00 32 */	fmul f0, f2, f0
/* 80105DA8  FC 21 00 32 */	fmul f1, f1, f0
/* 80105DAC  FC 20 08 18 */	frsp f1, f1
/* 80105DB0  48 00 00 88 */	b lbl_80105E38
lbl_80105DB4:
/* 80105DB4  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 80105DB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80105DBC  40 80 00 10 */	bge lbl_80105DCC
/* 80105DC0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80105DC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80105DC8  48 00 00 70 */	b lbl_80105E38
lbl_80105DCC:
/* 80105DCC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80105DD0  80 81 00 08 */	lwz r4, 8(r1)
/* 80105DD4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80105DD8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80105DDC  7C 03 00 00 */	cmpw r3, r0
/* 80105DE0  41 82 00 14 */	beq lbl_80105DF4
/* 80105DE4  40 80 00 40 */	bge lbl_80105E24
/* 80105DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80105DEC  41 82 00 20 */	beq lbl_80105E0C
/* 80105DF0  48 00 00 34 */	b lbl_80105E24
lbl_80105DF4:
/* 80105DF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80105DF8  41 82 00 0C */	beq lbl_80105E04
/* 80105DFC  38 00 00 01 */	li r0, 1
/* 80105E00  48 00 00 28 */	b lbl_80105E28
lbl_80105E04:
/* 80105E04  38 00 00 02 */	li r0, 2
/* 80105E08  48 00 00 20 */	b lbl_80105E28
lbl_80105E0C:
/* 80105E0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80105E10  41 82 00 0C */	beq lbl_80105E1C
/* 80105E14  38 00 00 05 */	li r0, 5
/* 80105E18  48 00 00 10 */	b lbl_80105E28
lbl_80105E1C:
/* 80105E1C  38 00 00 03 */	li r0, 3
/* 80105E20  48 00 00 08 */	b lbl_80105E28
lbl_80105E24:
/* 80105E24  38 00 00 04 */	li r0, 4
lbl_80105E28:
/* 80105E28  2C 00 00 01 */	cmpwi r0, 1
/* 80105E2C  40 82 00 0C */	bne lbl_80105E38
/* 80105E30  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80105E34  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80105E38:
/* 80105E38  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80105E3C  48 16 18 39 */	bl cM_atan2s__Fff
/* 80105E40  B0 7B 30 0E */	sth r3, 0x300e(r27)
/* 80105E44  A8 1B 30 0E */	lha r0, 0x300e(r27)
/* 80105E48  2C 00 00 00 */	cmpwi r0, 0
/* 80105E4C  40 82 00 0C */	bne lbl_80105E58
/* 80105E50  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 80105E54  48 00 00 0C */	b lbl_80105E60
lbl_80105E58:
/* 80105E58  38 61 00 1C */	addi r3, r1, 0x1c
/* 80105E5C  48 16 12 CD */	bl atan2sX_Z__4cXyzCFv
lbl_80105E60:
/* 80105E60  7C 7E 1B 78 */	mr r30, r3
/* 80105E64  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 80105E68  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80105E6C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80105E70  48 00 00 10 */	b lbl_80105E80
lbl_80105E74:
/* 80105E74  38 00 00 00 */	li r0, 0
/* 80105E78  B0 1B 30 0E */	sth r0, 0x300e(r27)
/* 80105E7C  AB DB 04 E6 */	lha r30, 0x4e6(r27)
lbl_80105E80:
/* 80105E80  A8 7B 30 08 */	lha r3, 0x3008(r27)
/* 80105E84  2C 03 00 00 */	cmpwi r3, 0
/* 80105E88  41 82 00 18 */	beq lbl_80105EA0
/* 80105E8C  38 03 FF FF */	addi r0, r3, -1
/* 80105E90  B0 1B 30 08 */	sth r0, 0x3008(r27)
/* 80105E94  80 1B 05 84 */	lwz r0, 0x584(r27)
/* 80105E98  60 00 00 40 */	ori r0, r0, 0x40
/* 80105E9C  90 1B 05 84 */	stw r0, 0x584(r27)
lbl_80105EA0:
/* 80105EA0  C3 C2 92 C0 */	lfs f30, lit_6108(r2)
/* 80105EA4  A8 7B 2F E0 */	lha r3, 0x2fe0(r27)
/* 80105EA8  48 25 F2 29 */	bl abs
/* 80105EAC  7C 7F 1B 78 */	mr r31, r3
/* 80105EB0  C0 5B 33 AC */	lfs f2, 0x33ac(r27)
/* 80105EB4  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 80105EB8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80105EBC  40 81 01 DC */	ble lbl_80106098
/* 80105EC0  2C 1C 00 00 */	cmpwi r28, 0
/* 80105EC4  41 82 01 D4 */	beq lbl_80106098
/* 80105EC8  A8 1B 2F E0 */	lha r0, 0x2fe0(r27)
/* 80105ECC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80105ED0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80105ED4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80105ED8  7C 24 04 2E */	lfsx f1, r4, r0
/* 80105EDC  C0 02 95 2C */	lfs f0, lit_21680(r2)
/* 80105EE0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80105EE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80105EE8  FC 00 00 1E */	fctiwz f0, f0
/* 80105EEC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80105EF0  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80105EF4  2C 1F 60 00 */	cmpwi r31, 0x6000
/* 80105EF8  40 81 01 08 */	ble lbl_80106000
/* 80105EFC  88 1B 2F 8C */	lbz r0, 0x2f8c(r27)
/* 80105F00  28 00 00 0B */	cmplwi r0, 0xb
/* 80105F04  40 82 00 FC */	bne lbl_80106000
/* 80105F08  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 80105F0C  28 00 00 A7 */	cmplwi r0, 0xa7
/* 80105F10  40 82 00 F0 */	bne lbl_80106000
/* 80105F14  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80105F18  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80105F1C  7C 1F 00 50 */	subf r0, r31, r0
/* 80105F20  54 00 0C 38 */	rlwinm r0, r0, 1, 0x10, 0x1c
/* 80105F24  7C 64 02 14 */	add r3, r4, r0
/* 80105F28  C0 03 00 04 */	lfs f0, 4(r3)
/* 80105F2C  EF C2 00 32 */	fmuls f30, f2, f0
/* 80105F30  FC 60 F0 90 */	fmr f3, f30
/* 80105F34  C0 02 93 EC */	lfs f0, lit_13119(r2)
/* 80105F38  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80105F3C  40 80 00 08 */	bge lbl_80105F44
/* 80105F40  FC 60 00 90 */	fmr f3, f0
lbl_80105F44:
/* 80105F44  38 7B 33 98 */	addi r3, r27, 0x3398
/* 80105F48  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80105F4C  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 80105F50  C0 82 93 A0 */	lfs f4, lit_9054(r2)
/* 80105F54  48 16 9A 29 */	bl cLib_addCalc__FPfffff
/* 80105F58  C0 1B 33 98 */	lfs f0, 0x3398(r27)
/* 80105F5C  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 80105F60  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80105F64  40 81 00 08 */	ble lbl_80105F6C
/* 80105F68  48 00 00 0C */	b lbl_80105F74
lbl_80105F6C:
/* 80105F6C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80105F70  EF C0 08 24 */	fdivs f30, f0, f1
lbl_80105F74:
/* 80105F74  7F 63 DB 78 */	mr r3, r27
/* 80105F78  4B FA D9 8D */	bl checkZeroSpeedF__9daAlink_cCFv
/* 80105F7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80105F80  41 82 01 1C */	beq lbl_8010609C
/* 80105F84  2C 1F 70 00 */	cmpwi r31, 0x7000
/* 80105F88  40 81 01 14 */	ble lbl_8010609C
/* 80105F8C  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 80105F90  28 00 00 A7 */	cmplwi r0, 0xa7
/* 80105F94  40 82 01 08 */	bne lbl_8010609C
/* 80105F98  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 80105F9C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80105FA0  40 82 00 FC */	bne lbl_8010609C
/* 80105FA4  A8 1B 30 0E */	lha r0, 0x300e(r27)
/* 80105FA8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80105FAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80105FB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80105FB4  3C 00 43 30 */	lis r0, 0x4330
/* 80105FB8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80105FBC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80105FC0  EC 20 08 28 */	fsubs f1, f0, f1
/* 80105FC4  C0 02 95 EC */	lfs f0, lit_28285(r2)
/* 80105FC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80105FCC  4C 40 13 82 */	cror 2, 0, 2
/* 80105FD0  40 82 00 CC */	bne lbl_8010609C
/* 80105FD4  7F 63 DB 78 */	mr r3, r27
/* 80105FD8  38 80 00 F2 */	li r4, 0xf2
/* 80105FDC  4B FA 65 7D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80105FE0  2C 03 00 00 */	cmpwi r3, 0
/* 80105FE4  41 82 00 B8 */	beq lbl_8010609C
/* 80105FE8  80 1B 19 9C */	lwz r0, 0x199c(r27)
/* 80105FEC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80105FF0  41 82 00 AC */	beq lbl_8010609C
/* 80105FF4  7F 63 DB 78 */	mr r3, r27
/* 80105FF8  48 00 10 69 */	bl procBoardTurnInit__9daAlink_cFv
/* 80105FFC  48 00 05 10 */	b lbl_8010650C
lbl_80106000:
/* 80106000  2C 1F 20 00 */	cmpwi r31, 0x2000
/* 80106004  40 80 00 98 */	bge lbl_8010609C
/* 80106008  88 1B 2F 8C */	lbz r0, 0x2f8c(r27)
/* 8010600C  28 00 00 0B */	cmplwi r0, 0xb
/* 80106010  40 82 00 8C */	bne lbl_8010609C
/* 80106014  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 80106018  28 00 00 A7 */	cmplwi r0, 0xa7
/* 8010601C  40 82 00 80 */	bne lbl_8010609C
/* 80106020  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 80106024  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80106028  40 82 00 74 */	bne lbl_8010609C
/* 8010602C  80 1B 19 9C */	lwz r0, 0x199c(r27)
/* 80106030  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80106034  41 82 00 68 */	beq lbl_8010609C
/* 80106038  A8 7B 30 0E */	lha r3, 0x300e(r27)
/* 8010603C  A8 1B 31 22 */	lha r0, 0x3122(r27)
/* 80106040  7C 03 00 00 */	cmpw r3, r0
/* 80106044  40 80 00 58 */	bge lbl_8010609C
/* 80106048  7F 63 DB 78 */	mr r3, r27
/* 8010604C  38 80 00 F2 */	li r4, 0xf2
/* 80106050  4B FA 65 09 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80106054  2C 03 00 00 */	cmpwi r3, 0
/* 80106058  40 82 00 18 */	bne lbl_80106070
/* 8010605C  7F 63 DB 78 */	mr r3, r27
/* 80106060  38 80 00 F3 */	li r4, 0xf3
/* 80106064  4B FA 64 F5 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80106068  2C 03 00 00 */	cmpwi r3, 0
/* 8010606C  41 82 00 30 */	beq lbl_8010609C
lbl_80106070:
/* 80106070  C0 3B 33 98 */	lfs f1, 0x3398(r27)
/* 80106074  3C 60 80 39 */	lis r3, m__19daAlinkHIO_board_c0@ha
/* 80106078  38 63 E8 70 */	addi r3, r3, m__19daAlinkHIO_board_c0@l
/* 8010607C  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80106080  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80106084  4C 40 13 82 */	cror 2, 0, 2
/* 80106088  40 82 00 14 */	bne lbl_8010609C
/* 8010608C  7F 63 DB 78 */	mr r3, r27
/* 80106090  48 00 0D F9 */	bl procBoardRowInit__9daAlink_cFv
/* 80106094  48 00 04 78 */	b lbl_8010650C
lbl_80106098:
/* 80106098  3B A0 00 00 */	li r29, 0
lbl_8010609C:
/* 8010609C  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020091@ha */
/* 801060A0  3B 43 00 91 */	addi r26, r3, 0x0091 /* 0x00020091@l */
/* 801060A4  88 1B 2F 8C */	lbz r0, 0x2f8c(r27)
/* 801060A8  28 00 00 0B */	cmplwi r0, 0xb
/* 801060AC  40 82 00 48 */	bne lbl_801060F4
/* 801060B0  C0 1B 1F 30 */	lfs f0, 0x1f30(r27)
/* 801060B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801060B8  38 61 00 0C */	addi r3, r1, 0xc
/* 801060BC  FC 20 F0 90 */	fmr f1, f30
/* 801060C0  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 801060C4  C0 62 95 F0 */	lfs f3, lit_28286(r2)
/* 801060C8  C0 82 93 A0 */	lfs f4, lit_9054(r2)
/* 801060CC  48 16 98 B1 */	bl cLib_addCalc__FPfffff
/* 801060D0  7F 63 DB 78 */	mr r3, r27
/* 801060D4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801060D8  4B FA 66 61 */	bl setDoubleAnimeBlendRatio__9daAlink_cFf
/* 801060DC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801060E0  C0 02 94 08 */	lfs f0, lit_14064(r2)
/* 801060E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801060E8  40 81 00 0C */	ble lbl_801060F4
/* 801060EC  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020092@ha */
/* 801060F0  3B 43 00 92 */	addi r26, r3, 0x0092 /* 0x00020092@l */
lbl_801060F4:
/* 801060F4  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 801060F8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801060FC  40 82 00 1C */	bne lbl_80106118
/* 80106100  7F 63 DB 78 */	mr r3, r27
/* 80106104  7F 44 D3 78 */	mr r4, r26
/* 80106108  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8010610C  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 80106110  7D 89 03 A6 */	mtctr r12
/* 80106114  4E 80 04 21 */	bctrl 
lbl_80106118:
/* 80106118  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8010611C  28 00 00 A9 */	cmplwi r0, 0xa9
/* 80106120  40 82 00 10 */	bne lbl_80106130
/* 80106124  38 00 00 00 */	li r0, 0
/* 80106128  B0 1B 30 0C */	sth r0, 0x300c(r27)
/* 8010612C  48 00 00 40 */	b lbl_8010616C
lbl_80106130:
/* 80106130  38 7B 30 0C */	addi r3, r27, 0x300c
/* 80106134  7F A4 EB 78 */	mr r4, r29
/* 80106138  38 A0 00 1E */	li r5, 0x1e
/* 8010613C  38 C0 08 00 */	li r6, 0x800
/* 80106140  38 E0 00 10 */	li r7, 0x10
/* 80106144  48 16 A3 FD */	bl cLib_addCalcAngleS__FPsssss
/* 80106148  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 8010614C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80106150  40 82 00 14 */	bne lbl_80106164
/* 80106154  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 80106158  A8 1B 30 0C */	lha r0, 0x300c(r27)
/* 8010615C  7C 03 02 14 */	add r0, r3, r0
/* 80106160  B0 1B 04 DE */	sth r0, 0x4de(r27)
lbl_80106164:
/* 80106164  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80106168  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
lbl_8010616C:
/* 8010616C  38 7B 2F EE */	addi r3, r27, 0x2fee
/* 80106170  7C 1D 00 D0 */	neg r0, r29
/* 80106174  1C 00 00 06 */	mulli r0, r0, 6
/* 80106178  7C 04 07 34 */	extsh r4, r0
/* 8010617C  38 A0 00 0A */	li r5, 0xa
/* 80106180  38 C0 08 00 */	li r6, 0x800
/* 80106184  38 E0 00 40 */	li r7, 0x40
/* 80106188  48 16 A3 B9 */	bl cLib_addCalcAngleS__FPsssss
/* 8010618C  A8 1B 2F EE */	lha r0, 0x2fee(r27)
/* 80106190  7C 00 0E 70 */	srawi r0, r0, 1
/* 80106194  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 80106198  A8 1B 04 E8 */	lha r0, 0x4e8(r27)
/* 8010619C  B0 1B 05 A0 */	sth r0, 0x5a0(r27)
/* 801061A0  80 1B 19 9C */	lwz r0, 0x199c(r27)
/* 801061A4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 801061A8  41 82 02 FC */	beq lbl_801064A4
/* 801061AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801061B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801061B4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 801061B8  38 9B 1A 60 */	addi r4, r27, 0x1a60
/* 801061BC  4B F6 E4 A5 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 801061C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801061C4  41 82 02 E0 */	beq lbl_801064A4
/* 801061C8  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 801061CC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801061D0  41 82 00 1C */	beq lbl_801061EC
/* 801061D4  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 801061D8  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 801061DC  90 1B 31 A0 */	stw r0, 0x31a0(r27)
/* 801061E0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801061E4  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 801061E8  48 00 02 00 */	b lbl_801063E8
lbl_801061EC:
/* 801061EC  A8 BB 30 0E */	lha r5, 0x300e(r27)
/* 801061F0  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 801061F4  6C A4 80 00 */	xoris r4, r5, 0x8000
/* 801061F8  90 81 00 34 */	stw r4, 0x34(r1)
/* 801061FC  3C 60 43 30 */	lis r3, 0x4330
/* 80106200  90 61 00 30 */	stw r3, 0x30(r1)
/* 80106204  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80106208  EC 20 10 28 */	fsubs f1, f0, f2
/* 8010620C  C0 02 95 EC */	lfs f0, lit_28285(r2)
/* 80106210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80106214  40 81 01 C4 */	ble lbl_801063D8
/* 80106218  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8010621C  28 00 00 A8 */	cmplwi r0, 0xa8
/* 80106220  40 82 00 20 */	bne lbl_80106240
/* 80106224  90 81 00 34 */	stw r4, 0x34(r1)
/* 80106228  90 61 00 30 */	stw r3, 0x30(r1)
/* 8010622C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80106230  EC 20 10 28 */	fsubs f1, f0, f2
/* 80106234  C0 02 94 4C */	lfs f0, lit_14782(r2)
/* 80106238  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010623C  41 80 01 9C */	blt lbl_801063D8
lbl_80106240:
/* 80106240  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 80106244  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 80106248  90 01 00 34 */	stw r0, 0x34(r1)
/* 8010624C  3C 60 43 30 */	lis r3, 0x4330
/* 80106250  90 61 00 30 */	stw r3, 0x30(r1)
/* 80106254  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80106258  EC 20 10 28 */	fsubs f1, f0, f2
/* 8010625C  A8 1B 31 22 */	lha r0, 0x3122(r27)
/* 80106260  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80106264  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80106268  90 61 00 38 */	stw r3, 0x38(r1)
/* 8010626C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80106270  EC 00 10 28 */	fsubs f0, f0, f2
/* 80106274  EF C1 00 24 */	fdivs f30, f1, f0
/* 80106278  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010627C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80106280  40 81 00 08 */	ble lbl_80106288
/* 80106284  FF C0 00 90 */	fmr f30, f0
lbl_80106288:
/* 80106288  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8010628C  7C 1E 00 50 */	subf r0, r30, r0
/* 80106290  7C 1A 07 34 */	extsh r26, r0
/* 80106294  7F 43 D3 78 */	mr r3, r26
/* 80106298  48 25 EE 39 */	bl abs
/* 8010629C  2C 03 40 00 */	cmpwi r3, 0x4000
/* 801062A0  41 81 00 28 */	bgt lbl_801062C8
/* 801062A4  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 801062A8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801062AC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801062B0  57 40 04 38 */	rlwinm r0, r26, 0, 0x10, 0x1c
/* 801062B4  7C 63 02 14 */	add r3, r3, r0
/* 801062B8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801062BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801062C0  EF E1 00 2A */	fadds f31, f1, f0
/* 801062C4  48 00 00 28 */	b lbl_801062EC
lbl_801062C8:
/* 801062C8  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 801062CC  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 801062D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801062D4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801062D8  57 40 04 38 */	rlwinm r0, r26, 0, 0x10, 0x1c
/* 801062DC  7C 63 02 14 */	add r3, r3, r0
/* 801062E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 801062E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 801062E8  EF E2 00 28 */	fsubs f31, f2, f0
lbl_801062EC:
/* 801062EC  C0 02 95 F4 */	lfs f0, lit_28287(r2)
/* 801062F0  EC 20 07 B2 */	fmuls f1, f0, f30
/* 801062F4  48 16 12 F1 */	bl cM_rad2s__Ff
/* 801062F8  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 801062FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80106300  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80106304  7C 03 04 2E */	lfsx f0, r3, r0
/* 80106308  EF FF 00 32 */	fmuls f31, f31, f0
/* 8010630C  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 80106310  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80106314  40 81 00 B0 */	ble lbl_801063C4
/* 80106318  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8010631C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80106320  7C 43 04 2E */	lfsx f2, r3, r0
/* 80106324  57 C4 04 38 */	rlwinm r4, r30, 0, 0x10, 0x1c
/* 80106328  7C 03 24 2E */	lfsx f0, r3, r4
/* 8010632C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80106330  C0 9B 33 98 */	lfs f4, 0x3398(r27)
/* 80106334  EC 04 00 B2 */	fmuls f0, f4, f2
/* 80106338  EC 21 00 2A */	fadds f1, f1, f0
/* 8010633C  38 63 00 04 */	addi r3, r3, 4
/* 80106340  7C 63 04 2E */	lfsx f3, r3, r0
/* 80106344  7C 03 24 2E */	lfsx f0, r3, r4
/* 80106348  EC 5F 00 32 */	fmuls f2, f31, f0
/* 8010634C  EC 04 00 F2 */	fmuls f0, f4, f3
/* 80106350  EC 42 00 2A */	fadds f2, f2, f0
/* 80106354  EC 61 00 72 */	fmuls f3, f1, f1
/* 80106358  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8010635C  EC 63 00 2A */	fadds f3, f3, f0
/* 80106360  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80106364  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80106368  40 81 00 0C */	ble lbl_80106374
/* 8010636C  FC 00 18 34 */	frsqrte f0, f3
/* 80106370  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_80106374:
/* 80106374  D0 7B 33 98 */	stfs f3, 0x3398(r27)
/* 80106378  C0 1B 33 98 */	lfs f0, 0x3398(r27)
/* 8010637C  C0 7B 05 94 */	lfs f3, 0x594(r27)
/* 80106380  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80106384  40 81 00 08 */	ble lbl_8010638C
/* 80106388  D0 7B 33 98 */	stfs f3, 0x3398(r27)
lbl_8010638C:
/* 8010638C  C0 7B 33 98 */	lfs f3, 0x3398(r27)
/* 80106390  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 80106394  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80106398  40 81 00 50 */	ble lbl_801063E8
/* 8010639C  48 16 12 D9 */	bl cM_atan2s__Fff
/* 801063A0  7C 64 1B 78 */	mr r4, r3
/* 801063A4  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 801063A8  38 A0 00 02 */	li r5, 2
/* 801063AC  38 C0 20 00 */	li r6, 0x2000
/* 801063B0  38 E0 08 00 */	li r7, 0x800
/* 801063B4  48 16 A1 8D */	bl cLib_addCalcAngleS__FPsssss
/* 801063B8  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 801063BC  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 801063C0  48 00 00 28 */	b lbl_801063E8
lbl_801063C4:
/* 801063C4  38 7B 33 98 */	addi r3, r27, 0x3398
/* 801063C8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801063CC  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 801063D0  48 16 A3 71 */	bl cLib_chaseF__FPfff
/* 801063D4  48 00 00 14 */	b lbl_801063E8
lbl_801063D8:
/* 801063D8  38 7B 33 98 */	addi r3, r27, 0x3398
/* 801063DC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 801063E0  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 801063E4  48 16 A3 5D */	bl cLib_chaseF__FPfff
lbl_801063E8:
/* 801063E8  C0 3B 33 AC */	lfs f1, 0x33ac(r27)
/* 801063EC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 801063F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801063F4  40 81 00 38 */	ble lbl_8010642C
/* 801063F8  2C 1C 00 00 */	cmpwi r28, 0
/* 801063FC  41 82 00 30 */	beq lbl_8010642C
/* 80106400  2C 1F 28 00 */	cmpwi r31, 0x2800
/* 80106404  40 80 00 28 */	bge lbl_8010642C
/* 80106408  7F 63 DB 78 */	mr r3, r27
/* 8010640C  38 80 00 F2 */	li r4, 0xf2
/* 80106410  4B FA 61 49 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80106414  2C 03 00 00 */	cmpwi r3, 0
/* 80106418  41 82 00 58 */	beq lbl_80106470
/* 8010641C  7F 63 DB 78 */	mr r3, r27
/* 80106420  38 80 00 01 */	li r4, 1
/* 80106424  48 00 01 11 */	bl setCommonBoardAnime__9daAlink_cFi
/* 80106428  48 00 00 48 */	b lbl_80106470
lbl_8010642C:
/* 8010642C  7F 63 DB 78 */	mr r3, r27
/* 80106430  38 80 00 F3 */	li r4, 0xf3
/* 80106434  4B FA 61 25 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 80106438  2C 03 00 00 */	cmpwi r3, 0
/* 8010643C  41 82 00 10 */	beq lbl_8010644C
/* 80106440  7F 63 DB 78 */	mr r3, r27
/* 80106444  38 80 00 00 */	li r4, 0
/* 80106448  48 00 00 ED */	bl setCommonBoardAnime__9daAlink_cFi
lbl_8010644C:
/* 8010644C  C0 5B 33 98 */	lfs f2, 0x3398(r27)
/* 80106450  C0 22 93 A8 */	lfs f1, lit_9652(r2)
/* 80106454  C0 1B 05 94 */	lfs f0, 0x594(r27)
/* 80106458  EC 21 00 32 */	fmuls f1, f1, f0
/* 8010645C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80106460  40 81 00 10 */	ble lbl_80106470
/* 80106464  38 7B 33 98 */	addi r3, r27, 0x3398
/* 80106468  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 8010646C  48 16 A2 D5 */	bl cLib_chaseF__FPfff
lbl_80106470:
/* 80106470  38 7B 04 E4 */	addi r3, r27, 0x4e4
/* 80106474  A8 9B 2F F0 */	lha r4, 0x2ff0(r27)
/* 80106478  38 A0 00 04 */	li r5, 4
/* 8010647C  38 C0 10 00 */	li r6, 0x1000
/* 80106480  38 E0 01 00 */	li r7, 0x100
/* 80106484  48 16 A0 BD */	bl cLib_addCalcAngleS__FPsssss
/* 80106488  C0 3B 33 98 */	lfs f1, 0x3398(r27)
/* 8010648C  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 80106490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80106494  40 81 00 74 */	ble lbl_80106508
/* 80106498  38 00 00 04 */	li r0, 4
/* 8010649C  98 1B 2F 9D */	stb r0, 0x2f9d(r27)
/* 801064A0  48 00 00 68 */	b lbl_80106508
lbl_801064A4:
/* 801064A4  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 801064A8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801064AC  40 82 00 44 */	bne lbl_801064F0
/* 801064B0  A8 1B 04 E4 */	lha r0, 0x4e4(r27)
/* 801064B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801064B8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801064BC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801064C0  7C 03 04 2E */	lfsx f0, r3, r0
/* 801064C4  C0 3B 33 98 */	lfs f1, 0x3398(r27)
/* 801064C8  FC 00 00 50 */	fneg f0, f0
/* 801064CC  EC 21 00 32 */	fmuls f1, f1, f0
/* 801064D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801064D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801064D8  40 80 00 08 */	bge lbl_801064E0
/* 801064DC  FC 20 00 90 */	fmr f1, f0
lbl_801064E0:
/* 801064E0  7F 63 DB 78 */	mr r3, r27
/* 801064E4  38 80 00 00 */	li r4, 0
/* 801064E8  48 00 0D 31 */	bl procBoardJumpInit__9daAlink_cFfi
/* 801064EC  48 00 00 20 */	b lbl_8010650C
lbl_801064F0:
/* 801064F0  38 7B 04 E4 */	addi r3, r27, 0x4e4
/* 801064F4  38 80 00 00 */	li r4, 0
/* 801064F8  38 A0 00 04 */	li r5, 4
/* 801064FC  38 C0 00 64 */	li r6, 0x64
/* 80106500  38 E0 00 0A */	li r7, 0xa
/* 80106504  48 16 A0 3D */	bl cLib_addCalcAngleS__FPsssss
lbl_80106508:
/* 80106508  38 60 00 00 */	li r3, 0
lbl_8010650C:
/* 8010650C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80106510  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80106514  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80106518  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8010651C  39 61 00 60 */	addi r11, r1, 0x60
/* 80106520  48 25 BC FD */	bl _restgpr_26
/* 80106524  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80106528  7C 08 03 A6 */	mtlr r0
/* 8010652C  38 21 00 80 */	addi r1, r1, 0x80
/* 80106530  4E 80 00 20 */	blr 

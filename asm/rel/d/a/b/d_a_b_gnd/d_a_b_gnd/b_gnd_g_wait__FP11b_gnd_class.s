lbl_805F7A10:
/* 805F7A10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805F7A14  7C 08 02 A6 */	mflr r0
/* 805F7A18  90 01 00 44 */	stw r0, 0x44(r1)
/* 805F7A1C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805F7A20  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805F7A24  39 61 00 30 */	addi r11, r1, 0x30
/* 805F7A28  4B D6 A7 AC */	b _savegpr_27
/* 805F7A2C  7C 7B 1B 78 */	mr r27, r3
/* 805F7A30  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805F7A34  3B A3 26 64 */	addi r29, r3, lit_3815@l
/* 805F7A38  C3 FD 00 14 */	lfs f31, 0x14(r29)
/* 805F7A3C  3B 80 04 00 */	li r28, 0x400
/* 805F7A40  80 1B 1F B4 */	lwz r0, 0x1fb4(r27)
/* 805F7A44  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F7A48  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805F7A4C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805F7A50  38 81 00 0C */	addi r4, r1, 0xc
/* 805F7A54  4B A2 1D A4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805F7A58  7C 7E 1B 78 */	mr r30, r3
/* 805F7A5C  38 00 02 E4 */	li r0, 0x2e4
/* 805F7A60  B0 01 00 08 */	sth r0, 8(r1)
/* 805F7A64  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 805F7A68  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 805F7A6C  38 81 00 08 */	addi r4, r1, 8
/* 805F7A70  4B A2 1D 88 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805F7A74  7C 7F 1B 79 */	or. r31, r3, r3
/* 805F7A78  41 82 00 40 */	beq lbl_805F7AB8
/* 805F7A7C  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 805F7A80  2C 00 00 00 */	cmpwi r0, 0
/* 805F7A84  41 82 00 34 */	beq lbl_805F7AB8
/* 805F7A88  A8 1B 05 BC */	lha r0, 0x5bc(r27)
/* 805F7A8C  2C 00 00 05 */	cmpwi r0, 5
/* 805F7A90  40 80 00 44 */	bge lbl_805F7AD4
/* 805F7A94  C0 3B 0C 38 */	lfs f1, 0xc38(r27)
/* 805F7A98  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 805F7A9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7AA0  40 80 00 34 */	bge lbl_805F7AD4
/* 805F7AA4  38 00 00 05 */	li r0, 5
/* 805F7AA8  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7AAC  38 00 00 0A */	li r0, 0xa
/* 805F7AB0  B0 1B 0C 44 */	sth r0, 0xc44(r27)
/* 805F7AB4  48 00 00 20 */	b lbl_805F7AD4
lbl_805F7AB8:
/* 805F7AB8  A8 1B 05 BC */	lha r0, 0x5bc(r27)
/* 805F7ABC  2C 00 00 05 */	cmpwi r0, 5
/* 805F7AC0  40 82 00 14 */	bne lbl_805F7AD4
/* 805F7AC4  38 00 00 06 */	li r0, 6
/* 805F7AC8  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7ACC  38 00 00 28 */	li r0, 0x28
/* 805F7AD0  B0 1B 0C 44 */	sth r0, 0xc44(r27)
lbl_805F7AD4:
/* 805F7AD4  A8 1B 05 BC */	lha r0, 0x5bc(r27)
/* 805F7AD8  28 00 00 06 */	cmplwi r0, 6
/* 805F7ADC  41 81 02 D8 */	bgt lbl_805F7DB4
/* 805F7AE0  3C 60 80 60 */	lis r3, lit_5308@ha
/* 805F7AE4  38 63 2A 6C */	addi r3, r3, lit_5308@l
/* 805F7AE8  54 00 10 3A */	slwi r0, r0, 2
/* 805F7AEC  7C 03 00 2E */	lwzx r0, r3, r0
/* 805F7AF0  7C 09 03 A6 */	mtctr r0
/* 805F7AF4  4E 80 04 20 */	bctr 
lbl_805F7AF8:
/* 805F7AF8  38 00 00 01 */	li r0, 1
/* 805F7AFC  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7B00  7F 63 DB 78 */	mr r3, r27
/* 805F7B04  38 80 00 5D */	li r4, 0x5d
/* 805F7B08  C0 3D 00 A4 */	lfs f1, 0xa4(r29)
/* 805F7B0C  38 A0 00 02 */	li r5, 2
/* 805F7B10  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F7B14  4B FF CF 81 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F7B18  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 805F7B1C  4B C6 FE 38 */	b cM_rndF__Ff
/* 805F7B20  C0 1D 00 54 */	lfs f0, 0x54(r29)
/* 805F7B24  EC 00 08 2A */	fadds f0, f0, f1
/* 805F7B28  FC 00 00 1E */	fctiwz f0, f0
/* 805F7B2C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805F7B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F7B34  B0 1B 0C 44 */	sth r0, 0xc44(r27)
lbl_805F7B38:
/* 805F7B38  C3 FD 01 08 */	lfs f31, 0x108(r29)
/* 805F7B3C  C0 3B 0C 38 */	lfs f1, 0xc38(r27)
/* 805F7B40  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 805F7B44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7B48  40 80 00 48 */	bge lbl_805F7B90
/* 805F7B4C  38 00 00 02 */	li r0, 2
/* 805F7B50  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7B54  7F 63 DB 78 */	mr r3, r27
/* 805F7B58  38 80 00 5B */	li r4, 0x5b
/* 805F7B5C  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 805F7B60  38 A0 00 02 */	li r5, 2
/* 805F7B64  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F7B68  4B FF CF 2D */	bl anm_init__FP11b_gnd_classifUcf
/* 805F7B6C  C0 3D 00 F0 */	lfs f1, 0xf0(r29)
/* 805F7B70  4B C6 FD E4 */	b cM_rndF__Ff
/* 805F7B74  C0 1D 00 98 */	lfs f0, 0x98(r29)
/* 805F7B78  EC 00 08 2A */	fadds f0, f0, f1
/* 805F7B7C  FC 00 00 1E */	fctiwz f0, f0
/* 805F7B80  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805F7B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F7B88  B0 1B 0C 44 */	sth r0, 0xc44(r27)
/* 805F7B8C  48 00 02 28 */	b lbl_805F7DB4
lbl_805F7B90:
/* 805F7B90  A8 1B 0C 44 */	lha r0, 0xc44(r27)
/* 805F7B94  2C 00 00 01 */	cmpwi r0, 1
/* 805F7B98  40 82 02 1C */	bne lbl_805F7DB4
/* 805F7B9C  C0 1D 00 A8 */	lfs f0, 0xa8(r29)
/* 805F7BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7BA4  40 80 00 2C */	bge lbl_805F7BD0
/* 805F7BA8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805F7BAC  4B C6 FD A8 */	b cM_rndF__Ff
/* 805F7BB0  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 805F7BB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7BB8  40 80 00 18 */	bge lbl_805F7BD0
/* 805F7BBC  38 00 00 0B */	li r0, 0xb
/* 805F7BC0  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805F7BC4  38 00 00 0A */	li r0, 0xa
/* 805F7BC8  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7BCC  48 00 01 E8 */	b lbl_805F7DB4
lbl_805F7BD0:
/* 805F7BD0  38 00 00 0D */	li r0, 0xd
/* 805F7BD4  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805F7BD8  38 00 00 00 */	li r0, 0
/* 805F7BDC  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7BE0  48 00 01 D4 */	b lbl_805F7DB4
lbl_805F7BE4:
/* 805F7BE4  A8 1B 0C 54 */	lha r0, 0xc54(r27)
/* 805F7BE8  2C 00 00 00 */	cmpwi r0, 0
/* 805F7BEC  41 82 00 3C */	beq lbl_805F7C28
/* 805F7BF0  C0 3B 0C 38 */	lfs f1, 0xc38(r27)
/* 805F7BF4  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 805F7BF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7BFC  40 80 00 0C */	bge lbl_805F7C08
/* 805F7C00  38 00 00 00 */	li r0, 0
/* 805F7C04  B0 1B 0C 54 */	sth r0, 0xc54(r27)
lbl_805F7C08:
/* 805F7C08  A8 1B 0C 54 */	lha r0, 0xc54(r27)
/* 805F7C0C  2C 00 00 01 */	cmpwi r0, 1
/* 805F7C10  40 82 01 A4 */	bne lbl_805F7DB4
/* 805F7C14  38 00 00 0B */	li r0, 0xb
/* 805F7C18  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805F7C1C  38 00 00 0A */	li r0, 0xa
/* 805F7C20  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7C24  48 00 01 90 */	b lbl_805F7DB4
lbl_805F7C28:
/* 805F7C28  C0 3B 0C 38 */	lfs f1, 0xc38(r27)
/* 805F7C2C  C0 1D 01 10 */	lfs f0, 0x110(r29)
/* 805F7C30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7C34  40 81 00 0C */	ble lbl_805F7C40
/* 805F7C38  38 00 00 00 */	li r0, 0
/* 805F7C3C  B0 1B 05 BC */	sth r0, 0x5bc(r27)
lbl_805F7C40:
/* 805F7C40  C0 3B 0C 38 */	lfs f1, 0xc38(r27)
/* 805F7C44  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 805F7C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7C4C  40 81 00 38 */	ble lbl_805F7C84
/* 805F7C50  38 00 00 0B */	li r0, 0xb
/* 805F7C54  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805F7C58  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805F7C5C  4B C6 FC F8 */	b cM_rndF__Ff
/* 805F7C60  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 805F7C64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7C68  40 80 00 10 */	bge lbl_805F7C78
/* 805F7C6C  38 00 00 0A */	li r0, 0xa
/* 805F7C70  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7C74  48 00 01 40 */	b lbl_805F7DB4
lbl_805F7C78:
/* 805F7C78  38 00 00 0F */	li r0, 0xf
/* 805F7C7C  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7C80  48 00 01 34 */	b lbl_805F7DB4
lbl_805F7C84:
/* 805F7C84  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 805F7C88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7C8C  40 80 00 18 */	bge lbl_805F7CA4
/* 805F7C90  38 00 00 0B */	li r0, 0xb
/* 805F7C94  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805F7C98  38 00 00 04 */	li r0, 4
/* 805F7C9C  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7CA0  48 00 01 14 */	b lbl_805F7DB4
lbl_805F7CA4:
/* 805F7CA4  A8 1B 0C 44 */	lha r0, 0xc44(r27)
/* 805F7CA8  2C 00 00 00 */	cmpwi r0, 0
/* 805F7CAC  40 82 01 08 */	bne lbl_805F7DB4
/* 805F7CB0  38 00 00 0B */	li r0, 0xb
/* 805F7CB4  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805F7CB8  C0 3B 0C 38 */	lfs f1, 0xc38(r27)
/* 805F7CBC  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 805F7CC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7CC4  40 80 00 30 */	bge lbl_805F7CF4
/* 805F7CC8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805F7CCC  4B C6 FC 88 */	b cM_rndF__Ff
/* 805F7CD0  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 805F7CD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F7CD8  40 80 00 10 */	bge lbl_805F7CE8
/* 805F7CDC  38 00 00 00 */	li r0, 0
/* 805F7CE0  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7CE4  48 00 00 D0 */	b lbl_805F7DB4
lbl_805F7CE8:
/* 805F7CE8  38 00 00 08 */	li r0, 8
/* 805F7CEC  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7CF0  48 00 00 C4 */	b lbl_805F7DB4
lbl_805F7CF4:
/* 805F7CF4  38 00 00 02 */	li r0, 2
/* 805F7CF8  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7CFC  48 00 00 B8 */	b lbl_805F7DB4
lbl_805F7D00:
/* 805F7D00  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805F7D04  38 80 00 01 */	li r4, 1
/* 805F7D08  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F7D0C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F7D10  40 82 00 18 */	bne lbl_805F7D28
/* 805F7D14  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 805F7D18  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F7D1C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F7D20  41 82 00 08 */	beq lbl_805F7D28
/* 805F7D24  38 80 00 00 */	li r4, 0
lbl_805F7D28:
/* 805F7D28  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F7D2C  41 82 00 88 */	beq lbl_805F7DB4
/* 805F7D30  38 00 00 00 */	li r0, 0
/* 805F7D34  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F7D38  48 00 00 7C */	b lbl_805F7DB4
lbl_805F7D3C:
/* 805F7D3C  A8 1B 0C 44 */	lha r0, 0xc44(r27)
/* 805F7D40  2C 00 00 01 */	cmpwi r0, 1
/* 805F7D44  40 82 00 1C */	bne lbl_805F7D60
/* 805F7D48  7F 63 DB 78 */	mr r3, r27
/* 805F7D4C  38 80 00 5B */	li r4, 0x5b
/* 805F7D50  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 805F7D54  38 A0 00 02 */	li r5, 2
/* 805F7D58  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F7D5C  4B FF CD 39 */	bl anm_init__FP11b_gnd_classifUcf
lbl_805F7D60:
/* 805F7D60  A8 1B 0C 44 */	lha r0, 0xc44(r27)
/* 805F7D64  2C 00 00 00 */	cmpwi r0, 0
/* 805F7D68  40 82 00 08 */	bne lbl_805F7D70
/* 805F7D6C  3B 80 00 00 */	li r28, 0
lbl_805F7D70:
/* 805F7D70  38 00 00 02 */	li r0, 2
/* 805F7D74  98 1B 0C 7D */	stb r0, 0xc7d(r27)
/* 805F7D78  C0 1F 10 60 */	lfs f0, 0x1060(r31)
/* 805F7D7C  D0 1B 0C 80 */	stfs f0, 0xc80(r27)
/* 805F7D80  C0 1F 10 64 */	lfs f0, 0x1064(r31)
/* 805F7D84  D0 1B 0C 84 */	stfs f0, 0xc84(r27)
/* 805F7D88  C0 1F 10 68 */	lfs f0, 0x1068(r31)
/* 805F7D8C  D0 1B 0C 88 */	stfs f0, 0xc88(r27)
/* 805F7D90  48 00 00 24 */	b lbl_805F7DB4
lbl_805F7D94:
/* 805F7D94  3B 80 00 00 */	li r28, 0
/* 805F7D98  38 00 00 0A */	li r0, 0xa
/* 805F7D9C  B0 1B 0C 5A */	sth r0, 0xc5a(r27)
/* 805F7DA0  A8 1B 0C 44 */	lha r0, 0xc44(r27)
/* 805F7DA4  2C 00 00 00 */	cmpwi r0, 0
/* 805F7DA8  40 82 00 0C */	bne lbl_805F7DB4
/* 805F7DAC  38 00 00 00 */	li r0, 0
/* 805F7DB0  B0 1B 05 BC */	sth r0, 0x5bc(r27)
lbl_805F7DB4:
/* 805F7DB4  38 7B 05 2C */	addi r3, r27, 0x52c
/* 805F7DB8  FC 20 F8 90 */	fmr f1, f31
/* 805F7DBC  C0 5D 00 00 */	lfs f2, 0(r29)
/* 805F7DC0  C0 7D 00 84 */	lfs f3, 0x84(r29)
/* 805F7DC4  4B C7 7C 78 */	b cLib_addCalc2__FPffff
/* 805F7DC8  A8 1B 0A FC */	lha r0, 0xafc(r27)
/* 805F7DCC  54 00 07 3B */	rlwinm. r0, r0, 0, 0x1c, 0x1d
/* 805F7DD0  40 82 00 14 */	bne lbl_805F7DE4
/* 805F7DD4  7F 80 07 34 */	extsh r0, r28
/* 805F7DD8  7C 00 0E 70 */	srawi r0, r0, 1
/* 805F7DDC  7C 00 01 94 */	addze r0, r0
/* 805F7DE0  7C 1C 07 34 */	extsh r28, r0
lbl_805F7DE4:
/* 805F7DE4  38 7B 04 DE */	addi r3, r27, 0x4de
/* 805F7DE8  A8 9B 0C 3C */	lha r4, 0xc3c(r27)
/* 805F7DEC  38 A0 00 02 */	li r5, 2
/* 805F7DF0  7F 86 E3 78 */	mr r6, r28
/* 805F7DF4  4B C7 88 14 */	b cLib_addCalcAngleS2__FPssss
/* 805F7DF8  A8 7B 0C 3C */	lha r3, 0xc3c(r27)
/* 805F7DFC  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 805F7E00  7C 03 00 50 */	subf r0, r3, r0
/* 805F7E04  7C 00 07 34 */	extsh r0, r0
/* 805F7E08  2C 00 01 00 */	cmpwi r0, 0x100
/* 805F7E0C  41 81 00 0C */	bgt lbl_805F7E18
/* 805F7E10  2C 00 FF 00 */	cmpwi r0, -256
/* 805F7E14  40 80 00 34 */	bge lbl_805F7E48
lbl_805F7E18:
/* 805F7E18  A8 1B 0A FC */	lha r0, 0xafc(r27)
/* 805F7E1C  1C 00 13 88 */	mulli r0, r0, 0x1388
/* 805F7E20  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805F7E24  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 805F7E28  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 805F7E2C  7C 23 04 2E */	lfsx f1, r3, r0
/* 805F7E30  C0 1D 00 70 */	lfs f0, 0x70(r29)
/* 805F7E34  EC 00 00 72 */	fmuls f0, f0, f1
/* 805F7E38  FC 00 00 1E */	fctiwz f0, f0
/* 805F7E3C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805F7E40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F7E44  B0 1B 26 C2 */	sth r0, 0x26c2(r27)
lbl_805F7E48:
/* 805F7E48  A8 1B 0A FE */	lha r0, 0xafe(r27)
/* 805F7E4C  2C 00 00 0A */	cmpwi r0, 0xa
/* 805F7E50  41 82 00 18 */	beq lbl_805F7E68
/* 805F7E54  88 1E 39 69 */	lbz r0, 0x3969(r30)
/* 805F7E58  28 00 00 02 */	cmplwi r0, 2
/* 805F7E5C  40 82 00 0C */	bne lbl_805F7E68
/* 805F7E60  38 00 00 01 */	li r0, 1
/* 805F7E64  98 1E 39 69 */	stb r0, 0x3969(r30)
lbl_805F7E68:
/* 805F7E68  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805F7E6C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805F7E70  39 61 00 30 */	addi r11, r1, 0x30
/* 805F7E74  4B D6 A3 AC */	b _restgpr_27
/* 805F7E78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805F7E7C  7C 08 03 A6 */	mtlr r0
/* 805F7E80  38 21 00 40 */	addi r1, r1, 0x40
/* 805F7E84  4E 80 00 20 */	blr 

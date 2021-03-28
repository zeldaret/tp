lbl_805E7D50:
/* 805E7D50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E7D54  7C 08 02 A6 */	mflr r0
/* 805E7D58  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E7D5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805E7D60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805E7D64  7C 7E 1B 78 */	mr r30, r3
/* 805E7D68  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805E7D6C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805E7D70  83 E4 5D AC */	lwz r31, 0x5dac(r4)
/* 805E7D74  88 03 05 C7 */	lbz r0, 0x5c7(r3)
/* 805E7D78  2C 00 00 01 */	cmpwi r0, 1
/* 805E7D7C  41 82 00 78 */	beq lbl_805E7DF4
/* 805E7D80  40 80 01 B8 */	bge lbl_805E7F38
/* 805E7D84  2C 00 00 00 */	cmpwi r0, 0
/* 805E7D88  40 80 00 08 */	bge lbl_805E7D90
/* 805E7D8C  48 00 01 AC */	b lbl_805E7F38
lbl_805E7D90:
/* 805E7D90  80 9E 0E 30 */	lwz r4, 0xe30(r30)
/* 805E7D94  38 A0 00 01 */	li r5, 1
/* 805E7D98  88 04 00 11 */	lbz r0, 0x11(r4)
/* 805E7D9C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E7DA0  40 82 00 1C */	bne lbl_805E7DBC
/* 805E7DA4  3C 60 80 5F */	lis r3, lit_3912@ha
/* 805E7DA8  C0 23 D0 64 */	lfs f1, lit_3912@l(r3)
/* 805E7DAC  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805E7DB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E7DB4  41 82 00 08 */	beq lbl_805E7DBC
/* 805E7DB8  38 A0 00 00 */	li r5, 0
lbl_805E7DBC:
/* 805E7DBC  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 805E7DC0  41 82 01 78 */	beq lbl_805E7F38
/* 805E7DC4  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 805E7DC8  28 00 00 00 */	cmplwi r0, 0
/* 805E7DCC  40 82 00 10 */	bne lbl_805E7DDC
/* 805E7DD0  38 00 00 82 */	li r0, 0x82
/* 805E7DD4  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 805E7DD8  48 00 00 0C */	b lbl_805E7DE4
lbl_805E7DDC:
/* 805E7DDC  38 00 00 46 */	li r0, 0x46
/* 805E7DE0  B0 1E 05 DA */	sth r0, 0x5da(r30)
lbl_805E7DE4:
/* 805E7DE4  88 7E 05 C7 */	lbz r3, 0x5c7(r30)
/* 805E7DE8  38 03 00 01 */	addi r0, r3, 1
/* 805E7DEC  98 1E 05 C7 */	stb r0, 0x5c7(r30)
/* 805E7DF0  48 00 01 48 */	b lbl_805E7F38
lbl_805E7DF4:
/* 805E7DF4  A8 1E 05 DA */	lha r0, 0x5da(r30)
/* 805E7DF8  2C 00 00 00 */	cmpwi r0, 0
/* 805E7DFC  40 82 00 D8 */	bne lbl_805E7ED4
/* 805E7E00  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805E7E04  38 A0 00 0A */	li r5, 0xa
/* 805E7E08  38 C0 00 00 */	li r6, 0
/* 805E7E0C  38 E0 00 2E */	li r7, 0x2e
/* 805E7E10  4B A3 4C C8 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 805E7E14  7F C3 F3 78 */	mr r3, r30
/* 805E7E18  38 9E 06 70 */	addi r4, r30, 0x670
/* 805E7E1C  38 A0 00 05 */	li r5, 5
/* 805E7E20  38 C0 00 00 */	li r6, 0
/* 805E7E24  38 E0 00 FF */	li r7, 0xff
/* 805E7E28  4B A3 4C B0 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 805E7E2C  7F C3 F3 78 */	mr r3, r30
/* 805E7E30  4B A3 1E 4C */	b fopAcM_delete__FP10fopAc_ac_c
/* 805E7E34  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 805E7E38  28 00 00 00 */	cmplwi r0, 0
/* 805E7E3C  40 82 00 28 */	bne lbl_805E7E64
/* 805E7E40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E7E44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E7E48  88 9E 05 CF */	lbz r4, 0x5cf(r30)
/* 805E7E4C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E7E50  7C 05 07 74 */	extsb r5, r0
/* 805E7E54  4B A4 D3 AC */	b onSwitch__10dSv_info_cFii
/* 805E7E58  7F C3 F3 78 */	mr r3, r30
/* 805E7E5C  4B FF 83 9D */	bl SetReleaseCam__8daB_GG_cFv
/* 805E7E60  48 00 00 74 */	b lbl_805E7ED4
lbl_805E7E64:
/* 805E7E64  28 00 00 03 */	cmplwi r0, 3
/* 805E7E68  40 82 00 2C */	bne lbl_805E7E94
/* 805E7E6C  38 00 00 00 */	li r0, 0
/* 805E7E70  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 805E7E74  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 805E7E78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E7E7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E7E80  88 9E 05 CF */	lbz r4, 0x5cf(r30)
/* 805E7E84  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E7E88  7C 05 07 74 */	extsb r5, r0
/* 805E7E8C  4B A4 D3 74 */	b onSwitch__10dSv_info_cFii
/* 805E7E90  48 00 00 44 */	b lbl_805E7ED4
lbl_805E7E94:
/* 805E7E94  88 9E 05 CF */	lbz r4, 0x5cf(r30)
/* 805E7E98  28 04 00 FF */	cmplwi r4, 0xff
/* 805E7E9C  41 82 00 38 */	beq lbl_805E7ED4
/* 805E7EA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E7EA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E7EA8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E7EAC  7C 05 07 74 */	extsb r5, r0
/* 805E7EB0  4B A4 D4 B0 */	b isSwitch__10dSv_info_cCFii
/* 805E7EB4  2C 03 00 00 */	cmpwi r3, 0
/* 805E7EB8  40 82 00 1C */	bne lbl_805E7ED4
/* 805E7EBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805E7EC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805E7EC4  88 9E 05 CF */	lbz r4, 0x5cf(r30)
/* 805E7EC8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805E7ECC  7C 05 07 74 */	extsb r5, r0
/* 805E7ED0  4B A4 D3 30 */	b onSwitch__10dSv_info_cFii
lbl_805E7ED4:
/* 805E7ED4  3C 60 80 5F */	lis r3, lit_5507@ha
/* 805E7ED8  C0 43 D2 98 */	lfs f2, lit_5507@l(r3)
/* 805E7EDC  A8 1E 05 DA */	lha r0, 0x5da(r30)
/* 805E7EE0  3C 60 80 5F */	lis r3, lit_4066@ha
/* 805E7EE4  C8 23 D1 A8 */	lfd f1, lit_4066@l(r3)
/* 805E7EE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E7EEC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805E7EF0  3C 00 43 30 */	lis r0, 0x4330
/* 805E7EF4  90 01 00 08 */	stw r0, 8(r1)
/* 805E7EF8  C8 01 00 08 */	lfd f0, 8(r1)
/* 805E7EFC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805E7F00  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805E7F04  40 82 00 34 */	bne lbl_805E7F38
/* 805E7F08  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 805E7F0C  28 00 00 00 */	cmplwi r0, 0
/* 805E7F10  40 82 00 28 */	bne lbl_805E7F38
/* 805E7F14  38 00 00 03 */	li r0, 3
/* 805E7F18  B0 1F 06 04 */	sth r0, 0x604(r31)
/* 805E7F1C  38 60 00 00 */	li r3, 0
/* 805E7F20  90 7F 06 0C */	stw r3, 0x60c(r31)
/* 805E7F24  38 00 00 1E */	li r0, 0x1e
/* 805E7F28  90 1F 06 14 */	stw r0, 0x614(r31)
/* 805E7F2C  90 7F 06 0C */	stw r3, 0x60c(r31)
/* 805E7F30  90 7F 06 10 */	stw r3, 0x610(r31)
/* 805E7F34  B0 7F 06 0A */	sth r3, 0x60a(r31)
lbl_805E7F38:
/* 805E7F38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805E7F3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805E7F40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E7F44  7C 08 03 A6 */	mtlr r0
/* 805E7F48  38 21 00 20 */	addi r1, r1, 0x20
/* 805E7F4C  4E 80 00 20 */	blr 

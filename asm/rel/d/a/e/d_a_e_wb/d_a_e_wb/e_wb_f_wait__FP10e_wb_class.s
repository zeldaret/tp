lbl_807D48C0:
/* 807D48C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807D48C4  7C 08 02 A6 */	mflr r0
/* 807D48C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807D48CC  39 61 00 20 */	addi r11, r1, 0x20
/* 807D48D0  4B B8 D9 08 */	b _savegpr_28
/* 807D48D4  7C 7D 1B 78 */	mr r29, r3
/* 807D48D8  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D48DC  3B C4 29 8C */	addi r30, r4, lit_3882@l
/* 807D48E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807D48E4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 807D48E8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807D48EC  4B 84 5E 24 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D48F0  7C 7C 1B 78 */	mr r28, r3
/* 807D48F4  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 807D48F8  2C 00 00 0A */	cmpwi r0, 0xa
/* 807D48FC  41 82 01 88 */	beq lbl_807D4A84
/* 807D4900  40 80 00 1C */	bge lbl_807D491C
/* 807D4904  2C 00 00 01 */	cmpwi r0, 1
/* 807D4908  41 82 00 BC */	beq lbl_807D49C4
/* 807D490C  40 80 02 20 */	bge lbl_807D4B2C
/* 807D4910  2C 00 00 00 */	cmpwi r0, 0
/* 807D4914  40 80 00 14 */	bge lbl_807D4928
/* 807D4918  48 00 02 14 */	b lbl_807D4B2C
lbl_807D491C:
/* 807D491C  2C 00 00 0C */	cmpwi r0, 0xc
/* 807D4920  40 80 02 0C */	bge lbl_807D4B2C
/* 807D4924  48 00 01 C0 */	b lbl_807D4AE4
lbl_807D4928:
/* 807D4928  3C 60 80 7E */	lis r3, struct_807E35B4+0x1@ha
/* 807D492C  88 03 35 B5 */	lbz r0, struct_807E35B4+0x1@l(r3)
/* 807D4930  7C 00 07 75 */	extsb. r0, r0
/* 807D4934  41 82 00 64 */	beq lbl_807D4998
/* 807D4938  88 1D 05 BD */	lbz r0, 0x5bd(r29)
/* 807D493C  28 00 00 01 */	cmplwi r0, 1
/* 807D4940  41 82 00 0C */	beq lbl_807D494C
/* 807D4944  28 00 00 02 */	cmplwi r0, 2
/* 807D4948  40 82 00 50 */	bne lbl_807D4998
lbl_807D494C:
/* 807D494C  38 00 00 0A */	li r0, 0xa
/* 807D4950  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D4954  7F A3 EB 78 */	mr r3, r29
/* 807D4958  38 80 00 28 */	li r4, 0x28
/* 807D495C  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807D4960  38 A0 00 02 */	li r5, 2
/* 807D4964  C0 5E 00 E8 */	lfs f2, 0xe8(r30)
/* 807D4968  4B FF DB E1 */	bl anm_init__FP10e_wb_classifUcf
/* 807D496C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807D4970  4B A9 2F E4 */	b cM_rndF__Ff
/* 807D4974  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 807D4978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D497C  40 80 00 10 */	bge lbl_807D498C
/* 807D4980  38 00 30 00 */	li r0, 0x3000
/* 807D4984  B0 1D 07 A0 */	sth r0, 0x7a0(r29)
/* 807D4988  48 00 01 A4 */	b lbl_807D4B2C
lbl_807D498C:
/* 807D498C  38 00 D0 00 */	li r0, -12288
/* 807D4990  B0 1D 07 A0 */	sth r0, 0x7a0(r29)
/* 807D4994  48 00 01 98 */	b lbl_807D4B2C
lbl_807D4998:
/* 807D4998  7F A3 EB 78 */	mr r3, r29
/* 807D499C  38 80 00 28 */	li r4, 0x28
/* 807D49A0  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807D49A4  38 A0 00 02 */	li r5, 2
/* 807D49A8  C0 5E 00 E8 */	lfs f2, 0xe8(r30)
/* 807D49AC  4B FF DB 9D */	bl anm_init__FP10e_wb_classifUcf
/* 807D49B0  38 00 00 01 */	li r0, 1
/* 807D49B4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D49B8  A0 1D 06 BE */	lhz r0, 0x6be(r29)
/* 807D49BC  60 00 00 04 */	ori r0, r0, 4
/* 807D49C0  B0 1D 06 BE */	sth r0, 0x6be(r29)
lbl_807D49C4:
/* 807D49C4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807D49C8  7F 84 E3 78 */	mr r4, r28
/* 807D49CC  38 A0 00 08 */	li r5, 8
/* 807D49D0  38 C0 02 00 */	li r6, 0x200
/* 807D49D4  4B A9 BC 34 */	b cLib_addCalcAngleS2__FPssss
/* 807D49D8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D49DC  7C 00 E0 50 */	subf r0, r0, r28
/* 807D49E0  B0 1D 06 D0 */	sth r0, 0x6d0(r29)
/* 807D49E4  A8 1D 06 D0 */	lha r0, 0x6d0(r29)
/* 807D49E8  2C 00 08 00 */	cmpwi r0, 0x800
/* 807D49EC  40 80 00 70 */	bge lbl_807D4A5C
/* 807D49F0  2C 00 F8 00 */	cmpwi r0, -2048
/* 807D49F4  40 81 00 68 */	ble lbl_807D4A5C
/* 807D49F8  88 1D 14 2F */	lbz r0, 0x142f(r29)
/* 807D49FC  7C 00 07 75 */	extsb. r0, r0
/* 807D4A00  40 81 00 2C */	ble lbl_807D4A2C
/* 807D4A04  80 1D 05 E8 */	lwz r0, 0x5e8(r29)
/* 807D4A08  2C 00 00 2A */	cmpwi r0, 0x2a
/* 807D4A0C  41 82 01 20 */	beq lbl_807D4B2C
/* 807D4A10  7F A3 EB 78 */	mr r3, r29
/* 807D4A14  38 80 00 2A */	li r4, 0x2a
/* 807D4A18  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 807D4A1C  38 A0 00 02 */	li r5, 2
/* 807D4A20  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D4A24  4B FF DB 25 */	bl anm_init__FP10e_wb_classifUcf
/* 807D4A28  48 00 01 04 */	b lbl_807D4B2C
lbl_807D4A2C:
/* 807D4A2C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807D4A30  38 00 00 06 */	li r0, 6
/* 807D4A34  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 807D4A38  38 00 00 00 */	li r0, 0
/* 807D4A3C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D4A40  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807D4A44  D0 1D 05 D0 */	stfs f0, 0x5d0(r29)
/* 807D4A48  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 807D4A4C  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 807D4A50  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807D4A54  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 807D4A58  48 00 00 D4 */	b lbl_807D4B2C
lbl_807D4A5C:
/* 807D4A5C  80 1D 05 E8 */	lwz r0, 0x5e8(r29)
/* 807D4A60  2C 00 00 28 */	cmpwi r0, 0x28
/* 807D4A64  41 82 00 C8 */	beq lbl_807D4B2C
/* 807D4A68  7F A3 EB 78 */	mr r3, r29
/* 807D4A6C  38 80 00 28 */	li r4, 0x28
/* 807D4A70  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807D4A74  38 A0 00 02 */	li r5, 2
/* 807D4A78  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D4A7C  4B FF DA CD */	bl anm_init__FP10e_wb_classifUcf
/* 807D4A80  48 00 00 AC */	b lbl_807D4B2C
lbl_807D4A84:
/* 807D4A84  A8 1D 07 A0 */	lha r0, 0x7a0(r29)
/* 807D4A88  7F 9C 02 14 */	add r28, r28, r0
/* 807D4A8C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807D4A90  7F 84 E3 78 */	mr r4, r28
/* 807D4A94  38 A0 00 08 */	li r5, 8
/* 807D4A98  38 C0 02 00 */	li r6, 0x200
/* 807D4A9C  4B A9 BB 6C */	b cLib_addCalcAngleS2__FPssss
/* 807D4AA0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D4AA4  7C 00 E0 50 */	subf r0, r0, r28
/* 807D4AA8  B0 1D 06 D0 */	sth r0, 0x6d0(r29)
/* 807D4AAC  A8 1D 06 D0 */	lha r0, 0x6d0(r29)
/* 807D4AB0  2C 00 08 00 */	cmpwi r0, 0x800
/* 807D4AB4  40 80 00 78 */	bge lbl_807D4B2C
/* 807D4AB8  2C 00 F8 00 */	cmpwi r0, -2048
/* 807D4ABC  40 81 00 70 */	ble lbl_807D4B2C
/* 807D4AC0  7F A3 EB 78 */	mr r3, r29
/* 807D4AC4  38 80 00 2A */	li r4, 0x2a
/* 807D4AC8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 807D4ACC  38 A0 00 02 */	li r5, 2
/* 807D4AD0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 807D4AD4  4B FF DA 75 */	bl anm_init__FP10e_wb_classifUcf
/* 807D4AD8  38 00 00 0B */	li r0, 0xb
/* 807D4ADC  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D4AE0  48 00 00 4C */	b lbl_807D4B2C
lbl_807D4AE4:
/* 807D4AE4  A8 1D 07 A0 */	lha r0, 0x7a0(r29)
/* 807D4AE8  7F 9C 02 14 */	add r28, r28, r0
/* 807D4AEC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807D4AF0  7C 00 E0 50 */	subf r0, r0, r28
/* 807D4AF4  B0 1D 06 D0 */	sth r0, 0x6d0(r29)
/* 807D4AF8  A8 1D 06 D0 */	lha r0, 0x6d0(r29)
/* 807D4AFC  2C 00 10 00 */	cmpwi r0, 0x1000
/* 807D4B00  41 81 00 0C */	bgt lbl_807D4B0C
/* 807D4B04  2C 00 F0 00 */	cmpwi r0, -4096
/* 807D4B08  40 80 00 24 */	bge lbl_807D4B2C
lbl_807D4B0C:
/* 807D4B0C  38 00 00 0A */	li r0, 0xa
/* 807D4B10  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807D4B14  7F A3 EB 78 */	mr r3, r29
/* 807D4B18  38 80 00 28 */	li r4, 0x28
/* 807D4B1C  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 807D4B20  38 A0 00 02 */	li r5, 2
/* 807D4B24  C0 5E 00 E8 */	lfs f2, 0xe8(r30)
/* 807D4B28  4B FF DA 21 */	bl anm_init__FP10e_wb_classifUcf
lbl_807D4B2C:
/* 807D4B2C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807D4B30  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807D4B34  C0 5E 00 DC */	lfs f2, 0xdc(r30)
/* 807D4B38  4B A9 AF 48 */	b cLib_addCalc0__FPfff
/* 807D4B3C  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 807D4B40  2C 00 00 0A */	cmpwi r0, 0xa
/* 807D4B44  41 80 00 80 */	blt lbl_807D4BC4
/* 807D4B48  7F A3 EB 78 */	mr r3, r29
/* 807D4B4C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807D4B50  4B 84 5E 14 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807D4B54  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 807D4B58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D4B5C  41 80 00 4C */	blt lbl_807D4BA8
/* 807D4B60  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 807D4B64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D4B68  41 81 00 40 */	bgt lbl_807D4BA8
/* 807D4B6C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807D4B70  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807D4B74  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807D4B78  7D 89 03 A6 */	mtctr r12
/* 807D4B7C  4E 80 04 21 */	bctrl 
/* 807D4B80  28 03 00 00 */	cmplwi r3, 0
/* 807D4B84  41 82 00 40 */	beq lbl_807D4BC4
/* 807D4B88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D4B8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D4B90  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 807D4B94  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 807D4B98  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 807D4B9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807D4BA0  4C 41 13 82 */	cror 2, 1, 2
/* 807D4BA4  40 82 00 20 */	bne lbl_807D4BC4
lbl_807D4BA8:
/* 807D4BA8  88 1D 14 2F */	lbz r0, 0x142f(r29)
/* 807D4BAC  7C 00 07 75 */	extsb. r0, r0
/* 807D4BB0  40 82 00 14 */	bne lbl_807D4BC4
/* 807D4BB4  38 00 00 06 */	li r0, 6
/* 807D4BB8  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 807D4BBC  38 00 00 00 */	li r0, 0
/* 807D4BC0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_807D4BC4:
/* 807D4BC4  39 61 00 20 */	addi r11, r1, 0x20
/* 807D4BC8  4B B8 D6 5C */	b _restgpr_28
/* 807D4BCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807D4BD0  7C 08 03 A6 */	mtlr r0
/* 807D4BD4  38 21 00 20 */	addi r1, r1, 0x20
/* 807D4BD8  4E 80 00 20 */	blr 

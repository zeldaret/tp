lbl_80530924:
/* 80530924  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80530928  7C 08 02 A6 */	mflr r0
/* 8053092C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80530930  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80530934  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80530938  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8053093C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80530940  39 61 00 60 */	addi r11, r1, 0x60
/* 80530944  4B E3 18 91 */	bl _savegpr_27
/* 80530948  7C 7C 1B 78 */	mr r28, r3
/* 8053094C  3C 60 80 53 */	lis r3, lit_3679@ha /* 0x80536168@ha */
/* 80530950  3B E3 61 68 */	addi r31, r3, lit_3679@l /* 0x80536168@l */
/* 80530954  3B 60 00 00 */	li r27, 0
/* 80530958  3B A0 00 00 */	li r29, 0
/* 8053095C  80 1C 06 4C */	lwz r0, 0x64c(r28)
/* 80530960  90 01 00 10 */	stw r0, 0x10(r1)
/* 80530964  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80530968  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8053096C  38 81 00 10 */	addi r4, r1, 0x10
/* 80530970  4B AE 8E 89 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80530974  7C 7E 1B 79 */	or. r30, r3, r3
/* 80530978  40 82 00 0C */	bne lbl_80530984
/* 8053097C  3B 60 00 01 */	li r27, 1
/* 80530980  48 00 00 28 */	b lbl_805309A8
lbl_80530984:
/* 80530984  88 1E 10 0D */	lbz r0, 0x100d(r30)
/* 80530988  7C 00 07 75 */	extsb. r0, r0
/* 8053098C  40 82 00 0C */	bne lbl_80530998
/* 80530990  3B 60 00 01 */	li r27, 1
/* 80530994  48 00 00 14 */	b lbl_805309A8
lbl_80530998:
/* 80530998  A8 1E 0F 7E */	lha r0, 0xf7e(r30)
/* 8053099C  2C 00 00 05 */	cmpwi r0, 5
/* 805309A0  40 82 00 08 */	bne lbl_805309A8
/* 805309A4  3B 60 00 01 */	li r27, 1
lbl_805309A8:
/* 805309A8  2C 1B 00 00 */	cmpwi r27, 0
/* 805309AC  41 82 00 48 */	beq lbl_805309F4
/* 805309B0  38 00 00 05 */	li r0, 5
/* 805309B4  B0 1C 05 B6 */	sth r0, 0x5b6(r28)
/* 805309B8  38 00 00 00 */	li r0, 0
/* 805309BC  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
/* 805309C0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805309C4  4B D3 6F 91 */	bl cM_rndF__Ff
/* 805309C8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805309CC  EC 00 08 2A */	fadds f0, f0, f1
/* 805309D0  FC 00 00 1E */	fctiwz f0, f0
/* 805309D4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 805309D8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 805309DC  B0 1C 06 2E */	sth r0, 0x62e(r28)
/* 805309E0  7F 83 E3 78 */	mr r3, r28
/* 805309E4  4B FF 98 39 */	bl mouth_close__FP13mg_fish_class
/* 805309E8  38 00 00 00 */	li r0, 0
/* 805309EC  98 1C 06 59 */	stb r0, 0x659(r28)
/* 805309F0  48 00 06 84 */	b lbl_80531074
lbl_805309F4:
/* 805309F4  38 00 08 00 */	li r0, 0x800
/* 805309F8  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 805309FC  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 80530A00  A8 1C 05 B8 */	lha r0, 0x5b8(r28)
/* 80530A04  2C 00 00 02 */	cmpwi r0, 2
/* 80530A08  41 82 00 40 */	beq lbl_80530A48
/* 80530A0C  40 80 00 14 */	bge lbl_80530A20
/* 80530A10  2C 00 00 00 */	cmpwi r0, 0
/* 80530A14  41 82 00 18 */	beq lbl_80530A2C
/* 80530A18  40 80 00 28 */	bge lbl_80530A40
/* 80530A1C  48 00 05 A4 */	b lbl_80530FC0
lbl_80530A20:
/* 80530A20  2C 00 00 04 */	cmpwi r0, 4
/* 80530A24  40 80 05 9C */	bge lbl_80530FC0
/* 80530A28  48 00 05 68 */	b lbl_80530F90
lbl_80530A2C:
/* 80530A2C  38 00 00 00 */	li r0, 0
/* 80530A30  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 80530A34  A8 7C 05 B8 */	lha r3, 0x5b8(r28)
/* 80530A38  38 03 00 01 */	addi r0, r3, 1
/* 80530A3C  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
lbl_80530A40:
/* 80530A40  38 00 00 02 */	li r0, 2
/* 80530A44  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
lbl_80530A48:
/* 80530A48  38 61 00 20 */	addi r3, r1, 0x20
/* 80530A4C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80530A50  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80530A54  4B D3 60 E1 */	bl __mi__4cXyzCFRC3Vec
/* 80530A58  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80530A5C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80530A60  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80530A64  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80530A68  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80530A6C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80530A70  4B D3 6C 05 */	bl cM_atan2s__Fff
/* 80530A74  B0 7C 05 CC */	sth r3, 0x5cc(r28)
/* 80530A78  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80530A7C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80530A80  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80530A84  EC 00 00 32 */	fmuls f0, f0, f0
/* 80530A88  EC 41 00 2A */	fadds f2, f1, f0
/* 80530A8C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80530A90  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80530A94  40 81 00 0C */	ble lbl_80530AA0
/* 80530A98  FC 00 10 34 */	frsqrte f0, f2
/* 80530A9C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80530AA0:
/* 80530AA0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80530AA4  4B D3 6B D1 */	bl cM_atan2s__Fff
/* 80530AA8  7C 03 00 D0 */	neg r0, r3
/* 80530AAC  B0 1C 05 CE */	sth r0, 0x5ce(r28)
/* 80530AB0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80530AB4  4B E1 66 85 */	bl PSVECSquareMag
/* 80530AB8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80530ABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530AC0  40 81 00 58 */	ble lbl_80530B18
/* 80530AC4  FC 00 08 34 */	frsqrte f0, f1
/* 80530AC8  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80530ACC  FC 44 00 32 */	fmul f2, f4, f0
/* 80530AD0  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80530AD4  FC 00 00 32 */	fmul f0, f0, f0
/* 80530AD8  FC 01 00 32 */	fmul f0, f1, f0
/* 80530ADC  FC 03 00 28 */	fsub f0, f3, f0
/* 80530AE0  FC 02 00 32 */	fmul f0, f2, f0
/* 80530AE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80530AE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80530AEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80530AF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80530AF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80530AF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80530AFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80530B00  FC 01 00 32 */	fmul f0, f1, f0
/* 80530B04  FC 03 00 28 */	fsub f0, f3, f0
/* 80530B08  FC 02 00 32 */	fmul f0, f2, f0
/* 80530B0C  FC 21 00 32 */	fmul f1, f1, f0
/* 80530B10  FC 20 08 18 */	frsp f1, f1
/* 80530B14  48 00 00 88 */	b lbl_80530B9C
lbl_80530B18:
/* 80530B18  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80530B1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530B20  40 80 00 10 */	bge lbl_80530B30
/* 80530B24  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80530B28  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80530B2C  48 00 00 70 */	b lbl_80530B9C
lbl_80530B30:
/* 80530B30  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80530B34  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80530B38  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80530B3C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80530B40  7C 03 00 00 */	cmpw r3, r0
/* 80530B44  41 82 00 14 */	beq lbl_80530B58
/* 80530B48  40 80 00 40 */	bge lbl_80530B88
/* 80530B4C  2C 03 00 00 */	cmpwi r3, 0
/* 80530B50  41 82 00 20 */	beq lbl_80530B70
/* 80530B54  48 00 00 34 */	b lbl_80530B88
lbl_80530B58:
/* 80530B58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80530B5C  41 82 00 0C */	beq lbl_80530B68
/* 80530B60  38 00 00 01 */	li r0, 1
/* 80530B64  48 00 00 28 */	b lbl_80530B8C
lbl_80530B68:
/* 80530B68  38 00 00 02 */	li r0, 2
/* 80530B6C  48 00 00 20 */	b lbl_80530B8C
lbl_80530B70:
/* 80530B70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80530B74  41 82 00 0C */	beq lbl_80530B80
/* 80530B78  38 00 00 05 */	li r0, 5
/* 80530B7C  48 00 00 10 */	b lbl_80530B8C
lbl_80530B80:
/* 80530B80  38 00 00 03 */	li r0, 3
/* 80530B84  48 00 00 08 */	b lbl_80530B8C
lbl_80530B88:
/* 80530B88  38 00 00 04 */	li r0, 4
lbl_80530B8C:
/* 80530B8C  2C 00 00 01 */	cmpwi r0, 1
/* 80530B90  40 82 00 0C */	bne lbl_80530B9C
/* 80530B94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80530B98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80530B9C:
/* 80530B9C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80530BA0  C0 7C 05 EC */	lfs f3, 0x5ec(r28)
/* 80530BA4  EC 00 18 2A */	fadds f0, f0, f3
/* 80530BA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530BAC  40 81 00 0C */	ble lbl_80530BB8
/* 80530BB0  3B A0 00 01 */	li r29, 1
/* 80530BB4  48 00 00 B0 */	b lbl_80530C64
lbl_80530BB8:
/* 80530BB8  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 80530BBC  C0 5C 05 BC */	lfs f2, 0x5bc(r28)
/* 80530BC0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80530BC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530BC8  40 81 00 0C */	ble lbl_80530BD4
/* 80530BCC  C3 FF 00 58 */	lfs f31, 0x58(r31)
/* 80530BD0  48 00 00 94 */	b lbl_80530C64
lbl_80530BD4:
/* 80530BD4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80530BD8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80530BDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530BE0  40 80 00 2C */	bge lbl_80530C0C
/* 80530BE4  C0 7F 01 78 */	lfs f3, 0x178(r31)
/* 80530BE8  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80530BEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80530BF0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80530BF4  EF E3 00 28 */	fsubs f31, f3, f0
/* 80530BF8  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 80530BFC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80530C00  40 80 00 64 */	bge lbl_80530C64
/* 80530C04  FF E0 00 90 */	fmr f31, f0
/* 80530C08  48 00 00 5C */	b lbl_80530C64
lbl_80530C0C:
/* 80530C0C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80530C10  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80530C14  41 81 00 24 */	bgt lbl_80530C38
/* 80530C18  A8 1C 05 B4 */	lha r0, 0x5b4(r28)
/* 80530C1C  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 80530C20  40 82 00 44 */	bne lbl_80530C64
/* 80530C24  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80530C28  4B D3 6D 2D */	bl cM_rndF__Ff
/* 80530C2C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80530C30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530C34  40 81 00 30 */	ble lbl_80530C64
lbl_80530C38:
/* 80530C38  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80530C3C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80530C40  C3 FC 05 2C */	lfs f31, 0x52c(r28)
/* 80530C44  38 00 00 00 */	li r0, 0
/* 80530C48  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 80530C4C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80530C50  4B D3 6D 05 */	bl cM_rndF__Ff
/* 80530C54  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80530C58  EC 00 08 2A */	fadds f0, f0, f1
/* 80530C5C  FC 00 00 50 */	fneg f0, f0
/* 80530C60  D0 1C 06 54 */	stfs f0, 0x654(r28)
lbl_80530C64:
/* 80530C64  38 61 00 14 */	addi r3, r1, 0x14
/* 80530C68  38 9C 06 38 */	addi r4, r28, 0x638
/* 80530C6C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80530C70  4B D3 5E C5 */	bl __mi__4cXyzCFRC3Vec
/* 80530C74  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80530C78  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80530C7C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80530C80  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80530C84  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80530C88  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80530C8C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80530C90  4B E1 64 A9 */	bl PSVECSquareMag
/* 80530C94  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80530C98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530C9C  40 81 00 58 */	ble lbl_80530CF4
/* 80530CA0  FC 00 08 34 */	frsqrte f0, f1
/* 80530CA4  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 80530CA8  FC 44 00 32 */	fmul f2, f4, f0
/* 80530CAC  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 80530CB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80530CB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80530CB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80530CBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80530CC0  FC 44 00 32 */	fmul f2, f4, f0
/* 80530CC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80530CC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80530CCC  FC 03 00 28 */	fsub f0, f3, f0
/* 80530CD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80530CD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80530CD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80530CDC  FC 01 00 32 */	fmul f0, f1, f0
/* 80530CE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80530CE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80530CE8  FC 21 00 32 */	fmul f1, f1, f0
/* 80530CEC  FC 20 08 18 */	frsp f1, f1
/* 80530CF0  48 00 00 88 */	b lbl_80530D78
lbl_80530CF4:
/* 80530CF4  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 80530CF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530CFC  40 80 00 10 */	bge lbl_80530D0C
/* 80530D00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80530D04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80530D08  48 00 00 70 */	b lbl_80530D78
lbl_80530D0C:
/* 80530D0C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80530D10  80 81 00 08 */	lwz r4, 8(r1)
/* 80530D14  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80530D18  3C 00 7F 80 */	lis r0, 0x7f80
/* 80530D1C  7C 03 00 00 */	cmpw r3, r0
/* 80530D20  41 82 00 14 */	beq lbl_80530D34
/* 80530D24  40 80 00 40 */	bge lbl_80530D64
/* 80530D28  2C 03 00 00 */	cmpwi r3, 0
/* 80530D2C  41 82 00 20 */	beq lbl_80530D4C
/* 80530D30  48 00 00 34 */	b lbl_80530D64
lbl_80530D34:
/* 80530D34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80530D38  41 82 00 0C */	beq lbl_80530D44
/* 80530D3C  38 00 00 01 */	li r0, 1
/* 80530D40  48 00 00 28 */	b lbl_80530D68
lbl_80530D44:
/* 80530D44  38 00 00 02 */	li r0, 2
/* 80530D48  48 00 00 20 */	b lbl_80530D68
lbl_80530D4C:
/* 80530D4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80530D50  41 82 00 0C */	beq lbl_80530D5C
/* 80530D54  38 00 00 05 */	li r0, 5
/* 80530D58  48 00 00 10 */	b lbl_80530D68
lbl_80530D5C:
/* 80530D5C  38 00 00 03 */	li r0, 3
/* 80530D60  48 00 00 08 */	b lbl_80530D68
lbl_80530D64:
/* 80530D64  38 00 00 04 */	li r0, 4
lbl_80530D68:
/* 80530D68  2C 00 00 01 */	cmpwi r0, 1
/* 80530D6C  40 82 00 0C */	bne lbl_80530D78
/* 80530D70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80530D74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80530D78:
/* 80530D78  C0 5F 01 80 */	lfs f2, 0x180(r31)
/* 80530D7C  C0 1C 05 BC */	lfs f0, 0x5bc(r28)
/* 80530D80  EC 02 00 32 */	fmuls f0, f2, f0
/* 80530D84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530D88  40 80 01 C4 */	bge lbl_80530F4C
/* 80530D8C  C3 FC 06 54 */	lfs f31, 0x654(r28)
/* 80530D90  38 00 00 00 */	li r0, 0
/* 80530D94  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 80530D98  A8 1C 06 24 */	lha r0, 0x624(r28)
/* 80530D9C  2C 00 00 00 */	cmpwi r0, 0
/* 80530DA0  40 82 01 AC */	bne lbl_80530F4C
/* 80530DA4  28 1C 00 00 */	cmplwi r28, 0
/* 80530DA8  41 82 00 0C */	beq lbl_80530DB4
/* 80530DAC  80 1C 00 04 */	lwz r0, 4(r28)
/* 80530DB0  48 00 00 08 */	b lbl_80530DB8
lbl_80530DB4:
/* 80530DB4  38 00 FF FF */	li r0, -1
lbl_80530DB8:
/* 80530DB8  90 1E 10 AC */	stw r0, 0x10ac(r30)
/* 80530DBC  C3 DF 00 5C */	lfs f30, 0x5c(r31)
/* 80530DC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80530DC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80530DC8  A0 03 01 76 */	lhz r0, 0x176(r3)
/* 80530DCC  28 00 00 05 */	cmplwi r0, 5
/* 80530DD0  41 81 00 08 */	bgt lbl_80530DD8
/* 80530DD4  C3 DF 00 58 */	lfs f30, 0x58(r31)
lbl_80530DD8:
/* 80530DD8  88 1C 06 34 */	lbz r0, 0x634(r28)
/* 80530DDC  28 00 00 05 */	cmplwi r0, 5
/* 80530DE0  41 82 00 40 */	beq lbl_80530E20
/* 80530DE4  88 1E 10 2D */	lbz r0, 0x102d(r30)
/* 80530DE8  2C 00 00 01 */	cmpwi r0, 1
/* 80530DEC  40 82 00 08 */	bne lbl_80530DF4
/* 80530DF0  C3 DF 00 00 */	lfs f30, 0(r31)
lbl_80530DF4:
/* 80530DF4  88 1E 10 2C */	lbz r0, 0x102c(r30)
/* 80530DF8  7C 00 07 74 */	extsb r0, r0
/* 80530DFC  2C 00 00 01 */	cmpwi r0, 1
/* 80530E00  40 82 00 10 */	bne lbl_80530E10
/* 80530E04  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80530E08  EF DE 00 32 */	fmuls f30, f30, f0
/* 80530E0C  48 00 00 14 */	b lbl_80530E20
lbl_80530E10:
/* 80530E10  2C 00 00 02 */	cmpwi r0, 2
/* 80530E14  40 82 00 0C */	bne lbl_80530E20
/* 80530E18  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80530E1C  EF DE 00 32 */	fmuls f30, f30, f0
lbl_80530E20:
/* 80530E20  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 80530E24  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80530E28  40 81 00 08 */	ble lbl_80530E30
/* 80530E2C  FF C0 00 90 */	fmr f30, f0
lbl_80530E30:
/* 80530E30  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80530E34  4B D3 6B 21 */	bl cM_rndF__Ff
/* 80530E38  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 80530E3C  EC 00 07 B2 */	fmuls f0, f0, f30
/* 80530E40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530E44  41 80 00 14 */	blt lbl_80530E58
/* 80530E48  C0 3C 05 EC */	lfs f1, 0x5ec(r28)
/* 80530E4C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80530E50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80530E54  40 81 00 68 */	ble lbl_80530EBC
lbl_80530E58:
/* 80530E58  38 00 00 03 */	li r0, 3
/* 80530E5C  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
/* 80530E60  A8 7C 05 CE */	lha r3, 0x5ce(r28)
/* 80530E64  38 03 20 00 */	addi r0, r3, 0x2000
/* 80530E68  B0 1C 05 CE */	sth r0, 0x5ce(r28)
/* 80530E6C  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 80530E70  4B D3 6B 1D */	bl cM_rndFX__Ff
/* 80530E74  FC 00 08 1E */	fctiwz f0, f1
/* 80530E78  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80530E7C  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 80530E80  A8 1C 05 CC */	lha r0, 0x5cc(r28)
/* 80530E84  7C 00 1A 14 */	add r0, r0, r3
/* 80530E88  B0 1C 05 CC */	sth r0, 0x5cc(r28)
/* 80530E8C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80530E90  4B D3 6A C5 */	bl cM_rndF__Ff
/* 80530E94  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80530E98  EC 00 08 2A */	fadds f0, f0, f1
/* 80530E9C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80530EA0  FC 00 00 1E */	fctiwz f0, f0
/* 80530EA4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80530EA8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80530EAC  98 1E 10 A5 */	stb r0, 0x10a5(r30)
/* 80530EB0  88 1E 10 A5 */	lbz r0, 0x10a5(r30)
/* 80530EB4  98 1C 06 59 */	stb r0, 0x659(r28)
/* 80530EB8  48 00 00 94 */	b lbl_80530F4C
lbl_80530EBC:
/* 80530EBC  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80530EC0  4B D3 6A 95 */	bl cM_rndF__Ff
/* 80530EC4  C0 1F 01 0C */	lfs f0, 0x10c(r31)
/* 80530EC8  EC 00 08 2A */	fadds f0, f0, f1
/* 80530ECC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80530ED0  FC 00 00 1E */	fctiwz f0, f0
/* 80530ED4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80530ED8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80530EDC  98 1E 10 A5 */	stb r0, 0x10a5(r30)
/* 80530EE0  88 1E 10 A5 */	lbz r0, 0x10a5(r30)
/* 80530EE4  98 1C 06 59 */	stb r0, 0x659(r28)
/* 80530EE8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80530EEC  D0 1C 06 50 */	stfs f0, 0x650(r28)
/* 80530EF0  88 1E 10 2D */	lbz r0, 0x102d(r30)
/* 80530EF4  7C 00 07 75 */	extsb. r0, r0
/* 80530EF8  40 82 00 34 */	bne lbl_80530F2C
/* 80530EFC  88 1E 10 2C */	lbz r0, 0x102c(r30)
/* 80530F00  7C 00 07 75 */	extsb. r0, r0
/* 80530F04  40 82 00 28 */	bne lbl_80530F2C
/* 80530F08  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 80530F0C  4B D3 6A 49 */	bl cM_rndF__Ff
/* 80530F10  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80530F14  EC 00 08 2A */	fadds f0, f0, f1
/* 80530F18  FC 00 00 1E */	fctiwz f0, f0
/* 80530F1C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80530F20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80530F24  B0 1C 06 24 */	sth r0, 0x624(r28)
/* 80530F28  48 00 00 24 */	b lbl_80530F4C
lbl_80530F2C:
/* 80530F2C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80530F30  4B D3 6A 25 */	bl cM_rndF__Ff
/* 80530F34  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80530F38  EC 00 08 2A */	fadds f0, f0, f1
/* 80530F3C  FC 00 00 1E */	fctiwz f0, f0
/* 80530F40  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80530F44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80530F48  B0 1C 06 24 */	sth r0, 0x624(r28)
lbl_80530F4C:
/* 80530F4C  88 1C 06 59 */	lbz r0, 0x659(r28)
/* 80530F50  7C 00 07 75 */	extsb. r0, r0
/* 80530F54  40 82 00 1C */	bne lbl_80530F70
/* 80530F58  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 80530F5C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80530F60  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80530F64  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80530F68  4B D3 EA D5 */	bl cLib_addCalc2__FPffff
/* 80530F6C  48 00 00 54 */	b lbl_80530FC0
lbl_80530F70:
/* 80530F70  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 80530F74  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80530F78  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80530F7C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80530F80  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 80530F84  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80530F88  4B D3 EA B5 */	bl cLib_addCalc2__FPffff
/* 80530F8C  48 00 00 34 */	b lbl_80530FC0
lbl_80530F90:
/* 80530F90  C3 FF 00 58 */	lfs f31, 0x58(r31)
/* 80530F94  38 00 10 00 */	li r0, 0x1000
/* 80530F98  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 80530F9C  38 7E 10 90 */	addi r3, r30, 0x1090
/* 80530FA0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80530FA4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80530FA8  C0 7F 00 20 */	lfs f3, 0x20(r31)
/* 80530FAC  4B D3 EA 91 */	bl cLib_addCalc2__FPffff
/* 80530FB0  88 1C 06 59 */	lbz r0, 0x659(r28)
/* 80530FB4  7C 00 07 75 */	extsb. r0, r0
/* 80530FB8  40 82 00 08 */	bne lbl_80530FC0
/* 80530FBC  3B A0 00 01 */	li r29, 1
lbl_80530FC0:
/* 80530FC0  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80530FC4  FC 20 F8 90 */	fmr f1, f31
/* 80530FC8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80530FCC  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80530FD0  4B D3 EA 6D */	bl cLib_addCalc2__FPffff
/* 80530FD4  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80530FD8  A8 9C 05 CC */	lha r4, 0x5cc(r28)
/* 80530FDC  38 A0 00 02 */	li r5, 2
/* 80530FE0  A8 DC 05 D0 */	lha r6, 0x5d0(r28)
/* 80530FE4  4B D3 F6 25 */	bl cLib_addCalcAngleS2__FPssss
/* 80530FE8  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 80530FEC  A8 9C 05 CE */	lha r4, 0x5ce(r28)
/* 80530FF0  38 A0 00 02 */	li r5, 2
/* 80530FF4  A8 DC 05 D0 */	lha r6, 0x5d0(r28)
/* 80530FF8  4B D3 F6 11 */	bl cLib_addCalcAngleS2__FPssss
/* 80530FFC  C0 3C 05 EC */	lfs f1, 0x5ec(r28)
/* 80531000  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80531004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80531008  40 81 00 2C */	ble lbl_80531034
/* 8053100C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80531010  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80531014  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80531018  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 8053101C  4B D3 EA 21 */	bl cLib_addCalc2__FPffff
/* 80531020  38 7C 04 D8 */	addi r3, r28, 0x4d8
/* 80531024  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80531028  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 8053102C  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80531030  4B D3 EA 0D */	bl cLib_addCalc2__FPffff
lbl_80531034:
/* 80531034  2C 1D 00 00 */	cmpwi r29, 0
/* 80531038  41 82 00 3C */	beq lbl_80531074
/* 8053103C  38 00 00 05 */	li r0, 5
/* 80531040  B0 1C 05 B6 */	sth r0, 0x5b6(r28)
/* 80531044  38 00 00 00 */	li r0, 0
/* 80531048  B0 1C 05 B8 */	sth r0, 0x5b8(r28)
/* 8053104C  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 80531050  4B D3 69 05 */	bl cM_rndF__Ff
/* 80531054  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80531058  EC 00 08 2A */	fadds f0, f0, f1
/* 8053105C  FC 00 00 1E */	fctiwz f0, f0
/* 80531060  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80531064  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80531068  B0 1C 06 2E */	sth r0, 0x62e(r28)
/* 8053106C  7F 83 E3 78 */	mr r3, r28
/* 80531070  4B FF 91 AD */	bl mouth_close__FP13mg_fish_class
lbl_80531074:
/* 80531074  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80531078  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8053107C  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80531080  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80531084  39 61 00 60 */	addi r11, r1, 0x60
/* 80531088  4B E3 11 99 */	bl _restgpr_27
/* 8053108C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80531090  7C 08 03 A6 */	mtlr r0
/* 80531094  38 21 00 80 */	addi r1, r1, 0x80
/* 80531098  4E 80 00 20 */	blr 

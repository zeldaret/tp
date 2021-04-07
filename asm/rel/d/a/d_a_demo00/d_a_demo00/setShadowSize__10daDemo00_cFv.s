lbl_804A4948:
/* 804A4948  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 804A494C  7C 08 02 A6 */	mflr r0
/* 804A4950  90 01 00 84 */	stw r0, 0x84(r1)
/* 804A4954  39 61 00 80 */	addi r11, r1, 0x80
/* 804A4958  4B EB D8 79 */	bl _savegpr_26
/* 804A495C  7C 7C 1B 78 */	mr r28, r3
/* 804A4960  3C 60 80 4B */	lis r3, lit_3727@ha /* 0x804A8860@ha */
/* 804A4964  3B E3 88 60 */	addi r31, r3, lit_3727@l /* 0x804A8860@l */
/* 804A4968  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 804A496C  83 C3 00 04 */	lwz r30, 4(r3)
/* 804A4970  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 804A4974  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804A4978  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804A497C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804A4980  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804A4984  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804A4988  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804A498C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804A4990  3B A0 00 00 */	li r29, 0
/* 804A4994  48 00 01 08 */	b lbl_804A4A9C
lbl_804A4998:
/* 804A4998  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 804A499C  57 A5 04 3E */	clrlwi r5, r29, 0x10
/* 804A49A0  57 A0 13 BA */	rlwinm r0, r29, 2, 0xe, 0x1d
/* 804A49A4  7F 63 00 2E */	lwzx r27, r3, r0
/* 804A49A8  88 1B 00 16 */	lbz r0, 0x16(r27)
/* 804A49AC  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804A49B0  40 82 00 E8 */	bne lbl_804A4A98
/* 804A49B4  38 9B 00 3C */	addi r4, r27, 0x3c
/* 804A49B8  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 804A49BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804A49C0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A49C4  1F 45 00 30 */	mulli r26, r5, 0x30
/* 804A49C8  7C 60 D2 14 */	add r3, r0, r26
/* 804A49CC  38 A1 00 40 */	addi r5, r1, 0x40
/* 804A49D0  4B EA 23 9D */	bl PSMTXMultVec
/* 804A49D4  38 9B 00 48 */	addi r4, r27, 0x48
/* 804A49D8  80 7C 05 D4 */	lwz r3, 0x5d4(r28)
/* 804A49DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804A49E0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804A49E4  7C 60 D2 14 */	add r3, r0, r26
/* 804A49E8  38 A1 00 34 */	addi r5, r1, 0x34
/* 804A49EC  4B EA 23 81 */	bl PSMTXMultVec
/* 804A49F0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804A49F4  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 804A49F8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A49FC  40 80 00 08 */	bge lbl_804A4A04
/* 804A4A00  48 00 00 08 */	b lbl_804A4A08
lbl_804A4A04:
/* 804A4A04  FC 00 08 90 */	fmr f0, f1
lbl_804A4A08:
/* 804A4A08  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 804A4A0C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804A4A10  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 804A4A14  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4A18  40 80 00 08 */	bge lbl_804A4A20
/* 804A4A1C  48 00 00 08 */	b lbl_804A4A24
lbl_804A4A20:
/* 804A4A20  FC 00 08 90 */	fmr f0, f1
lbl_804A4A24:
/* 804A4A24  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 804A4A28  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804A4A2C  C0 21 00 60 */	lfs f1, 0x60(r1)
/* 804A4A30  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4A34  40 80 00 08 */	bge lbl_804A4A3C
/* 804A4A38  48 00 00 08 */	b lbl_804A4A40
lbl_804A4A3C:
/* 804A4A3C  FC 00 08 90 */	fmr f0, f1
lbl_804A4A40:
/* 804A4A40  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 804A4A44  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804A4A48  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 804A4A4C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4A50  40 81 00 08 */	ble lbl_804A4A58
/* 804A4A54  48 00 00 08 */	b lbl_804A4A5C
lbl_804A4A58:
/* 804A4A58  FC 00 08 90 */	fmr f0, f1
lbl_804A4A5C:
/* 804A4A5C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804A4A60  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804A4A64  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 804A4A68  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4A6C  40 81 00 08 */	ble lbl_804A4A74
/* 804A4A70  48 00 00 08 */	b lbl_804A4A78
lbl_804A4A74:
/* 804A4A74  FC 00 08 90 */	fmr f0, f1
lbl_804A4A78:
/* 804A4A78  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804A4A7C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804A4A80  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 804A4A84  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A4A88  40 81 00 08 */	ble lbl_804A4A90
/* 804A4A8C  48 00 00 08 */	b lbl_804A4A94
lbl_804A4A90:
/* 804A4A90  FC 00 08 90 */	fmr f0, f1
lbl_804A4A94:
/* 804A4A94  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_804A4A98:
/* 804A4A98  3B BD 00 01 */	addi r29, r29, 1
lbl_804A4A9C:
/* 804A4A9C  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 804A4AA0  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 804A4AA4  7C 03 00 40 */	cmplw r3, r0
/* 804A4AA8  41 80 FE F0 */	blt lbl_804A4998
/* 804A4AAC  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 804A4AB0  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 804A4AB4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804A4AB8  EC 01 00 2A */	fadds f0, f1, f0
/* 804A4ABC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A4AC0  80 7C 05 EC */	lwz r3, 0x5ec(r28)
/* 804A4AC4  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A4AC8  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 804A4ACC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 804A4AD0  EC 01 00 2A */	fadds f0, f1, f0
/* 804A4AD4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A4AD8  80 7C 05 EC */	lwz r3, 0x5ec(r28)
/* 804A4ADC  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A4AE0  C0 21 00 54 */	lfs f1, 0x54(r1)
/* 804A4AE4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 804A4AE8  EC 01 00 2A */	fadds f0, f1, f0
/* 804A4AEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A4AF0  80 7C 05 EC */	lwz r3, 0x5ec(r28)
/* 804A4AF4  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804A4AF8  38 61 00 1C */	addi r3, r1, 0x1c
/* 804A4AFC  38 81 00 4C */	addi r4, r1, 0x4c
/* 804A4B00  38 A1 00 58 */	addi r5, r1, 0x58
/* 804A4B04  4B DC 20 31 */	bl __mi__4cXyzCFRC3Vec
/* 804A4B08  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804A4B0C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804A4B10  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804A4B14  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804A4B18  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804A4B1C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804A4B20  38 61 00 28 */	addi r3, r1, 0x28
/* 804A4B24  4B EA 26 15 */	bl PSVECSquareMag
/* 804A4B28  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804A4B2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4B30  40 81 00 58 */	ble lbl_804A4B88
/* 804A4B34  FC 00 08 34 */	frsqrte f0, f1
/* 804A4B38  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 804A4B3C  FC 44 00 32 */	fmul f2, f4, f0
/* 804A4B40  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 804A4B44  FC 00 00 32 */	fmul f0, f0, f0
/* 804A4B48  FC 01 00 32 */	fmul f0, f1, f0
/* 804A4B4C  FC 03 00 28 */	fsub f0, f3, f0
/* 804A4B50  FC 02 00 32 */	fmul f0, f2, f0
/* 804A4B54  FC 44 00 32 */	fmul f2, f4, f0
/* 804A4B58  FC 00 00 32 */	fmul f0, f0, f0
/* 804A4B5C  FC 01 00 32 */	fmul f0, f1, f0
/* 804A4B60  FC 03 00 28 */	fsub f0, f3, f0
/* 804A4B64  FC 02 00 32 */	fmul f0, f2, f0
/* 804A4B68  FC 44 00 32 */	fmul f2, f4, f0
/* 804A4B6C  FC 00 00 32 */	fmul f0, f0, f0
/* 804A4B70  FC 01 00 32 */	fmul f0, f1, f0
/* 804A4B74  FC 03 00 28 */	fsub f0, f3, f0
/* 804A4B78  FC 02 00 32 */	fmul f0, f2, f0
/* 804A4B7C  FC 21 00 32 */	fmul f1, f1, f0
/* 804A4B80  FC 20 08 18 */	frsp f1, f1
/* 804A4B84  48 00 00 88 */	b lbl_804A4C0C
lbl_804A4B88:
/* 804A4B88  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 804A4B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4B90  40 80 00 10 */	bge lbl_804A4BA0
/* 804A4B94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804A4B98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804A4B9C  48 00 00 70 */	b lbl_804A4C0C
lbl_804A4BA0:
/* 804A4BA0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804A4BA4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804A4BA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804A4BAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 804A4BB0  7C 03 00 00 */	cmpw r3, r0
/* 804A4BB4  41 82 00 14 */	beq lbl_804A4BC8
/* 804A4BB8  40 80 00 40 */	bge lbl_804A4BF8
/* 804A4BBC  2C 03 00 00 */	cmpwi r3, 0
/* 804A4BC0  41 82 00 20 */	beq lbl_804A4BE0
/* 804A4BC4  48 00 00 34 */	b lbl_804A4BF8
lbl_804A4BC8:
/* 804A4BC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A4BCC  41 82 00 0C */	beq lbl_804A4BD8
/* 804A4BD0  38 00 00 01 */	li r0, 1
/* 804A4BD4  48 00 00 28 */	b lbl_804A4BFC
lbl_804A4BD8:
/* 804A4BD8  38 00 00 02 */	li r0, 2
/* 804A4BDC  48 00 00 20 */	b lbl_804A4BFC
lbl_804A4BE0:
/* 804A4BE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A4BE4  41 82 00 0C */	beq lbl_804A4BF0
/* 804A4BE8  38 00 00 05 */	li r0, 5
/* 804A4BEC  48 00 00 10 */	b lbl_804A4BFC
lbl_804A4BF0:
/* 804A4BF0  38 00 00 03 */	li r0, 3
/* 804A4BF4  48 00 00 08 */	b lbl_804A4BFC
lbl_804A4BF8:
/* 804A4BF8  38 00 00 04 */	li r0, 4
lbl_804A4BFC:
/* 804A4BFC  2C 00 00 01 */	cmpwi r0, 1
/* 804A4C00  40 82 00 0C */	bne lbl_804A4C0C
/* 804A4C04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804A4C08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804A4C0C:
/* 804A4C0C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804A4C10  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A4C14  80 7C 05 EC */	lwz r3, 0x5ec(r28)
/* 804A4C18  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804A4C1C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804A4C20  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804A4C24  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804A4C28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804A4C2C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804A4C30  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804A4C34  38 61 00 10 */	addi r3, r1, 0x10
/* 804A4C38  4B EA 25 01 */	bl PSVECSquareMag
/* 804A4C3C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804A4C40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4C44  40 81 00 58 */	ble lbl_804A4C9C
/* 804A4C48  FC 00 08 34 */	frsqrte f0, f1
/* 804A4C4C  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 804A4C50  FC 44 00 32 */	fmul f2, f4, f0
/* 804A4C54  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 804A4C58  FC 00 00 32 */	fmul f0, f0, f0
/* 804A4C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 804A4C60  FC 03 00 28 */	fsub f0, f3, f0
/* 804A4C64  FC 02 00 32 */	fmul f0, f2, f0
/* 804A4C68  FC 44 00 32 */	fmul f2, f4, f0
/* 804A4C6C  FC 00 00 32 */	fmul f0, f0, f0
/* 804A4C70  FC 01 00 32 */	fmul f0, f1, f0
/* 804A4C74  FC 03 00 28 */	fsub f0, f3, f0
/* 804A4C78  FC 02 00 32 */	fmul f0, f2, f0
/* 804A4C7C  FC 44 00 32 */	fmul f2, f4, f0
/* 804A4C80  FC 00 00 32 */	fmul f0, f0, f0
/* 804A4C84  FC 01 00 32 */	fmul f0, f1, f0
/* 804A4C88  FC 03 00 28 */	fsub f0, f3, f0
/* 804A4C8C  FC 02 00 32 */	fmul f0, f2, f0
/* 804A4C90  FC 21 00 32 */	fmul f1, f1, f0
/* 804A4C94  FC 20 08 18 */	frsp f1, f1
/* 804A4C98  48 00 00 88 */	b lbl_804A4D20
lbl_804A4C9C:
/* 804A4C9C  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 804A4CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804A4CA4  40 80 00 10 */	bge lbl_804A4CB4
/* 804A4CA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804A4CAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804A4CB0  48 00 00 70 */	b lbl_804A4D20
lbl_804A4CB4:
/* 804A4CB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 804A4CB8  80 81 00 08 */	lwz r4, 8(r1)
/* 804A4CBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804A4CC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 804A4CC4  7C 03 00 00 */	cmpw r3, r0
/* 804A4CC8  41 82 00 14 */	beq lbl_804A4CDC
/* 804A4CCC  40 80 00 40 */	bge lbl_804A4D0C
/* 804A4CD0  2C 03 00 00 */	cmpwi r3, 0
/* 804A4CD4  41 82 00 20 */	beq lbl_804A4CF4
/* 804A4CD8  48 00 00 34 */	b lbl_804A4D0C
lbl_804A4CDC:
/* 804A4CDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A4CE0  41 82 00 0C */	beq lbl_804A4CEC
/* 804A4CE4  38 00 00 01 */	li r0, 1
/* 804A4CE8  48 00 00 28 */	b lbl_804A4D10
lbl_804A4CEC:
/* 804A4CEC  38 00 00 02 */	li r0, 2
/* 804A4CF0  48 00 00 20 */	b lbl_804A4D10
lbl_804A4CF4:
/* 804A4CF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804A4CF8  41 82 00 0C */	beq lbl_804A4D04
/* 804A4CFC  38 00 00 05 */	li r0, 5
/* 804A4D00  48 00 00 10 */	b lbl_804A4D10
lbl_804A4D04:
/* 804A4D04  38 00 00 03 */	li r0, 3
/* 804A4D08  48 00 00 08 */	b lbl_804A4D10
lbl_804A4D0C:
/* 804A4D0C  38 00 00 04 */	li r0, 4
lbl_804A4D10:
/* 804A4D10  2C 00 00 01 */	cmpwi r0, 1
/* 804A4D14  40 82 00 0C */	bne lbl_804A4D20
/* 804A4D18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804A4D1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804A4D20:
/* 804A4D20  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804A4D24  EC 00 00 72 */	fmuls f0, f0, f1
/* 804A4D28  80 7C 05 EC */	lwz r3, 0x5ec(r28)
/* 804A4D2C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804A4D30  39 61 00 80 */	addi r11, r1, 0x80
/* 804A4D34  4B EB D4 E9 */	bl _restgpr_26
/* 804A4D38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804A4D3C  7C 08 03 A6 */	mtlr r0
/* 804A4D40  38 21 00 80 */	addi r1, r1, 0x80
/* 804A4D44  4E 80 00 20 */	blr 

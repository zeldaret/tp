lbl_80C26A20:
/* 80C26A20  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C26A24  7C 08 02 A6 */	mflr r0
/* 80C26A28  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C26A2C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80C26A30  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80C26A34  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80C26A38  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80C26A3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C26A40  4B 73 B7 91 */	bl _savegpr_26
/* 80C26A44  7C 7C 1B 78 */	mr r28, r3
/* 80C26A48  3C 60 80 C2 */	lis r3, lit_3668@ha /* 0x80C274F0@ha */
/* 80C26A4C  3B E3 74 F0 */	addi r31, r3, lit_3668@l /* 0x80C274F0@l */
/* 80C26A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C26A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C26A58  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C26A5C  3B 5E 04 D0 */	addi r26, r30, 0x4d0
/* 80C26A60  3B A0 00 00 */	li r29, 0
/* 80C26A64  38 00 00 01 */	li r0, 1
/* 80C26A68  98 1C 05 D6 */	stb r0, 0x5d6(r28)
/* 80C26A6C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C26A70  7F 44 D3 78 */	mr r4, r26
/* 80C26A74  4B 64 A1 91 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C26A78  7C 7B 1B 78 */	mr r27, r3
/* 80C26A7C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C26A80  7F 44 D3 78 */	mr r4, r26
/* 80C26A84  4B 72 09 19 */	bl PSVECSquareDistance
/* 80C26A88  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C26A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C26A90  40 81 00 58 */	ble lbl_80C26AE8
/* 80C26A94  FC 00 08 34 */	frsqrte f0, f1
/* 80C26A98  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80C26A9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C26AA0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80C26AA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C26AA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C26AAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C26AB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C26AB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C26AB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C26ABC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C26AC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C26AC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C26AC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C26ACC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C26AD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C26AD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C26AD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C26ADC  FC 21 00 32 */	fmul f1, f1, f0
/* 80C26AE0  FC 20 08 18 */	frsp f1, f1
/* 80C26AE4  48 00 00 88 */	b lbl_80C26B6C
lbl_80C26AE8:
/* 80C26AE8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80C26AEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C26AF0  40 80 00 10 */	bge lbl_80C26B00
/* 80C26AF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C26AF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C26AFC  48 00 00 70 */	b lbl_80C26B6C
lbl_80C26B00:
/* 80C26B00  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C26B04  80 81 00 08 */	lwz r4, 8(r1)
/* 80C26B08  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C26B0C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C26B10  7C 03 00 00 */	cmpw r3, r0
/* 80C26B14  41 82 00 14 */	beq lbl_80C26B28
/* 80C26B18  40 80 00 40 */	bge lbl_80C26B58
/* 80C26B1C  2C 03 00 00 */	cmpwi r3, 0
/* 80C26B20  41 82 00 20 */	beq lbl_80C26B40
/* 80C26B24  48 00 00 34 */	b lbl_80C26B58
lbl_80C26B28:
/* 80C26B28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C26B2C  41 82 00 0C */	beq lbl_80C26B38
/* 80C26B30  38 00 00 01 */	li r0, 1
/* 80C26B34  48 00 00 28 */	b lbl_80C26B5C
lbl_80C26B38:
/* 80C26B38  38 00 00 02 */	li r0, 2
/* 80C26B3C  48 00 00 20 */	b lbl_80C26B5C
lbl_80C26B40:
/* 80C26B40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C26B44  41 82 00 0C */	beq lbl_80C26B50
/* 80C26B48  38 00 00 05 */	li r0, 5
/* 80C26B4C  48 00 00 10 */	b lbl_80C26B5C
lbl_80C26B50:
/* 80C26B50  38 00 00 03 */	li r0, 3
/* 80C26B54  48 00 00 08 */	b lbl_80C26B5C
lbl_80C26B58:
/* 80C26B58  38 00 00 04 */	li r0, 4
lbl_80C26B5C:
/* 80C26B5C  2C 00 00 01 */	cmpwi r0, 1
/* 80C26B60  40 82 00 0C */	bne lbl_80C26B6C
/* 80C26B64  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C26B68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C26B6C:
/* 80C26B6C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C26B70  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C26B74  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80C26B78  7C 00 D8 50 */	subf r0, r0, r27
/* 80C26B7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C26B80  7C 64 02 14 */	add r3, r4, r0
/* 80C26B84  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C26B88  EF E1 00 32 */	fmuls f31, f1, f0
/* 80C26B8C  7C 44 04 2E */	lfsx f2, r4, r0
/* 80C26B90  FC 00 08 50 */	fneg f0, f1
/* 80C26B94  EF C0 00 B2 */	fmuls f30, f0, f2
/* 80C26B98  7F 83 E3 78 */	mr r3, r28
/* 80C26B9C  38 9C 05 C8 */	addi r4, r28, 0x5c8
/* 80C26BA0  FC 20 F8 90 */	fmr f1, f31
/* 80C26BA4  38 A0 02 00 */	li r5, 0x200
/* 80C26BA8  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80C26BAC  4B FF FE 0D */	bl RideOn_Angle__12daObjIkada_cFRsfsf
/* 80C26BB0  7F 83 E3 78 */	mr r3, r28
/* 80C26BB4  38 9C 05 CC */	addi r4, r28, 0x5cc
/* 80C26BB8  FC 20 F0 90 */	fmr f1, f30
/* 80C26BBC  38 A0 02 00 */	li r5, 0x200
/* 80C26BC0  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80C26BC4  4B FF FD F5 */	bl RideOn_Angle__12daObjIkada_cFRsfsf
/* 80C26BC8  38 00 00 01 */	li r0, 1
/* 80C26BCC  98 1C 05 D6 */	stb r0, 0x5d6(r28)
/* 80C26BD0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C26BD4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C26BD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C26BDC  40 81 00 10 */	ble lbl_80C26BEC
/* 80C26BE0  3B A0 04 00 */	li r29, 0x400
/* 80C26BE4  38 00 01 50 */	li r0, 0x150
/* 80C26BE8  B0 1C 05 AC */	sth r0, 0x5ac(r28)
lbl_80C26BEC:
/* 80C26BEC  C0 9F 00 00 */	lfs f4, 0(r31)
/* 80C26BF0  D0 9C 05 D0 */	stfs f4, 0x5d0(r28)
/* 80C26BF4  38 7C 05 A0 */	addi r3, r28, 0x5a0
/* 80C26BF8  7F A0 07 34 */	extsh r0, r29
/* 80C26BFC  C8 3F 00 08 */	lfd f1, 8(r31)
/* 80C26C00  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C26C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26C08  3C 00 43 30 */	lis r0, 0x4330
/* 80C26C0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C26C10  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80C26C14  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C26C18  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80C26C1C  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 80C26C20  4B 64 8D 5D */	bl cLib_addCalc__FPfffff
/* 80C26C24  38 60 00 00 */	li r3, 0
/* 80C26C28  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80C26C2C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80C26C30  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80C26C34  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80C26C38  39 61 00 30 */	addi r11, r1, 0x30
/* 80C26C3C  4B 73 B5 E1 */	bl _restgpr_26
/* 80C26C40  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C26C44  7C 08 03 A6 */	mtlr r0
/* 80C26C48  38 21 00 50 */	addi r1, r1, 0x50
/* 80C26C4C  4E 80 00 20 */	blr 

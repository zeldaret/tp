lbl_806C3A78:
/* 806C3A78  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 806C3A7C  7C 08 02 A6 */	mflr r0
/* 806C3A80  90 01 00 74 */	stw r0, 0x74(r1)
/* 806C3A84  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806C3A88  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806C3A8C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 806C3A90  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 806C3A94  39 61 00 50 */	addi r11, r1, 0x50
/* 806C3A98  4B C9 E7 3D */	bl _savegpr_27
/* 806C3A9C  7C 7F 1B 78 */	mr r31, r3
/* 806C3AA0  3C 60 80 6C */	lis r3, lit_3906@ha /* 0x806C74E8@ha */
/* 806C3AA4  3B A3 74 E8 */	addi r29, r3, lit_3906@l /* 0x806C74E8@l */
/* 806C3AA8  38 61 00 18 */	addi r3, r1, 0x18
/* 806C3AAC  38 9F 06 E4 */	addi r4, r31, 0x6e4
/* 806C3AB0  38 BF 06 D4 */	addi r5, r31, 0x6d4
/* 806C3AB4  4B BA 30 81 */	bl __mi__4cXyzCFRC3Vec
/* 806C3AB8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806C3ABC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806C3AC0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806C3AC4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806C3AC8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806C3ACC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806C3AD0  3B 9F 06 E4 */	addi r28, r31, 0x6e4
/* 806C3AD4  3B 60 00 00 */	li r27, 0
/* 806C3AD8  CB DD 00 60 */	lfd f30, 0x60(r29)
/* 806C3ADC  3F C0 43 30 */	lis r30, 0x4330
/* 806C3AE0  C3 FD 00 D4 */	lfs f31, 0xd4(r29)
lbl_806C3AE4:
/* 806C3AE4  38 61 00 0C */	addi r3, r1, 0xc
/* 806C3AE8  38 81 00 24 */	addi r4, r1, 0x24
/* 806C3AEC  20 1B 00 12 */	subfic r0, r27, 0x12
/* 806C3AF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806C3AF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 806C3AF8  93 C1 00 30 */	stw r30, 0x30(r1)
/* 806C3AFC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 806C3B00  EC 00 F0 28 */	fsubs f0, f0, f30
/* 806C3B04  EC 20 F8 24 */	fdivs f1, f0, f31
/* 806C3B08  4B BA 30 7D */	bl __ml__4cXyzCFf
/* 806C3B0C  7F 83 E3 78 */	mr r3, r28
/* 806C3B10  38 81 00 0C */	addi r4, r1, 0xc
/* 806C3B14  7F 85 E3 78 */	mr r5, r28
/* 806C3B18  4B C8 35 9D */	bl PSVECSubtract
/* 806C3B1C  3B 7B 00 01 */	addi r27, r27, 1
/* 806C3B20  2C 1B 00 12 */	cmpwi r27, 0x12
/* 806C3B24  3B 9C 00 0C */	addi r28, r28, 0xc
/* 806C3B28  41 80 FF BC */	blt lbl_806C3AE4
/* 806C3B2C  38 61 00 24 */	addi r3, r1, 0x24
/* 806C3B30  4B C8 36 09 */	bl PSVECSquareMag
/* 806C3B34  C0 1D 00 04 */	lfs f0, 4(r29)
/* 806C3B38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C3B3C  40 81 00 58 */	ble lbl_806C3B94
/* 806C3B40  FC 00 08 34 */	frsqrte f0, f1
/* 806C3B44  C8 9D 00 10 */	lfd f4, 0x10(r29)
/* 806C3B48  FC 44 00 32 */	fmul f2, f4, f0
/* 806C3B4C  C8 7D 00 18 */	lfd f3, 0x18(r29)
/* 806C3B50  FC 00 00 32 */	fmul f0, f0, f0
/* 806C3B54  FC 01 00 32 */	fmul f0, f1, f0
/* 806C3B58  FC 03 00 28 */	fsub f0, f3, f0
/* 806C3B5C  FC 02 00 32 */	fmul f0, f2, f0
/* 806C3B60  FC 44 00 32 */	fmul f2, f4, f0
/* 806C3B64  FC 00 00 32 */	fmul f0, f0, f0
/* 806C3B68  FC 01 00 32 */	fmul f0, f1, f0
/* 806C3B6C  FC 03 00 28 */	fsub f0, f3, f0
/* 806C3B70  FC 02 00 32 */	fmul f0, f2, f0
/* 806C3B74  FC 44 00 32 */	fmul f2, f4, f0
/* 806C3B78  FC 00 00 32 */	fmul f0, f0, f0
/* 806C3B7C  FC 01 00 32 */	fmul f0, f1, f0
/* 806C3B80  FC 03 00 28 */	fsub f0, f3, f0
/* 806C3B84  FC 02 00 32 */	fmul f0, f2, f0
/* 806C3B88  FC 21 00 32 */	fmul f1, f1, f0
/* 806C3B8C  FC 20 08 18 */	frsp f1, f1
/* 806C3B90  48 00 00 88 */	b lbl_806C3C18
lbl_806C3B94:
/* 806C3B94  C8 1D 00 20 */	lfd f0, 0x20(r29)
/* 806C3B98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C3B9C  40 80 00 10 */	bge lbl_806C3BAC
/* 806C3BA0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C3BA4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806C3BA8  48 00 00 70 */	b lbl_806C3C18
lbl_806C3BAC:
/* 806C3BAC  D0 21 00 08 */	stfs f1, 8(r1)
/* 806C3BB0  80 81 00 08 */	lwz r4, 8(r1)
/* 806C3BB4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C3BB8  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C3BBC  7C 03 00 00 */	cmpw r3, r0
/* 806C3BC0  41 82 00 14 */	beq lbl_806C3BD4
/* 806C3BC4  40 80 00 40 */	bge lbl_806C3C04
/* 806C3BC8  2C 03 00 00 */	cmpwi r3, 0
/* 806C3BCC  41 82 00 20 */	beq lbl_806C3BEC
/* 806C3BD0  48 00 00 34 */	b lbl_806C3C04
lbl_806C3BD4:
/* 806C3BD4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C3BD8  41 82 00 0C */	beq lbl_806C3BE4
/* 806C3BDC  38 00 00 01 */	li r0, 1
/* 806C3BE0  48 00 00 28 */	b lbl_806C3C08
lbl_806C3BE4:
/* 806C3BE4  38 00 00 02 */	li r0, 2
/* 806C3BE8  48 00 00 20 */	b lbl_806C3C08
lbl_806C3BEC:
/* 806C3BEC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C3BF0  41 82 00 0C */	beq lbl_806C3BFC
/* 806C3BF4  38 00 00 05 */	li r0, 5
/* 806C3BF8  48 00 00 10 */	b lbl_806C3C08
lbl_806C3BFC:
/* 806C3BFC  38 00 00 03 */	li r0, 3
/* 806C3C00  48 00 00 08 */	b lbl_806C3C08
lbl_806C3C04:
/* 806C3C04  38 00 00 04 */	li r0, 4
lbl_806C3C08:
/* 806C3C08  2C 00 00 01 */	cmpwi r0, 1
/* 806C3C0C  40 82 00 0C */	bne lbl_806C3C18
/* 806C3C10  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C3C14  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806C3C18:
/* 806C3C18  D0 3F 09 64 */	stfs f1, 0x964(r31)
/* 806C3C1C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 806C3C20  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 806C3C24  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 806C3C28  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 806C3C2C  39 61 00 50 */	addi r11, r1, 0x50
/* 806C3C30  4B C9 E5 F1 */	bl _restgpr_27
/* 806C3C34  80 01 00 74 */	lwz r0, 0x74(r1)
/* 806C3C38  7C 08 03 A6 */	mtlr r0
/* 806C3C3C  38 21 00 70 */	addi r1, r1, 0x70
/* 806C3C40  4E 80 00 20 */	blr 

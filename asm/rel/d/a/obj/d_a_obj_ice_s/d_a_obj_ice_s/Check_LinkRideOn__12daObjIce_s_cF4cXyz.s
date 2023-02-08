lbl_80C20A44:
/* 80C20A44  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C20A48  7C 08 02 A6 */	mflr r0
/* 80C20A4C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C20A50  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C20A54  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C20A58  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C20A5C  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C20A60  39 61 00 40 */	addi r11, r1, 0x40
/* 80C20A64  4B 74 17 6D */	bl _savegpr_26
/* 80C20A68  7C 7C 1B 78 */	mr r28, r3
/* 80C20A6C  7C 9A 23 78 */	mr r26, r4
/* 80C20A70  3C 60 80 C2 */	lis r3, lit_3644@ha /* 0x80C21AF8@ha */
/* 80C20A74  3B E3 1A F8 */	addi r31, r3, lit_3644@l /* 0x80C21AF8@l */
/* 80C20A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C20A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C20A80  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80C20A84  3B A0 00 00 */	li r29, 0
/* 80C20A88  38 00 00 01 */	li r0, 1
/* 80C20A8C  98 1C 05 E8 */	stb r0, 0x5e8(r28)
/* 80C20A90  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C20A94  4B 65 01 71 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80C20A98  7C 7B 1B 78 */	mr r27, r3
/* 80C20A9C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C20AA0  7F 44 D3 78 */	mr r4, r26
/* 80C20AA4  4B 72 68 F9 */	bl PSVECSquareDistance
/* 80C20AA8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C20AAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C20AB0  40 81 00 58 */	ble lbl_80C20B08
/* 80C20AB4  FC 00 08 34 */	frsqrte f0, f1
/* 80C20AB8  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80C20ABC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C20AC0  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80C20AC4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C20AC8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C20ACC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C20AD0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C20AD4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C20AD8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C20ADC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C20AE0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C20AE4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C20AE8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C20AEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C20AF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C20AF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C20AF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C20AFC  FC 21 00 32 */	fmul f1, f1, f0
/* 80C20B00  FC 20 08 18 */	frsp f1, f1
/* 80C20B04  48 00 00 88 */	b lbl_80C20B8C
lbl_80C20B08:
/* 80C20B08  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80C20B0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C20B10  40 80 00 10 */	bge lbl_80C20B20
/* 80C20B14  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C20B18  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C20B1C  48 00 00 70 */	b lbl_80C20B8C
lbl_80C20B20:
/* 80C20B20  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C20B24  80 81 00 08 */	lwz r4, 8(r1)
/* 80C20B28  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C20B2C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C20B30  7C 03 00 00 */	cmpw r3, r0
/* 80C20B34  41 82 00 14 */	beq lbl_80C20B48
/* 80C20B38  40 80 00 40 */	bge lbl_80C20B78
/* 80C20B3C  2C 03 00 00 */	cmpwi r3, 0
/* 80C20B40  41 82 00 20 */	beq lbl_80C20B60
/* 80C20B44  48 00 00 34 */	b lbl_80C20B78
lbl_80C20B48:
/* 80C20B48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C20B4C  41 82 00 0C */	beq lbl_80C20B58
/* 80C20B50  38 00 00 01 */	li r0, 1
/* 80C20B54  48 00 00 28 */	b lbl_80C20B7C
lbl_80C20B58:
/* 80C20B58  38 00 00 02 */	li r0, 2
/* 80C20B5C  48 00 00 20 */	b lbl_80C20B7C
lbl_80C20B60:
/* 80C20B60  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C20B64  41 82 00 0C */	beq lbl_80C20B70
/* 80C20B68  38 00 00 05 */	li r0, 5
/* 80C20B6C  48 00 00 10 */	b lbl_80C20B7C
lbl_80C20B70:
/* 80C20B70  38 00 00 03 */	li r0, 3
/* 80C20B74  48 00 00 08 */	b lbl_80C20B7C
lbl_80C20B78:
/* 80C20B78  38 00 00 04 */	li r0, 4
lbl_80C20B7C:
/* 80C20B7C  2C 00 00 01 */	cmpwi r0, 1
/* 80C20B80  40 82 00 0C */	bne lbl_80C20B8C
/* 80C20B84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C20B88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C20B8C:
/* 80C20B8C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C20B90  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C20B94  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80C20B98  7C 00 D8 50 */	subf r0, r0, r27
/* 80C20B9C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C20BA0  7C 64 02 14 */	add r3, r4, r0
/* 80C20BA4  C0 43 00 04 */	lfs f2, 4(r3)
/* 80C20BA8  FC 00 08 50 */	fneg f0, f1
/* 80C20BAC  EF E0 00 B2 */	fmuls f31, f0, f2
/* 80C20BB0  7C 04 04 2E */	lfsx f0, r4, r0
/* 80C20BB4  EF C1 00 32 */	fmuls f30, f1, f0
/* 80C20BB8  7F 83 E3 78 */	mr r3, r28
/* 80C20BBC  38 9C 05 DA */	addi r4, r28, 0x5da
/* 80C20BC0  FC 20 F8 90 */	fmr f1, f31
/* 80C20BC4  38 A0 F5 60 */	li r5, -2720
/* 80C20BC8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80C20BCC  C0 1C 05 C8 */	lfs f0, 0x5c8(r28)
/* 80C20BD0  EC 42 00 32 */	fmuls f2, f2, f0
/* 80C20BD4  4B FF FE 09 */	bl RideOn_Angle__12daObjIce_s_cFRsfsf
/* 80C20BD8  7F 83 E3 78 */	mr r3, r28
/* 80C20BDC  38 9C 05 DE */	addi r4, r28, 0x5de
/* 80C20BE0  FC 20 F0 90 */	fmr f1, f30
/* 80C20BE4  38 A0 F5 60 */	li r5, -2720
/* 80C20BE8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80C20BEC  C0 1C 05 C8 */	lfs f0, 0x5c8(r28)
/* 80C20BF0  EC 42 00 32 */	fmuls f2, f2, f0
/* 80C20BF4  4B FF FD E9 */	bl RideOn_Angle__12daObjIce_s_cFRsfsf
/* 80C20BF8  38 00 00 01 */	li r0, 1
/* 80C20BFC  98 1C 05 E8 */	stb r0, 0x5e8(r28)
/* 80C20C00  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C20C04  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C20C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C20C0C  40 81 00 18 */	ble lbl_80C20C24
/* 80C20C10  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80C20C14  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C20C18  FC 00 00 1E */	fctiwz f0, f0
/* 80C20C1C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C20C20  83 A1 00 14 */	lwz r29, 0x14(r1)
lbl_80C20C24:
/* 80C20C24  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80C20C28  D0 9C 05 E0 */	stfs f4, 0x5e0(r28)
/* 80C20C2C  38 7C 05 A0 */	addi r3, r28, 0x5a0
/* 80C20C30  7F A0 07 34 */	extsh r0, r29
/* 80C20C34  C8 3F 00 10 */	lfd f1, 0x10(r31)
/* 80C20C38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C20C3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C20C40  3C 00 43 30 */	lis r0, 0x4330
/* 80C20C44  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C20C48  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C20C4C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80C20C50  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80C20C54  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80C20C58  4B 64 ED 25 */	bl cLib_addCalc__FPfffff
/* 80C20C5C  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 80C20C60  38 80 01 20 */	li r4, 0x120
/* 80C20C64  38 A0 00 10 */	li r5, 0x10
/* 80C20C68  4B 64 FF 29 */	bl cLib_chaseAngleS__FPsss
/* 80C20C6C  38 60 00 00 */	li r3, 0
/* 80C20C70  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C20C74  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C20C78  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C20C7C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C20C80  39 61 00 40 */	addi r11, r1, 0x40
/* 80C20C84  4B 74 15 99 */	bl _restgpr_26
/* 80C20C88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C20C8C  7C 08 03 A6 */	mtlr r0
/* 80C20C90  38 21 00 60 */	addi r1, r1, 0x60
/* 80C20C94  4E 80 00 20 */	blr 

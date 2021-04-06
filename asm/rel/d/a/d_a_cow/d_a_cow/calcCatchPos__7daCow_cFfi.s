lbl_8065DC08:
/* 8065DC08  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8065DC0C  7C 08 02 A6 */	mflr r0
/* 8065DC10  90 01 00 84 */	stw r0, 0x84(r1)
/* 8065DC14  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8065DC18  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8065DC1C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8065DC20  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8065DC24  39 61 00 60 */	addi r11, r1, 0x60
/* 8065DC28  4B D0 45 AD */	bl _savegpr_27
/* 8065DC2C  7C 7B 1B 78 */	mr r27, r3
/* 8065DC30  FF C0 08 90 */	fmr f30, f1
/* 8065DC34  7C 9C 23 78 */	mr r28, r4
/* 8065DC38  3C 60 80 66 */	lis r3, lit_3987@ha /* 0x80662DB0@ha */
/* 8065DC3C  3B C3 2D B0 */	addi r30, r3, lit_3987@l /* 0x80662DB0@l */
/* 8065DC40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065DC44  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065DC48  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8065DC4C  A8 64 04 E6 */	lha r3, 0x4e6(r4)
/* 8065DC50  3C 63 00 01 */	addis r3, r3, 1
/* 8065DC54  38 03 80 00 */	addi r0, r3, -32768
/* 8065DC58  7C 1D 07 34 */	extsh r29, r0
/* 8065DC5C  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 8065DC60  C0 1B 0C 44 */	lfs f0, 0xc44(r27)
/* 8065DC64  EF E1 00 28 */	fsubs f31, f1, f0
/* 8065DC68  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 8065DC6C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8065DC70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8065DC74  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8065DC78  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8065DC7C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8065DC80  C0 44 04 D8 */	lfs f2, 0x4d8(r4)
/* 8065DC84  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8065DC88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8065DC8C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8065DC90  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8065DC94  38 61 00 0C */	addi r3, r1, 0xc
/* 8065DC98  38 81 00 18 */	addi r4, r1, 0x18
/* 8065DC9C  4B CE 97 01 */	bl PSVECSquareDistance
/* 8065DCA0  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8065DCA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065DCA8  40 81 00 58 */	ble lbl_8065DD00
/* 8065DCAC  FC 00 08 34 */	frsqrte f0, f1
/* 8065DCB0  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 8065DCB4  FC 44 00 32 */	fmul f2, f4, f0
/* 8065DCB8  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 8065DCBC  FC 00 00 32 */	fmul f0, f0, f0
/* 8065DCC0  FC 01 00 32 */	fmul f0, f1, f0
/* 8065DCC4  FC 03 00 28 */	fsub f0, f3, f0
/* 8065DCC8  FC 02 00 32 */	fmul f0, f2, f0
/* 8065DCCC  FC 44 00 32 */	fmul f2, f4, f0
/* 8065DCD0  FC 00 00 32 */	fmul f0, f0, f0
/* 8065DCD4  FC 01 00 32 */	fmul f0, f1, f0
/* 8065DCD8  FC 03 00 28 */	fsub f0, f3, f0
/* 8065DCDC  FC 02 00 32 */	fmul f0, f2, f0
/* 8065DCE0  FC 44 00 32 */	fmul f2, f4, f0
/* 8065DCE4  FC 00 00 32 */	fmul f0, f0, f0
/* 8065DCE8  FC 01 00 32 */	fmul f0, f1, f0
/* 8065DCEC  FC 03 00 28 */	fsub f0, f3, f0
/* 8065DCF0  FC 02 00 32 */	fmul f0, f2, f0
/* 8065DCF4  FC 21 00 32 */	fmul f1, f1, f0
/* 8065DCF8  FC 20 08 18 */	frsp f1, f1
/* 8065DCFC  48 00 00 88 */	b lbl_8065DD84
lbl_8065DD00:
/* 8065DD00  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 8065DD04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065DD08  40 80 00 10 */	bge lbl_8065DD18
/* 8065DD0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065DD10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065DD14  48 00 00 70 */	b lbl_8065DD84
lbl_8065DD18:
/* 8065DD18  D0 21 00 08 */	stfs f1, 8(r1)
/* 8065DD1C  80 81 00 08 */	lwz r4, 8(r1)
/* 8065DD20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065DD24  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065DD28  7C 03 00 00 */	cmpw r3, r0
/* 8065DD2C  41 82 00 14 */	beq lbl_8065DD40
/* 8065DD30  40 80 00 40 */	bge lbl_8065DD70
/* 8065DD34  2C 03 00 00 */	cmpwi r3, 0
/* 8065DD38  41 82 00 20 */	beq lbl_8065DD58
/* 8065DD3C  48 00 00 34 */	b lbl_8065DD70
lbl_8065DD40:
/* 8065DD40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065DD44  41 82 00 0C */	beq lbl_8065DD50
/* 8065DD48  38 00 00 01 */	li r0, 1
/* 8065DD4C  48 00 00 28 */	b lbl_8065DD74
lbl_8065DD50:
/* 8065DD50  38 00 00 02 */	li r0, 2
/* 8065DD54  48 00 00 20 */	b lbl_8065DD74
lbl_8065DD58:
/* 8065DD58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065DD5C  41 82 00 0C */	beq lbl_8065DD68
/* 8065DD60  38 00 00 05 */	li r0, 5
/* 8065DD64  48 00 00 10 */	b lbl_8065DD74
lbl_8065DD68:
/* 8065DD68  38 00 00 03 */	li r0, 3
/* 8065DD6C  48 00 00 08 */	b lbl_8065DD74
lbl_8065DD70:
/* 8065DD70  38 00 00 04 */	li r0, 4
lbl_8065DD74:
/* 8065DD74  2C 00 00 01 */	cmpwi r0, 1
/* 8065DD78  40 82 00 0C */	bne lbl_8065DD84
/* 8065DD7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065DD80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065DD84:
/* 8065DD84  FC 40 F8 90 */	fmr f2, f31
/* 8065DD88  4B C0 98 ED */	bl cM_atan2s__Fff
/* 8065DD8C  7C 65 07 34 */	extsh r5, r3
/* 8065DD90  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8065DD94  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8065DD98  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8065DD9C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8065DDA0  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 8065DDA4  7C 64 02 14 */	add r3, r4, r0
/* 8065DDA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8065DDAC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8065DDB0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8065DDB4  7C 04 04 2E */	lfsx f0, r4, r0
/* 8065DDB8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8065DDBC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8065DDC0  38 05 C0 00 */	addi r0, r5, -16384
/* 8065DDC4  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 8065DDC8  B0 1B 0C 32 */	sth r0, 0xc32(r27)
/* 8065DDCC  2C 1C 00 00 */	cmpwi r28, 0
/* 8065DDD0  41 82 00 54 */	beq lbl_8065DE24
/* 8065DDD4  38 7B 04 E6 */	addi r3, r27, 0x4e6
/* 8065DDD8  7F A4 EB 78 */	mr r4, r29
/* 8065DDDC  38 A0 00 08 */	li r5, 8
/* 8065DDE0  38 C0 04 00 */	li r6, 0x400
/* 8065DDE4  38 E0 01 00 */	li r7, 0x100
/* 8065DDE8  4B C1 27 59 */	bl cLib_addCalcAngleS__FPsssss
/* 8065DDEC  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 8065DDF0  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 8065DDF4  B0 1B 0C 34 */	sth r0, 0xc34(r27)
/* 8065DDF8  38 61 00 24 */	addi r3, r1, 0x24
/* 8065DDFC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8065DE00  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8065DE04  7F A5 EB 78 */	mr r5, r29
/* 8065DE08  38 C1 00 30 */	addi r6, r1, 0x30
/* 8065DE0C  4B C1 2F B5 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8065DE10  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8065DE14  38 81 00 24 */	addi r4, r1, 0x24
/* 8065DE18  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 8065DE1C  4B C1 29 91 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8065DE20  48 00 00 28 */	b lbl_8065DE48
lbl_8065DE24:
/* 8065DE24  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8065DE28  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8065DE2C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8065DE30  7F A5 EB 78 */	mr r5, r29
/* 8065DE34  38 C1 00 30 */	addi r6, r1, 0x30
/* 8065DE38  4B C1 2F 89 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8065DE3C  B3 BB 04 E6 */	sth r29, 0x4e6(r27)
/* 8065DE40  B3 BB 04 DE */	sth r29, 0x4de(r27)
/* 8065DE44  B3 BB 0C 34 */	sth r29, 0xc34(r27)
lbl_8065DE48:
/* 8065DE48  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8065DE4C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8065DE50  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8065DE54  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8065DE58  39 61 00 60 */	addi r11, r1, 0x60
/* 8065DE5C  4B D0 43 C5 */	bl _restgpr_27
/* 8065DE60  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8065DE64  7C 08 03 A6 */	mtlr r0
/* 8065DE68  38 21 00 80 */	addi r1, r1, 0x80
/* 8065DE6C  4E 80 00 20 */	blr 

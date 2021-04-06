lbl_80BB5380:
/* 80BB5380  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BB5384  7C 08 02 A6 */	mflr r0
/* 80BB5388  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BB538C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80BB5390  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80BB5394  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80BB5398  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80BB539C  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB53A0  4B 7A CE 31 */	bl _savegpr_26
/* 80BB53A4  7C 7C 1B 78 */	mr r28, r3
/* 80BB53A8  3C 60 80 BB */	lis r3, lit_3655@ha /* 0x80BB5F00@ha */
/* 80BB53AC  3B E3 5F 00 */	addi r31, r3, lit_3655@l /* 0x80BB5F00@l */
/* 80BB53B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB53B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB53B8  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 80BB53BC  3B 5E 04 D0 */	addi r26, r30, 0x4d0
/* 80BB53C0  3B A0 00 00 */	li r29, 0
/* 80BB53C4  38 00 00 01 */	li r0, 1
/* 80BB53C8  98 1C 05 DE */	stb r0, 0x5de(r28)
/* 80BB53CC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80BB53D0  7F 44 D3 78 */	mr r4, r26
/* 80BB53D4  4B 6B B8 31 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80BB53D8  7C 7B 1B 78 */	mr r27, r3
/* 80BB53DC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80BB53E0  7F 44 D3 78 */	mr r4, r26
/* 80BB53E4  4B 79 1F B9 */	bl PSVECSquareDistance
/* 80BB53E8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BB53EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB53F0  40 81 00 58 */	ble lbl_80BB5448
/* 80BB53F4  FC 00 08 34 */	frsqrte f0, f1
/* 80BB53F8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80BB53FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BB5400  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80BB5404  FC 00 00 32 */	fmul f0, f0, f0
/* 80BB5408  FC 01 00 32 */	fmul f0, f1, f0
/* 80BB540C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BB5410  FC 02 00 32 */	fmul f0, f2, f0
/* 80BB5414  FC 44 00 32 */	fmul f2, f4, f0
/* 80BB5418  FC 00 00 32 */	fmul f0, f0, f0
/* 80BB541C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BB5420  FC 03 00 28 */	fsub f0, f3, f0
/* 80BB5424  FC 02 00 32 */	fmul f0, f2, f0
/* 80BB5428  FC 44 00 32 */	fmul f2, f4, f0
/* 80BB542C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BB5430  FC 01 00 32 */	fmul f0, f1, f0
/* 80BB5434  FC 03 00 28 */	fsub f0, f3, f0
/* 80BB5438  FC 02 00 32 */	fmul f0, f2, f0
/* 80BB543C  FC 21 00 32 */	fmul f1, f1, f0
/* 80BB5440  FC 20 08 18 */	frsp f1, f1
/* 80BB5444  48 00 00 88 */	b lbl_80BB54CC
lbl_80BB5448:
/* 80BB5448  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80BB544C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB5450  40 80 00 10 */	bge lbl_80BB5460
/* 80BB5454  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BB5458  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BB545C  48 00 00 70 */	b lbl_80BB54CC
lbl_80BB5460:
/* 80BB5460  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BB5464  80 81 00 08 */	lwz r4, 8(r1)
/* 80BB5468  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BB546C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BB5470  7C 03 00 00 */	cmpw r3, r0
/* 80BB5474  41 82 00 14 */	beq lbl_80BB5488
/* 80BB5478  40 80 00 40 */	bge lbl_80BB54B8
/* 80BB547C  2C 03 00 00 */	cmpwi r3, 0
/* 80BB5480  41 82 00 20 */	beq lbl_80BB54A0
/* 80BB5484  48 00 00 34 */	b lbl_80BB54B8
lbl_80BB5488:
/* 80BB5488  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BB548C  41 82 00 0C */	beq lbl_80BB5498
/* 80BB5490  38 00 00 01 */	li r0, 1
/* 80BB5494  48 00 00 28 */	b lbl_80BB54BC
lbl_80BB5498:
/* 80BB5498  38 00 00 02 */	li r0, 2
/* 80BB549C  48 00 00 20 */	b lbl_80BB54BC
lbl_80BB54A0:
/* 80BB54A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BB54A4  41 82 00 0C */	beq lbl_80BB54B0
/* 80BB54A8  38 00 00 05 */	li r0, 5
/* 80BB54AC  48 00 00 10 */	b lbl_80BB54BC
lbl_80BB54B0:
/* 80BB54B0  38 00 00 03 */	li r0, 3
/* 80BB54B4  48 00 00 08 */	b lbl_80BB54BC
lbl_80BB54B8:
/* 80BB54B8  38 00 00 04 */	li r0, 4
lbl_80BB54BC:
/* 80BB54BC  2C 00 00 01 */	cmpwi r0, 1
/* 80BB54C0  40 82 00 0C */	bne lbl_80BB54CC
/* 80BB54C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BB54C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BB54CC:
/* 80BB54CC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BB54D0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BB54D4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80BB54D8  7C 00 D8 50 */	subf r0, r0, r27
/* 80BB54DC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BB54E0  7C 64 02 14 */	add r3, r4, r0
/* 80BB54E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BB54E8  EF E1 00 32 */	fmuls f31, f1, f0
/* 80BB54EC  7F 83 E3 78 */	mr r3, r28
/* 80BB54F0  38 9C 05 CE */	addi r4, r28, 0x5ce
/* 80BB54F4  FC 20 F8 90 */	fmr f1, f31
/* 80BB54F8  38 A0 00 50 */	li r5, 0x50
/* 80BB54FC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80BB5500  4B FF FE 19 */	bl RideOn_Angle__15daObjBhbridge_cFRsfsf
/* 80BB5504  38 00 00 01 */	li r0, 1
/* 80BB5508  98 1C 05 DE */	stb r0, 0x5de(r28)
/* 80BB550C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80BB5510  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BB5514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BB5518  40 81 00 10 */	ble lbl_80BB5528
/* 80BB551C  3B A0 04 00 */	li r29, 0x400
/* 80BB5520  38 00 01 50 */	li r0, 0x150
/* 80BB5524  B0 1C 05 B0 */	sth r0, 0x5b0(r28)
lbl_80BB5528:
/* 80BB5528  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80BB552C  D0 9C 05 D4 */	stfs f4, 0x5d4(r28)
/* 80BB5530  38 7C 05 A0 */	addi r3, r28, 0x5a0
/* 80BB5534  7F A0 07 34 */	extsh r0, r29
/* 80BB5538  C8 3F 00 00 */	lfd f1, 0(r31)
/* 80BB553C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB5540  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB5544  3C 00 43 30 */	lis r0, 0x4330
/* 80BB5548  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BB554C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BB5550  EC 20 08 28 */	fsubs f1, f0, f1
/* 80BB5554  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80BB5558  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80BB555C  4B 6B A4 21 */	bl cLib_addCalc__FPfffff
/* 80BB5560  38 60 00 00 */	li r3, 0
/* 80BB5564  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80BB5568  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80BB556C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80BB5570  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80BB5574  39 61 00 30 */	addi r11, r1, 0x30
/* 80BB5578  4B 7A CC A5 */	bl _restgpr_26
/* 80BB557C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BB5580  7C 08 03 A6 */	mtlr r0
/* 80BB5584  38 21 00 50 */	addi r1, r1, 0x50
/* 80BB5588  4E 80 00 20 */	blr 

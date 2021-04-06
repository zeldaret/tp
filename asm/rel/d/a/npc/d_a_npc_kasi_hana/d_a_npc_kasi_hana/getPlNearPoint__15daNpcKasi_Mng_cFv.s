lbl_80A1B48C:
/* 80A1B48C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80A1B490  7C 08 02 A6 */	mflr r0
/* 80A1B494  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A1B498  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80A1B49C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80A1B4A0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80A1B4A4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80A1B4A8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80A1B4AC  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80A1B4B0  39 61 00 60 */	addi r11, r1, 0x60
/* 80A1B4B4  4B 94 6D 25 */	bl _savegpr_28
/* 80A1B4B8  7C 7C 1B 78 */	mr r28, r3
/* 80A1B4BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A1B4C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1B4C4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A1B4C8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A1B4CC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A1B4D0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A1B4D4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A1B4D8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A1B4DC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A1B4E0  3B C0 00 00 */	li r30, 0
/* 80A1B4E4  3C 60 80 A2 */	lis r3, lit_3908@ha /* 0x80A21080@ha */
/* 80A1B4E8  C3 A3 10 80 */	lfs f29, lit_3908@l(r3)  /* 0x80A21080@l */
/* 80A1B4EC  3B A0 00 00 */	li r29, 0
/* 80A1B4F0  3B E0 00 00 */	li r31, 0
/* 80A1B4F4  FF E0 E8 90 */	fmr f31, f29
lbl_80A1B4F8:
/* 80A1B4F8  80 7C 00 54 */	lwz r3, 0x54(r28)
/* 80A1B4FC  80 63 00 08 */	lwz r3, 8(r3)
/* 80A1B500  38 1F 00 04 */	addi r0, r31, 4
/* 80A1B504  7C 83 02 14 */	add r4, r3, r0
/* 80A1B508  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1B50C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1B510  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A1B514  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1B518  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1B51C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A1B520  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A1B524  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A1B528  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A1B52C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A1B530  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A1B534  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A1B538  38 61 00 14 */	addi r3, r1, 0x14
/* 80A1B53C  38 81 00 38 */	addi r4, r1, 0x38
/* 80A1B540  38 A1 00 44 */	addi r5, r1, 0x44
/* 80A1B544  4B 84 B5 F1 */	bl __mi__4cXyzCFRC3Vec
/* 80A1B548  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80A1B54C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A1B550  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80A1B554  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A1B558  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A1B55C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A1B560  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A1B564  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A1B568  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A1B56C  38 61 00 08 */	addi r3, r1, 8
/* 80A1B570  4B 92 BB C9 */	bl PSVECSquareMag
/* 80A1B574  2C 1D 00 00 */	cmpwi r29, 0
/* 80A1B578  40 82 00 10 */	bne lbl_80A1B588
/* 80A1B57C  3B C0 00 00 */	li r30, 0
/* 80A1B580  FF A0 08 90 */	fmr f29, f1
/* 80A1B584  48 00 00 20 */	b lbl_80A1B5A4
lbl_80A1B588:
/* 80A1B588  FC 1D 08 40 */	fcmpo cr0, f29, f1
/* 80A1B58C  40 81 00 10 */	ble lbl_80A1B59C
/* 80A1B590  7F BE EB 78 */	mr r30, r29
/* 80A1B594  FF A0 08 90 */	fmr f29, f1
/* 80A1B598  48 00 00 0C */	b lbl_80A1B5A4
lbl_80A1B59C:
/* 80A1B59C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80A1B5A0  41 81 00 18 */	bgt lbl_80A1B5B8
lbl_80A1B5A4:
/* 80A1B5A4  FF C0 08 90 */	fmr f30, f1
/* 80A1B5A8  3B BD 00 01 */	addi r29, r29, 1
/* 80A1B5AC  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A1B5B0  3B FF 00 10 */	addi r31, r31, 0x10
/* 80A1B5B4  41 80 FF 44 */	blt lbl_80A1B4F8
lbl_80A1B5B8:
/* 80A1B5B8  93 DC 00 48 */	stw r30, 0x48(r28)
/* 80A1B5BC  7F C3 F3 78 */	mr r3, r30
/* 80A1B5C0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80A1B5C4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80A1B5C8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80A1B5CC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80A1B5D0  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80A1B5D4  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80A1B5D8  39 61 00 60 */	addi r11, r1, 0x60
/* 80A1B5DC  4B 94 6C 49 */	bl _restgpr_28
/* 80A1B5E0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80A1B5E4  7C 08 03 A6 */	mtlr r0
/* 80A1B5E8  38 21 00 90 */	addi r1, r1, 0x90
/* 80A1B5EC  4E 80 00 20 */	blr 

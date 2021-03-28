lbl_80472D8C:
/* 80472D8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80472D90  7C 08 02 A6 */	mflr r0
/* 80472D94  90 01 00 34 */	stw r0, 0x34(r1)
/* 80472D98  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80472D9C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80472DA0  39 61 00 20 */	addi r11, r1, 0x20
/* 80472DA4  4B EE F4 34 */	b _savegpr_28
/* 80472DA8  7C 7C 1B 78 */	mr r28, r3
/* 80472DAC  7C 9D 23 78 */	mr r29, r4
/* 80472DB0  3C 80 80 48 */	lis r4, l_cyl_info@ha
/* 80472DB4  3B E4 99 0C */	addi r31, r4, l_cyl_info@l
/* 80472DB8  3B C0 00 00 */	li r30, 0
/* 80472DBC  C3 E3 07 40 */	lfs f31, 0x740(r3)
/* 80472DC0  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 80472DC4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80472DC8  80 03 05 A0 */	lwz r0, 0x5a0(r3)
/* 80472DCC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80472DD0  41 82 00 68 */	beq lbl_80472E38
/* 80472DD4  4B FF C8 D1 */	bl data__12daObjCarry_cFv
/* 80472DD8  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80472DDC  C0 1F 0B 08 */	lfs f0, 0xb08(r31)
/* 80472DE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80472DE4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80472DE8  EC 01 00 2A */	fadds f0, f1, f0
/* 80472DEC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80472DF0  40 81 00 14 */	ble lbl_80472E04
/* 80472DF4  3B C0 00 02 */	li r30, 2
/* 80472DF8  C0 1F 0A C0 */	lfs f0, 0xac0(r31)
/* 80472DFC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80472E00  48 00 00 38 */	b lbl_80472E38
lbl_80472E04:
/* 80472E04  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80472E08  40 81 00 30 */	ble lbl_80472E38
/* 80472E0C  3B C0 00 01 */	li r30, 1
/* 80472E10  EC 1F 08 28 */	fsubs f0, f31, f1
/* 80472E14  FC 00 02 10 */	fabs f0, f0
/* 80472E18  FF E0 00 18 */	frsp f31, f0
/* 80472E1C  7F 83 E3 78 */	mr r3, r28
/* 80472E20  4B FF C8 85 */	bl data__12daObjCarry_cFv
/* 80472E24  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80472E28  C0 1F 0B 08 */	lfs f0, 0xb08(r31)
/* 80472E2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80472E30  EC 1F 00 24 */	fdivs f0, f31, f0
/* 80472E34  D0 1D 00 00 */	stfs f0, 0(r29)
lbl_80472E38:
/* 80472E38  7F C3 F3 78 */	mr r3, r30
/* 80472E3C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80472E40  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80472E44  39 61 00 20 */	addi r11, r1, 0x20
/* 80472E48  4B EE F3 DC */	b _restgpr_28
/* 80472E4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80472E50  7C 08 03 A6 */	mtlr r0
/* 80472E54  38 21 00 30 */	addi r1, r1, 0x30
/* 80472E58  4E 80 00 20 */	blr 

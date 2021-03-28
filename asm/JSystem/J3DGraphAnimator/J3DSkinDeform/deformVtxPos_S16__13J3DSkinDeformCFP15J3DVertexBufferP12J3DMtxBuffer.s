lbl_8032DC74:
/* 8032DC74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032DC78  7C 08 02 A6 */	mflr r0
/* 8032DC7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032DC80  39 61 00 20 */	addi r11, r1, 0x20
/* 8032DC84  48 03 45 55 */	bl _savegpr_28
/* 8032DC88  7C 7C 1B 78 */	mr r28, r3
/* 8032DC8C  7C 9E 23 78 */	mr r30, r4
/* 8032DC90  7C BD 2B 78 */	mr r29, r5
/* 8032DC94  80 05 00 0C */	lwz r0, 0xc(r5)
/* 8032DC98  90 01 00 08 */	stw r0, 8(r1)
/* 8032DC9C  80 05 00 10 */	lwz r0, 0x10(r5)
/* 8032DCA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8032DCA4  80 64 00 00 */	lwz r3, 0(r4)
/* 8032DCA8  88 63 00 4C */	lbz r3, 0x4c(r3)
/* 8032DCAC  38 80 00 07 */	li r4, 7
/* 8032DCB0  7C 65 1B 78 */	mr r5, r3
/* 8032DCB4  38 C0 00 07 */	li r6, 7
/* 8032DCB8  4B FE 39 81 */	bl J3DGQRSetup7__FUlUlUlUl
/* 8032DCBC  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8032DCC0  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8032DCC4  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8032DCC8  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8032DCCC  81 5D 00 00 */	lwz r10, 0(r29)
/* 8032DCD0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8032DCD4  80 03 00 00 */	lwz r0, 0(r3)
/* 8032DCD8  83 BE 00 2C */	lwz r29, 0x2c(r30)
/* 8032DCDC  83 FE 00 1C */	lwz r31, 0x1c(r30)
/* 8032DCE0  38 60 00 00 */	li r3, 0
/* 8032DCE4  38 80 00 00 */	li r4, 0
/* 8032DCE8  80 FC 00 04 */	lwz r7, 4(r28)
/* 8032DCEC  38 C1 00 08 */	addi r6, r1, 8
/* 8032DCF0  7C 09 03 A6 */	mtctr r0
/* 8032DCF4  2C 00 00 00 */	cmpwi r0, 0
/* 8032DCF8  40 81 00 90 */	ble lbl_8032DD88
lbl_8032DCFC:
/* 8032DCFC  80 AA 00 38 */	lwz r5, 0x38(r10)
/* 8032DD00  7C 07 22 2E */	lhzx r0, r7, r4
/* 8032DD04  7D 65 00 AE */	lbzx r11, r5, r0
/* 8032DD08  7D 3F 1A 14 */	add r9, r31, r3
/* 8032DD0C  7D 1D 1A 14 */	add r8, r29, r3
/* 8032DD10  80 AA 00 3C */	lwz r5, 0x3c(r10)
/* 8032DD14  54 00 08 3C */	slwi r0, r0, 1
/* 8032DD18  7D 85 02 2E */	lhzx r12, r5, r0
/* 8032DD1C  55 60 15 BA */	rlwinm r0, r11, 2, 0x16, 0x1d
/* 8032DD20  7C A6 00 2E */	lwzx r5, r6, r0
/* 8032DD24  1C 0C 00 30 */	mulli r0, r12, 0x30
/* 8032DD28  7C A5 02 14 */	add r5, r5, r0
/* 8032DD2C  E0 08 70 00 */	psq_l f0, 0(r8), 0, 7 /* qr7 */
/* 8032DD30  E0 45 00 00 */	psq_l f2, 0(r5), 0, 0 /* qr0 */
/* 8032DD34  E0 28 F0 04 */	psq_l f1, 4(r8), 1, 7 /* qr7 */
/* 8032DD38  10 82 00 32 */	ps_mul f4, f2, f0
/* 8032DD3C  E0 65 00 08 */	psq_l f3, 8(r5), 0, 0 /* qr0 */
/* 8032DD40  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8032DD44  E1 05 00 10 */	psq_l f8, 16(r5), 0, 0 /* qr0 */
/* 8032DD48  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8032DD4C  E1 25 00 18 */	psq_l f9, 24(r5), 0, 0 /* qr0 */
/* 8032DD50  11 48 00 32 */	ps_mul f10, f8, f0
/* 8032DD54  F0 C9 F0 00 */	psq_st f6, 0(r9), 1, 7 /* qr7 */
/* 8032DD58  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 8032DD5C  E0 45 00 20 */	psq_l f2, 32(r5), 0, 0 /* qr0 */
/* 8032DD60  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 8032DD64  E0 65 00 28 */	psq_l f3, 40(r5), 0, 0 /* qr0 */
/* 8032DD68  10 82 00 32 */	ps_mul f4, f2, f0
/* 8032DD6C  F1 89 F0 02 */	psq_st f12, 2(r9), 1, 7 /* qr7 */
/* 8032DD70  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 8032DD74  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8032DD78  F0 C9 F0 04 */	psq_st f6, 4(r9), 1, 7 /* qr7 */
/* 8032DD7C  38 63 00 06 */	addi r3, r3, 6
/* 8032DD80  38 84 00 02 */	addi r4, r4, 2
/* 8032DD84  42 00 FF 78 */	bdnz lbl_8032DCFC
lbl_8032DD88:
/* 8032DD88  80 7E 00 00 */	lwz r3, 0(r30)
/* 8032DD8C  80 03 00 00 */	lwz r0, 0(r3)
/* 8032DD90  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8032DD94  1C 80 00 06 */	mulli r4, r0, 6
/* 8032DD98  48 00 D8 45 */	bl DCStoreRange
/* 8032DD9C  93 FE 00 2C */	stw r31, 0x2c(r30)
/* 8032DDA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8032DDA4  48 03 44 81 */	bl _restgpr_28
/* 8032DDA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032DDAC  7C 08 03 A6 */	mtlr r0
/* 8032DDB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8032DDB4  4E 80 00 20 */	blr 

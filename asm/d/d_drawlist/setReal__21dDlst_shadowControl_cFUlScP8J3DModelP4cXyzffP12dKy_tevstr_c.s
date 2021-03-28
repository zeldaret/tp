lbl_80055C74:
/* 80055C74  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80055C78  7C 08 02 A6 */	mflr r0
/* 80055C7C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80055C80  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80055C84  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80055C88  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80055C8C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80055C90  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80055C94  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80055C98  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80055C9C  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80055CA0  39 61 00 40 */	addi r11, r1, 0x40
/* 80055CA4  48 30 C5 29 */	bl _savegpr_25
/* 80055CA8  7C 79 1B 78 */	mr r25, r3
/* 80055CAC  7C BD 2B 78 */	mr r29, r5
/* 80055CB0  7C DA 33 78 */	mr r26, r6
/* 80055CB4  7C FB 3B 78 */	mr r27, r7
/* 80055CB8  FF C0 08 90 */	fmr f30, f1
/* 80055CBC  FF E0 10 90 */	fmr f31, f2
/* 80055CC0  7D 1C 43 78 */	mr r28, r8
/* 80055CC4  7F A0 07 75 */	extsb. r0, r29
/* 80055CC8  40 82 00 0C */	bne lbl_80055CD4
/* 80055CCC  C0 22 86 28 */	lfs f1, lit_4270(r2)
/* 80055CD0  48 00 00 14 */	b lbl_80055CE4
lbl_80055CD4:
/* 80055CD4  C0 22 86 28 */	lfs f1, lit_4270(r2)
/* 80055CD8  C0 02 86 B8 */	lfs f0, lit_5551(r2)
/* 80055CDC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80055CE0  EC 21 00 28 */	fsubs f1, f1, f0
lbl_80055CE4:
/* 80055CE4  FF A0 08 90 */	fmr f29, f1
/* 80055CE8  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 80055CEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80055CF0  4C 40 13 82 */	cror 2, 0, 2
/* 80055CF4  40 82 00 0C */	bne lbl_80055D00
/* 80055CF8  38 60 00 00 */	li r3, 0
/* 80055CFC  48 00 01 E8 */	b lbl_80055EE4
lbl_80055D00:
/* 80055D00  C0 02 86 28 */	lfs f0, lit_4270(r2)
/* 80055D04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80055D08  40 81 00 08 */	ble lbl_80055D10
/* 80055D0C  FF A0 00 90 */	fmr f29, f0
lbl_80055D10:
/* 80055D10  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80055D14  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80055D18  7F 64 DB 78 */	mr r4, r27
/* 80055D1C  38 A1 00 08 */	addi r5, r1, 8
/* 80055D20  48 2F 10 4D */	bl PSMTXMultVec
/* 80055D24  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80055D28  EC 22 F0 28 */	fsubs f1, f2, f30
/* 80055D2C  C0 02 86 10 */	lfs f0, lit_4074(r2)
/* 80055D30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80055D34  4C 41 13 82 */	cror 2, 1, 2
/* 80055D38  40 82 00 0C */	bne lbl_80055D44
/* 80055D3C  38 60 00 00 */	li r3, 0
/* 80055D40  48 00 01 A4 */	b lbl_80055EE4
lbl_80055D44:
/* 80055D44  EF 82 F0 2A */	fadds f28, f2, f30
/* 80055D48  C0 02 86 BC */	lfs f0, lit_5552(r2)
/* 80055D4C  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 80055D50  40 80 00 30 */	bge lbl_80055D80
/* 80055D54  C0 22 86 C0 */	lfs f1, lit_5553(r2)
/* 80055D58  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80055D5C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80055D60  C0 02 86 28 */	lfs f0, lit_4270(r2)
/* 80055D64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80055D68  4C 41 13 82 */	cror 2, 1, 2
/* 80055D6C  40 82 00 0C */	bne lbl_80055D78
/* 80055D70  38 60 00 00 */	li r3, 0
/* 80055D74  48 00 01 70 */	b lbl_80055EE4
lbl_80055D78:
/* 80055D78  EC 00 08 28 */	fsubs f0, f0, f1
/* 80055D7C  EF BD 00 32 */	fmuls f29, f29, f0
lbl_80055D80:
/* 80055D80  7F A0 07 75 */	extsb. r0, r29
/* 80055D84  40 82 00 0C */	bne lbl_80055D90
/* 80055D88  3C 60 80 45 */	lis r3, __float_max@ha
/* 80055D8C  C3 83 0A E8 */	lfs f28, __float_max@l(r3)
lbl_80055D90:
/* 80055D90  3B C0 00 00 */	li r30, 0
/* 80055D94  80 79 00 04 */	lwz r3, 4(r25)
/* 80055D98  3B E0 00 00 */	li r31, 0
/* 80055D9C  48 00 00 24 */	b lbl_80055DC0
lbl_80055DA0:
/* 80055DA0  7C 7F 1B 78 */	mr r31, r3
/* 80055DA4  C0 03 25 48 */	lfs f0, 0x2548(r3)
/* 80055DA8  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 80055DAC  40 81 00 10 */	ble lbl_80055DBC
/* 80055DB0  7C 7E 1B 78 */	mr r30, r3
/* 80055DB4  38 60 00 00 */	li r3, 0
/* 80055DB8  48 00 00 08 */	b lbl_80055DC0
lbl_80055DBC:
/* 80055DBC  80 63 25 50 */	lwz r3, 0x2550(r3)
lbl_80055DC0:
/* 80055DC0  28 03 00 00 */	cmplwi r3, 0
/* 80055DC4  40 82 FF DC */	bne lbl_80055DA0
/* 80055DC8  88 19 00 01 */	lbz r0, 1(r25)
/* 80055DCC  28 00 00 08 */	cmplwi r0, 8
/* 80055DD0  41 80 00 54 */	blt lbl_80055E24
/* 80055DD4  28 1E 00 00 */	cmplwi r30, 0
/* 80055DD8  40 82 00 0C */	bne lbl_80055DE4
/* 80055DDC  38 60 00 00 */	li r3, 0
/* 80055DE0  48 00 01 04 */	b lbl_80055EE4
lbl_80055DE4:
/* 80055DE4  83 B9 00 08 */	lwz r29, 8(r25)
/* 80055DE8  80 1D 25 4C */	lwz r0, 0x254c(r29)
/* 80055DEC  90 19 00 08 */	stw r0, 8(r25)
/* 80055DF0  38 00 00 00 */	li r0, 0
/* 80055DF4  80 79 00 08 */	lwz r3, 8(r25)
/* 80055DF8  90 03 25 50 */	stw r0, 0x2550(r3)
/* 80055DFC  7C 1D F0 40 */	cmplw r29, r30
/* 80055E00  40 82 00 0C */	bne lbl_80055E0C
/* 80055E04  3B C0 00 00 */	li r30, 0
/* 80055E08  83 F9 00 08 */	lwz r31, 8(r25)
lbl_80055E0C:
/* 80055E0C  7F A3 EB 78 */	mr r3, r29
/* 80055E10  4B FF E6 E1 */	bl reset__18dDlst_shadowReal_cFv
/* 80055E14  88 79 00 01 */	lbz r3, 1(r25)
/* 80055E18  38 03 FF FF */	addi r0, r3, -1
/* 80055E1C  98 19 00 01 */	stb r0, 1(r25)
/* 80055E20  48 00 00 24 */	b lbl_80055E44
lbl_80055E24:
/* 80055E24  3B B9 34 10 */	addi r29, r25, 0x3410
/* 80055E28  38 00 00 08 */	li r0, 8
/* 80055E2C  7C 09 03 A6 */	mtctr r0
lbl_80055E30:
/* 80055E30  88 1D 00 00 */	lbz r0, 0(r29)
/* 80055E34  28 00 00 00 */	cmplwi r0, 0
/* 80055E38  41 82 00 0C */	beq lbl_80055E44
/* 80055E3C  3B BD 25 54 */	addi r29, r29, 0x2554
/* 80055E40  42 00 FF F0 */	bdnz lbl_80055E30
lbl_80055E44:
/* 80055E44  80 79 34 0C */	lwz r3, 0x340c(r25)
/* 80055E48  34 03 00 01 */	addic. r0, r3, 1
/* 80055E4C  90 19 34 0C */	stw r0, 0x340c(r25)
/* 80055E50  41 82 FF F4 */	beq lbl_80055E44
/* 80055E54  7F A3 EB 78 */	mr r3, r29
/* 80055E58  80 99 34 0C */	lwz r4, 0x340c(r25)
/* 80055E5C  7F 45 D3 78 */	mr r5, r26
/* 80055E60  7F 66 DB 78 */	mr r6, r27
/* 80055E64  FC 20 F0 90 */	fmr f1, f30
/* 80055E68  FC 40 F8 90 */	fmr f2, f31
/* 80055E6C  7F 87 E3 78 */	mr r7, r28
/* 80055E70  FC 60 E0 90 */	fmr f3, f28
/* 80055E74  FC 80 E8 90 */	fmr f4, f29
/* 80055E78  4B FF F1 B1 */	bl set__18dDlst_shadowReal_cFUlP8J3DModelP4cXyzffP12dKy_tevstr_cff
/* 80055E7C  28 03 00 00 */	cmplwi r3, 0
/* 80055E80  40 82 00 0C */	bne lbl_80055E8C
/* 80055E84  38 60 00 00 */	li r3, 0
/* 80055E88  48 00 00 5C */	b lbl_80055EE4
lbl_80055E8C:
/* 80055E8C  88 99 00 01 */	lbz r4, 1(r25)
/* 80055E90  38 04 00 01 */	addi r0, r4, 1
/* 80055E94  98 19 00 01 */	stb r0, 1(r25)
/* 80055E98  28 1E 00 00 */	cmplwi r30, 0
/* 80055E9C  40 82 00 24 */	bne lbl_80055EC0
/* 80055EA0  28 1F 00 00 */	cmplwi r31, 0
/* 80055EA4  40 82 00 0C */	bne lbl_80055EB0
/* 80055EA8  93 B9 00 04 */	stw r29, 4(r25)
/* 80055EAC  48 00 00 0C */	b lbl_80055EB8
lbl_80055EB0:
/* 80055EB0  93 BF 25 50 */	stw r29, 0x2550(r31)
/* 80055EB4  93 FD 25 4C */	stw r31, 0x254c(r29)
lbl_80055EB8:
/* 80055EB8  93 B9 00 08 */	stw r29, 8(r25)
/* 80055EBC  48 00 00 28 */	b lbl_80055EE4
lbl_80055EC0:
/* 80055EC0  80 9E 25 4C */	lwz r4, 0x254c(r30)
/* 80055EC4  28 04 00 00 */	cmplwi r4, 0
/* 80055EC8  40 82 00 0C */	bne lbl_80055ED4
/* 80055ECC  93 B9 00 04 */	stw r29, 4(r25)
/* 80055ED0  48 00 00 0C */	b lbl_80055EDC
lbl_80055ED4:
/* 80055ED4  93 A4 25 50 */	stw r29, 0x2550(r4)
/* 80055ED8  90 9D 25 4C */	stw r4, 0x254c(r29)
lbl_80055EDC:
/* 80055EDC  93 DD 25 50 */	stw r30, 0x2550(r29)
/* 80055EE0  93 BE 25 4C */	stw r29, 0x254c(r30)
lbl_80055EE4:
/* 80055EE4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80055EE8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80055EEC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80055EF0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80055EF4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80055EF8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80055EFC  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80055F00  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80055F04  39 61 00 40 */	addi r11, r1, 0x40
/* 80055F08  48 30 C3 11 */	bl _restgpr_25
/* 80055F0C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80055F10  7C 08 03 A6 */	mtlr r0
/* 80055F14  38 21 00 80 */	addi r1, r1, 0x80
/* 80055F18  4E 80 00 20 */	blr 

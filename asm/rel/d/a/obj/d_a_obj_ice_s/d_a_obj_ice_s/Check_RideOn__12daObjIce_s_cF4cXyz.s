lbl_80C20C98:
/* 80C20C98  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C20C9C  7C 08 02 A6 */	mflr r0
/* 80C20CA0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C20CA4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80C20CA8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80C20CAC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80C20CB0  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80C20CB4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 80C20CB8  F3 A1 00 38 */	psq_st f29, 56(r1), 0, 0 /* qr0 */
/* 80C20CBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80C20CC0  4B 74 15 18 */	b _savegpr_28
/* 80C20CC4  7C 7E 1B 78 */	mr r30, r3
/* 80C20CC8  7C 9C 23 78 */	mr r28, r4
/* 80C20CCC  3C 60 80 C2 */	lis r3, lit_3644@ha
/* 80C20CD0  3B E3 1A F8 */	addi r31, r3, lit_3644@l
/* 80C20CD4  38 00 00 01 */	li r0, 1
/* 80C20CD8  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80C20CDC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C20CE0  4B 64 FF 24 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80C20CE4  7C 7D 1B 78 */	mr r29, r3
/* 80C20CE8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C20CEC  7F 84 E3 78 */	mr r4, r28
/* 80C20CF0  4B 72 66 AC */	b PSVECSquareDistance
/* 80C20CF4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C20CF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C20CFC  40 81 00 58 */	ble lbl_80C20D54
/* 80C20D00  FC 00 08 34 */	frsqrte f0, f1
/* 80C20D04  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80C20D08  FC 44 00 32 */	fmul f2, f4, f0
/* 80C20D0C  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80C20D10  FC 00 00 32 */	fmul f0, f0, f0
/* 80C20D14  FC 01 00 32 */	fmul f0, f1, f0
/* 80C20D18  FC 03 00 28 */	fsub f0, f3, f0
/* 80C20D1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C20D20  FC 44 00 32 */	fmul f2, f4, f0
/* 80C20D24  FC 00 00 32 */	fmul f0, f0, f0
/* 80C20D28  FC 01 00 32 */	fmul f0, f1, f0
/* 80C20D2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C20D30  FC 02 00 32 */	fmul f0, f2, f0
/* 80C20D34  FC 44 00 32 */	fmul f2, f4, f0
/* 80C20D38  FC 00 00 32 */	fmul f0, f0, f0
/* 80C20D3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C20D40  FC 03 00 28 */	fsub f0, f3, f0
/* 80C20D44  FC 02 00 32 */	fmul f0, f2, f0
/* 80C20D48  FC 21 00 32 */	fmul f1, f1, f0
/* 80C20D4C  FC 20 08 18 */	frsp f1, f1
/* 80C20D50  48 00 00 88 */	b lbl_80C20DD8
lbl_80C20D54:
/* 80C20D54  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80C20D58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C20D5C  40 80 00 10 */	bge lbl_80C20D6C
/* 80C20D60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C20D64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80C20D68  48 00 00 70 */	b lbl_80C20DD8
lbl_80C20D6C:
/* 80C20D6C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C20D70  80 81 00 08 */	lwz r4, 8(r1)
/* 80C20D74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C20D78  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C20D7C  7C 03 00 00 */	cmpw r3, r0
/* 80C20D80  41 82 00 14 */	beq lbl_80C20D94
/* 80C20D84  40 80 00 40 */	bge lbl_80C20DC4
/* 80C20D88  2C 03 00 00 */	cmpwi r3, 0
/* 80C20D8C  41 82 00 20 */	beq lbl_80C20DAC
/* 80C20D90  48 00 00 34 */	b lbl_80C20DC4
lbl_80C20D94:
/* 80C20D94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C20D98  41 82 00 0C */	beq lbl_80C20DA4
/* 80C20D9C  38 00 00 01 */	li r0, 1
/* 80C20DA0  48 00 00 28 */	b lbl_80C20DC8
lbl_80C20DA4:
/* 80C20DA4  38 00 00 02 */	li r0, 2
/* 80C20DA8  48 00 00 20 */	b lbl_80C20DC8
lbl_80C20DAC:
/* 80C20DAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C20DB0  41 82 00 0C */	beq lbl_80C20DBC
/* 80C20DB4  38 00 00 05 */	li r0, 5
/* 80C20DB8  48 00 00 10 */	b lbl_80C20DC8
lbl_80C20DBC:
/* 80C20DBC  38 00 00 03 */	li r0, 3
/* 80C20DC0  48 00 00 08 */	b lbl_80C20DC8
lbl_80C20DC4:
/* 80C20DC4  38 00 00 04 */	li r0, 4
lbl_80C20DC8:
/* 80C20DC8  2C 00 00 01 */	cmpwi r0, 1
/* 80C20DCC  40 82 00 0C */	bne lbl_80C20DD8
/* 80C20DD0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C20DD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80C20DD8:
/* 80C20DD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C20DDC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80C20DE0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80C20DE4  7C 00 E8 50 */	subf r0, r0, r29
/* 80C20DE8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C20DEC  7C 64 02 14 */	add r3, r4, r0
/* 80C20DF0  C0 43 00 04 */	lfs f2, 4(r3)
/* 80C20DF4  FC 00 08 50 */	fneg f0, f1
/* 80C20DF8  EF C0 00 B2 */	fmuls f30, f0, f2
/* 80C20DFC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80C20E00  EF A1 00 32 */	fmuls f29, f1, f0
/* 80C20E04  88 1E 05 C5 */	lbz r0, 0x5c5(r30)
/* 80C20E08  28 00 00 FF */	cmplwi r0, 0xff
/* 80C20E0C  40 82 00 10 */	bne lbl_80C20E1C
/* 80C20E10  3C 60 80 C2 */	lis r3, l_HIO@ha
/* 80C20E14  38 63 1C 48 */	addi r3, r3, l_HIO@l
/* 80C20E18  C3 E3 00 08 */	lfs f31, 8(r3)
lbl_80C20E1C:
/* 80C20E1C  C0 5E 05 C8 */	lfs f2, 0x5c8(r30)
/* 80C20E20  7F C3 F3 78 */	mr r3, r30
/* 80C20E24  38 9E 05 DA */	addi r4, r30, 0x5da
/* 80C20E28  FC 20 F0 90 */	fmr f1, f30
/* 80C20E2C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80C20E30  EF E0 F8 2A */	fadds f31, f0, f31
/* 80C20E34  EC 1F 10 24 */	fdivs f0, f31, f2
/* 80C20E38  FC 00 00 1E */	fctiwz f0, f0
/* 80C20E3C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80C20E40  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80C20E44  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C20E48  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80C20E4C  4B FF FB 91 */	bl RideOn_Angle__12daObjIce_s_cFRsfsf
/* 80C20E50  C0 5E 05 C8 */	lfs f2, 0x5c8(r30)
/* 80C20E54  7F C3 F3 78 */	mr r3, r30
/* 80C20E58  38 9E 05 DE */	addi r4, r30, 0x5de
/* 80C20E5C  FC 20 E8 90 */	fmr f1, f29
/* 80C20E60  EC 1F 10 24 */	fdivs f0, f31, f2
/* 80C20E64  FC 00 00 1E */	fctiwz f0, f0
/* 80C20E68  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C20E6C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 80C20E70  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C20E74  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80C20E78  4B FF FB 65 */	bl RideOn_Angle__12daObjIce_s_cFRsfsf
/* 80C20E7C  38 00 00 01 */	li r0, 1
/* 80C20E80  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80C20E84  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C20E88  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 80C20E8C  38 60 00 00 */	li r3, 0
/* 80C20E90  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80C20E94  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80C20E98  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80C20E9C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80C20EA0  E3 A1 00 38 */	psq_l f29, 56(r1), 0, 0 /* qr0 */
/* 80C20EA4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 80C20EA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C20EAC  4B 74 13 78 */	b _restgpr_28
/* 80C20EB0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C20EB4  7C 08 03 A6 */	mtlr r0
/* 80C20EB8  38 21 00 60 */	addi r1, r1, 0x60
/* 80C20EBC  4E 80 00 20 */	blr 

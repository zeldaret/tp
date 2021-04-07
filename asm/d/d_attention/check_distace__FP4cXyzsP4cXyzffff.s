lbl_80070CA0:
/* 80070CA0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80070CA4  7C 08 02 A6 */	mflr r0
/* 80070CA8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80070CAC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80070CB0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80070CB4  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80070CB8  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80070CBC  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80070CC0  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80070CC4  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80070CC8  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80070CCC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80070CD0  7C 60 1B 78 */	mr r0, r3
/* 80070CD4  7C 9F 23 78 */	mr r31, r4
/* 80070CD8  FF 80 08 90 */	fmr f28, f1
/* 80070CDC  FF A0 10 90 */	fmr f29, f2
/* 80070CE0  FF C0 18 90 */	fmr f30, f3
/* 80070CE4  FF E0 20 90 */	fmr f31, f4
/* 80070CE8  38 61 00 18 */	addi r3, r1, 0x18
/* 80070CEC  7C A4 2B 78 */	mr r4, r5
/* 80070CF0  7C 05 03 78 */	mr r5, r0
/* 80070CF4  48 1F 5E 41 */	bl __mi__4cXyzCFRC3Vec
/* 80070CF8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80070CFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80070D00  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80070D04  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80070D08  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80070D0C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80070D10  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80070D14  4C 40 13 82 */	cror 2, 0, 2
/* 80070D18  41 82 00 10 */	beq lbl_80070D28
/* 80070D1C  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80070D20  4C 41 13 82 */	cror 2, 1, 2
/* 80070D24  40 82 00 0C */	bne lbl_80070D30
lbl_80070D28:
/* 80070D28  38 60 00 00 */	li r3, 0
/* 80070D2C  48 00 01 30 */	b lbl_80070E5C
lbl_80070D30:
/* 80070D30  FC 20 E8 90 */	fmr f1, f29
/* 80070D34  7F E3 FB 78 */	mr r3, r31
/* 80070D38  C0 42 8C 58 */	lfs f2, lit_4073(r2)
/* 80070D3C  4B FF FF 05 */	bl distace_angle_adjust__Ffsf
/* 80070D40  EF FC 08 2A */	fadds f31, f28, f1
/* 80070D44  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80070D48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80070D4C  C0 02 8C 50 */	lfs f0, lit_4071(r2)
/* 80070D50  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80070D54  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80070D58  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80070D5C  38 61 00 0C */	addi r3, r1, 0xc
/* 80070D60  48 2D 63 D9 */	bl PSVECSquareMag
/* 80070D64  C0 02 8C 50 */	lfs f0, lit_4071(r2)
/* 80070D68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80070D6C  40 81 00 58 */	ble lbl_80070DC4
/* 80070D70  FC 00 08 34 */	frsqrte f0, f1
/* 80070D74  C8 82 8C 78 */	lfd f4, lit_4514(r2)
/* 80070D78  FC 44 00 32 */	fmul f2, f4, f0
/* 80070D7C  C8 62 8C 80 */	lfd f3, lit_4515(r2)
/* 80070D80  FC 00 00 32 */	fmul f0, f0, f0
/* 80070D84  FC 01 00 32 */	fmul f0, f1, f0
/* 80070D88  FC 03 00 28 */	fsub f0, f3, f0
/* 80070D8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80070D90  FC 44 00 32 */	fmul f2, f4, f0
/* 80070D94  FC 00 00 32 */	fmul f0, f0, f0
/* 80070D98  FC 01 00 32 */	fmul f0, f1, f0
/* 80070D9C  FC 03 00 28 */	fsub f0, f3, f0
/* 80070DA0  FC 02 00 32 */	fmul f0, f2, f0
/* 80070DA4  FC 44 00 32 */	fmul f2, f4, f0
/* 80070DA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80070DAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80070DB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80070DB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80070DB8  FC 21 00 32 */	fmul f1, f1, f0
/* 80070DBC  FC 20 08 18 */	frsp f1, f1
/* 80070DC0  48 00 00 88 */	b lbl_80070E48
lbl_80070DC4:
/* 80070DC4  C8 02 8C 88 */	lfd f0, lit_4516(r2)
/* 80070DC8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80070DCC  40 80 00 10 */	bge lbl_80070DDC
/* 80070DD0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80070DD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80070DD8  48 00 00 70 */	b lbl_80070E48
lbl_80070DDC:
/* 80070DDC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80070DE0  80 81 00 08 */	lwz r4, 8(r1)
/* 80070DE4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80070DE8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80070DEC  7C 03 00 00 */	cmpw r3, r0
/* 80070DF0  41 82 00 14 */	beq lbl_80070E04
/* 80070DF4  40 80 00 40 */	bge lbl_80070E34
/* 80070DF8  2C 03 00 00 */	cmpwi r3, 0
/* 80070DFC  41 82 00 20 */	beq lbl_80070E1C
/* 80070E00  48 00 00 34 */	b lbl_80070E34
lbl_80070E04:
/* 80070E04  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80070E08  41 82 00 0C */	beq lbl_80070E14
/* 80070E0C  38 00 00 01 */	li r0, 1
/* 80070E10  48 00 00 28 */	b lbl_80070E38
lbl_80070E14:
/* 80070E14  38 00 00 02 */	li r0, 2
/* 80070E18  48 00 00 20 */	b lbl_80070E38
lbl_80070E1C:
/* 80070E1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80070E20  41 82 00 0C */	beq lbl_80070E2C
/* 80070E24  38 00 00 05 */	li r0, 5
/* 80070E28  48 00 00 10 */	b lbl_80070E38
lbl_80070E2C:
/* 80070E2C  38 00 00 03 */	li r0, 3
/* 80070E30  48 00 00 08 */	b lbl_80070E38
lbl_80070E34:
/* 80070E34  38 00 00 04 */	li r0, 4
lbl_80070E38:
/* 80070E38  2C 00 00 01 */	cmpwi r0, 1
/* 80070E3C  40 82 00 0C */	bne lbl_80070E48
/* 80070E40  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80070E44  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80070E48:
/* 80070E48  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80070E4C  7C 00 00 26 */	mfcr r0
/* 80070E50  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80070E54  7C 00 00 34 */	cntlzw r0, r0
/* 80070E58  54 03 D9 7E */	srwi r3, r0, 5
lbl_80070E5C:
/* 80070E5C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80070E60  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80070E64  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80070E68  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80070E6C  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80070E70  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80070E74  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80070E78  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80070E7C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80070E80  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80070E84  7C 08 03 A6 */	mtlr r0
/* 80070E88  38 21 00 80 */	addi r1, r1, 0x80
/* 80070E8C  4E 80 00 20 */	blr 

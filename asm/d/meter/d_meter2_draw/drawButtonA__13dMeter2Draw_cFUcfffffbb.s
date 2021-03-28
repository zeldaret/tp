lbl_80216DAC:
/* 80216DAC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80216DB0  7C 08 02 A6 */	mflr r0
/* 80216DB4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80216DB8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80216DBC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80216DC0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80216DC4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80216DC8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80216DCC  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80216DD0  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 80216DD4  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 80216DD8  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 80216DDC  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 80216DE0  DB 41 00 30 */	stfd f26, 0x30(r1)
/* 80216DE4  F3 41 00 38 */	psq_st f26, 56(r1), 0, 0 /* qr0 */
/* 80216DE8  DB 21 00 20 */	stfd f25, 0x20(r1)
/* 80216DEC  F3 21 00 28 */	psq_st f25, 40(r1), 0, 0 /* qr0 */
/* 80216DF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80216DF4  48 14 B3 E1 */	bl _savegpr_27
/* 80216DF8  7C 7C 1B 78 */	mr r28, r3
/* 80216DFC  7C 9D 23 78 */	mr r29, r4
/* 80216E00  FF 20 08 90 */	fmr f25, f1
/* 80216E04  FF 40 10 90 */	fmr f26, f2
/* 80216E08  FF 60 18 90 */	fmr f27, f3
/* 80216E0C  FF 80 20 90 */	fmr f28, f4
/* 80216E10  FF A0 28 90 */	fmr f29, f5
/* 80216E14  7C BE 2B 78 */	mr r30, r5
/* 80216E18  7C DB 33 78 */	mr r27, r6
/* 80216E1C  38 A0 00 01 */	li r5, 1
/* 80216E20  38 DC 07 61 */	addi r6, r28, 0x761
/* 80216E24  48 00 34 D1 */	bl getActionString__13dMeter2Draw_cFUcUcPUc
/* 80216E28  7C 7F 1B 78 */	mr r31, r3
/* 80216E2C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80216E30  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80216E34  C3 E3 00 A4 */	lfs f31, 0xa4(r3)
/* 80216E38  C3 C3 02 B4 */	lfs f30, 0x2b4(r3)
/* 80216E3C  7F 83 E3 78 */	mr r3, r28
/* 80216E40  38 80 00 00 */	li r4, 0
/* 80216E44  48 00 4E 7D */	bl isBButtonShow__13dMeter2Draw_cFb
/* 80216E48  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80216E4C  41 82 00 18 */	beq lbl_80216E64
/* 80216E50  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80216E54  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80216E58  C3 E3 00 B4 */	lfs f31, 0xb4(r3)
/* 80216E5C  C3 C3 00 B8 */	lfs f30, 0xb8(r3)
/* 80216E60  48 00 00 1C */	b lbl_80216E7C
lbl_80216E64:
/* 80216E64  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80216E68  41 82 00 14 */	beq lbl_80216E7C
/* 80216E6C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80216E70  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80216E74  C3 E3 00 CC */	lfs f31, 0xcc(r3)
/* 80216E78  C3 C3 00 D0 */	lfs f30, 0xd0(r3)
lbl_80216E7C:
/* 80216E7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80216E80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80216E84  88 63 5E 4A */	lbz r3, 0x5e4a(r3)
/* 80216E88  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 80216E8C  40 82 00 0C */	bne lbl_80216E98
/* 80216E90  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80216E94  41 82 00 0C */	beq lbl_80216EA0
lbl_80216E98:
/* 80216E98  38 00 00 07 */	li r0, 7
/* 80216E9C  98 1C 07 61 */	stb r0, 0x761(r28)
lbl_80216EA0:
/* 80216EA0  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80216EA4  41 82 00 6C */	beq lbl_80216F10
/* 80216EA8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80216EAC  28 00 00 25 */	cmplwi r0, 0x25
/* 80216EB0  40 82 00 38 */	bne lbl_80216EE8
/* 80216EB4  C0 22 AE 80 */	lfs f1, lit_4182(r2)
/* 80216EB8  C0 1C 06 08 */	lfs f0, 0x608(r28)
/* 80216EBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80216EC0  40 82 00 1C */	bne lbl_80216EDC
/* 80216EC4  C0 22 AE 98 */	lfs f1, lit_4923(r2)
/* 80216EC8  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80216ECC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80216ED0  C0 03 04 90 */	lfs f0, 0x490(r3)
/* 80216ED4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80216ED8  D0 1C 06 08 */	stfs f0, 0x608(r28)
lbl_80216EDC:
/* 80216EDC  38 00 00 01 */	li r0, 1
/* 80216EE0  98 1C 07 59 */	stb r0, 0x759(r28)
/* 80216EE4  48 00 00 2C */	b lbl_80216F10
lbl_80216EE8:
/* 80216EE8  28 00 00 00 */	cmplwi r0, 0
/* 80216EEC  41 82 00 1C */	beq lbl_80216F08
/* 80216EF0  C0 22 AE 98 */	lfs f1, lit_4923(r2)
/* 80216EF4  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 80216EF8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 80216EFC  C0 03 04 90 */	lfs f0, 0x490(r3)
/* 80216F00  EC 01 00 28 */	fsubs f0, f1, f0
/* 80216F04  D0 1C 06 08 */	stfs f0, 0x608(r28)
lbl_80216F08:
/* 80216F08  38 00 00 00 */	li r0, 0
/* 80216F0C  98 1C 07 59 */	stb r0, 0x759(r28)
lbl_80216F10:
/* 80216F10  88 1F 00 00 */	lbz r0, 0(r31)
/* 80216F14  7C 00 07 75 */	extsb. r0, r0
/* 80216F18  41 82 00 48 */	beq lbl_80216F60
/* 80216F1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80216F20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80216F24  88 83 5E 24 */	lbz r4, 0x5e24(r3)
/* 80216F28  88 03 5E 1D */	lbz r0, 0x5e1d(r3)
/* 80216F2C  7C 04 00 40 */	cmplw r4, r0
/* 80216F30  41 82 00 10 */	beq lbl_80216F40
/* 80216F34  88 03 5E 35 */	lbz r0, 0x5e35(r3)
/* 80216F38  7C 04 00 40 */	cmplw r4, r0
/* 80216F3C  40 82 00 10 */	bne lbl_80216F4C
lbl_80216F40:
/* 80216F40  88 1C 07 61 */	lbz r0, 0x761(r28)
/* 80216F44  28 00 00 07 */	cmplwi r0, 7
/* 80216F48  41 82 00 18 */	beq lbl_80216F60
lbl_80216F4C:
/* 80216F4C  80 7C 03 4C */	lwz r3, 0x34c(r28)
/* 80216F50  48 03 E6 79 */	bl show__13CPaneMgrAlphaFv
/* 80216F54  80 7C 03 4C */	lwz r3, 0x34c(r28)
/* 80216F58  48 03 E6 71 */	bl show__13CPaneMgrAlphaFv
/* 80216F5C  48 00 00 0C */	b lbl_80216F68
lbl_80216F60:
/* 80216F60  80 7C 03 4C */	lwz r3, 0x34c(r28)
/* 80216F64  48 03 E6 A5 */	bl hide__13CPaneMgrAlphaFv
lbl_80216F68:
/* 80216F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80216F6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80216F70  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80216F74  38 00 00 00 */	li r0, 0
/* 80216F78  88 63 05 6A */	lbz r3, 0x56a(r3)
/* 80216F7C  28 03 00 00 */	cmplwi r3, 0
/* 80216F80  41 82 00 10 */	beq lbl_80216F90
/* 80216F84  28 03 00 26 */	cmplwi r3, 0x26
/* 80216F88  40 80 00 08 */	bge lbl_80216F90
/* 80216F8C  38 00 00 01 */	li r0, 1
lbl_80216F90:
/* 80216F90  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80216F94  41 82 00 58 */	beq lbl_80216FEC
/* 80216F98  80 7C 03 4C */	lwz r3, 0x34c(r28)
/* 80216F9C  48 03 E6 2D */	bl show__13CPaneMgrAlphaFv
/* 80216FA0  7F 83 E3 78 */	mr r3, r28
/* 80216FA4  38 80 00 15 */	li r4, 0x15
/* 80216FA8  38 A0 00 01 */	li r5, 1
/* 80216FAC  38 C0 00 00 */	li r6, 0
/* 80216FB0  48 00 33 45 */	bl getActionString__13dMeter2Draw_cFUcUcPUc
/* 80216FB4  7C 7E 1B 78 */	mr r30, r3
/* 80216FB8  3B E0 00 00 */	li r31, 0
/* 80216FBC  3B A0 00 00 */	li r29, 0
lbl_80216FC0:
/* 80216FC0  38 1D 00 C0 */	addi r0, r29, 0xc0
/* 80216FC4  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80216FC8  80 63 00 04 */	lwz r3, 4(r3)
/* 80216FCC  48 0E 96 8D */	bl getStringPtr__10J2DTextBoxCFv
/* 80216FD0  7F C4 F3 78 */	mr r4, r30
/* 80216FD4  48 15 1B 59 */	bl strcpy
/* 80216FD8  3B FF 00 01 */	addi r31, r31, 1
/* 80216FDC  2C 1F 00 05 */	cmpwi r31, 5
/* 80216FE0  3B BD 00 04 */	addi r29, r29, 4
/* 80216FE4  41 80 FF DC */	blt lbl_80216FC0
/* 80216FE8  48 00 00 34 */	b lbl_8021701C
lbl_80216FEC:
/* 80216FEC  3B C0 00 00 */	li r30, 0
/* 80216FF0  3B A0 00 00 */	li r29, 0
lbl_80216FF4:
/* 80216FF4  38 1D 00 C0 */	addi r0, r29, 0xc0
/* 80216FF8  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80216FFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80217000  48 0E 96 59 */	bl getStringPtr__10J2DTextBoxCFv
/* 80217004  7F E4 FB 78 */	mr r4, r31
/* 80217008  48 15 1B 25 */	bl strcpy
/* 8021700C  3B DE 00 01 */	addi r30, r30, 1
/* 80217010  2C 1E 00 05 */	cmpwi r30, 5
/* 80217014  3B BD 00 04 */	addi r29, r29, 4
/* 80217018  41 80 FF DC */	blt lbl_80216FF4
lbl_8021701C:
/* 8021701C  80 7C 03 00 */	lwz r3, 0x300(r28)
/* 80217020  80 63 00 04 */	lwz r3, 4(r3)
/* 80217024  EC 1F 07 72 */	fmuls f0, f31, f29
/* 80217028  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8021702C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80217030  81 83 00 00 */	lwz r12, 0(r3)
/* 80217034  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80217038  7D 89 03 A6 */	mtctr r12
/* 8021703C  4E 80 04 21 */	bctrl 
/* 80217040  80 7C 03 00 */	lwz r3, 0x300(r28)
/* 80217044  FC 20 C8 90 */	fmr f1, f25
/* 80217048  FC 40 D0 90 */	fmr f2, f26
/* 8021704C  48 03 D5 65 */	bl paneTrans__8CPaneMgrFff
/* 80217050  80 7C 03 4C */	lwz r3, 0x34c(r28)
/* 80217054  80 63 00 04 */	lwz r3, 4(r3)
/* 80217058  EC 1E 07 72 */	fmuls f0, f30, f29
/* 8021705C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80217060  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80217064  81 83 00 00 */	lwz r12, 0(r3)
/* 80217068  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8021706C  7D 89 03 A6 */	mtctr r12
/* 80217070  4E 80 04 21 */	bctrl 
/* 80217074  80 7C 03 4C */	lwz r3, 0x34c(r28)
/* 80217078  3C 80 80 43 */	lis r4, g_drawHIO@ha
/* 8021707C  38 84 EB C8 */	addi r4, r4, g_drawHIO@l
/* 80217080  C0 04 02 B8 */	lfs f0, 0x2b8(r4)
/* 80217084  EC 20 D8 2A */	fadds f1, f0, f27
/* 80217088  C0 04 02 BC */	lfs f0, 0x2bc(r4)
/* 8021708C  EC 40 E0 2A */	fadds f2, f0, f28
/* 80217090  48 03 D5 21 */	bl paneTrans__8CPaneMgrFff
/* 80217094  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80217098  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8021709C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 802170A0  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 802170A4  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 802170A8  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 802170AC  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 802170B0  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 802170B4  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 802170B8  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 802170BC  E3 41 00 38 */	psq_l f26, 56(r1), 0, 0 /* qr0 */
/* 802170C0  CB 41 00 30 */	lfd f26, 0x30(r1)
/* 802170C4  E3 21 00 28 */	psq_l f25, 40(r1), 0, 0 /* qr0 */
/* 802170C8  CB 21 00 20 */	lfd f25, 0x20(r1)
/* 802170CC  39 61 00 20 */	addi r11, r1, 0x20
/* 802170D0  48 14 B1 51 */	bl _restgpr_27
/* 802170D4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 802170D8  7C 08 03 A6 */	mtlr r0
/* 802170DC  38 21 00 90 */	addi r1, r1, 0x90
/* 802170E0  4E 80 00 20 */	blr 

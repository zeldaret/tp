lbl_802F4B4C:
/* 802F4B4C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802F4B50  7C 08 02 A6 */	mflr r0
/* 802F4B54  90 01 01 24 */	stw r0, 0x124(r1)
/* 802F4B58  DB E1 01 10 */	stfd f31, 0x110(r1)
/* 802F4B5C  F3 E1 01 18 */	psq_st f31, 280(r1), 0, 0 /* qr0 */
/* 802F4B60  DB C1 01 00 */	stfd f30, 0x100(r1)
/* 802F4B64  F3 C1 01 08 */	psq_st f30, 264(r1), 0, 0 /* qr0 */
/* 802F4B68  DB A1 00 F0 */	stfd f29, 0xf0(r1)
/* 802F4B6C  F3 A1 00 F8 */	psq_st f29, 248(r1), 0, 0 /* qr0 */
/* 802F4B70  DB 81 00 E0 */	stfd f28, 0xe0(r1)
/* 802F4B74  F3 81 00 E8 */	psq_st f28, 232(r1), 0, 0 /* qr0 */
/* 802F4B78  DB 61 00 D0 */	stfd f27, 0xd0(r1)
/* 802F4B7C  F3 61 00 D8 */	psq_st f27, 216(r1), 0, 0 /* qr0 */
/* 802F4B80  DB 41 00 C0 */	stfd f26, 0xc0(r1)
/* 802F4B84  F3 41 00 C8 */	psq_st f26, 200(r1), 0, 0 /* qr0 */
/* 802F4B88  DB 21 00 B0 */	stfd f25, 0xb0(r1)
/* 802F4B8C  F3 21 00 B8 */	psq_st f25, 184(r1), 0, 0 /* qr0 */
/* 802F4B90  DB 01 00 A0 */	stfd f24, 0xa0(r1)
/* 802F4B94  F3 01 00 A8 */	psq_st f24, 168(r1), 0, 0 /* qr0 */
/* 802F4B98  DA E1 00 90 */	stfd f23, 0x90(r1)
/* 802F4B9C  F2 E1 00 98 */	psq_st f23, 152(r1), 0, 0 /* qr0 */
/* 802F4BA0  DA C1 00 80 */	stfd f22, 0x80(r1)
/* 802F4BA4  F2 C1 00 88 */	psq_st f22, 136(r1), 0, 0 /* qr0 */
/* 802F4BA8  39 61 00 80 */	addi r11, r1, 0x80
/* 802F4BAC  48 06 D6 0D */	bl _savegpr_20
/* 802F4BB0  7C 74 1B 78 */	mr r20, r3
/* 802F4BB4  90 81 00 08 */	stw r4, 8(r1)
/* 802F4BB8  7C B5 2B 78 */	mr r21, r5
/* 802F4BBC  7C D6 33 78 */	mr r22, r6
/* 802F4BC0  7C F7 3B 78 */	mr r23, r7
/* 802F4BC4  7D 18 43 78 */	mr r24, r8
/* 802F4BC8  7D 39 4B 78 */	mr r25, r9
/* 802F4BCC  7D 5A 53 78 */	mr r26, r10
/* 802F4BD0  80 03 00 04 */	lwz r0, 4(r3)
/* 802F4BD4  28 00 00 00 */	cmplwi r0, 0
/* 802F4BD8  40 82 00 0C */	bne lbl_802F4BE4
/* 802F4BDC  C0 22 C7 C8 */	lfs f1, lit_418(r2)
/* 802F4BE0  48 00 06 A0 */	b lbl_802F5280
lbl_802F4BE4:
/* 802F4BE4  7C 9F 23 78 */	mr r31, r4
/* 802F4BE8  3B C0 00 00 */	li r30, 0
/* 802F4BEC  C3 F4 00 2C */	lfs f31, 0x2c(r20)
/* 802F4BF0  C3 D4 00 30 */	lfs f30, 0x30(r20)
/* 802F4BF4  FF A0 F8 90 */	fmr f29, f31
/* 802F4BF8  FF 80 F0 90 */	fmr f28, f30
/* 802F4BFC  38 04 00 01 */	addi r0, r4, 1
/* 802F4C00  90 01 00 08 */	stw r0, 8(r1)
/* 802F4C04  8B A4 00 00 */	lbz r29, 0(r4)
/* 802F4C08  C0 14 00 2C */	lfs f0, 0x2c(r20)
/* 802F4C0C  FF 60 00 90 */	fmr f27, f0
/* 802F4C10  FF 40 00 90 */	fmr f26, f0
/* 802F4C14  C0 14 00 30 */	lfs f0, 0x30(r20)
/* 802F4C18  FF 20 00 90 */	fmr f25, f0
/* 802F4C1C  FF 00 00 90 */	fmr f24, f0
/* 802F4C20  80 14 00 08 */	lwz r0, 8(r20)
/* 802F4C24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802F4C28  80 14 00 0C */	lwz r0, 0xc(r20)
/* 802F4C2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802F4C30  88 01 00 1F */	lbz r0, 0x1f(r1)
/* 802F4C34  57 24 06 3E */	clrlwi r4, r25, 0x18
/* 802F4C38  7C 00 21 D6 */	mullw r0, r0, r4
/* 802F4C3C  38 60 00 FF */	li r3, 0xff
/* 802F4C40  7C 00 1B D6 */	divw r0, r0, r3
/* 802F4C44  98 01 00 1F */	stb r0, 0x1f(r1)
/* 802F4C48  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 802F4C4C  7C 00 21 D6 */	mullw r0, r0, r4
/* 802F4C50  7C 00 1B D6 */	divw r0, r0, r3
/* 802F4C54  98 01 00 1B */	stb r0, 0x1b(r1)
/* 802F4C58  88 14 00 22 */	lbz r0, 0x22(r20)
/* 802F4C5C  28 00 00 00 */	cmplwi r0, 0
/* 802F4C60  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F4C64  41 82 00 08 */	beq lbl_802F4C6C
/* 802F4C68  38 61 00 18 */	addi r3, r1, 0x18
lbl_802F4C6C:
/* 802F4C6C  80 03 00 00 */	lwz r0, 0(r3)
/* 802F4C70  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F4C74  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802F4C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F4C7C  80 74 00 04 */	lwz r3, 4(r20)
/* 802F4C80  38 81 00 14 */	addi r4, r1, 0x14
/* 802F4C84  38 A1 00 10 */	addi r5, r1, 0x10
/* 802F4C88  4B FE A1 3D */	bl setGradColor__7JUTFontFQ28JUtility6TColorQ28JUtility6TColor
lbl_802F4C8C:
/* 802F4C8C  3B 80 00 00 */	li r28, 0
/* 802F4C90  80 74 00 04 */	lwz r3, 4(r20)
/* 802F4C94  7F A4 EB 78 */	mr r4, r29
/* 802F4C98  81 83 00 00 */	lwz r12, 0(r3)
/* 802F4C9C  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 802F4CA0  7D 89 03 A6 */	mtctr r12
/* 802F4CA4  4E 80 04 21 */	bctrl 
/* 802F4CA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802F4CAC  41 82 00 20 */	beq lbl_802F4CCC
/* 802F4CB0  57 A4 40 2E */	slwi r4, r29, 8
/* 802F4CB4  80 61 00 08 */	lwz r3, 8(r1)
/* 802F4CB8  38 03 00 01 */	addi r0, r3, 1
/* 802F4CBC  90 01 00 08 */	stw r0, 8(r1)
/* 802F4CC0  88 03 00 00 */	lbz r0, 0(r3)
/* 802F4CC4  7C 9D 03 78 */	or r29, r4, r0
/* 802F4CC8  3B 80 00 01 */	li r28, 1
lbl_802F4CCC:
/* 802F4CCC  2C 1D 00 00 */	cmpwi r29, 0
/* 802F4CD0  41 82 00 14 */	beq lbl_802F4CE4
/* 802F4CD4  80 01 00 08 */	lwz r0, 8(r1)
/* 802F4CD8  7C 7F 00 50 */	subf r3, r31, r0
/* 802F4CDC  7C 03 A8 40 */	cmplw r3, r21
/* 802F4CE0  40 81 00 38 */	ble lbl_802F4D18
lbl_802F4CE4:
/* 802F4CE4  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802F4CE8  40 82 00 28 */	bne lbl_802F4D10
/* 802F4CEC  28 17 00 00 */	cmplwi r23, 0
/* 802F4CF0  41 82 00 20 */	beq lbl_802F4D10
/* 802F4CF4  C0 02 C7 D8 */	lfs f0, lit_786(r2)
/* 802F4CF8  EC 00 E8 2A */	fadds f0, f0, f29
/* 802F4CFC  FC 00 00 1E */	fctiwz f0, f0
/* 802F4D00  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802F4D04  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802F4D08  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 802F4D0C  7C 77 03 2E */	sthx r3, r23, r0
lbl_802F4D10:
/* 802F4D10  3B DE 00 01 */	addi r30, r30, 1
/* 802F4D14  48 00 04 FC */	b lbl_802F5210
lbl_802F4D18:
/* 802F4D18  3B 60 00 01 */	li r27, 1
/* 802F4D1C  C2 F4 00 2C */	lfs f23, 0x2c(r20)
/* 802F4D20  2C 1D 00 20 */	cmpwi r29, 0x20
/* 802F4D24  40 80 00 DC */	bge lbl_802F4E00
/* 802F4D28  2C 1D 00 1B */	cmpwi r29, 0x1b
/* 802F4D2C  40 82 00 78 */	bne lbl_802F4DA4
/* 802F4D30  7E 83 A3 78 */	mr r3, r20
/* 802F4D34  38 81 00 08 */	addi r4, r1, 8
/* 802F4D38  7F 25 CB 78 */	mr r5, r25
/* 802F4D3C  48 00 06 D5 */	bl doEscapeCode__8J2DPrintFPPCUcUc
/* 802F4D40  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802F4D44  28 00 48 4D */	cmplwi r0, 0x484d
/* 802F4D48  40 82 00 4C */	bne lbl_802F4D94
/* 802F4D4C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802F4D50  40 82 00 28 */	bne lbl_802F4D78
/* 802F4D54  28 17 00 00 */	cmplwi r23, 0
/* 802F4D58  41 82 00 20 */	beq lbl_802F4D78
/* 802F4D5C  C0 02 C7 D8 */	lfs f0, lit_786(r2)
/* 802F4D60  EC 00 E8 2A */	fadds f0, f0, f29
/* 802F4D64  FC 00 00 1E */	fctiwz f0, f0
/* 802F4D68  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802F4D6C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 802F4D70  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 802F4D74  7C 97 03 2E */	sthx r4, r23, r0
lbl_802F4D78:
/* 802F4D78  D3 F4 00 2C */	stfs f31, 0x2c(r20)
/* 802F4D7C  D3 D4 00 30 */	stfs f30, 0x30(r20)
/* 802F4D80  3B DE 00 01 */	addi r30, r30, 1
/* 802F4D84  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802F4D88  28 00 01 00 */	cmplwi r0, 0x100
/* 802F4D8C  41 82 04 84 */	beq lbl_802F5210
/* 802F4D90  C3 A2 C7 C8 */	lfs f29, lit_418(r2)
lbl_802F4D94:
/* 802F4D94  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 802F4D98  41 82 03 68 */	beq lbl_802F5100
/* 802F4D9C  3B 60 00 00 */	li r27, 0
/* 802F4DA0  48 00 03 60 */	b lbl_802F5100
lbl_802F4DA4:
/* 802F4DA4  7E 83 A3 78 */	mr r3, r20
/* 802F4DA8  7F A4 EB 78 */	mr r4, r29
/* 802F4DAC  48 00 05 3D */	bl doCtrlCode__8J2DPrintFi
/* 802F4DB0  3B 60 00 00 */	li r27, 0
/* 802F4DB4  2C 1D 00 0A */	cmpwi r29, 0xa
/* 802F4DB8  40 82 03 48 */	bne lbl_802F5100
/* 802F4DBC  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802F4DC0  40 82 00 28 */	bne lbl_802F4DE8
/* 802F4DC4  28 17 00 00 */	cmplwi r23, 0
/* 802F4DC8  41 82 00 20 */	beq lbl_802F4DE8
/* 802F4DCC  C0 02 C7 D8 */	lfs f0, lit_786(r2)
/* 802F4DD0  EC 00 E8 2A */	fadds f0, f0, f29
/* 802F4DD4  FC 00 00 1E */	fctiwz f0, f0
/* 802F4DD8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802F4DDC  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802F4DE0  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 802F4DE4  7C 77 03 2E */	sthx r3, r23, r0
lbl_802F4DE8:
/* 802F4DE8  3B DE 00 01 */	addi r30, r30, 1
/* 802F4DEC  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802F4DF0  28 00 01 00 */	cmplwi r0, 0x100
/* 802F4DF4  41 82 04 1C */	beq lbl_802F5210
/* 802F4DF8  C3 A2 C7 C8 */	lfs f29, lit_418(r2)
/* 802F4DFC  48 00 03 04 */	b lbl_802F5100
lbl_802F4E00:
/* 802F4E00  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 802F4E04  41 82 00 40 */	beq lbl_802F4E44
/* 802F4E08  7C 03 A8 40 */	cmplw r3, r21
/* 802F4E0C  40 81 00 38 */	ble lbl_802F4E44
/* 802F4E10  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802F4E14  40 82 00 28 */	bne lbl_802F4E3C
/* 802F4E18  28 17 00 00 */	cmplwi r23, 0
/* 802F4E1C  41 82 00 20 */	beq lbl_802F4E3C
/* 802F4E20  C0 02 C7 D8 */	lfs f0, lit_786(r2)
/* 802F4E24  EC 00 E8 2A */	fadds f0, f0, f29
/* 802F4E28  FC 00 00 1E */	fctiwz f0, f0
/* 802F4E2C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802F4E30  80 61 00 24 */	lwz r3, 0x24(r1)
/* 802F4E34  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 802F4E38  7C 77 03 2E */	sthx r3, r23, r0
lbl_802F4E3C:
/* 802F4E3C  3B DE 00 01 */	addi r30, r30, 1
/* 802F4E40  48 00 03 D0 */	b lbl_802F5210
lbl_802F4E44:
/* 802F4E44  80 74 00 04 */	lwz r3, 4(r20)
/* 802F4E48  88 03 00 05 */	lbz r0, 5(r3)
/* 802F4E4C  28 00 00 00 */	cmplwi r0, 0
/* 802F4E50  41 82 00 2C */	beq lbl_802F4E7C
/* 802F4E54  80 03 00 08 */	lwz r0, 8(r3)
/* 802F4E58  C8 22 C7 D0 */	lfd f1, lit_650(r2)
/* 802F4E5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F4E60  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F4E64  3C 00 43 30 */	lis r0, 0x4330
/* 802F4E68  90 01 00 20 */	stw r0, 0x20(r1)
/* 802F4E6C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802F4E70  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F4E74  D0 14 00 34 */	stfs f0, 0x34(r20)
/* 802F4E78  48 00 00 3C */	b lbl_802F4EB4
lbl_802F4E7C:
/* 802F4E7C  7F A4 EB 78 */	mr r4, r29
/* 802F4E80  38 A1 00 0C */	addi r5, r1, 0xc
/* 802F4E84  81 83 00 00 */	lwz r12, 0(r3)
/* 802F4E88  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F4E8C  7D 89 03 A6 */	mtctr r12
/* 802F4E90  4E 80 04 21 */	bctrl 
/* 802F4E94  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802F4E98  C8 22 C7 E0 */	lfd f1, lit_791(r2)
/* 802F4E9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F4EA0  3C 00 43 30 */	lis r0, 0x4330
/* 802F4EA4  90 01 00 20 */	stw r0, 0x20(r1)
/* 802F4EA8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802F4EAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F4EB0  D0 14 00 34 */	stfs f0, 0x34(r20)
lbl_802F4EB4:
/* 802F4EB4  80 74 00 04 */	lwz r3, 4(r20)
/* 802F4EB8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F4EBC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802F4EC0  7D 89 03 A6 */	mtctr r12
/* 802F4EC4  4E 80 04 21 */	bctrl 
/* 802F4EC8  C8 62 C7 D0 */	lfd f3, lit_650(r2)
/* 802F4ECC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802F4ED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F4ED4  3C 60 43 30 */	lis r3, 0x4330
/* 802F4ED8  90 61 00 20 */	stw r3, 0x20(r1)
/* 802F4EDC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802F4EE0  EC 20 18 28 */	fsubs f1, f0, f3
/* 802F4EE4  C0 14 00 18 */	lfs f0, 0x18(r20)
/* 802F4EE8  EC 20 08 24 */	fdivs f1, f0, f1
/* 802F4EEC  C0 14 00 34 */	lfs f0, 0x34(r20)
/* 802F4EF0  EC 00 00 72 */	fmuls f0, f0, f1
/* 802F4EF4  D0 14 00 34 */	stfs f0, 0x34(r20)
/* 802F4EF8  C0 34 00 2C */	lfs f1, 0x2c(r20)
/* 802F4EFC  C0 14 00 34 */	lfs f0, 0x34(r20)
/* 802F4F00  EC 41 00 2A */	fadds f2, f1, f0
/* 802F4F04  C0 14 00 24 */	lfs f0, 0x24(r20)
/* 802F4F08  EC 02 00 28 */	fsubs f0, f2, f0
/* 802F4F0C  C0 42 C7 E8 */	lfs f2, lit_913(r2)
/* 802F4F10  EC 02 00 32 */	fmuls f0, f2, f0
/* 802F4F14  FC 00 00 1E */	fctiwz f0, f0
/* 802F4F18  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 802F4F1C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802F4F20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F4F24  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F4F28  90 61 00 30 */	stw r3, 0x30(r1)
/* 802F4F2C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802F4F30  EC 00 18 28 */	fsubs f0, f0, f3
/* 802F4F34  EC 40 10 24 */	fdivs f2, f0, f2
/* 802F4F38  6E C0 80 00 */	xoris r0, r22, 0x8000
/* 802F4F3C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F4F40  90 61 00 38 */	stw r3, 0x38(r1)
/* 802F4F44  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802F4F48  EC 00 18 28 */	fsubs f0, f0, f3
/* 802F4F4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802F4F50  40 81 00 88 */	ble lbl_802F4FD8
/* 802F4F54  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 802F4F58  40 81 00 80 */	ble lbl_802F4FD8
/* 802F4F5C  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802F4F60  30 03 FF FF */	addic r0, r3, -1
/* 802F4F64  7C 60 19 10 */	subfe r3, r0, r3
/* 802F4F68  38 63 00 01 */	addi r3, r3, 1
/* 802F4F6C  80 01 00 08 */	lwz r0, 8(r1)
/* 802F4F70  7C 03 00 50 */	subf r0, r3, r0
/* 802F4F74  90 01 00 08 */	stw r0, 8(r1)
/* 802F4F78  C0 34 00 30 */	lfs f1, 0x30(r20)
/* 802F4F7C  C0 14 00 14 */	lfs f0, 0x14(r20)
/* 802F4F80  EC 01 00 2A */	fadds f0, f1, f0
/* 802F4F84  D0 14 00 30 */	stfs f0, 0x30(r20)
/* 802F4F88  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802F4F8C  40 82 00 28 */	bne lbl_802F4FB4
/* 802F4F90  28 17 00 00 */	cmplwi r23, 0
/* 802F4F94  41 82 00 20 */	beq lbl_802F4FB4
/* 802F4F98  C0 02 C7 D8 */	lfs f0, lit_786(r2)
/* 802F4F9C  EC 00 E8 2A */	fadds f0, f0, f29
/* 802F4FA0  FC 00 00 1E */	fctiwz f0, f0
/* 802F4FA4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 802F4FA8  80 61 00 3C */	lwz r3, 0x3c(r1)
/* 802F4FAC  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 802F4FB0  7C 77 03 2E */	sthx r3, r23, r0
lbl_802F4FB4:
/* 802F4FB4  3B DE 00 01 */	addi r30, r30, 1
/* 802F4FB8  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 802F4FBC  28 00 01 00 */	cmplwi r0, 0x100
/* 802F4FC0  41 82 02 50 */	beq lbl_802F5210
/* 802F4FC4  C0 14 00 24 */	lfs f0, 0x24(r20)
/* 802F4FC8  D0 14 00 2C */	stfs f0, 0x2c(r20)
/* 802F4FCC  C3 A2 C7 C8 */	lfs f29, lit_418(r2)
/* 802F4FD0  3B 60 00 00 */	li r27, 0
/* 802F4FD4  48 00 01 2C */	b lbl_802F5100
lbl_802F4FD8:
/* 802F4FD8  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802F4FDC  41 82 01 14 */	beq lbl_802F50F0
/* 802F4FE0  28 17 00 00 */	cmplwi r23, 0
/* 802F4FE4  41 82 00 9C */	beq lbl_802F5080
/* 802F4FE8  80 74 00 04 */	lwz r3, 4(r20)
/* 802F4FEC  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 802F4FF0  7C 17 02 2E */	lhzx r0, r23, r0
/* 802F4FF4  7C 00 07 34 */	extsh r0, r0
/* 802F4FF8  C8 82 C7 D0 */	lfd f4, lit_650(r2)
/* 802F4FFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F5000  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F5004  3C 80 43 30 */	lis r4, 0x4330
/* 802F5008  90 81 00 38 */	stw r4, 0x38(r1)
/* 802F500C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802F5010  EC 00 20 28 */	fsubs f0, f0, f4
/* 802F5014  EC 21 00 2A */	fadds f1, f1, f0
/* 802F5018  C0 54 00 30 */	lfs f2, 0x30(r20)
/* 802F501C  C0 14 00 18 */	lfs f0, 0x18(r20)
/* 802F5020  FC 00 00 1E */	fctiwz f0, f0
/* 802F5024  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 802F5028  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F502C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F5030  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802F5034  90 81 00 28 */	stw r4, 0x28(r1)
/* 802F5038  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802F503C  EC 60 20 28 */	fsubs f3, f0, f4
/* 802F5040  C0 14 00 1C */	lfs f0, 0x1c(r20)
/* 802F5044  FC 00 00 1E */	fctiwz f0, f0
/* 802F5048  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 802F504C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F5050  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F5054  90 01 00 44 */	stw r0, 0x44(r1)
/* 802F5058  90 81 00 40 */	stw r4, 0x40(r1)
/* 802F505C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 802F5060  EC 80 20 28 */	fsubs f4, f0, f4
/* 802F5064  7F A4 EB 78 */	mr r4, r29
/* 802F5068  38 A0 00 01 */	li r5, 1
/* 802F506C  81 83 00 00 */	lwz r12, 0(r3)
/* 802F5070  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F5074  7D 89 03 A6 */	mtctr r12
/* 802F5078  4E 80 04 21 */	bctrl 
/* 802F507C  48 00 00 74 */	b lbl_802F50F0
lbl_802F5080:
/* 802F5080  80 74 00 04 */	lwz r3, 4(r20)
/* 802F5084  C0 54 00 30 */	lfs f2, 0x30(r20)
/* 802F5088  C0 14 00 18 */	lfs f0, 0x18(r20)
/* 802F508C  FC 00 00 1E */	fctiwz f0, f0
/* 802F5090  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 802F5094  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802F5098  C8 82 C7 D0 */	lfd f4, lit_650(r2)
/* 802F509C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F50A0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F50A4  3C 80 43 30 */	lis r4, 0x4330
/* 802F50A8  90 81 00 38 */	stw r4, 0x38(r1)
/* 802F50AC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802F50B0  EC 60 20 28 */	fsubs f3, f0, f4
/* 802F50B4  C0 14 00 1C */	lfs f0, 0x1c(r20)
/* 802F50B8  FC 00 00 1E */	fctiwz f0, f0
/* 802F50BC  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 802F50C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F50C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F50C8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802F50CC  90 81 00 28 */	stw r4, 0x28(r1)
/* 802F50D0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802F50D4  EC 80 20 28 */	fsubs f4, f0, f4
/* 802F50D8  7F A4 EB 78 */	mr r4, r29
/* 802F50DC  38 A0 00 01 */	li r5, 1
/* 802F50E0  81 83 00 00 */	lwz r12, 0(r3)
/* 802F50E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F50E8  7D 89 03 A6 */	mtctr r12
/* 802F50EC  4E 80 04 21 */	bctrl 
lbl_802F50F0:
/* 802F50F0  C0 34 00 2C */	lfs f1, 0x2c(r20)
/* 802F50F4  C0 14 00 34 */	lfs f0, 0x34(r20)
/* 802F50F8  EC 01 00 2A */	fadds f0, f1, f0
/* 802F50FC  D0 14 00 2C */	stfs f0, 0x2c(r20)
lbl_802F5100:
/* 802F5100  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 802F5104  41 82 00 F8 */	beq lbl_802F51FC
/* 802F5108  C0 14 00 2C */	lfs f0, 0x2c(r20)
/* 802F510C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 802F5110  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 802F5114  40 81 00 08 */	ble lbl_802F511C
/* 802F5118  FF A0 00 90 */	fmr f29, f0
lbl_802F511C:
/* 802F511C  C0 34 00 2C */	lfs f1, 0x2c(r20)
/* 802F5120  C0 14 00 10 */	lfs f0, 0x10(r20)
/* 802F5124  EC 01 00 2A */	fadds f0, f1, f0
/* 802F5128  D0 14 00 2C */	stfs f0, 0x2c(r20)
/* 802F512C  C0 34 00 34 */	lfs f1, 0x34(r20)
/* 802F5130  C0 14 00 10 */	lfs f0, 0x10(r20)
/* 802F5134  EC 01 00 2A */	fadds f0, f1, f0
/* 802F5138  D0 14 00 34 */	stfs f0, 0x34(r20)
/* 802F513C  80 74 00 04 */	lwz r3, 4(r20)
/* 802F5140  81 83 00 00 */	lwz r12, 0(r3)
/* 802F5144  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802F5148  7D 89 03 A6 */	mtctr r12
/* 802F514C  4E 80 04 21 */	bctrl 
/* 802F5150  C8 22 C7 D0 */	lfd f1, lit_650(r2)
/* 802F5154  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802F5158  90 01 00 44 */	stw r0, 0x44(r1)
/* 802F515C  3C 00 43 30 */	lis r0, 0x4330
/* 802F5160  90 01 00 40 */	stw r0, 0x40(r1)
/* 802F5164  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 802F5168  EE C0 08 28 */	fsubs f22, f0, f1
/* 802F516C  80 74 00 04 */	lwz r3, 4(r20)
/* 802F5170  81 83 00 00 */	lwz r12, 0(r3)
/* 802F5174  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802F5178  7D 89 03 A6 */	mtctr r12
/* 802F517C  4E 80 04 21 */	bctrl 
/* 802F5180  C8 22 C7 D0 */	lfd f1, lit_650(r2)
/* 802F5184  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802F5188  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802F518C  3C 00 43 30 */	lis r0, 0x4330
/* 802F5190  90 01 00 38 */	stw r0, 0x38(r1)
/* 802F5194  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802F5198  EC 20 08 28 */	fsubs f1, f0, f1
/* 802F519C  C0 14 00 1C */	lfs f0, 0x1c(r20)
/* 802F51A0  EC 00 08 24 */	fdivs f0, f0, f1
/* 802F51A4  EC 00 05 B2 */	fmuls f0, f0, f22
/* 802F51A8  C0 34 00 30 */	lfs f1, 0x30(r20)
/* 802F51AC  EC 01 00 2A */	fadds f0, f1, f0
/* 802F51B0  FC 1C 00 40 */	fcmpo cr0, f28, f0
/* 802F51B4  40 80 00 08 */	bge lbl_802F51BC
/* 802F51B8  FF 80 00 90 */	fmr f28, f0
lbl_802F51BC:
/* 802F51BC  C0 14 00 2C */	lfs f0, 0x2c(r20)
/* 802F51C0  FC 00 D0 40 */	fcmpo cr0, f0, f26
/* 802F51C4  40 81 00 08 */	ble lbl_802F51CC
/* 802F51C8  FF 40 00 90 */	fmr f26, f0
lbl_802F51CC:
/* 802F51CC  FC 00 D8 40 */	fcmpo cr0, f0, f27
/* 802F51D0  40 80 00 08 */	bge lbl_802F51D8
/* 802F51D4  FF 60 00 90 */	fmr f27, f0
lbl_802F51D8:
/* 802F51D8  FC 17 D8 40 */	fcmpo cr0, f23, f27
/* 802F51DC  40 80 00 08 */	bge lbl_802F51E4
/* 802F51E0  FF 60 B8 90 */	fmr f27, f23
lbl_802F51E4:
/* 802F51E4  FC 01 C0 40 */	fcmpo cr0, f1, f24
/* 802F51E8  40 81 00 08 */	ble lbl_802F51F0
/* 802F51EC  FF 00 08 90 */	fmr f24, f1
lbl_802F51F0:
/* 802F51F0  FC 01 C8 40 */	fcmpo cr0, f1, f25
/* 802F51F4  40 80 00 08 */	bge lbl_802F51FC
/* 802F51F8  FF 20 08 90 */	fmr f25, f1
lbl_802F51FC:
/* 802F51FC  80 61 00 08 */	lwz r3, 8(r1)
/* 802F5200  38 03 00 01 */	addi r0, r3, 1
/* 802F5204  90 01 00 08 */	stw r0, 8(r1)
/* 802F5208  8B A3 00 00 */	lbz r29, 0(r3)
/* 802F520C  4B FF FA 80 */	b lbl_802F4C8C
lbl_802F5210:
/* 802F5210  28 17 00 00 */	cmplwi r23, 0
/* 802F5214  41 82 00 14 */	beq lbl_802F5228
/* 802F5218  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802F521C  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802F5220  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 802F5224  7C 77 03 2E */	sthx r3, r23, r0
lbl_802F5228:
/* 802F5228  EC 1A D8 28 */	fsubs f0, f26, f27
/* 802F522C  D0 18 00 00 */	stfs f0, 0(r24)
/* 802F5230  80 74 00 04 */	lwz r3, 4(r20)
/* 802F5234  81 83 00 00 */	lwz r12, 0(r3)
/* 802F5238  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802F523C  7D 89 03 A6 */	mtctr r12
/* 802F5240  4E 80 04 21 */	bctrl 
/* 802F5244  C8 22 C7 D0 */	lfd f1, lit_650(r2)
/* 802F5248  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802F524C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802F5250  3C 00 43 30 */	lis r0, 0x4330
/* 802F5254  90 01 00 40 */	stw r0, 0x40(r1)
/* 802F5258  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 802F525C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802F5260  EC 18 C8 28 */	fsubs f0, f24, f25
/* 802F5264  EC 00 08 2A */	fadds f0, f0, f1
/* 802F5268  D0 18 00 04 */	stfs f0, 4(r24)
/* 802F526C  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802F5270  40 82 00 0C */	bne lbl_802F527C
/* 802F5274  D3 F4 00 2C */	stfs f31, 0x2c(r20)
/* 802F5278  D3 D4 00 30 */	stfs f30, 0x30(r20)
lbl_802F527C:
/* 802F527C  EC 3C F0 28 */	fsubs f1, f28, f30
lbl_802F5280:
/* 802F5280  E3 E1 01 18 */	psq_l f31, 280(r1), 0, 0 /* qr0 */
/* 802F5284  CB E1 01 10 */	lfd f31, 0x110(r1)
/* 802F5288  E3 C1 01 08 */	psq_l f30, 264(r1), 0, 0 /* qr0 */
/* 802F528C  CB C1 01 00 */	lfd f30, 0x100(r1)
/* 802F5290  E3 A1 00 F8 */	psq_l f29, 248(r1), 0, 0 /* qr0 */
/* 802F5294  CB A1 00 F0 */	lfd f29, 0xf0(r1)
/* 802F5298  E3 81 00 E8 */	psq_l f28, 232(r1), 0, 0 /* qr0 */
/* 802F529C  CB 81 00 E0 */	lfd f28, 0xe0(r1)
/* 802F52A0  E3 61 00 D8 */	psq_l f27, 216(r1), 0, 0 /* qr0 */
/* 802F52A4  CB 61 00 D0 */	lfd f27, 0xd0(r1)
/* 802F52A8  E3 41 00 C8 */	psq_l f26, 200(r1), 0, 0 /* qr0 */
/* 802F52AC  CB 41 00 C0 */	lfd f26, 0xc0(r1)
/* 802F52B0  E3 21 00 B8 */	psq_l f25, 184(r1), 0, 0 /* qr0 */
/* 802F52B4  CB 21 00 B0 */	lfd f25, 0xb0(r1)
/* 802F52B8  E3 01 00 A8 */	psq_l f24, 168(r1), 0, 0 /* qr0 */
/* 802F52BC  CB 01 00 A0 */	lfd f24, 0xa0(r1)
/* 802F52C0  E2 E1 00 98 */	psq_l f23, 152(r1), 0, 0 /* qr0 */
/* 802F52C4  CA E1 00 90 */	lfd f23, 0x90(r1)
/* 802F52C8  E2 C1 00 88 */	psq_l f22, 136(r1), 0, 0 /* qr0 */
/* 802F52CC  CA C1 00 80 */	lfd f22, 0x80(r1)
/* 802F52D0  39 61 00 80 */	addi r11, r1, 0x80
/* 802F52D4  48 06 CF 31 */	bl _restgpr_20
/* 802F52D8  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802F52DC  7C 08 03 A6 */	mtlr r0
/* 802F52E0  38 21 01 20 */	addi r1, r1, 0x120
/* 802F52E4  4E 80 00 20 */	blr 

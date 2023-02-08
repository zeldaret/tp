lbl_80147C38:
/* 80147C38  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80147C3C  7C 08 02 A6 */	mflr r0
/* 80147C40  90 01 00 54 */	stw r0, 0x54(r1)
/* 80147C44  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80147C48  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80147C4C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80147C50  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80147C54  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 80147C58  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 80147C5C  39 61 00 20 */	addi r11, r1, 0x20
/* 80147C60  48 21 A5 79 */	bl _savegpr_28
/* 80147C64  7C 7C 1B 78 */	mr r28, r3
/* 80147C68  FF A0 08 90 */	fmr f29, f1
/* 80147C6C  FF C0 18 90 */	fmr f30, f3
/* 80147C70  80 03 01 38 */	lwz r0, 0x138(r3)
/* 80147C74  2C 00 00 00 */	cmpwi r0, 0
/* 80147C78  40 82 00 34 */	bne lbl_80147CAC
/* 80147C7C  38 60 00 00 */	li r3, 0
/* 80147C80  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80147C84  38 00 00 03 */	li r0, 3
/* 80147C88  7C 09 03 A6 */	mtctr r0
lbl_80147C8C:
/* 80147C8C  38 83 00 C0 */	addi r4, r3, 0xc0
/* 80147C90  7C 9C 22 14 */	add r4, r28, r4
/* 80147C94  D0 04 00 00 */	stfs f0, 0(r4)
/* 80147C98  D0 04 00 04 */	stfs f0, 4(r4)
/* 80147C9C  D0 04 00 08 */	stfs f0, 8(r4)
/* 80147CA0  38 63 00 0C */	addi r3, r3, 0xc
/* 80147CA4  42 00 FF E8 */	bdnz lbl_80147C8C
/* 80147CA8  48 00 00 0C */	b lbl_80147CB4
lbl_80147CAC:
/* 80147CAC  FC 20 F0 90 */	fmr f1, f30
/* 80147CB0  4B FF FB A9 */	bl calc__15daNpcT_JntAnm_cFf
lbl_80147CB4:
/* 80147CB4  3B A0 00 00 */	li r29, 0
/* 80147CB8  3B E0 00 00 */	li r31, 0
/* 80147CBC  C3 E2 99 DC */	lfs f31, lit_4140(r2)
lbl_80147CC0:
/* 80147CC0  FC 1D F8 40 */	fcmpo cr0, f29, f31
/* 80147CC4  40 80 00 AC */	bge lbl_80147D70
/* 80147CC8  88 1C 01 57 */	lbz r0, 0x157(r28)
/* 80147CCC  28 00 00 00 */	cmplwi r0, 0
/* 80147CD0  40 82 00 A0 */	bne lbl_80147D70
/* 80147CD4  7F DC FA 14 */	add r30, r28, r31
/* 80147CD8  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 80147CDC  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80147CE0  FC 40 E8 90 */	fmr f2, f29
/* 80147CE4  C0 62 9A 2C */	lfs f3, lit_5410(r2)
/* 80147CE8  48 12 7D 55 */	bl cLib_addCalc2__FPffff
/* 80147CEC  38 7E 00 E8 */	addi r3, r30, 0xe8
/* 80147CF0  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80147CF4  FC 40 E8 90 */	fmr f2, f29
/* 80147CF8  C0 62 9A 2C */	lfs f3, lit_5410(r2)
/* 80147CFC  48 12 7D 41 */	bl cLib_addCalc2__FPffff
/* 80147D00  38 7E 00 EC */	addi r3, r30, 0xec
/* 80147D04  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 80147D08  FC 40 E8 90 */	fmr f2, f29
/* 80147D0C  C0 62 9A 2C */	lfs f3, lit_5410(r2)
/* 80147D10  48 12 7D 2D */	bl cLib_addCalc2__FPffff
/* 80147D14  C0 22 99 D8 */	lfs f1, lit_4116(r2)
/* 80147D18  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80147D1C  40 80 00 24 */	bge lbl_80147D40
/* 80147D20  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 80147D24  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 80147D28  40 80 00 18 */	bge lbl_80147D40
/* 80147D2C  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80147D30  EC 02 00 28 */	fsubs f0, f2, f0
/* 80147D34  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80147D38  40 80 00 08 */	bge lbl_80147D40
/* 80147D3C  D0 5E 00 E8 */	stfs f2, 0xe8(r30)
lbl_80147D40:
/* 80147D40  C0 22 99 D8 */	lfs f1, lit_4116(r2)
/* 80147D44  FC 1E 08 40 */	fcmpo cr0, f30, f1
/* 80147D48  40 80 00 44 */	bge lbl_80147D8C
/* 80147D4C  C0 5E 00 C4 */	lfs f2, 0xc4(r30)
/* 80147D50  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80147D54  40 80 00 38 */	bge lbl_80147D8C
/* 80147D58  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80147D5C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80147D60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80147D64  40 80 00 28 */	bge lbl_80147D8C
/* 80147D68  D0 5E 00 E8 */	stfs f2, 0xe8(r30)
/* 80147D6C  48 00 00 20 */	b lbl_80147D8C
lbl_80147D70:
/* 80147D70  7C 7C FA 14 */	add r3, r28, r31
/* 80147D74  C0 03 00 C0 */	lfs f0, 0xc0(r3)
/* 80147D78  D0 03 00 E4 */	stfs f0, 0xe4(r3)
/* 80147D7C  C0 03 00 C4 */	lfs f0, 0xc4(r3)
/* 80147D80  D0 03 00 E8 */	stfs f0, 0xe8(r3)
/* 80147D84  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 80147D88  D0 03 00 EC */	stfs f0, 0xec(r3)
lbl_80147D8C:
/* 80147D8C  3B BD 00 01 */	addi r29, r29, 1
/* 80147D90  2C 1D 00 03 */	cmpwi r29, 3
/* 80147D94  3B FF 00 0C */	addi r31, r31, 0xc
/* 80147D98  41 80 FF 28 */	blt lbl_80147CC0
/* 80147D9C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80147DA0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80147DA4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80147DA8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80147DAC  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 80147DB0  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 80147DB4  39 61 00 20 */	addi r11, r1, 0x20
/* 80147DB8  48 21 A4 6D */	bl _restgpr_28
/* 80147DBC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80147DC0  7C 08 03 A6 */	mtlr r0
/* 80147DC4  38 21 00 50 */	addi r1, r1, 0x50
/* 80147DC8  4E 80 00 20 */	blr 

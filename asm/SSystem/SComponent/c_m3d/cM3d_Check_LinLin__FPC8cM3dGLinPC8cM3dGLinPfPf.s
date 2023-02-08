lbl_80268C5C:
/* 80268C5C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80268C60  7C 08 02 A6 */	mflr r0
/* 80268C64  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80268C68  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80268C6C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80268C70  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80268C74  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80268C78  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80268C7C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80268C80  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 80268C84  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 80268C88  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 80268C8C  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 80268C90  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 80268C94  F3 41 00 68 */	psq_st f26, 104(r1), 0, 0 /* qr0 */
/* 80268C98  DB 21 00 50 */	stfd f25, 0x50(r1)
/* 80268C9C  F3 21 00 58 */	psq_st f25, 88(r1), 0, 0 /* qr0 */
/* 80268CA0  DB 01 00 40 */	stfd f24, 0x40(r1)
/* 80268CA4  F3 01 00 48 */	psq_st f24, 72(r1), 0, 0 /* qr0 */
/* 80268CA8  39 61 00 40 */	addi r11, r1, 0x40
/* 80268CAC  48 0F 95 2D */	bl _savegpr_28
/* 80268CB0  7C 7C 1B 78 */	mr r28, r3
/* 80268CB4  7C 9D 23 78 */	mr r29, r4
/* 80268CB8  7C BE 2B 78 */	mr r30, r5
/* 80268CBC  7C DF 33 78 */	mr r31, r6
/* 80268CC0  38 7C 00 0C */	addi r3, r28, 0xc
/* 80268CC4  7F 84 E3 78 */	mr r4, r28
/* 80268CC8  38 A1 00 20 */	addi r5, r1, 0x20
/* 80268CCC  48 0D E3 E9 */	bl PSVECSubtract
/* 80268CD0  38 7D 00 0C */	addi r3, r29, 0xc
/* 80268CD4  7F A4 EB 78 */	mr r4, r29
/* 80268CD8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80268CDC  48 0D E3 D9 */	bl PSVECSubtract
/* 80268CE0  38 61 00 20 */	addi r3, r1, 0x20
/* 80268CE4  48 0D E4 6D */	bl PSVECMag
/* 80268CE8  FF E0 08 90 */	fmr f31, f1
/* 80268CEC  38 61 00 14 */	addi r3, r1, 0x14
/* 80268CF0  48 0D E4 61 */	bl PSVECMag
/* 80268CF4  FF C0 08 90 */	fmr f30, f1
/* 80268CF8  FC 00 FA 10 */	fabs f0, f31
/* 80268CFC  FC 00 00 18 */	frsp f0, f0
/* 80268D00  C0 2D 8C 00 */	lfs f1, G_CM3D_F_ABS_MIN(r13)
/* 80268D04  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80268D08  41 80 00 14 */	blt lbl_80268D1C
/* 80268D0C  FC 00 F2 10 */	fabs f0, f30
/* 80268D10  FC 00 00 18 */	frsp f0, f0
/* 80268D14  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80268D18  40 80 00 0C */	bge lbl_80268D24
lbl_80268D1C:
/* 80268D1C  38 60 00 01 */	li r3, 1
/* 80268D20  48 00 01 5C */	b lbl_80268E7C
lbl_80268D24:
/* 80268D24  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 80268D28  EF A0 F8 24 */	fdivs f29, f0, f31
/* 80268D2C  EF 80 F0 24 */	fdivs f28, f0, f30
/* 80268D30  38 61 00 20 */	addi r3, r1, 0x20
/* 80268D34  7C 64 1B 78 */	mr r4, r3
/* 80268D38  FC 20 E8 90 */	fmr f1, f29
/* 80268D3C  48 0D E3 9D */	bl PSVECScale
/* 80268D40  38 61 00 14 */	addi r3, r1, 0x14
/* 80268D44  7C 64 1B 78 */	mr r4, r3
/* 80268D48  FC 20 E0 90 */	fmr f1, f28
/* 80268D4C  48 0D E3 8D */	bl PSVECScale
/* 80268D50  7F 83 E3 78 */	mr r3, r28
/* 80268D54  7F A4 EB 78 */	mr r4, r29
/* 80268D58  38 A1 00 08 */	addi r5, r1, 8
/* 80268D5C  48 0D E3 59 */	bl PSVECSubtract
/* 80268D60  38 61 00 20 */	addi r3, r1, 0x20
/* 80268D64  38 81 00 14 */	addi r4, r1, 0x14
/* 80268D68  48 0D E4 2D */	bl PSVECDotProduct
/* 80268D6C  FF 60 08 50 */	fneg f27, f1
/* 80268D70  38 61 00 08 */	addi r3, r1, 8
/* 80268D74  38 81 00 20 */	addi r4, r1, 0x20
/* 80268D78  48 0D E4 1D */	bl PSVECDotProduct
/* 80268D7C  FF 40 08 90 */	fmr f26, f1
/* 80268D80  38 61 00 08 */	addi r3, r1, 8
/* 80268D84  48 0D E3 B5 */	bl PSVECSquareMag
/* 80268D88  C0 22 B7 38 */	lfs f1, lit_2273(r2)
/* 80268D8C  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 80268D90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80268D94  FC 00 02 10 */	fabs f0, f0
/* 80268D98  FF 20 00 18 */	frsp f25, f0
/* 80268D9C  FC 00 CA 10 */	fabs f0, f25
/* 80268DA0  FC 20 00 18 */	frsp f1, f0
/* 80268DA4  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 80268DA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268DAC  41 80 00 4C */	blt lbl_80268DF8
/* 80268DB0  38 61 00 08 */	addi r3, r1, 8
/* 80268DB4  38 81 00 14 */	addi r4, r1, 0x14
/* 80268DB8  48 0D E3 DD */	bl PSVECDotProduct
/* 80268DBC  FC 20 08 50 */	fneg f1, f1
/* 80268DC0  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 80268DC4  EC 40 C8 24 */	fdivs f2, f0, f25
/* 80268DC8  EC 1B 00 72 */	fmuls f0, f27, f1
/* 80268DCC  EC 00 D0 28 */	fsubs f0, f0, f26
/* 80268DD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80268DD4  EC 00 07 72 */	fmuls f0, f0, f29
/* 80268DD8  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80268DDC  EC 1B 06 B2 */	fmuls f0, f27, f26
/* 80268DE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80268DE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80268DE8  EC 00 07 32 */	fmuls f0, f0, f28
/* 80268DEC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80268DF0  38 60 00 03 */	li r3, 3
/* 80268DF4  48 00 00 88 */	b lbl_80268E7C
lbl_80268DF8:
/* 80268DF8  FF 20 D0 50 */	fneg f25, f26
/* 80268DFC  C3 02 B7 18 */	lfs f24, lit_2256(r2)
/* 80268E00  FC 19 C0 40 */	fcmpo cr0, f25, f24
/* 80268E04  41 80 00 0C */	blt lbl_80268E10
/* 80268E08  FC 19 F8 40 */	fcmpo cr0, f25, f31
/* 80268E0C  40 81 00 10 */	ble lbl_80268E1C
lbl_80268E10:
/* 80268E10  FF 00 F0 90 */	fmr f24, f30
/* 80268E14  EC 1E 06 F2 */	fmuls f0, f30, f27
/* 80268E18  EF 20 D0 28 */	fsubs f25, f0, f26
lbl_80268E1C:
/* 80268E1C  38 61 00 08 */	addi r3, r1, 8
/* 80268E20  38 81 00 14 */	addi r4, r1, 0x14
/* 80268E24  48 0D E3 71 */	bl PSVECDotProduct
/* 80268E28  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 80268E2C  FC 19 00 40 */	fcmpo cr0, f25, f0
/* 80268E30  41 80 00 0C */	blt lbl_80268E3C
/* 80268E34  FC 19 F8 40 */	fcmpo cr0, f25, f31
/* 80268E38  40 81 00 0C */	ble lbl_80268E44
lbl_80268E3C:
/* 80268E3C  C3 22 B7 18 */	lfs f25, lit_2256(r2)
/* 80268E40  FF 00 08 90 */	fmr f24, f1
lbl_80268E44:
/* 80268E44  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 80268E48  FC 18 00 40 */	fcmpo cr0, f24, f0
/* 80268E4C  41 80 00 0C */	blt lbl_80268E58
/* 80268E50  FC 18 F0 40 */	fcmpo cr0, f24, f30
/* 80268E54  40 81 00 14 */	ble lbl_80268E68
lbl_80268E58:
/* 80268E58  FF 20 F8 90 */	fmr f25, f31
/* 80268E5C  FC 00 F8 50 */	fneg f0, f31
/* 80268E60  EC 00 06 F2 */	fmuls f0, f0, f27
/* 80268E64  EF 01 00 2A */	fadds f24, f1, f0
lbl_80268E68:
/* 80268E68  EC 19 07 72 */	fmuls f0, f25, f29
/* 80268E6C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80268E70  EC 18 07 32 */	fmuls f0, f24, f28
/* 80268E74  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80268E78  38 60 00 02 */	li r3, 2
lbl_80268E7C:
/* 80268E7C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80268E80  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80268E84  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80268E88  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80268E8C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80268E90  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80268E94  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 80268E98  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 80268E9C  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 80268EA0  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 80268EA4  E3 41 00 68 */	psq_l f26, 104(r1), 0, 0 /* qr0 */
/* 80268EA8  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 80268EAC  E3 21 00 58 */	psq_l f25, 88(r1), 0, 0 /* qr0 */
/* 80268EB0  CB 21 00 50 */	lfd f25, 0x50(r1)
/* 80268EB4  E3 01 00 48 */	psq_l f24, 72(r1), 0, 0 /* qr0 */
/* 80268EB8  CB 01 00 40 */	lfd f24, 0x40(r1)
/* 80268EBC  39 61 00 40 */	addi r11, r1, 0x40
/* 80268EC0  48 0F 93 65 */	bl _restgpr_28
/* 80268EC4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80268EC8  7C 08 03 A6 */	mtlr r0
/* 80268ECC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80268ED0  4E 80 00 20 */	blr 

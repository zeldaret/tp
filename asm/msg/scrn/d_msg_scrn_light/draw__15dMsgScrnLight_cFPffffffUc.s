lbl_80245C04:
/* 80245C04  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80245C08  7C 08 02 A6 */	mflr r0
/* 80245C0C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80245C10  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80245C14  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80245C18  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80245C1C  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80245C20  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80245C24  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80245C28  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80245C2C  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 80245C30  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80245C34  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 80245C38  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80245C3C  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80245C40  7C 7E 1B 78 */	mr r30, r3
/* 80245C44  7C 9F 23 78 */	mr r31, r4
/* 80245C48  FF 60 08 90 */	fmr f27, f1
/* 80245C4C  FF 80 10 90 */	fmr f28, f2
/* 80245C50  FF A0 18 90 */	fmr f29, f3
/* 80245C54  FF C0 20 90 */	fmr f30, f4
/* 80245C58  FF E0 28 90 */	fmr f31, f5
/* 80245C5C  3C 60 80 43 */	lis r3, g_MsgScrnLight_HIO_c@ha
/* 80245C60  38 63 06 D4 */	addi r3, r3, g_MsgScrnLight_HIO_c@l
/* 80245C64  88 03 00 05 */	lbz r0, 5(r3)
/* 80245C68  28 00 00 00 */	cmplwi r0, 0
/* 80245C6C  41 82 00 AC */	beq lbl_80245D18
/* 80245C70  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 80245C74  28 00 00 09 */	cmplwi r0, 9
/* 80245C78  40 80 00 6C */	bge lbl_80245CE4
/* 80245C7C  7C 63 02 14 */	add r3, r3, r0
/* 80245C80  88 03 00 0F */	lbz r0, 0xf(r3)
/* 80245C84  98 01 00 68 */	stb r0, 0x68(r1)
/* 80245C88  88 03 00 21 */	lbz r0, 0x21(r3)
/* 80245C8C  98 01 00 69 */	stb r0, 0x69(r1)
/* 80245C90  88 03 00 33 */	lbz r0, 0x33(r3)
/* 80245C94  98 01 00 6A */	stb r0, 0x6a(r1)
/* 80245C98  88 03 00 45 */	lbz r0, 0x45(r3)
/* 80245C9C  98 01 00 6B */	stb r0, 0x6b(r1)
/* 80245CA0  80 01 00 68 */	lwz r0, 0x68(r1)
/* 80245CA4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80245CA8  88 03 00 06 */	lbz r0, 6(r3)
/* 80245CAC  98 01 00 70 */	stb r0, 0x70(r1)
/* 80245CB0  88 03 00 18 */	lbz r0, 0x18(r3)
/* 80245CB4  98 01 00 71 */	stb r0, 0x71(r1)
/* 80245CB8  88 03 00 2A */	lbz r0, 0x2a(r3)
/* 80245CBC  98 01 00 72 */	stb r0, 0x72(r1)
/* 80245CC0  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80245CC4  98 01 00 73 */	stb r0, 0x73(r1)
/* 80245CC8  80 01 00 70 */	lwz r0, 0x70(r1)
/* 80245CCC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80245CD0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245CD4  38 81 00 74 */	addi r4, r1, 0x74
/* 80245CD8  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80245CDC  48 00 E7 7D */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80245CE0  48 00 01 EC */	b lbl_80245ECC
lbl_80245CE4:
/* 80245CE4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245CE8  80 03 00 58 */	lwz r0, 0x58(r3)
/* 80245CEC  90 01 00 58 */	stw r0, 0x58(r1)
/* 80245CF0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80245CF4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245CF8  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 80245CFC  90 01 00 60 */	stw r0, 0x60(r1)
/* 80245D00  90 01 00 64 */	stw r0, 0x64(r1)
/* 80245D04  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245D08  38 81 00 64 */	addi r4, r1, 0x64
/* 80245D0C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80245D10  48 00 E7 49 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80245D14  48 00 01 B8 */	b lbl_80245ECC
lbl_80245D18:
/* 80245D18  88 1E 00 20 */	lbz r0, 0x20(r30)
/* 80245D1C  28 00 00 00 */	cmplwi r0, 0
/* 80245D20  40 82 00 64 */	bne lbl_80245D84
/* 80245D24  38 00 00 E1 */	li r0, 0xe1
/* 80245D28  98 01 00 48 */	stb r0, 0x48(r1)
/* 80245D2C  38 00 00 D2 */	li r0, 0xd2
/* 80245D30  98 01 00 49 */	stb r0, 0x49(r1)
/* 80245D34  38 00 00 6E */	li r0, 0x6e
/* 80245D38  98 01 00 4A */	stb r0, 0x4a(r1)
/* 80245D3C  38 60 00 A0 */	li r3, 0xa0
/* 80245D40  98 61 00 4B */	stb r3, 0x4b(r1)
/* 80245D44  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80245D48  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80245D4C  98 61 00 50 */	stb r3, 0x50(r1)
/* 80245D50  38 00 00 87 */	li r0, 0x87
/* 80245D54  98 01 00 51 */	stb r0, 0x51(r1)
/* 80245D58  38 00 00 14 */	li r0, 0x14
/* 80245D5C  98 01 00 52 */	stb r0, 0x52(r1)
/* 80245D60  38 00 00 00 */	li r0, 0
/* 80245D64  98 01 00 53 */	stb r0, 0x53(r1)
/* 80245D68  80 01 00 50 */	lwz r0, 0x50(r1)
/* 80245D6C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80245D70  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245D74  38 81 00 54 */	addi r4, r1, 0x54
/* 80245D78  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80245D7C  48 00 E6 DD */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80245D80  48 00 01 4C */	b lbl_80245ECC
lbl_80245D84:
/* 80245D84  28 00 00 02 */	cmplwi r0, 2
/* 80245D88  40 82 00 5C */	bne lbl_80245DE4
/* 80245D8C  38 60 00 FF */	li r3, 0xff
/* 80245D90  98 61 00 38 */	stb r3, 0x38(r1)
/* 80245D94  98 61 00 39 */	stb r3, 0x39(r1)
/* 80245D98  38 00 00 6E */	li r0, 0x6e
/* 80245D9C  98 01 00 3A */	stb r0, 0x3a(r1)
/* 80245DA0  38 00 00 D2 */	li r0, 0xd2
/* 80245DA4  98 01 00 3B */	stb r0, 0x3b(r1)
/* 80245DA8  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80245DAC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80245DB0  98 61 00 40 */	stb r3, 0x40(r1)
/* 80245DB4  98 61 00 41 */	stb r3, 0x41(r1)
/* 80245DB8  38 00 00 96 */	li r0, 0x96
/* 80245DBC  98 01 00 42 */	stb r0, 0x42(r1)
/* 80245DC0  38 00 00 00 */	li r0, 0
/* 80245DC4  98 01 00 43 */	stb r0, 0x43(r1)
/* 80245DC8  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80245DCC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80245DD0  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245DD4  38 81 00 44 */	addi r4, r1, 0x44
/* 80245DD8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80245DDC  48 00 E6 7D */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80245DE0  48 00 00 EC */	b lbl_80245ECC
lbl_80245DE4:
/* 80245DE4  28 00 00 01 */	cmplwi r0, 1
/* 80245DE8  40 82 00 5C */	bne lbl_80245E44
/* 80245DEC  38 A0 00 28 */	li r5, 0x28
/* 80245DF0  98 A1 00 28 */	stb r5, 0x28(r1)
/* 80245DF4  38 80 00 6E */	li r4, 0x6e
/* 80245DF8  98 81 00 29 */	stb r4, 0x29(r1)
/* 80245DFC  38 60 00 B4 */	li r3, 0xb4
/* 80245E00  98 61 00 2A */	stb r3, 0x2a(r1)
/* 80245E04  38 00 00 78 */	li r0, 0x78
/* 80245E08  98 01 00 2B */	stb r0, 0x2b(r1)
/* 80245E0C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80245E10  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80245E14  98 A1 00 30 */	stb r5, 0x30(r1)
/* 80245E18  98 81 00 31 */	stb r4, 0x31(r1)
/* 80245E1C  98 61 00 32 */	stb r3, 0x32(r1)
/* 80245E20  38 00 00 00 */	li r0, 0
/* 80245E24  98 01 00 33 */	stb r0, 0x33(r1)
/* 80245E28  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80245E2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80245E30  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245E34  38 81 00 34 */	addi r4, r1, 0x34
/* 80245E38  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80245E3C  48 00 E6 1D */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80245E40  48 00 00 8C */	b lbl_80245ECC
lbl_80245E44:
/* 80245E44  28 00 00 04 */	cmplwi r0, 4
/* 80245E48  40 82 00 54 */	bne lbl_80245E9C
/* 80245E4C  38 A0 00 46 */	li r5, 0x46
/* 80245E50  98 A1 00 18 */	stb r5, 0x18(r1)
/* 80245E54  38 80 00 96 */	li r4, 0x96
/* 80245E58  98 81 00 19 */	stb r4, 0x19(r1)
/* 80245E5C  38 60 00 00 */	li r3, 0
/* 80245E60  98 61 00 1A */	stb r3, 0x1a(r1)
/* 80245E64  98 81 00 1B */	stb r4, 0x1b(r1)
/* 80245E68  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80245E6C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80245E70  98 A1 00 20 */	stb r5, 0x20(r1)
/* 80245E74  98 81 00 21 */	stb r4, 0x21(r1)
/* 80245E78  98 61 00 22 */	stb r3, 0x22(r1)
/* 80245E7C  98 61 00 23 */	stb r3, 0x23(r1)
/* 80245E80  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80245E84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80245E88  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245E8C  38 81 00 24 */	addi r4, r1, 0x24
/* 80245E90  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80245E94  48 00 E5 C5 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
/* 80245E98  48 00 00 34 */	b lbl_80245ECC
lbl_80245E9C:
/* 80245E9C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245EA0  80 03 00 58 */	lwz r0, 0x58(r3)
/* 80245EA4  90 01 00 08 */	stw r0, 8(r1)
/* 80245EA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80245EAC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245EB0  80 03 00 5C */	lwz r0, 0x5c(r3)
/* 80245EB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80245EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80245EBC  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80245EC0  38 81 00 14 */	addi r4, r1, 0x14
/* 80245EC4  38 A1 00 0C */	addi r5, r1, 0xc
/* 80245EC8  48 00 E5 91 */	bl setBlackWhite__8CPaneMgrFQ28JUtility6TColorQ28JUtility6TColor
lbl_80245ECC:
/* 80245ECC  88 1E 00 22 */	lbz r0, 0x22(r30)
/* 80245ED0  28 00 00 00 */	cmplwi r0, 0
/* 80245ED4  41 82 00 60 */	beq lbl_80245F34
/* 80245ED8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80245EDC  C0 02 B2 DC */	lfs f0, lit_3869(r2)
/* 80245EE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80245EE4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80245EE8  80 7E 00 08 */	lwz r3, 8(r30)
/* 80245EEC  A8 03 00 06 */	lha r0, 6(r3)
/* 80245EF0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80245EF4  C8 22 B2 E0 */	lfd f1, lit_3871(r2)
/* 80245EF8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80245EFC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80245F00  3C 00 43 30 */	lis r0, 0x4330
/* 80245F04  90 01 00 78 */	stw r0, 0x78(r1)
/* 80245F08  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80245F0C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80245F10  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80245F14  4C 41 13 82 */	cror 2, 1, 2
/* 80245F18  40 82 00 0C */	bne lbl_80245F24
/* 80245F1C  C0 02 B2 D8 */	lfs f0, lit_3808(r2)
/* 80245F20  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_80245F24:
/* 80245F24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80245F28  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80245F2C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80245F30  D0 1E 00 18 */	stfs f0, 0x18(r30)
lbl_80245F34:
/* 80245F34  7F C3 F3 78 */	mr r3, r30
/* 80245F38  FC 20 D8 90 */	fmr f1, f27
/* 80245F3C  FC 40 E0 90 */	fmr f2, f28
/* 80245F40  FC 60 E8 90 */	fmr f3, f29
/* 80245F44  FC 80 F0 90 */	fmr f4, f30
/* 80245F48  FC A0 F8 90 */	fmr f5, f31
/* 80245F4C  48 00 01 91 */	bl drawCommon__15dMsgScrnLight_cFfffff
/* 80245F50  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80245F54  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80245F58  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80245F5C  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80245F60  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80245F64  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80245F68  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 80245F6C  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80245F70  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 80245F74  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 80245F78  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80245F7C  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80245F80  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80245F84  7C 08 03 A6 */	mtlr r0
/* 80245F88  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80245F8C  4E 80 00 20 */	blr 

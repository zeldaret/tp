lbl_802C8C48:
/* 802C8C48  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 802C8C4C  7C 08 02 A6 */	mflr r0
/* 802C8C50  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 802C8C54  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 802C8C58  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 802C8C5C  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 802C8C60  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 802C8C64  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 802C8C68  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 802C8C6C  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 802C8C70  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 802C8C74  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 802C8C78  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 802C8C7C  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 802C8C80  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 802C8C84  39 61 00 50 */	addi r11, r1, 0x50
/* 802C8C88  48 09 95 55 */	bl _savegpr_29
/* 802C8C8C  7C 7F 1B 78 */	mr r31, r3
/* 802C8C90  7C 80 07 74 */	extsb r0, r4
/* 802C8C94  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C8C98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C8C9C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802C8CA0  3C 00 43 30 */	lis r0, 0x4330
/* 802C8CA4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C8CA8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802C8CAC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C8CB0  C0 02 C3 F4 */	lfs f0, lit_4260(r2)
/* 802C8CB4  EF E1 00 24 */	fdivs f31, f1, f0
/* 802C8CB8  C0 03 01 F4 */	lfs f0, 0x1f4(r3)
/* 802C8CBC  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C8CC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C8CC4  40 81 00 08 */	ble lbl_802C8CCC
/* 802C8CC8  48 00 00 18 */	b lbl_802C8CE0
lbl_802C8CCC:
/* 802C8CCC  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C8CD0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C8CD4  40 80 00 08 */	bge lbl_802C8CDC
/* 802C8CD8  48 00 00 08 */	b lbl_802C8CE0
lbl_802C8CDC:
/* 802C8CDC  FC 20 00 90 */	fmr f1, f0
lbl_802C8CE0:
/* 802C8CE0  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 802C8CE4  EF C0 00 72 */	fmuls f30, f0, f1
/* 802C8CE8  38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 802C8CEC  4B FE 5F F5 */	bl getPanPower__12Z2MultiSeMgrFv
/* 802C8CF0  FF A0 08 90 */	fmr f29, f1
/* 802C8CF4  38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 802C8CF8  4B FE 60 C9 */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802C8CFC  FF 80 08 90 */	fmr f28, f1
/* 802C8D00  3B A0 00 00 */	li r29, 0
/* 802C8D04  C3 7F 02 1C */	lfs f27, 0x21c(r31)
/* 802C8D08  88 1F 02 14 */	lbz r0, 0x214(r31)
/* 802C8D0C  28 00 00 1F */	cmplwi r0, 0x1f
/* 802C8D10  41 81 05 5C */	bgt lbl_802C926C
/* 802C8D14  3C 60 80 3D */	lis r3, lit_4839@ha /* 0x803CBB10@ha */
/* 802C8D18  38 63 BB 10 */	addi r3, r3, lit_4839@l /* 0x803CBB10@l */
/* 802C8D1C  54 00 10 3A */	slwi r0, r0, 2
/* 802C8D20  7C 03 00 2E */	lwzx r0, r3, r0
/* 802C8D24  7C 09 03 A6 */	mtctr r0
/* 802C8D28  4E 80 04 20 */	bctr 
/* 802C8D2C  38 7F 01 20 */	addi r3, r31, 0x120
/* 802C8D30  4B FE 0C 71 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C8D34  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C8D38  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C8D3C  C0 82 C3 78 */	lfs f4, lit_3749(r2)
/* 802C8D40  FC A0 18 90 */	fmr f5, f3
/* 802C8D44  38 60 00 01 */	li r3, 1
/* 802C8D48  4B FE 09 45 */	bl linearTransform__6Z2CalcFfffffb
/* 802C8D4C  FF 40 08 90 */	fmr f26, f1
/* 802C8D50  38 7F 01 30 */	addi r3, r31, 0x130
/* 802C8D54  4B FE 0C 4D */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C8D58  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C8D5C  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C8D60  C0 82 C3 A4 */	lfs f4, lit_3760(r2)
/* 802C8D64  C0 A2 C4 44 */	lfs f5, lit_4833(r2)
/* 802C8D68  38 60 00 01 */	li r3, 1
/* 802C8D6C  4B FE 09 21 */	bl linearTransform__6Z2CalcFfffffb
/* 802C8D70  EF 7B 00 72 */	fmuls f27, f27, f1
/* 802C8D74  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C9@ha */
/* 802C8D78  38 03 00 C9 */	addi r0, r3, 0x00C9 /* 0x000800C9@l */
/* 802C8D7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C8D80  38 7F 02 0C */	addi r3, r31, 0x20c
/* 802C8D84  38 81 00 34 */	addi r4, r1, 0x34
/* 802C8D88  FC 20 F8 90 */	fmr f1, f31
/* 802C8D8C  EC 5E 06 B2 */	fmuls f2, f30, f26
/* 802C8D90  FC 60 E8 90 */	fmr f3, f29
/* 802C8D94  FC 80 E0 90 */	fmr f4, f28
/* 802C8D98  FC A0 D8 90 */	fmr f5, f27
/* 802C8D9C  38 A0 00 00 */	li r5, 0
/* 802C8DA0  4B FF CD 15 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C8DA4  7C 7D 1B 78 */	mr r29, r3
/* 802C8DA8  FC 20 D0 90 */	fmr f1, f26
/* 802C8DAC  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C8DB0  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C8DB4  C0 82 C3 B0 */	lfs f4, lit_3763(r2)
/* 802C8DB8  FC A0 18 90 */	fmr f5, f3
/* 802C8DBC  38 60 00 01 */	li r3, 1
/* 802C8DC0  4B FE 08 CD */	bl linearTransform__6Z2CalcFfffffb
/* 802C8DC4  FF 40 08 90 */	fmr f26, f1
/* 802C8DC8  7F E3 FB 78 */	mr r3, r31
/* 802C8DCC  4B FF D1 CD */	bl calcPan__14Z2EnvSeAutoPanFv
/* 802C8DD0  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802C8DD4  4B FF D1 C5 */	bl calcPan__14Z2EnvSeAutoPanFv
/* 802C8DD8  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009000B@ha */
/* 802C8DDC  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0009000B@l */
/* 802C8DE0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802C8DE4  7F E3 FB 78 */	mr r3, r31
/* 802C8DE8  38 81 00 30 */	addi r4, r1, 0x30
/* 802C8DEC  FC 20 F8 90 */	fmr f1, f31
/* 802C8DF0  FC 40 D0 90 */	fmr f2, f26
/* 802C8DF4  FC 60 D8 90 */	fmr f3, f27
/* 802C8DF8  4B FF D2 E9 */	bl startEnvSeAutoPanLevel__14Z2EnvSeAutoPanF10JAISoundIDfff
/* 802C8DFC  7C 7E 1B 78 */	mr r30, r3
/* 802C8E00  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009000B@ha */
/* 802C8E04  38 03 00 0B */	addi r0, r3, 0x000B /* 0x0009000B@l */
/* 802C8E08  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802C8E0C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802C8E10  38 81 00 2C */	addi r4, r1, 0x2c
/* 802C8E14  FC 20 F8 90 */	fmr f1, f31
/* 802C8E18  C0 02 C3 BC */	lfs f0, lit_3766(r2)
/* 802C8E1C  EC 40 06 B2 */	fmuls f2, f0, f26
/* 802C8E20  C0 02 C3 A4 */	lfs f0, lit_3760(r2)
/* 802C8E24  EC 60 06 F2 */	fmuls f3, f0, f27
/* 802C8E28  4B FF D2 B9 */	bl startEnvSeAutoPanLevel__14Z2EnvSeAutoPanF10JAISoundIDfff
/* 802C8E2C  38 80 00 00 */	li r4, 0
/* 802C8E30  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802C8E34  41 82 00 18 */	beq lbl_802C8E4C
/* 802C8E38  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802C8E3C  41 82 00 10 */	beq lbl_802C8E4C
/* 802C8E40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802C8E44  41 82 00 08 */	beq lbl_802C8E4C
/* 802C8E48  38 80 00 01 */	li r4, 1
lbl_802C8E4C:
/* 802C8E4C  7C 9D 23 78 */	mr r29, r4
/* 802C8E50  48 00 04 24 */	b lbl_802C9274
/* 802C8E54  38 7F 01 20 */	addi r3, r31, 0x120
/* 802C8E58  4B FE 0B 49 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C8E5C  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C8E60  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C8E64  C0 82 C3 C8 */	lfs f4, lit_3769(r2)
/* 802C8E68  C0 A2 C3 A4 */	lfs f5, lit_3760(r2)
/* 802C8E6C  38 60 00 01 */	li r3, 1
/* 802C8E70  4B FE 08 1D */	bl linearTransform__6Z2CalcFfffffb
/* 802C8E74  FF 40 08 90 */	fmr f26, f1
/* 802C8E78  38 7F 01 30 */	addi r3, r31, 0x130
/* 802C8E7C  4B FE 0B 25 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C8E80  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C8E84  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C8E88  C0 82 C3 A4 */	lfs f4, lit_3760(r2)
/* 802C8E8C  C0 A2 C4 48 */	lfs f5, lit_4834(r2)
/* 802C8E90  38 60 00 01 */	li r3, 1
/* 802C8E94  4B FE 07 F9 */	bl linearTransform__6Z2CalcFfffffb
/* 802C8E98  EF 7B 00 72 */	fmuls f27, f27, f1
/* 802C8E9C  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090007@ha */
/* 802C8EA0  38 03 00 07 */	addi r0, r3, 0x0007 /* 0x00090007@l */
/* 802C8EA4  90 01 00 28 */	stw r0, 0x28(r1)
/* 802C8EA8  38 7F 02 0C */	addi r3, r31, 0x20c
/* 802C8EAC  38 81 00 28 */	addi r4, r1, 0x28
/* 802C8EB0  FC 20 F8 90 */	fmr f1, f31
/* 802C8EB4  EC 5E 06 B2 */	fmuls f2, f30, f26
/* 802C8EB8  FC 60 E8 90 */	fmr f3, f29
/* 802C8EBC  FC 80 E0 90 */	fmr f4, f28
/* 802C8EC0  FC A0 D8 90 */	fmr f5, f27
/* 802C8EC4  38 A0 00 00 */	li r5, 0
/* 802C8EC8  4B FF CB ED */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C8ECC  7C 7D 1B 78 */	mr r29, r3
/* 802C8ED0  48 00 03 A4 */	b lbl_802C9274
/* 802C8ED4  88 1F 02 08 */	lbz r0, 0x208(r31)
/* 802C8ED8  7C 00 07 75 */	extsb. r0, r0
/* 802C8EDC  40 80 00 0C */	bge lbl_802C8EE8
/* 802C8EE0  38 60 00 00 */	li r3, 0
/* 802C8EE4  48 00 03 9C */	b lbl_802C9280
lbl_802C8EE8:
/* 802C8EE8  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090003@ha */
/* 802C8EEC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0x00090003@l */
/* 802C8EF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C8EF4  38 7F 02 0C */	addi r3, r31, 0x20c
/* 802C8EF8  38 81 00 24 */	addi r4, r1, 0x24
/* 802C8EFC  FC 20 F8 90 */	fmr f1, f31
/* 802C8F00  FC 40 F0 90 */	fmr f2, f30
/* 802C8F04  FC 60 E8 90 */	fmr f3, f29
/* 802C8F08  FC 80 E0 90 */	fmr f4, f28
/* 802C8F0C  FC A0 D8 90 */	fmr f5, f27
/* 802C8F10  38 A0 00 00 */	li r5, 0
/* 802C8F14  4B FF CB A1 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C8F18  7C 7D 1B 78 */	mr r29, r3
/* 802C8F1C  48 00 03 58 */	b lbl_802C9274
/* 802C8F20  88 1F 02 08 */	lbz r0, 0x208(r31)
/* 802C8F24  7C 00 07 75 */	extsb. r0, r0
/* 802C8F28  40 80 00 0C */	bge lbl_802C8F34
/* 802C8F2C  38 60 00 00 */	li r3, 0
/* 802C8F30  48 00 03 50 */	b lbl_802C9280
lbl_802C8F34:
/* 802C8F34  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090037@ha */
/* 802C8F38  38 03 00 37 */	addi r0, r3, 0x0037 /* 0x00090037@l */
/* 802C8F3C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C8F40  38 7F 02 0C */	addi r3, r31, 0x20c
/* 802C8F44  38 81 00 20 */	addi r4, r1, 0x20
/* 802C8F48  FC 20 F8 90 */	fmr f1, f31
/* 802C8F4C  FC 40 F0 90 */	fmr f2, f30
/* 802C8F50  FC 60 E8 90 */	fmr f3, f29
/* 802C8F54  FC 80 E0 90 */	fmr f4, f28
/* 802C8F58  FC A0 D8 90 */	fmr f5, f27
/* 802C8F5C  38 A0 00 00 */	li r5, 0
/* 802C8F60  4B FF CB 55 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C8F64  7C 7D 1B 78 */	mr r29, r3
/* 802C8F68  48 00 03 0C */	b lbl_802C9274
/* 802C8F6C  88 1F 02 08 */	lbz r0, 0x208(r31)
/* 802C8F70  7C 00 07 75 */	extsb. r0, r0
/* 802C8F74  40 80 00 0C */	bge lbl_802C8F80
/* 802C8F78  38 60 00 00 */	li r3, 0
/* 802C8F7C  48 00 03 04 */	b lbl_802C9280
lbl_802C8F80:
/* 802C8F80  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090018@ha */
/* 802C8F84  38 03 00 18 */	addi r0, r3, 0x0018 /* 0x00090018@l */
/* 802C8F88  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C8F8C  38 7F 02 0C */	addi r3, r31, 0x20c
/* 802C8F90  38 81 00 1C */	addi r4, r1, 0x1c
/* 802C8F94  FC 20 F8 90 */	fmr f1, f31
/* 802C8F98  FC 40 F0 90 */	fmr f2, f30
/* 802C8F9C  FC 60 E8 90 */	fmr f3, f29
/* 802C8FA0  FC 80 E0 90 */	fmr f4, f28
/* 802C8FA4  C0 02 C4 4C */	lfs f0, lit_4835(r2)
/* 802C8FA8  EC A0 06 F2 */	fmuls f5, f0, f27
/* 802C8FAC  38 A0 00 00 */	li r5, 0
/* 802C8FB0  4B FF CB 05 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C8FB4  7C 7D 1B 78 */	mr r29, r3
/* 802C8FB8  48 00 02 BC */	b lbl_802C9274
/* 802C8FBC  80 8D 85 FC */	lwz r4, __OSReport_disable-0x1C(r13)
/* 802C8FC0  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802C8FC4  28 00 00 06 */	cmplwi r0, 6
/* 802C8FC8  40 82 00 CC */	bne lbl_802C9094
/* 802C8FCC  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802C8FD0  80 03 00 04 */	lwz r0, 4(r3)
/* 802C8FD4  2C 00 00 10 */	cmpwi r0, 0x10
/* 802C8FD8  40 82 00 14 */	bne lbl_802C8FEC
/* 802C8FDC  C0 24 00 24 */	lfs f1, 0x24(r4)
/* 802C8FE0  C0 02 C4 38 */	lfs f0, lit_4619(r2)
/* 802C8FE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802C8FE8  40 80 00 AC */	bge lbl_802C9094
lbl_802C8FEC:
/* 802C8FEC  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C8FF0  EF 40 F0 28 */	fsubs f26, f0, f30
/* 802C8FF4  7F E3 FB 78 */	mr r3, r31
/* 802C8FF8  38 84 00 20 */	addi r4, r4, 0x20
/* 802C8FFC  4B FF FC 29 */	bl registEtcSePos__10Z2EnvSeMgrFP3Vec
/* 802C9000  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 802C9004  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C9008  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C900C  40 81 00 08 */	ble lbl_802C9014
/* 802C9010  48 00 00 18 */	b lbl_802C9028
lbl_802C9014:
/* 802C9014  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C9018  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 802C901C  40 80 00 08 */	bge lbl_802C9024
/* 802C9020  48 00 00 08 */	b lbl_802C9028
lbl_802C9024:
/* 802C9024  FC 20 00 90 */	fmr f1, f0
lbl_802C9028:
/* 802C9028  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 802C902C  EF C0 00 72 */	fmuls f30, f0, f1
/* 802C9030  38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 802C9034  4B FE 5C AD */	bl getPanPower__12Z2MultiSeMgrFv
/* 802C9038  FF A0 08 90 */	fmr f29, f1
/* 802C903C  38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 802C9040  4B FE 5D 81 */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802C9044  FF 80 08 90 */	fmr f28, f1
/* 802C9048  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802C904C  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 802C9050  28 00 00 00 */	cmplwi r0, 0
/* 802C9054  41 82 00 0C */	beq lbl_802C9060
/* 802C9058  C0 02 C4 18 */	lfs f0, lit_4269(r2)
/* 802C905C  EF DE 00 32 */	fmuls f30, f30, f0
lbl_802C9060:
/* 802C9060  EF 5A 07 B2 */	fmuls f26, f26, f30
/* 802C9064  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802C9068  4B FF CF 31 */	bl calcPan__14Z2EnvSeAutoPanFv
/* 802C906C  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090002@ha */
/* 802C9070  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00090002@l */
/* 802C9074  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C9078  38 7F 00 1C */	addi r3, r31, 0x1c
/* 802C907C  38 81 00 18 */	addi r4, r1, 0x18
/* 802C9080  FC 20 F8 90 */	fmr f1, f31
/* 802C9084  FC 40 D0 90 */	fmr f2, f26
/* 802C9088  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C908C  4B FF D0 55 */	bl startEnvSeAutoPanLevel__14Z2EnvSeAutoPanF10JAISoundIDfff
/* 802C9090  48 00 00 1C */	b lbl_802C90AC
lbl_802C9094:
/* 802C9094  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802C9098  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 802C909C  28 00 00 00 */	cmplwi r0, 0
/* 802C90A0  41 82 00 0C */	beq lbl_802C90AC
/* 802C90A4  C0 02 C4 18 */	lfs f0, lit_4269(r2)
/* 802C90A8  EF DE 00 32 */	fmuls f30, f30, f0
lbl_802C90AC:
/* 802C90AC  3C 00 00 09 */	lis r0, 9
/* 802C90B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C90B4  38 7F 02 0C */	addi r3, r31, 0x20c
/* 802C90B8  38 81 00 14 */	addi r4, r1, 0x14
/* 802C90BC  FC 20 F8 90 */	fmr f1, f31
/* 802C90C0  FC 40 F0 90 */	fmr f2, f30
/* 802C90C4  FC 60 E8 90 */	fmr f3, f29
/* 802C90C8  FC 80 E0 90 */	fmr f4, f28
/* 802C90CC  FC A0 D8 90 */	fmr f5, f27
/* 802C90D0  38 A0 00 00 */	li r5, 0
/* 802C90D4  4B FF C9 E1 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C90D8  7C 7D 1B 78 */	mr r29, r3
/* 802C90DC  48 00 01 98 */	b lbl_802C9274
/* 802C90E0  38 7F 01 20 */	addi r3, r31, 0x120
/* 802C90E4  4B FE 08 BD */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C90E8  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C90EC  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C90F0  C0 82 C3 C8 */	lfs f4, lit_3769(r2)
/* 802C90F4  C0 A2 C3 A4 */	lfs f5, lit_3760(r2)
/* 802C90F8  38 60 00 01 */	li r3, 1
/* 802C90FC  4B FE 05 91 */	bl linearTransform__6Z2CalcFfffffb
/* 802C9100  FF 40 08 90 */	fmr f26, f1
/* 802C9104  38 7F 01 30 */	addi r3, r31, 0x130
/* 802C9108  4B FE 08 99 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C910C  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C9110  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C9114  C0 82 C3 A4 */	lfs f4, lit_3760(r2)
/* 802C9118  C0 A2 C4 48 */	lfs f5, lit_4834(r2)
/* 802C911C  38 60 00 01 */	li r3, 1
/* 802C9120  4B FE 05 6D */	bl linearTransform__6Z2CalcFfffffb
/* 802C9124  EF 7B 00 72 */	fmuls f27, f27, f1
/* 802C9128  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090034@ha */
/* 802C912C  38 03 00 34 */	addi r0, r3, 0x0034 /* 0x00090034@l */
/* 802C9130  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C9134  38 7F 02 0C */	addi r3, r31, 0x20c
/* 802C9138  38 81 00 10 */	addi r4, r1, 0x10
/* 802C913C  FC 20 F8 90 */	fmr f1, f31
/* 802C9140  EC 5E 06 B2 */	fmuls f2, f30, f26
/* 802C9144  FC 60 E8 90 */	fmr f3, f29
/* 802C9148  FC 80 E0 90 */	fmr f4, f28
/* 802C914C  FC A0 D8 90 */	fmr f5, f27
/* 802C9150  38 A0 00 00 */	li r5, 0
/* 802C9154  4B FF C9 61 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C9158  7C 7D 1B 78 */	mr r29, r3
/* 802C915C  48 00 01 18 */	b lbl_802C9274
/* 802C9160  7F E3 FB 78 */	mr r3, r31
/* 802C9164  48 00 02 81 */	bl getFogDensity__10Z2EnvSeMgrFv
/* 802C9168  C0 42 C3 C8 */	lfs f2, lit_3769(r2)
/* 802C916C  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C9170  C0 82 C3 84 */	lfs f4, lit_3752(r2)
/* 802C9174  FC A0 20 90 */	fmr f5, f4
/* 802C9178  FC C0 18 90 */	fmr f6, f3
/* 802C917C  38 60 00 00 */	li r3, 0
/* 802C9180  4B FE 05 75 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C9184  FF E0 08 90 */	fmr f31, f1
/* 802C9188  7F E3 FB 78 */	mr r3, r31
/* 802C918C  48 00 02 59 */	bl getFogDensity__10Z2EnvSeMgrFv
/* 802C9190  C0 42 C3 C8 */	lfs f2, lit_3769(r2)
/* 802C9194  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C9198  C0 82 C3 84 */	lfs f4, lit_3752(r2)
/* 802C919C  C0 A2 C4 18 */	lfs f5, lit_4269(r2)
/* 802C91A0  FC C0 18 90 */	fmr f6, f3
/* 802C91A4  38 60 00 00 */	li r3, 0
/* 802C91A8  4B FE 05 4D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C91AC  38 7F 02 E8 */	addi r3, r31, 0x2e8
/* 802C91B0  4B FE 07 F1 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C91B4  FC C0 08 90 */	fmr f6, f1
/* 802C91B8  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090022@ha */
/* 802C91BC  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00090022@l */
/* 802C91C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C91C4  38 7F 02 40 */	addi r3, r31, 0x240
/* 802C91C8  38 81 00 0C */	addi r4, r1, 0xc
/* 802C91CC  C0 22 C3 B0 */	lfs f1, lit_3763(r2)
/* 802C91D0  C0 42 C4 50 */	lfs f2, lit_4836(r2)
/* 802C91D4  C0 02 C4 54 */	lfs f0, lit_4837(r2)
/* 802C91D8  EC 00 01 B2 */	fmuls f0, f0, f6
/* 802C91DC  EC 02 00 2A */	fadds f0, f2, f0
/* 802C91E0  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C91E4  EC 5E 00 32 */	fmuls f2, f30, f0
/* 802C91E8  FC 60 E8 90 */	fmr f3, f29
/* 802C91EC  FC 80 E0 90 */	fmr f4, f28
/* 802C91F0  C0 A2 C3 A4 */	lfs f5, lit_3760(r2)
/* 802C91F4  C0 02 C3 84 */	lfs f0, lit_3752(r2)
/* 802C91F8  EC 00 01 B2 */	fmuls f0, f0, f6
/* 802C91FC  EC A5 00 2A */	fadds f5, f5, f0
/* 802C9200  38 A0 00 00 */	li r5, 0
/* 802C9204  4B FF C8 B1 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C9208  7C 7D 1B 78 */	mr r29, r3
/* 802C920C  38 7F 02 F8 */	addi r3, r31, 0x2f8
/* 802C9210  4B FE 07 91 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C9214  FC C0 08 90 */	fmr f6, f1
/* 802C9218  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090023@ha */
/* 802C921C  38 03 00 23 */	addi r0, r3, 0x0023 /* 0x00090023@l */
/* 802C9220  90 01 00 08 */	stw r0, 8(r1)
/* 802C9224  38 7F 02 74 */	addi r3, r31, 0x274
/* 802C9228  38 81 00 08 */	addi r4, r1, 8
/* 802C922C  C0 22 C3 B0 */	lfs f1, lit_3763(r2)
/* 802C9230  C0 42 C4 50 */	lfs f2, lit_4836(r2)
/* 802C9234  C0 02 C4 54 */	lfs f0, lit_4837(r2)
/* 802C9238  EC 00 01 B2 */	fmuls f0, f0, f6
/* 802C923C  EC 02 00 2A */	fadds f0, f2, f0
/* 802C9240  EC 1E 00 32 */	fmuls f0, f30, f0
/* 802C9244  EC 5F 00 32 */	fmuls f2, f31, f0
/* 802C9248  FC 60 E8 90 */	fmr f3, f29
/* 802C924C  FC 80 E0 90 */	fmr f4, f28
/* 802C9250  C0 A2 C3 A4 */	lfs f5, lit_3760(r2)
/* 802C9254  C0 02 C3 84 */	lfs f0, lit_3752(r2)
/* 802C9258  EC 00 01 B2 */	fmuls f0, f0, f6
/* 802C925C  EC A5 00 2A */	fadds f5, f5, f0
/* 802C9260  38 A0 00 00 */	li r5, 0
/* 802C9264  4B FF C8 51 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C9268  48 00 00 0C */	b lbl_802C9274
lbl_802C926C:
/* 802C926C  38 60 00 00 */	li r3, 0
/* 802C9270  48 00 00 10 */	b lbl_802C9280
lbl_802C9274:
/* 802C9274  38 7F 01 F0 */	addi r3, r31, 0x1f0
/* 802C9278  4B FE 5A 45 */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C927C  7F A3 EB 78 */	mr r3, r29
lbl_802C9280:
/* 802C9280  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 802C9284  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 802C9288  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 802C928C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 802C9290  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 802C9294  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 802C9298  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 802C929C  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 802C92A0  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 802C92A4  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 802C92A8  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 802C92AC  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 802C92B0  39 61 00 50 */	addi r11, r1, 0x50
/* 802C92B4  48 09 8F 75 */	bl _restgpr_29
/* 802C92B8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 802C92BC  7C 08 03 A6 */	mtlr r0
/* 802C92C0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 802C92C4  4E 80 00 20 */	blr 

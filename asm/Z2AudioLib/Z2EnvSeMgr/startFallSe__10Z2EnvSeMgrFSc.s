lbl_802C8890:
/* 802C8890  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802C8894  7C 08 02 A6 */	mflr r0
/* 802C8898  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C889C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802C88A0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 802C88A4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802C88A8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 802C88AC  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 802C88B0  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 802C88B4  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 802C88B8  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 802C88BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 802C88C0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 802C88C4  7C 7F 1B 78 */	mr r31, r3
/* 802C88C8  88 03 01 D4 */	lbz r0, 0x1d4(r3)
/* 802C88CC  7C 00 07 75 */	extsb. r0, r0
/* 802C88D0  40 80 00 0C */	bge lbl_802C88DC
/* 802C88D4  38 60 00 00 */	li r3, 0
/* 802C88D8  48 00 01 80 */	b lbl_802C8A58
lbl_802C88DC:
/* 802C88DC  38 00 FF FF */	li r0, -1
/* 802C88E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C88E4  7C 80 07 74 */	extsb r0, r4
/* 802C88E8  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C88EC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C88F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C88F4  3C 00 43 30 */	lis r0, 0x4330
/* 802C88F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C88FC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802C8900  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C8904  C0 02 C3 F4 */	lfs f0, lit_4260(r2)
/* 802C8908  EF C1 00 24 */	fdivs f30, f1, f0
/* 802C890C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 802C8910  C3 E2 C3 44 */	lfs f31, lit_3502(r2)
/* 802C8914  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 802C8918  40 81 00 08 */	ble lbl_802C8920
/* 802C891C  48 00 00 18 */	b lbl_802C8934
lbl_802C8920:
/* 802C8920  C3 E2 C3 48 */	lfs f31, lit_3503(r2)
/* 802C8924  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 802C8928  40 80 00 08 */	bge lbl_802C8930
/* 802C892C  48 00 00 08 */	b lbl_802C8934
lbl_802C8930:
/* 802C8930  FF E0 00 90 */	fmr f31, f0
lbl_802C8934:
/* 802C8934  38 7F 00 90 */	addi r3, r31, 0x90
/* 802C8938  4B FE 10 69 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C893C  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C8940  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C8944  C0 82 C3 BC */	lfs f4, lit_3766(r2)
/* 802C8948  FC A0 18 90 */	fmr f5, f3
/* 802C894C  38 60 00 01 */	li r3, 1
/* 802C8950  4B FE 0D 3D */	bl linearTransform__6Z2CalcFfffffb
/* 802C8954  C0 1F 01 E4 */	lfs f0, 0x1e4(r31)
/* 802C8958  EC 00 07 F2 */	fmuls f0, f0, f31
/* 802C895C  EF E0 00 72 */	fmuls f31, f0, f1
/* 802C8960  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 802C8964  4B FE 10 3D */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C8968  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C896C  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C8970  C0 82 C3 A4 */	lfs f4, lit_3760(r2)
/* 802C8974  C0 A2 C4 28 */	lfs f5, lit_4400(r2)
/* 802C8978  38 60 00 01 */	li r3, 1
/* 802C897C  4B FE 0D 11 */	bl linearTransform__6Z2CalcFfffffb
/* 802C8980  C0 1F 01 E8 */	lfs f0, 0x1e8(r31)
/* 802C8984  EF A0 00 72 */	fmuls f29, f0, f1
/* 802C8988  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 802C898C  4B FE 63 55 */	bl getPanPower__12Z2MultiSeMgrFv
/* 802C8990  FF 80 08 90 */	fmr f28, f1
/* 802C8994  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 802C8998  4B FE 64 29 */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802C899C  FC 80 08 90 */	fmr f4, f1
/* 802C89A0  88 1F 01 E0 */	lbz r0, 0x1e0(r31)
/* 802C89A4  2C 00 00 0A */	cmpwi r0, 0xa
/* 802C89A8  41 82 00 4C */	beq lbl_802C89F4
/* 802C89AC  40 80 00 14 */	bge lbl_802C89C0
/* 802C89B0  2C 00 00 08 */	cmpwi r0, 8
/* 802C89B4  41 82 00 18 */	beq lbl_802C89CC
/* 802C89B8  40 80 00 28 */	bge lbl_802C89E0
/* 802C89BC  48 00 00 64 */	b lbl_802C8A20
lbl_802C89C0:
/* 802C89C0  2C 00 00 0C */	cmpwi r0, 0xc
/* 802C89C4  40 80 00 5C */	bge lbl_802C8A20
/* 802C89C8  48 00 00 48 */	b lbl_802C8A10
lbl_802C89CC:
/* 802C89CC  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090016@ha */
/* 802C89D0  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00090016@l */
/* 802C89D4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C89D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C89DC  48 00 00 44 */	b lbl_802C8A20
lbl_802C89E0:
/* 802C89E0  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090001@ha */
/* 802C89E4  38 03 00 01 */	addi r0, r3, 0x0001 /* 0x00090001@l */
/* 802C89E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C89EC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C89F0  48 00 00 30 */	b lbl_802C8A20
lbl_802C89F4:
/* 802C89F4  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090013@ha */
/* 802C89F8  38 03 00 13 */	addi r0, r3, 0x0013 /* 0x00090013@l */
/* 802C89FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C8A00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C8A04  C0 02 C4 18 */	lfs f0, lit_4269(r2)
/* 802C8A08  EF BD 00 32 */	fmuls f29, f29, f0
/* 802C8A0C  48 00 00 14 */	b lbl_802C8A20
lbl_802C8A10:
/* 802C8A10  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090039@ha */
/* 802C8A14  38 03 00 39 */	addi r0, r3, 0x0039 /* 0x00090039@l */
/* 802C8A18  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C8A1C  90 01 00 1C */	stw r0, 0x1c(r1)
lbl_802C8A20:
/* 802C8A20  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802C8A24  90 01 00 08 */	stw r0, 8(r1)
/* 802C8A28  38 7F 01 D8 */	addi r3, r31, 0x1d8
/* 802C8A2C  38 81 00 08 */	addi r4, r1, 8
/* 802C8A30  FC 20 F0 90 */	fmr f1, f30
/* 802C8A34  FC 40 F8 90 */	fmr f2, f31
/* 802C8A38  FC 60 E0 90 */	fmr f3, f28
/* 802C8A3C  FC A0 E8 90 */	fmr f5, f29
/* 802C8A40  38 A0 00 00 */	li r5, 0
/* 802C8A44  4B FF D0 71 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C8A48  7C 7E 1B 78 */	mr r30, r3
/* 802C8A4C  38 7F 01 BC */	addi r3, r31, 0x1bc
/* 802C8A50  4B FE 62 6D */	bl resetMultiSePos__12Z2MultiSeMgrFv
/* 802C8A54  7F C3 F3 78 */	mr r3, r30
lbl_802C8A58:
/* 802C8A58  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 802C8A5C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 802C8A60  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 802C8A64  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 802C8A68  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 802C8A6C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 802C8A70  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 802C8A74  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 802C8A78  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802C8A7C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802C8A80  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802C8A84  7C 08 03 A6 */	mtlr r0
/* 802C8A88  38 21 00 70 */	addi r1, r1, 0x70
/* 802C8A8C  4E 80 00 20 */	blr 

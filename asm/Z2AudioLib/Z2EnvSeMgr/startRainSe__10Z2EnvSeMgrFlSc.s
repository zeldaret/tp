lbl_802C7830:
/* 802C7830  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 802C7834  7C 08 02 A6 */	mflr r0
/* 802C7838  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802C783C  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 802C7840  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 802C7844  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 802C7848  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 802C784C  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 802C7850  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 802C7854  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 802C7858  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 802C785C  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 802C7860  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 802C7864  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 802C7868  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 802C786C  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 802C7870  F3 21 00 88 */	psq_st f25, 136(r1), 0, 0 /* qr0 */
/* 802C7874  DB 01 00 70 */	stfd f24, 0x70(r1)
/* 802C7878  F3 01 00 78 */	psq_st f24, 120(r1), 0, 0 /* qr0 */
/* 802C787C  DA E1 00 60 */	stfd f23, 0x60(r1)
/* 802C7880  F2 E1 00 68 */	psq_st f23, 104(r1), 0, 0 /* qr0 */
/* 802C7884  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 802C7888  93 C1 00 58 */	stw r30, 0x58(r1)
/* 802C788C  7C 7F 1B 78 */	mr r31, r3
/* 802C7890  88 03 01 41 */	lbz r0, 0x141(r3)
/* 802C7894  7C 00 07 75 */	extsb. r0, r0
/* 802C7898  40 81 00 0C */	ble lbl_802C78A4
/* 802C789C  38 60 00 00 */	li r3, 0
/* 802C78A0  48 00 03 F4 */	b lbl_802C7C94
lbl_802C78A4:
/* 802C78A4  38 00 00 01 */	li r0, 1
/* 802C78A8  98 1F 01 41 */	stb r0, 0x141(r31)
/* 802C78AC  38 00 FF FF */	li r0, -1
/* 802C78B0  90 01 00 40 */	stw r0, 0x40(r1)
/* 802C78B4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802C78B8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C78BC  7C A0 07 74 */	extsb r0, r5
/* 802C78C0  C8 22 C4 20 */	lfd f1, lit_4271(r2)
/* 802C78C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C78C8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802C78CC  3C 00 43 30 */	lis r0, 0x4330
/* 802C78D0  90 01 00 48 */	stw r0, 0x48(r1)
/* 802C78D4  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 802C78D8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C78DC  C0 02 C3 F4 */	lfs f0, lit_4260(r2)
/* 802C78E0  EF 81 00 24 */	fdivs f28, f1, f0
/* 802C78E4  2C 04 00 01 */	cmpwi r4, 1
/* 802C78E8  41 82 00 44 */	beq lbl_802C792C
/* 802C78EC  40 80 00 6C */	bge lbl_802C7958
/* 802C78F0  2C 04 00 00 */	cmpwi r4, 0
/* 802C78F4  40 80 00 08 */	bge lbl_802C78FC
/* 802C78F8  48 00 00 60 */	b lbl_802C7958
lbl_802C78FC:
/* 802C78FC  3C 60 00 09 */	lis r3, 0x0009 /* 0x00090024@ha */
/* 802C7900  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00090024@l */
/* 802C7904  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C7908  90 01 00 40 */	stw r0, 0x40(r1)
/* 802C790C  38 03 00 25 */	addi r0, r3, 0x25
/* 802C7910  90 01 00 30 */	stw r0, 0x30(r1)
/* 802C7914  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802C7918  38 03 00 26 */	addi r0, r3, 0x26
/* 802C791C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802C7920  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C7924  38 A0 00 64 */	li r5, 0x64
/* 802C7928  48 00 00 30 */	b lbl_802C7958
lbl_802C792C:
/* 802C792C  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009002F@ha */
/* 802C7930  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0009002F@l */
/* 802C7934  90 01 00 28 */	stw r0, 0x28(r1)
/* 802C7938  90 01 00 40 */	stw r0, 0x40(r1)
/* 802C793C  38 03 00 30 */	addi r0, r3, 0x30
/* 802C7940  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C7944  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802C7948  38 03 00 31 */	addi r0, r3, 0x31
/* 802C794C  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C7950  90 01 00 38 */	stw r0, 0x38(r1)
/* 802C7954  38 A0 00 32 */	li r5, 0x32
lbl_802C7958:
/* 802C7958  88 9F 01 40 */	lbz r4, 0x140(r31)
/* 802C795C  7C 83 07 74 */	extsb r3, r4
/* 802C7960  7C A0 07 74 */	extsb r0, r5
/* 802C7964  7C 03 00 00 */	cmpw r3, r0
/* 802C7968  40 80 00 10 */	bge lbl_802C7978
/* 802C796C  38 04 00 01 */	addi r0, r4, 1
/* 802C7970  98 1F 01 40 */	stb r0, 0x140(r31)
/* 802C7974  48 00 00 0C */	b lbl_802C7980
lbl_802C7978:
/* 802C7978  40 81 00 08 */	ble lbl_802C7980
/* 802C797C  98 BF 01 40 */	stb r5, 0x140(r31)
lbl_802C7980:
/* 802C7980  88 1F 00 7C */	lbz r0, 0x7c(r31)
/* 802C7984  7C 00 07 75 */	extsb. r0, r0
/* 802C7988  40 80 02 2C */	bge lbl_802C7BB4
/* 802C798C  38 7F 00 90 */	addi r3, r31, 0x90
/* 802C7990  4B FE 20 11 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C7994  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7998  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C799C  C0 82 C3 BC */	lfs f4, lit_3766(r2)
/* 802C79A0  FC A0 18 90 */	fmr f5, f3
/* 802C79A4  38 60 00 01 */	li r3, 1
/* 802C79A8  4B FE 1C E5 */	bl linearTransform__6Z2CalcFfffffb
/* 802C79AC  FF A0 08 90 */	fmr f29, f1
/* 802C79B0  38 7F 00 A0 */	addi r3, r31, 0xa0
/* 802C79B4  4B FE 1F ED */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C79B8  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C79BC  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C79C0  C0 82 C3 BC */	lfs f4, lit_3766(r2)
/* 802C79C4  FC A0 18 90 */	fmr f5, f3
/* 802C79C8  38 60 00 01 */	li r3, 1
/* 802C79CC  4B FE 1C C1 */	bl linearTransform__6Z2CalcFfffffb
/* 802C79D0  FF C0 08 90 */	fmr f30, f1
/* 802C79D4  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 802C79D8  4B FE 1F C9 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C79DC  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C79E0  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C79E4  C0 82 C3 A4 */	lfs f4, lit_3760(r2)
/* 802C79E8  C0 A2 C4 28 */	lfs f5, lit_4400(r2)
/* 802C79EC  38 60 00 01 */	li r3, 1
/* 802C79F0  4B FE 1C 9D */	bl linearTransform__6Z2CalcFfffffb
/* 802C79F4  FF E0 08 90 */	fmr f31, f1
/* 802C79F8  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 802C79FC  4B FE 1F A5 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C7A00  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7A04  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C7A08  C0 82 C3 A4 */	lfs f4, lit_3760(r2)
/* 802C7A0C  C0 A2 C4 28 */	lfs f5, lit_4400(r2)
/* 802C7A10  38 60 00 01 */	li r3, 1
/* 802C7A14  4B FE 1C 79 */	bl linearTransform__6Z2CalcFfffffb
/* 802C7A18  FF 60 08 90 */	fmr f27, f1
/* 802C7A1C  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 802C7A20  4B FE 1F 81 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C7A24  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7A28  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C7A2C  C0 82 C3 B0 */	lfs f4, lit_3763(r2)
/* 802C7A30  FC A0 10 90 */	fmr f5, f2
/* 802C7A34  FC C0 20 90 */	fmr f6, f4
/* 802C7A38  38 60 00 01 */	li r3, 1
/* 802C7A3C  4B FE 1C B9 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C7A40  FF 40 08 90 */	fmr f26, f1
/* 802C7A44  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 802C7A48  4B FE 1F 59 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C7A4C  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7A50  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C7A54  C0 82 C3 B0 */	lfs f4, lit_3763(r2)
/* 802C7A58  FC A0 18 90 */	fmr f5, f3
/* 802C7A5C  C0 C2 C3 BC */	lfs f6, lit_3766(r2)
/* 802C7A60  38 60 00 01 */	li r3, 1
/* 802C7A64  4B FE 1C 91 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C7A68  FF 20 08 90 */	fmr f25, f1
/* 802C7A6C  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 802C7A70  4B FE 1F 31 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C7A74  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7A78  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C7A7C  C0 82 C3 B0 */	lfs f4, lit_3763(r2)
/* 802C7A80  FC A0 10 90 */	fmr f5, f2
/* 802C7A84  FC C0 18 90 */	fmr f6, f3
/* 802C7A88  38 60 00 01 */	li r3, 1
/* 802C7A8C  4B FE 1C 69 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C7A90  FF 00 08 90 */	fmr f24, f1
/* 802C7A94  38 7F 01 00 */	addi r3, r31, 0x100
/* 802C7A98  4B FE 1F 09 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C7A9C  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7AA0  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C7AA4  C0 82 C3 B0 */	lfs f4, lit_3763(r2)
/* 802C7AA8  FC A0 10 90 */	fmr f5, f2
/* 802C7AAC  FC C0 18 90 */	fmr f6, f3
/* 802C7AB0  38 60 00 01 */	li r3, 1
/* 802C7AB4  4B FE 1C 41 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C7AB8  FE E0 08 90 */	fmr f23, f1
/* 802C7ABC  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802C7AC0  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 802C7AC4  28 00 00 00 */	cmplwi r0, 0
/* 802C7AC8  41 82 00 10 */	beq lbl_802C7AD8
/* 802C7ACC  C0 02 C3 60 */	lfs f0, lit_3574(r2)
/* 802C7AD0  EF BD 00 32 */	fmuls f29, f29, f0
/* 802C7AD4  EF DE 00 32 */	fmuls f30, f30, f0
lbl_802C7AD8:
/* 802C7AD8  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802C7ADC  28 03 00 00 */	cmplwi r3, 0
/* 802C7AE0  41 82 00 28 */	beq lbl_802C7B08
/* 802C7AE4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802C7AE8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 802C7AEC  80 01 00 40 */	lwz r0, 0x40(r1)
/* 802C7AF0  7C 04 00 40 */	cmplw r4, r0
/* 802C7AF4  41 82 00 14 */	beq lbl_802C7B08
/* 802C7AF8  38 80 00 1E */	li r4, 0x1e
/* 802C7AFC  4B FD A9 E1 */	bl stop__8JAISoundFUl
/* 802C7B00  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802C7B04  4B FD A6 9D */	bl releaseHandle__8JAISoundFv
lbl_802C7B08:
/* 802C7B08  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 802C7B0C  28 03 00 00 */	cmplwi r3, 0
/* 802C7B10  41 82 00 28 */	beq lbl_802C7B38
/* 802C7B14  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802C7B18  90 81 00 18 */	stw r4, 0x18(r1)
/* 802C7B1C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802C7B20  7C 04 00 40 */	cmplw r4, r0
/* 802C7B24  41 82 00 14 */	beq lbl_802C7B38
/* 802C7B28  38 80 00 1E */	li r4, 0x1e
/* 802C7B2C  4B FD A9 B1 */	bl stop__8JAISoundFUl
/* 802C7B30  80 7F 00 8C */	lwz r3, 0x8c(r31)
/* 802C7B34  4B FD A6 6D */	bl releaseHandle__8JAISoundFv
lbl_802C7B38:
/* 802C7B38  80 01 00 40 */	lwz r0, 0x40(r1)
/* 802C7B3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C7B40  38 7F 00 80 */	addi r3, r31, 0x80
/* 802C7B44  38 81 00 14 */	addi r4, r1, 0x14
/* 802C7B48  FC 20 E0 90 */	fmr f1, f28
/* 802C7B4C  FC 40 E8 90 */	fmr f2, f29
/* 802C7B50  FC 60 D0 90 */	fmr f3, f26
/* 802C7B54  FC 80 C0 90 */	fmr f4, f24
/* 802C7B58  FC A0 F8 90 */	fmr f5, f31
/* 802C7B5C  38 A0 00 00 */	li r5, 0
/* 802C7B60  4B FF DF 55 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C7B64  7C 7E 1B 78 */	mr r30, r3
/* 802C7B68  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802C7B6C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C7B70  38 7F 00 88 */	addi r3, r31, 0x88
/* 802C7B74  38 81 00 10 */	addi r4, r1, 0x10
/* 802C7B78  FC 20 E0 90 */	fmr f1, f28
/* 802C7B7C  FC 40 F0 90 */	fmr f2, f30
/* 802C7B80  FC 60 C8 90 */	fmr f3, f25
/* 802C7B84  FC 80 B8 90 */	fmr f4, f23
/* 802C7B88  FC A0 D8 90 */	fmr f5, f27
/* 802C7B8C  38 A0 00 00 */	li r5, 0
/* 802C7B90  4B FF DF 25 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
/* 802C7B94  38 80 00 00 */	li r4, 0
/* 802C7B98  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802C7B9C  41 82 00 10 */	beq lbl_802C7BAC
/* 802C7BA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802C7BA4  41 82 00 08 */	beq lbl_802C7BAC
/* 802C7BA8  38 80 00 01 */	li r4, 1
lbl_802C7BAC:
/* 802C7BAC  7C 83 23 78 */	mr r3, r4
/* 802C7BB0  48 00 00 E4 */	b lbl_802C7C94
lbl_802C7BB4:
/* 802C7BB4  38 7F 00 90 */	addi r3, r31, 0x90
/* 802C7BB8  4B FE 1D E9 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C7BBC  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7BC0  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C7BC4  C0 82 C3 BC */	lfs f4, lit_3766(r2)
/* 802C7BC8  FC A0 18 90 */	fmr f5, f3
/* 802C7BCC  38 60 00 01 */	li r3, 1
/* 802C7BD0  4B FE 1A BD */	bl linearTransform__6Z2CalcFfffffb
/* 802C7BD4  FF C0 08 90 */	fmr f30, f1
/* 802C7BD8  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 802C7BDC  4B FE 1D C5 */	bl calcNoise1f__Q26Z2Calc8FNoise1fFv
/* 802C7BE0  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7BE4  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C7BE8  C0 82 C3 A4 */	lfs f4, lit_3760(r2)
/* 802C7BEC  C0 A2 C4 28 */	lfs f5, lit_4400(r2)
/* 802C7BF0  38 60 00 01 */	li r3, 1
/* 802C7BF4  4B FE 1A 99 */	bl linearTransform__6Z2CalcFfffffb
/* 802C7BF8  FE E0 08 90 */	fmr f23, f1
/* 802C7BFC  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802C7C00  28 03 00 00 */	cmplwi r3, 0
/* 802C7C04  41 82 00 28 */	beq lbl_802C7C2C
/* 802C7C08  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802C7C0C  90 81 00 0C */	stw r4, 0xc(r1)
/* 802C7C10  80 01 00 38 */	lwz r0, 0x38(r1)
/* 802C7C14  7C 04 00 40 */	cmplw r4, r0
/* 802C7C18  41 82 00 14 */	beq lbl_802C7C2C
/* 802C7C1C  38 80 00 1E */	li r4, 0x1e
/* 802C7C20  4B FD A8 BD */	bl stop__8JAISoundFUl
/* 802C7C24  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 802C7C28  4B FD A5 79 */	bl releaseHandle__8JAISoundFv
lbl_802C7C2C:
/* 802C7C2C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 802C7C30  C3 A2 C3 44 */	lfs f29, lit_3502(r2)
/* 802C7C34  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 802C7C38  40 81 00 08 */	ble lbl_802C7C40
/* 802C7C3C  48 00 00 18 */	b lbl_802C7C54
lbl_802C7C40:
/* 802C7C40  C3 A2 C3 48 */	lfs f29, lit_3503(r2)
/* 802C7C44  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 802C7C48  40 80 00 08 */	bge lbl_802C7C50
/* 802C7C4C  48 00 00 08 */	b lbl_802C7C54
lbl_802C7C50:
/* 802C7C50  FF A0 00 90 */	fmr f29, f0
lbl_802C7C54:
/* 802C7C54  80 01 00 38 */	lwz r0, 0x38(r1)
/* 802C7C58  90 01 00 08 */	stw r0, 8(r1)
/* 802C7C5C  38 7F 00 64 */	addi r3, r31, 0x64
/* 802C7C60  4B FE 71 61 */	bl getDolbyPower__12Z2MultiSeMgrFv
/* 802C7C64  FF E0 08 90 */	fmr f31, f1
/* 802C7C68  38 7F 00 64 */	addi r3, r31, 0x64
/* 802C7C6C  4B FE 70 75 */	bl getPanPower__12Z2MultiSeMgrFv
/* 802C7C70  FC 60 08 90 */	fmr f3, f1
/* 802C7C74  38 7F 00 80 */	addi r3, r31, 0x80
/* 802C7C78  38 81 00 08 */	addi r4, r1, 8
/* 802C7C7C  FC 20 E0 90 */	fmr f1, f28
/* 802C7C80  EC 5E 07 72 */	fmuls f2, f30, f29
/* 802C7C84  FC 80 F8 90 */	fmr f4, f31
/* 802C7C88  FC A0 B8 90 */	fmr f5, f23
/* 802C7C8C  38 A0 00 00 */	li r5, 0
/* 802C7C90  4B FF DE 25 */	bl startEnvSeLevel__11Z2EnvSeBaseF10JAISoundIDfffffUl
lbl_802C7C94:
/* 802C7C94  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 802C7C98  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 802C7C9C  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 802C7CA0  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 802C7CA4  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 802C7CA8  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 802C7CAC  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 802C7CB0  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 802C7CB4  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 802C7CB8  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 802C7CBC  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 802C7CC0  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 802C7CC4  E3 21 00 88 */	psq_l f25, 136(r1), 0, 0 /* qr0 */
/* 802C7CC8  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 802C7CCC  E3 01 00 78 */	psq_l f24, 120(r1), 0, 0 /* qr0 */
/* 802C7CD0  CB 01 00 70 */	lfd f24, 0x70(r1)
/* 802C7CD4  E2 E1 00 68 */	psq_l f23, 104(r1), 0, 0 /* qr0 */
/* 802C7CD8  CA E1 00 60 */	lfd f23, 0x60(r1)
/* 802C7CDC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 802C7CE0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 802C7CE4  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 802C7CE8  7C 08 03 A6 */	mtlr r0
/* 802C7CEC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 802C7CF0  4E 80 00 20 */	blr 

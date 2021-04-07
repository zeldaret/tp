lbl_805F878C:
/* 805F878C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805F8790  7C 08 02 A6 */	mflr r0
/* 805F8794  90 01 00 54 */	stw r0, 0x54(r1)
/* 805F8798  39 61 00 50 */	addi r11, r1, 0x50
/* 805F879C  4B D6 9A 39 */	bl _savegpr_27
/* 805F87A0  7C 7B 1B 78 */	mr r27, r3
/* 805F87A4  3C 60 80 60 */	lis r3, lit_3815@ha /* 0x80602664@ha */
/* 805F87A8  3B C3 26 64 */	addi r30, r3, lit_3815@l /* 0x80602664@l */
/* 805F87AC  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805F87B0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805F87B4  FC 00 00 1E */	fctiwz f0, f0
/* 805F87B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805F87BC  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 805F87C0  3B 80 00 00 */	li r28, 0
/* 805F87C4  80 1B 1F B4 */	lwz r0, 0x1fb4(r27)
/* 805F87C8  90 01 00 08 */	stw r0, 8(r1)
/* 805F87CC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 805F87D0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 805F87D4  38 81 00 08 */	addi r4, r1, 8
/* 805F87D8  4B A2 10 21 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 805F87DC  7C 7F 1B 78 */	mr r31, r3
/* 805F87E0  38 00 00 0A */	li r0, 0xa
/* 805F87E4  B0 1B 0C 58 */	sth r0, 0xc58(r27)
/* 805F87E8  4B A8 EB ED */	bl cc_pl_cut_bit_get__Fv
/* 805F87EC  A8 1B 05 BC */	lha r0, 0x5bc(r27)
/* 805F87F0  2C 00 00 03 */	cmpwi r0, 3
/* 805F87F4  40 80 00 14 */	bge lbl_805F8808
/* 805F87F8  2C 00 00 00 */	cmpwi r0, 0
/* 805F87FC  41 82 00 18 */	beq lbl_805F8814
/* 805F8800  40 80 00 F0 */	bge lbl_805F88F0
/* 805F8804  48 00 03 A0 */	b lbl_805F8BA4
lbl_805F8808:
/* 805F8808  2C 00 00 05 */	cmpwi r0, 5
/* 805F880C  41 82 03 34 */	beq lbl_805F8B40
/* 805F8810  48 00 03 94 */	b lbl_805F8BA4
lbl_805F8814:
/* 805F8814  38 00 00 01 */	li r0, 1
/* 805F8818  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F881C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F8820  4B C6 F1 35 */	bl cM_rndF__Ff
/* 805F8824  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 805F8828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F882C  40 80 00 48 */	bge lbl_805F8874
/* 805F8830  88 1B 0C 7B */	lbz r0, 0xc7b(r27)
/* 805F8834  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8838  41 82 00 20 */	beq lbl_805F8858
/* 805F883C  7F 63 DB 78 */	mr r3, r27
/* 805F8840  38 80 00 23 */	li r4, 0x23
/* 805F8844  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F8848  38 A0 00 00 */	li r5, 0
/* 805F884C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F8850  4B FF C2 45 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8854  48 00 00 60 */	b lbl_805F88B4
lbl_805F8858:
/* 805F8858  7F 63 DB 78 */	mr r3, r27
/* 805F885C  38 80 00 24 */	li r4, 0x24
/* 805F8860  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F8864  38 A0 00 00 */	li r5, 0
/* 805F8868  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F886C  4B FF C2 29 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8870  48 00 00 44 */	b lbl_805F88B4
lbl_805F8874:
/* 805F8874  88 1B 0C 7B */	lbz r0, 0xc7b(r27)
/* 805F8878  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F887C  41 82 00 20 */	beq lbl_805F889C
/* 805F8880  7F 63 DB 78 */	mr r3, r27
/* 805F8884  38 80 00 25 */	li r4, 0x25
/* 805F8888  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F888C  38 A0 00 00 */	li r5, 0
/* 805F8890  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F8894  4B FF C2 01 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8898  48 00 00 1C */	b lbl_805F88B4
lbl_805F889C:
/* 805F889C  7F 63 DB 78 */	mr r3, r27
/* 805F88A0  38 80 00 26 */	li r4, 0x26
/* 805F88A4  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F88A8  38 A0 00 00 */	li r5, 0
/* 805F88AC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F88B0  4B FF C1 E5 */	bl anm_init__FP11b_gnd_classifUcf
lbl_805F88B4:
/* 805F88B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007055E@ha */
/* 805F88B8  38 03 05 5E */	addi r0, r3, 0x055E /* 0x0007055E@l */
/* 805F88BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805F88C0  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805F88C4  38 81 00 10 */	addi r4, r1, 0x10
/* 805F88C8  38 A0 FF FF */	li r5, -1
/* 805F88CC  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805F88D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F88D4  7D 89 03 A6 */	mtctr r12
/* 805F88D8  4E 80 04 21 */	bctrl 
/* 805F88DC  38 00 00 14 */	li r0, 0x14
/* 805F88E0  B0 1B 0C 44 */	sth r0, 0xc44(r27)
/* 805F88E4  38 00 00 00 */	li r0, 0
/* 805F88E8  98 1B 0C 7A */	stb r0, 0xc7a(r27)
/* 805F88EC  48 00 02 B8 */	b lbl_805F8BA4
lbl_805F88F0:
/* 805F88F0  2C 00 00 01 */	cmpwi r0, 1
/* 805F88F4  40 82 01 64 */	bne lbl_805F8A58
/* 805F88F8  A8 1B 0C 44 */	lha r0, 0xc44(r27)
/* 805F88FC  2C 00 00 00 */	cmpwi r0, 0
/* 805F8900  40 82 01 78 */	bne lbl_805F8A78
/* 805F8904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F8908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F890C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805F8910  80 03 05 70 */	lwz r0, 0x570(r3)
/* 805F8914  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 805F8918  41 82 01 60 */	beq lbl_805F8A78
/* 805F891C  38 00 00 02 */	li r0, 2
/* 805F8920  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F8924  88 7B 0C 7B */	lbz r3, 0xc7b(r27)
/* 805F8928  38 03 00 01 */	addi r0, r3, 1
/* 805F892C  98 1B 0C 7B */	stb r0, 0xc7b(r27)
/* 805F8930  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F8934  4B C6 F0 21 */	bl cM_rndF__Ff
/* 805F8938  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 805F893C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8940  40 80 00 48 */	bge lbl_805F8988
/* 805F8944  88 1B 0C 7B */	lbz r0, 0xc7b(r27)
/* 805F8948  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F894C  41 82 00 20 */	beq lbl_805F896C
/* 805F8950  7F 63 DB 78 */	mr r3, r27
/* 805F8954  38 80 00 23 */	li r4, 0x23
/* 805F8958  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F895C  38 A0 00 00 */	li r5, 0
/* 805F8960  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F8964  4B FF C1 31 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8968  48 00 00 60 */	b lbl_805F89C8
lbl_805F896C:
/* 805F896C  7F 63 DB 78 */	mr r3, r27
/* 805F8970  38 80 00 24 */	li r4, 0x24
/* 805F8974  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F8978  38 A0 00 00 */	li r5, 0
/* 805F897C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F8980  4B FF C1 15 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F8984  48 00 00 44 */	b lbl_805F89C8
lbl_805F8988:
/* 805F8988  88 1B 0C 7B */	lbz r0, 0xc7b(r27)
/* 805F898C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8990  41 82 00 20 */	beq lbl_805F89B0
/* 805F8994  7F 63 DB 78 */	mr r3, r27
/* 805F8998  38 80 00 25 */	li r4, 0x25
/* 805F899C  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F89A0  38 A0 00 00 */	li r5, 0
/* 805F89A4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F89A8  4B FF C0 ED */	bl anm_init__FP11b_gnd_classifUcf
/* 805F89AC  48 00 00 1C */	b lbl_805F89C8
lbl_805F89B0:
/* 805F89B0  7F 63 DB 78 */	mr r3, r27
/* 805F89B4  38 80 00 26 */	li r4, 0x26
/* 805F89B8  C0 3E 00 8C */	lfs f1, 0x8c(r30)
/* 805F89BC  38 A0 00 00 */	li r5, 0
/* 805F89C0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F89C4  4B FF C0 D1 */	bl anm_init__FP11b_gnd_classifUcf
lbl_805F89C8:
/* 805F89C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007055E@ha */
/* 805F89CC  38 03 05 5E */	addi r0, r3, 0x055E /* 0x0007055E@l */
/* 805F89D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F89D4  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 805F89D8  38 81 00 0C */	addi r4, r1, 0xc
/* 805F89DC  38 A0 FF FF */	li r5, -1
/* 805F89E0  81 9B 05 DC */	lwz r12, 0x5dc(r27)
/* 805F89E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F89E8  7D 89 03 A6 */	mtctr r12
/* 805F89EC  4E 80 04 21 */	bctrl 
/* 805F89F0  80 1B 0D 00 */	lwz r0, 0xd00(r27)
/* 805F89F4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 805F89F8  41 82 00 18 */	beq lbl_805F8A10
/* 805F89FC  38 00 00 0D */	li r0, 0xd
/* 805F8A00  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805F8A04  38 00 00 00 */	li r0, 0
/* 805F8A08  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F8A0C  48 00 00 6C */	b lbl_805F8A78
lbl_805F8A10:
/* 805F8A10  88 1B 0C 7A */	lbz r0, 0xc7a(r27)
/* 805F8A14  28 00 00 03 */	cmplwi r0, 3
/* 805F8A18  40 80 00 18 */	bge lbl_805F8A30
/* 805F8A1C  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 805F8A20  4B C6 EF 35 */	bl cM_rndF__Ff
/* 805F8A24  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 805F8A28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F8A2C  41 82 00 4C */	beq lbl_805F8A78
lbl_805F8A30:
/* 805F8A30  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805F8A34  4B C6 EF 21 */	bl cM_rndF__Ff
/* 805F8A38  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 805F8A3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F8A40  40 80 00 38 */	bge lbl_805F8A78
/* 805F8A44  38 00 00 0D */	li r0, 0xd
/* 805F8A48  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805F8A4C  38 00 00 00 */	li r0, 0
/* 805F8A50  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F8A54  48 00 00 24 */	b lbl_805F8A78
lbl_805F8A58:
/* 805F8A58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805F8A5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805F8A60  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805F8A64  80 03 05 70 */	lwz r0, 0x570(r3)
/* 805F8A68  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 805F8A6C  40 82 00 0C */	bne lbl_805F8A78
/* 805F8A70  38 00 00 01 */	li r0, 1
/* 805F8A74  B0 1B 05 BC */	sth r0, 0x5bc(r27)
lbl_805F8A78:
/* 805F8A78  2C 1D 00 0A */	cmpwi r29, 0xa
/* 805F8A7C  40 80 00 08 */	bge lbl_805F8A84
/* 805F8A80  3B 80 10 00 */	li r28, 0x1000
lbl_805F8A84:
/* 805F8A84  4B A8 E9 51 */	bl cc_pl_cut_bit_get__Fv
/* 805F8A88  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805F8A8C  41 82 00 60 */	beq lbl_805F8AEC
/* 805F8A90  2C 1D 00 05 */	cmpwi r29, 5
/* 805F8A94  40 81 00 58 */	ble lbl_805F8AEC
/* 805F8A98  2C 1D 00 0A */	cmpwi r29, 0xa
/* 805F8A9C  40 80 00 50 */	bge lbl_805F8AEC
/* 805F8AA0  38 1D FF FF */	addi r0, r29, -1
/* 805F8AA4  C8 3E 00 20 */	lfd f1, 0x20(r30)
/* 805F8AA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805F8AAC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805F8AB0  3C 60 43 30 */	lis r3, 0x4330
/* 805F8AB4  90 61 00 18 */	stw r3, 0x18(r1)
/* 805F8AB8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805F8ABC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805F8AC0  FC 00 00 1E */	fctiwz f0, f0
/* 805F8AC4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805F8AC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805F8ACC  7C 00 07 34 */	extsh r0, r0
/* 805F8AD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805F8AD4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805F8AD8  90 61 00 28 */	stw r3, 0x28(r1)
/* 805F8ADC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 805F8AE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 805F8AE4  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805F8AE8  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_805F8AEC:
/* 805F8AEC  2C 1D 00 0A */	cmpwi r29, 0xa
/* 805F8AF0  40 80 00 0C */	bge lbl_805F8AFC
/* 805F8AF4  38 00 00 01 */	li r0, 1
/* 805F8AF8  98 1B 0C 79 */	stb r0, 0xc79(r27)
lbl_805F8AFC:
/* 805F8AFC  80 7B 05 D0 */	lwz r3, 0x5d0(r27)
/* 805F8B00  38 80 00 01 */	li r4, 1
/* 805F8B04  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F8B08  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F8B0C  40 82 00 18 */	bne lbl_805F8B24
/* 805F8B10  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F8B14  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F8B18  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F8B1C  41 82 00 08 */	beq lbl_805F8B24
/* 805F8B20  38 80 00 00 */	li r4, 0
lbl_805F8B24:
/* 805F8B24  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F8B28  41 82 00 7C */	beq lbl_805F8BA4
/* 805F8B2C  38 00 00 0A */	li r0, 0xa
/* 805F8B30  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805F8B34  38 00 00 00 */	li r0, 0
/* 805F8B38  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F8B3C  48 00 00 68 */	b lbl_805F8BA4
lbl_805F8B40:
/* 805F8B40  A8 1B 0C 44 */	lha r0, 0xc44(r27)
/* 805F8B44  2C 00 00 00 */	cmpwi r0, 0
/* 805F8B48  41 82 00 24 */	beq lbl_805F8B6C
/* 805F8B4C  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 805F8B50  38 03 18 00 */	addi r0, r3, 0x1800
/* 805F8B54  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 805F8B58  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 805F8B5C  D0 1B 0E B0 */	stfs f0, 0xeb0(r27)
/* 805F8B60  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 805F8B64  D0 1F 39 5C */	stfs f0, 0x395c(r31)
/* 805F8B68  48 00 00 34 */	b lbl_805F8B9C
lbl_805F8B6C:
/* 805F8B6C  38 00 00 01 */	li r0, 1
/* 805F8B70  98 1B 26 98 */	stb r0, 0x2698(r27)
/* 805F8B74  38 00 00 0A */	li r0, 0xa
/* 805F8B78  B0 1B 0A FE */	sth r0, 0xafe(r27)
/* 805F8B7C  38 00 00 03 */	li r0, 3
/* 805F8B80  B0 1B 05 BC */	sth r0, 0x5bc(r27)
/* 805F8B84  7F 63 DB 78 */	mr r3, r27
/* 805F8B88  38 80 00 20 */	li r4, 0x20
/* 805F8B8C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 805F8B90  38 A0 00 00 */	li r5, 0
/* 805F8B94  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F8B98  4B FF BE FD */	bl anm_init__FP11b_gnd_classifUcf
lbl_805F8B9C:
/* 805F8B9C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 805F8BA0  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
lbl_805F8BA4:
/* 805F8BA4  38 7B 05 2C */	addi r3, r27, 0x52c
/* 805F8BA8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F8BAC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F8BB0  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 805F8BB4  4B C7 6E 89 */	bl cLib_addCalc2__FPffff
/* 805F8BB8  38 7B 04 DE */	addi r3, r27, 0x4de
/* 805F8BBC  A8 9B 0C 3C */	lha r4, 0xc3c(r27)
/* 805F8BC0  38 A0 00 02 */	li r5, 2
/* 805F8BC4  7F 86 E3 78 */	mr r6, r28
/* 805F8BC8  4B C7 7A 41 */	bl cLib_addCalcAngleS2__FPssss
/* 805F8BCC  38 7B 1B 70 */	addi r3, r27, 0x1b70
/* 805F8BD0  4B A8 B8 91 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 805F8BD4  28 03 00 00 */	cmplwi r3, 0
/* 805F8BD8  41 82 00 30 */	beq lbl_805F8C08
/* 805F8BDC  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 805F8BE0  D0 1B 0E B0 */	stfs f0, 0xeb0(r27)
/* 805F8BE4  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 805F8BE8  B0 1B 0E AC */	sth r0, 0xeac(r27)
/* 805F8BEC  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 805F8BF0  D0 1F 39 5C */	stfs f0, 0x395c(r31)
/* 805F8BF4  88 7B 0C 7A */	lbz r3, 0xc7a(r27)
/* 805F8BF8  38 03 00 01 */	addi r0, r3, 1
/* 805F8BFC  98 1B 0C 7A */	stb r0, 0xc7a(r27)
/* 805F8C00  38 00 00 01 */	li r0, 1
/* 805F8C04  98 1B 26 98 */	stb r0, 0x2698(r27)
lbl_805F8C08:
/* 805F8C08  39 61 00 50 */	addi r11, r1, 0x50
/* 805F8C0C  4B D6 96 15 */	bl _restgpr_27
/* 805F8C10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805F8C14  7C 08 03 A6 */	mtlr r0
/* 805F8C18  38 21 00 50 */	addi r1, r1, 0x50
/* 805F8C1C  4E 80 00 20 */	blr 

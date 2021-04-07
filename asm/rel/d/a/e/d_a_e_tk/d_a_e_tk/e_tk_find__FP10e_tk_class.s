lbl_807B8980:
/* 807B8980  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807B8984  7C 08 02 A6 */	mflr r0
/* 807B8988  90 01 00 54 */	stw r0, 0x54(r1)
/* 807B898C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807B8990  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807B8994  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 807B8998  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 807B899C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807B89A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807B89A4  7C 7E 1B 78 */	mr r30, r3
/* 807B89A8  3C 80 80 7C */	lis r4, lit_3762@ha /* 0x807BA26C@ha */
/* 807B89AC  3B E4 A2 6C */	addi r31, r4, lit_3762@l /* 0x807BA26C@l */
/* 807B89B0  C3 FF 00 14 */	lfs f31, 0x14(r31)
/* 807B89B4  C3 DF 00 44 */	lfs f30, 0x44(r31)
/* 807B89B8  A8 03 06 78 */	lha r0, 0x678(r3)
/* 807B89BC  28 00 00 0C */	cmplwi r0, 0xc
/* 807B89C0  41 81 03 04 */	bgt lbl_807B8CC4
/* 807B89C4  3C 80 80 7C */	lis r4, lit_4023@ha /* 0x807BA2F8@ha */
/* 807B89C8  38 84 A2 F8 */	addi r4, r4, lit_4023@l /* 0x807BA2F8@l */
/* 807B89CC  54 00 10 3A */	slwi r0, r0, 2
/* 807B89D0  7C 04 00 2E */	lwzx r0, r4, r0
/* 807B89D4  7C 09 03 A6 */	mtctr r0
/* 807B89D8  4E 80 04 20 */	bctr 
lbl_807B89DC:
/* 807B89DC  38 80 00 04 */	li r4, 4
/* 807B89E0  FC 20 F0 90 */	fmr f1, f30
/* 807B89E4  38 A0 00 00 */	li r5, 0
/* 807B89E8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807B89EC  4B FF F8 49 */	bl anm_init__FP10e_tk_classifUcf
/* 807B89F0  38 00 00 01 */	li r0, 1
/* 807B89F4  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B89F8  48 00 02 CC */	b lbl_807B8CC4
lbl_807B89FC:
/* 807B89FC  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 807B8A00  38 80 00 01 */	li r4, 1
/* 807B8A04  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807B8A08  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B8A0C  40 82 00 14 */	bne lbl_807B8A20
/* 807B8A10  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807B8A14  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 807B8A18  41 82 00 08 */	beq lbl_807B8A20
/* 807B8A1C  38 80 00 00 */	li r4, 0
lbl_807B8A20:
/* 807B8A20  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807B8A24  41 82 02 A0 */	beq lbl_807B8CC4
/* 807B8A28  7F C3 F3 78 */	mr r3, r30
/* 807B8A2C  38 80 00 0A */	li r4, 0xa
/* 807B8A30  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807B8A34  38 A0 00 02 */	li r5, 2
/* 807B8A38  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807B8A3C  4B FF F7 F9 */	bl anm_init__FP10e_tk_classifUcf
/* 807B8A40  38 00 00 02 */	li r0, 2
/* 807B8A44  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B8A48  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 807B8A4C  4B AA EF 09 */	bl cM_rndF__Ff
/* 807B8A50  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 807B8A54  EC 00 08 2A */	fadds f0, f0, f1
/* 807B8A58  FC 00 00 1E */	fctiwz f0, f0
/* 807B8A5C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807B8A60  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807B8A64  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 807B8A68  48 00 02 5C */	b lbl_807B8CC4
lbl_807B8A6C:
/* 807B8A6C  A8 1E 06 96 */	lha r0, 0x696(r30)
/* 807B8A70  2C 00 00 00 */	cmpwi r0, 0
/* 807B8A74  40 82 00 18 */	bne lbl_807B8A8C
/* 807B8A78  38 00 00 02 */	li r0, 2
/* 807B8A7C  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 807B8A80  38 00 00 00 */	li r0, 0
/* 807B8A84  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B8A88  48 00 02 3C */	b lbl_807B8CC4
lbl_807B8A8C:
/* 807B8A8C  3C 80 80 7C */	lis r4, l_HIO@ha /* 0x807BA448@ha */
/* 807B8A90  38 84 A4 48 */	addi r4, r4, l_HIO@l /* 0x807BA448@l */
/* 807B8A94  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 807B8A98  38 80 40 00 */	li r4, 0x4000
/* 807B8A9C  4B FF F9 C5 */	bl pl_check__FP10e_tk_classfs
/* 807B8AA0  2C 03 00 00 */	cmpwi r3, 0
/* 807B8AA4  41 82 02 20 */	beq lbl_807B8CC4
/* 807B8AA8  38 00 00 0A */	li r0, 0xa
/* 807B8AAC  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B8AB0  48 00 02 14 */	b lbl_807B8CC4
lbl_807B8AB4:
/* 807B8AB4  38 80 00 07 */	li r4, 7
/* 807B8AB8  FC 20 F0 90 */	fmr f1, f30
/* 807B8ABC  38 A0 00 00 */	li r5, 0
/* 807B8AC0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807B8AC4  4B FF F7 71 */	bl anm_init__FP10e_tk_classifUcf
/* 807B8AC8  38 00 00 04 */	li r0, 4
/* 807B8ACC  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B8AD0  48 00 01 F4 */	b lbl_807B8CC4
lbl_807B8AD4:
/* 807B8AD4  38 80 00 01 */	li r4, 1
/* 807B8AD8  98 9E 06 A0 */	stb r4, 0x6a0(r30)
/* 807B8ADC  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 807B8AE0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807B8AE4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B8AE8  40 82 00 14 */	bne lbl_807B8AFC
/* 807B8AEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807B8AF0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 807B8AF4  41 82 00 08 */	beq lbl_807B8AFC
/* 807B8AF8  38 80 00 00 */	li r4, 0
lbl_807B8AFC:
/* 807B8AFC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807B8B00  41 82 01 C4 */	beq lbl_807B8CC4
/* 807B8B04  88 1E 05 B8 */	lbz r0, 0x5b8(r30)
/* 807B8B08  7C 00 07 75 */	extsb. r0, r0
/* 807B8B0C  41 82 00 18 */	beq lbl_807B8B24
/* 807B8B10  38 00 00 05 */	li r0, 5
/* 807B8B14  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 807B8B18  38 00 00 00 */	li r0, 0
/* 807B8B1C  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B8B20  48 00 01 A4 */	b lbl_807B8CC4
lbl_807B8B24:
/* 807B8B24  38 00 00 00 */	li r0, 0
/* 807B8B28  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 807B8B2C  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B8B30  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 807B8B34  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807B8B38  4B AA EE 1D */	bl cM_rndF__Ff
/* 807B8B3C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807B8B40  EC 00 08 2A */	fadds f0, f0, f1
/* 807B8B44  FC 00 00 1E */	fctiwz f0, f0
/* 807B8B48  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807B8B4C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807B8B50  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807B8B54  48 00 01 70 */	b lbl_807B8CC4
lbl_807B8B58:
/* 807B8B58  38 80 00 07 */	li r4, 7
/* 807B8B5C  FC 20 F0 90 */	fmr f1, f30
/* 807B8B60  38 A0 00 00 */	li r5, 0
/* 807B8B64  FC 40 F0 90 */	fmr f2, f30
/* 807B8B68  4B FF F6 CD */	bl anm_init__FP10e_tk_classifUcf
/* 807B8B6C  38 00 00 0B */	li r0, 0xb
/* 807B8B70  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B8B74  48 00 01 50 */	b lbl_807B8CC4
lbl_807B8B78:
/* 807B8B78  A8 7E 06 8C */	lha r3, 0x68c(r30)
/* 807B8B7C  38 03 80 00 */	addi r0, r3, -32768
/* 807B8B80  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 807B8B84  38 80 00 01 */	li r4, 1
/* 807B8B88  98 9E 06 A0 */	stb r4, 0x6a0(r30)
/* 807B8B8C  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 807B8B90  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807B8B94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B8B98  40 82 00 14 */	bne lbl_807B8BAC
/* 807B8B9C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807B8BA0  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 807B8BA4  41 82 00 08 */	beq lbl_807B8BAC
/* 807B8BA8  38 80 00 00 */	li r4, 0
lbl_807B8BAC:
/* 807B8BAC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807B8BB0  41 82 01 14 */	beq lbl_807B8CC4
/* 807B8BB4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807B8BB8  D0 1E 06 70 */	stfs f0, 0x670(r30)
/* 807B8BBC  7F C3 F3 78 */	mr r3, r30
/* 807B8BC0  38 80 00 09 */	li r4, 9
/* 807B8BC4  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 807B8BC8  38 A0 00 02 */	li r5, 2
/* 807B8BCC  C0 5E 06 70 */	lfs f2, 0x670(r30)
/* 807B8BD0  4B FF F6 65 */	bl anm_init__FP10e_tk_classifUcf
/* 807B8BD4  38 00 00 0C */	li r0, 0xc
/* 807B8BD8  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B8BDC  48 00 00 E8 */	b lbl_807B8CC4
lbl_807B8BE0:
/* 807B8BE0  38 00 00 01 */	li r0, 1
/* 807B8BE4  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 807B8BE8  38 7E 06 70 */	addi r3, r30, 0x670
/* 807B8BEC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807B8BF0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807B8BF4  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807B8BF8  4B AB 6E 45 */	bl cLib_addCalc2__FPffff
/* 807B8BFC  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 807B8C00  80 7E 05 C4 */	lwz r3, 0x5c4(r30)
/* 807B8C04  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807B8C08  C3 FF 00 30 */	lfs f31, 0x30(r31)
/* 807B8C0C  C3 DF 00 0C */	lfs f30, 0xc(r31)
/* 807B8C10  A8 1E 06 96 */	lha r0, 0x696(r30)
/* 807B8C14  2C 00 00 00 */	cmpwi r0, 0
/* 807B8C18  40 82 00 30 */	bne lbl_807B8C48
/* 807B8C1C  C0 5E 06 90 */	lfs f2, 0x690(r30)
/* 807B8C20  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807B8C24  3C 60 80 7C */	lis r3, l_HIO@ha /* 0x807BA448@ha */
/* 807B8C28  38 63 A4 48 */	addi r3, r3, l_HIO@l /* 0x807BA448@l */
/* 807B8C2C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807B8C30  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B8C34  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807B8C38  40 81 00 10 */	ble lbl_807B8C48
/* 807B8C3C  38 00 00 00 */	li r0, 0
/* 807B8C40  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 807B8C44  48 00 00 5C */	b lbl_807B8CA0
lbl_807B8C48:
/* 807B8C48  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807B8C4C  2C 00 00 00 */	cmpwi r0, 0
/* 807B8C50  40 82 00 50 */	bne lbl_807B8CA0
/* 807B8C54  80 1E 07 1C */	lwz r0, 0x71c(r30)
/* 807B8C58  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807B8C5C  41 82 00 44 */	beq lbl_807B8CA0
/* 807B8C60  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 807B8C64  4B AA EC F1 */	bl cM_rndF__Ff
/* 807B8C68  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 807B8C6C  EC 00 08 2A */	fadds f0, f0, f1
/* 807B8C70  FC 00 00 1E */	fctiwz f0, f0
/* 807B8C74  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807B8C78  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807B8C7C  B0 1E 06 98 */	sth r0, 0x698(r30)
/* 807B8C80  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 807B8C84  4B AA ED 09 */	bl cM_rndFX__Ff
/* 807B8C88  FC 00 08 1E */	fctiwz f0, f1
/* 807B8C8C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807B8C90  80 61 00 24 */	lwz r3, 0x24(r1)
/* 807B8C94  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 807B8C98  7C 00 1A 14 */	add r0, r0, r3
/* 807B8C9C  B0 1E 06 88 */	sth r0, 0x688(r30)
lbl_807B8CA0:
/* 807B8CA0  A8 1E 06 98 */	lha r0, 0x698(r30)
/* 807B8CA4  2C 00 00 00 */	cmpwi r0, 0
/* 807B8CA8  40 82 00 14 */	bne lbl_807B8CBC
/* 807B8CAC  A8 7E 06 8C */	lha r3, 0x68c(r30)
/* 807B8CB0  38 03 80 00 */	addi r0, r3, -32768
/* 807B8CB4  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 807B8CB8  48 00 00 0C */	b lbl_807B8CC4
lbl_807B8CBC:
/* 807B8CBC  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 807B8CC0  B0 1E 06 8C */	sth r0, 0x68c(r30)
lbl_807B8CC4:
/* 807B8CC4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807B8CC8  A8 9E 06 8C */	lha r4, 0x68c(r30)
/* 807B8CCC  38 A0 00 04 */	li r5, 4
/* 807B8CD0  38 C0 08 00 */	li r6, 0x800
/* 807B8CD4  4B AB 79 35 */	bl cLib_addCalcAngleS2__FPssss
/* 807B8CD8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807B8CDC  3C 80 80 7C */	lis r4, l_HIO@ha /* 0x807BA448@ha */
/* 807B8CE0  38 84 A4 48 */	addi r4, r4, l_HIO@l /* 0x807BA448@l */
/* 807B8CE4  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 807B8CE8  EC 20 07 F2 */	fmuls f1, f0, f31
/* 807B8CEC  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 807B8CF0  FC 60 F0 90 */	fmr f3, f30
/* 807B8CF4  4B AB 6D 49 */	bl cLib_addCalc2__FPffff
/* 807B8CF8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807B8CFC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807B8D00  80 63 00 00 */	lwz r3, 0(r3)
/* 807B8D04  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807B8D08  4B 85 36 D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 807B8D0C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 807B8D10  D0 01 00 08 */	stfs f0, 8(r1)
/* 807B8D14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807B8D18  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807B8D1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807B8D20  38 61 00 08 */	addi r3, r1, 8
/* 807B8D24  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807B8D28  4B AB 81 C5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807B8D2C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807B8D30  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 807B8D34  7C 65 1B 78 */	mr r5, r3
/* 807B8D38  4B B8 E3 59 */	bl PSVECAdd
/* 807B8D3C  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 807B8D40  38 80 00 00 */	li r4, 0
/* 807B8D44  38 A0 00 04 */	li r5, 4
/* 807B8D48  38 C0 04 00 */	li r6, 0x400
/* 807B8D4C  4B AB 78 BD */	bl cLib_addCalcAngleS2__FPssss
/* 807B8D50  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807B8D54  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807B8D58  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 807B8D5C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 807B8D60  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807B8D64  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807B8D68  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807B8D6C  7C 08 03 A6 */	mtlr r0
/* 807B8D70  38 21 00 50 */	addi r1, r1, 0x50
/* 807B8D74  4E 80 00 20 */	blr 

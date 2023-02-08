lbl_80CAE8E8:
/* 80CAE8E8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CAE8EC  7C 08 02 A6 */	mflr r0
/* 80CAE8F0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CAE8F4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80CAE8F8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80CAE8FC  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80CAE900  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80CAE904  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80CAE908  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80CAE90C  39 61 00 60 */	addi r11, r1, 0x60
/* 80CAE910  4B 6B 38 B1 */	bl _savegpr_22
/* 80CAE914  7C 76 1B 78 */	mr r22, r3
/* 80CAE918  3C 80 80 CB */	lis r4, l_dzbIdx@ha /* 0x80CAF01C@ha */
/* 80CAE91C  3B 64 F0 1C */	addi r27, r4, l_dzbIdx@l /* 0x80CAF01C@l */
/* 80CAE920  38 80 00 00 */	li r4, 0
/* 80CAE924  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CAE928  4B FF FD 9D */	bl getLinePosPic__14daObjPicture_cFiP4cXyz
/* 80CAE92C  7E C3 B3 78 */	mr r3, r22
/* 80CAE930  38 80 00 01 */	li r4, 1
/* 80CAE934  38 A1 00 20 */	addi r5, r1, 0x20
/* 80CAE938  4B FF FD 8D */	bl getLinePosPic__14daObjPicture_cFiP4cXyz
/* 80CAE93C  3B 00 00 00 */	li r24, 0
/* 80CAE940  3B E0 00 00 */	li r31, 0
/* 80CAE944  3B C0 00 00 */	li r30, 0
/* 80CAE948  C3 DB 00 8C */	lfs f30, 0x8c(r27)
/* 80CAE94C  C3 FB 00 54 */	lfs f31, 0x54(r27)
/* 80CAE950  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CAE954  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80CAE958:
/* 80CAE958  38 1E 0C AC */	addi r0, r30, 0xcac
/* 80CAE95C  7C 76 00 2E */	lwzx r3, r22, r0
/* 80CAE960  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80CAE964  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAE968  38 81 00 14 */	addi r4, r1, 0x14
/* 80CAE96C  7C 84 FA 14 */	add r4, r4, r31
/* 80CAE970  C0 04 00 00 */	lfs f0, 0(r4)
/* 80CAE974  D0 03 00 00 */	stfs f0, 0(r3)
/* 80CAE978  C0 04 00 04 */	lfs f0, 4(r4)
/* 80CAE97C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CAE980  C0 04 00 08 */	lfs f0, 8(r4)
/* 80CAE984  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CAE988  2C 18 00 00 */	cmpwi r24, 0
/* 80CAE98C  3B 23 00 0C */	addi r25, r3, 0xc
/* 80CAE990  40 82 00 0C */	bne lbl_80CAE99C
/* 80CAE994  C3 BB 00 50 */	lfs f29, 0x50(r27)
/* 80CAE998  48 00 00 08 */	b lbl_80CAE9A0
lbl_80CAE99C:
/* 80CAE99C  C3 BB 00 10 */	lfs f29, 0x10(r27)
lbl_80CAE9A0:
/* 80CAE9A0  3A E0 00 01 */	li r23, 1
/* 80CAE9A4  3B A0 00 0C */	li r29, 0xc
lbl_80CAE9A8:
/* 80CAE9A8  7F 56 EA 14 */	add r26, r22, r29
/* 80CAE9AC  38 7A 0D 28 */	addi r3, r26, 0xd28
/* 80CAE9B0  C0 3B 00 84 */	lfs f1, 0x84(r27)
/* 80CAE9B4  C0 5B 00 88 */	lfs f2, 0x88(r27)
/* 80CAE9B8  4B 5C 10 C9 */	bl cLib_addCalc0__FPfff
/* 80CAE9BC  C0 3A 0D 2C */	lfs f1, 0xd2c(r26)
/* 80CAE9C0  C0 16 05 30 */	lfs f0, 0x530(r22)
/* 80CAE9C4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80CAE9C8  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAE9CC  D0 1A 0D 2C */	stfs f0, 0xd2c(r26)
/* 80CAE9D0  C0 3A 0D 2C */	lfs f1, 0xd2c(r26)
/* 80CAE9D4  C0 1A 0D 28 */	lfs f0, 0xd28(r26)
/* 80CAE9D8  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80CAE9DC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CAE9E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CAE9E4  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 80CAE9E8  7F 23 CB 78 */	mr r3, r25
/* 80CAE9EC  4B 35 E3 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CAE9F0  38 76 04 E4 */	addi r3, r22, 0x4e4
/* 80CAE9F4  4B 35 E5 51 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CAE9F8  7F 83 E3 78 */	mr r3, r28
/* 80CAE9FC  38 81 00 08 */	addi r4, r1, 8
/* 80CAEA00  7F 25 CB 78 */	mr r5, r25
/* 80CAEA04  4B 69 83 69 */	bl PSMTXMultVec
/* 80CAEA08  3A F7 00 01 */	addi r23, r23, 1
/* 80CAEA0C  2C 17 00 0A */	cmpwi r23, 0xa
/* 80CAEA10  3B 39 00 0C */	addi r25, r25, 0xc
/* 80CAEA14  3B BD 00 0C */	addi r29, r29, 0xc
/* 80CAEA18  41 80 FF 90 */	blt lbl_80CAE9A8
/* 80CAEA1C  3B 18 00 01 */	addi r24, r24, 1
/* 80CAEA20  2C 18 00 02 */	cmpwi r24, 2
/* 80CAEA24  3B FF 00 0C */	addi r31, r31, 0xc
/* 80CAEA28  3B DE 00 04 */	addi r30, r30, 4
/* 80CAEA2C  41 80 FF 2C */	blt lbl_80CAE958
/* 80CAEA30  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80CAEA34  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80CAEA38  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80CAEA3C  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80CAEA40  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80CAEA44  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80CAEA48  39 61 00 60 */	addi r11, r1, 0x60
/* 80CAEA4C  4B 6B 37 C1 */	bl _restgpr_22
/* 80CAEA50  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CAEA54  7C 08 03 A6 */	mtlr r0
/* 80CAEA58  38 21 00 90 */	addi r1, r1, 0x90
/* 80CAEA5C  4E 80 00 20 */	blr 

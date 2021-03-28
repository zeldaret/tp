lbl_807D2B84:
/* 807D2B84  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807D2B88  7C 08 02 A6 */	mflr r0
/* 807D2B8C  90 01 00 94 */	stw r0, 0x94(r1)
/* 807D2B90  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 807D2B94  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 807D2B98  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 807D2B9C  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 807D2BA0  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 807D2BA4  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 807D2BA8  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 807D2BAC  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 807D2BB0  39 61 00 50 */	addi r11, r1, 0x50
/* 807D2BB4  4B B8 F6 10 */	b _savegpr_23
/* 807D2BB8  7C 7E 1B 78 */	mr r30, r3
/* 807D2BBC  7C BF 2B 78 */	mr r31, r5
/* 807D2BC0  3C 60 80 7E */	lis r3, lit_3882@ha
/* 807D2BC4  38 63 29 8C */	addi r3, r3, lit_3882@l
/* 807D2BC8  1F 9F 00 C0 */	mulli r28, r31, 0xc0
/* 807D2BCC  3B 1C 14 50 */	addi r24, r28, 0x1450
/* 807D2BD0  7F 1E C2 14 */	add r24, r30, r24
/* 807D2BD4  C0 04 00 00 */	lfs f0, 0(r4)
/* 807D2BD8  D0 18 00 B4 */	stfs f0, 0xb4(r24)
/* 807D2BDC  C0 04 00 04 */	lfs f0, 4(r4)
/* 807D2BE0  D0 18 00 B8 */	stfs f0, 0xb8(r24)
/* 807D2BE4  C0 04 00 08 */	lfs f0, 8(r4)
/* 807D2BE8  D0 18 00 BC */	stfs f0, 0xbc(r24)
/* 807D2BEC  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 807D2BF0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807D2BF4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807D2BF8  7C C0 07 75 */	extsb. r0, r6
/* 807D2BFC  41 82 00 10 */	beq lbl_807D2C0C
/* 807D2C00  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 807D2C04  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807D2C08  48 00 00 0C */	b lbl_807D2C14
lbl_807D2C0C:
/* 807D2C0C  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 807D2C10  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_807D2C14:
/* 807D2C14  3B 60 00 0E */	li r27, 0xe
/* 807D2C18  3A F8 00 A8 */	addi r23, r24, 0xa8
/* 807D2C1C  C3 E3 00 48 */	lfs f31, 0x48(r3)
/* 807D2C20  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807D2C24  3B A3 07 68 */	addi r29, r3, calc_mtx@l
lbl_807D2C28:
/* 807D2C28  C0 37 00 00 */	lfs f1, 0(r23)
/* 807D2C2C  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 807D2C30  EF C1 00 28 */	fsubs f30, f1, f0
/* 807D2C34  C0 37 00 04 */	lfs f1, 4(r23)
/* 807D2C38  C0 17 00 10 */	lfs f0, 0x10(r23)
/* 807D2C3C  EF A1 00 28 */	fsubs f29, f1, f0
/* 807D2C40  C0 37 00 08 */	lfs f1, 8(r23)
/* 807D2C44  C0 17 00 14 */	lfs f0, 0x14(r23)
/* 807D2C48  EF 81 00 28 */	fsubs f28, f1, f0
/* 807D2C4C  FC 20 F0 90 */	fmr f1, f30
/* 807D2C50  FC 40 E0 90 */	fmr f2, f28
/* 807D2C54  4B A9 4A 20 */	b cM_atan2s__Fff
/* 807D2C58  7C 79 07 34 */	extsh r25, r3
/* 807D2C5C  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 807D2C60  EC 1C 07 32 */	fmuls f0, f28, f28
/* 807D2C64  EC 41 00 2A */	fadds f2, f1, f0
/* 807D2C68  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 807D2C6C  40 81 00 0C */	ble lbl_807D2C78
/* 807D2C70  FC 00 10 34 */	frsqrte f0, f2
/* 807D2C74  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807D2C78:
/* 807D2C78  FC 20 E8 90 */	fmr f1, f29
/* 807D2C7C  4B A9 49 F8 */	b cM_atan2s__Fff
/* 807D2C80  7C 03 00 D0 */	neg r0, r3
/* 807D2C84  7C 1A 07 34 */	extsh r26, r0
/* 807D2C88  80 7D 00 00 */	lwz r3, 0(r29)
/* 807D2C8C  7F 24 CB 78 */	mr r4, r25
/* 807D2C90  4B 83 97 4C */	b mDoMtx_YrotS__FPA4_fs
/* 807D2C94  80 7D 00 00 */	lwz r3, 0(r29)
/* 807D2C98  7F 44 D3 78 */	mr r4, r26
/* 807D2C9C  4B 83 97 00 */	b mDoMtx_XrotM__FPA4_fs
/* 807D2CA0  38 61 00 14 */	addi r3, r1, 0x14
/* 807D2CA4  38 81 00 08 */	addi r4, r1, 8
/* 807D2CA8  4B A9 E2 44 */	b MtxPosition__FP4cXyzP4cXyz
/* 807D2CAC  C0 37 00 0C */	lfs f1, 0xc(r23)
/* 807D2CB0  C0 01 00 08 */	lfs f0, 8(r1)
/* 807D2CB4  EC 01 00 2A */	fadds f0, f1, f0
/* 807D2CB8  D0 17 00 00 */	stfs f0, 0(r23)
/* 807D2CBC  C0 37 00 10 */	lfs f1, 0x10(r23)
/* 807D2CC0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 807D2CC4  EC 01 00 2A */	fadds f0, f1, f0
/* 807D2CC8  D0 17 00 04 */	stfs f0, 4(r23)
/* 807D2CCC  C0 37 00 14 */	lfs f1, 0x14(r23)
/* 807D2CD0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 807D2CD4  EC 01 00 2A */	fadds f0, f1, f0
/* 807D2CD8  D0 17 00 08 */	stfs f0, 8(r23)
/* 807D2CDC  3B 7B FF FF */	addi r27, r27, -1
/* 807D2CE0  2C 1B 00 01 */	cmpwi r27, 1
/* 807D2CE4  3A F7 FF F4 */	addi r23, r23, -12
/* 807D2CE8  40 80 FF 40 */	bge lbl_807D2C28
/* 807D2CEC  7F 04 C3 78 */	mr r4, r24
/* 807D2CF0  1C 1F 00 3C */	mulli r0, r31, 0x3c
/* 807D2CF4  7C 7E 02 14 */	add r3, r30, r0
/* 807D2CF8  80 63 16 08 */	lwz r3, 0x1608(r3)
/* 807D2CFC  80 63 00 00 */	lwz r3, 0(r3)
/* 807D2D00  38 00 00 10 */	li r0, 0x10
/* 807D2D04  7C 09 03 A6 */	mtctr r0
lbl_807D2D08:
/* 807D2D08  C0 04 00 00 */	lfs f0, 0(r4)
/* 807D2D0C  D0 03 00 00 */	stfs f0, 0(r3)
/* 807D2D10  C0 04 00 04 */	lfs f0, 4(r4)
/* 807D2D14  D0 03 00 04 */	stfs f0, 4(r3)
/* 807D2D18  C0 04 00 08 */	lfs f0, 8(r4)
/* 807D2D1C  D0 03 00 08 */	stfs f0, 8(r3)
/* 807D2D20  38 63 00 0C */	addi r3, r3, 0xc
/* 807D2D24  38 84 00 0C */	addi r4, r4, 0xc
/* 807D2D28  42 00 FF E0 */	bdnz lbl_807D2D08
/* 807D2D2C  80 7E 16 80 */	lwz r3, 0x1680(r30)
/* 807D2D30  80 63 00 00 */	lwz r3, 0(r3)
/* 807D2D34  7C 9E E2 14 */	add r4, r30, r28
/* 807D2D38  C0 04 15 04 */	lfs f0, 0x1504(r4)
/* 807D2D3C  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 807D2D40  7C 03 05 2E */	stfsx f0, r3, r0
/* 807D2D44  C0 04 15 08 */	lfs f0, 0x1508(r4)
/* 807D2D48  7C 63 02 14 */	add r3, r3, r0
/* 807D2D4C  D0 03 00 04 */	stfs f0, 4(r3)
/* 807D2D50  C0 04 15 0C */	lfs f0, 0x150c(r4)
/* 807D2D54  D0 03 00 08 */	stfs f0, 8(r3)
/* 807D2D58  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 807D2D5C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 807D2D60  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 807D2D64  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 807D2D68  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 807D2D6C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 807D2D70  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 807D2D74  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 807D2D78  39 61 00 50 */	addi r11, r1, 0x50
/* 807D2D7C  4B B8 F4 94 */	b _restgpr_23
/* 807D2D80  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807D2D84  7C 08 03 A6 */	mtlr r0
/* 807D2D88  38 21 00 90 */	addi r1, r1, 0x90
/* 807D2D8C  4E 80 00 20 */	blr 

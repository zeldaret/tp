lbl_805B4D4C:
/* 805B4D4C  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 805B4D50  7C 08 02 A6 */	mflr r0
/* 805B4D54  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 805B4D58  DB E1 01 90 */	stfd f31, 0x190(r1)
/* 805B4D5C  F3 E1 01 98 */	psq_st f31, 408(r1), 0, 0 /* qr0 */
/* 805B4D60  39 61 01 90 */	addi r11, r1, 0x190
/* 805B4D64  4B DA D4 5D */	bl _savegpr_22
/* 805B4D68  7C 7B 1B 78 */	mr r27, r3
/* 805B4D6C  3C 60 80 5C */	lis r3, lit_3816@ha /* 0x805BA588@ha */
/* 805B4D70  3B 83 A5 88 */	addi r28, r3, lit_3816@l /* 0x805BA588@l */
/* 805B4D74  80 9B 05 B4 */	lwz r4, 0x5b4(r27)
/* 805B4D78  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 805B4D7C  FC 00 00 1E */	fctiwz f0, f0
/* 805B4D80  D8 01 01 50 */	stfd f0, 0x150(r1)
/* 805B4D84  83 A1 01 54 */	lwz r29, 0x154(r1)
/* 805B4D88  3B 40 00 00 */	li r26, 0
/* 805B4D8C  A8 1B 06 D4 */	lha r0, 0x6d4(r27)
/* 805B4D90  1C 00 05 DC */	mulli r0, r0, 0x5dc
/* 805B4D94  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805B4D98  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805B4D9C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805B4DA0  7C 23 04 2E */	lfsx f1, r3, r0
/* 805B4DA4  C0 1C 00 50 */	lfs f0, 0x50(r28)
/* 805B4DA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 805B4DAC  FC 00 00 1E */	fctiwz f0, f0
/* 805B4DB0  D8 01 01 58 */	stfd f0, 0x158(r1)
/* 805B4DB4  83 21 01 5C */	lwz r25, 0x15c(r1)
/* 805B4DB8  80 64 00 04 */	lwz r3, 4(r4)
/* 805B4DBC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B4DC0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B4DC4  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B4DC8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805B4DCC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805B4DD0  80 84 00 00 */	lwz r4, 0(r4)
/* 805B4DD4  4B D9 16 DD */	bl PSMTXCopy
/* 805B4DD8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B4DDC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B4DE0  80 63 00 00 */	lwz r3, 0(r3)
/* 805B4DE4  7F 24 CB 78 */	mr r4, r25
/* 805B4DE8  4B A5 76 E5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 805B4DEC  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805B4DF0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805B4DF4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805B4DF8  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805B4DFC  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805B4E00  38 9B 12 B0 */	addi r4, r27, 0x12b0
/* 805B4E04  4B CB C0 E9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805B4E08  C0 1C 00 54 */	lfs f0, 0x54(r28)
/* 805B4E0C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805B4E10  C0 1C 00 58 */	lfs f0, 0x58(r28)
/* 805B4E14  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805B4E18  C0 1C 00 04 */	lfs f0, 4(r28)
/* 805B4E1C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805B4E20  38 61 00 A4 */	addi r3, r1, 0xa4
/* 805B4E24  38 81 00 98 */	addi r4, r1, 0x98
/* 805B4E28  4B CB C0 C5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805B4E2C  A8 1B 06 CC */	lha r0, 0x6cc(r27)
/* 805B4E30  2C 00 00 02 */	cmpwi r0, 2
/* 805B4E34  41 82 01 2C */	beq lbl_805B4F60
/* 805B4E38  40 80 00 14 */	bge lbl_805B4E4C
/* 805B4E3C  2C 00 00 00 */	cmpwi r0, 0
/* 805B4E40  41 82 00 18 */	beq lbl_805B4E58
/* 805B4E44  40 80 00 70 */	bge lbl_805B4EB4
/* 805B4E48  48 00 01 84 */	b lbl_805B4FCC
lbl_805B4E4C:
/* 805B4E4C  2C 00 00 04 */	cmpwi r0, 4
/* 805B4E50  40 80 01 7C */	bge lbl_805B4FCC
/* 805B4E54  48 00 01 40 */	b lbl_805B4F94
lbl_805B4E58:
/* 805B4E58  7F 63 DB 78 */	mr r3, r27
/* 805B4E5C  38 80 00 09 */	li r4, 9
/* 805B4E60  C0 3C 00 30 */	lfs f1, 0x30(r28)
/* 805B4E64  38 A0 00 00 */	li r5, 0
/* 805B4E68  C0 5C 00 00 */	lfs f2, 0(r28)
/* 805B4E6C  4B FF E7 35 */	bl anm_init__FP10b_bq_classifUcf
/* 805B4E70  38 00 00 01 */	li r0, 1
/* 805B4E74  B0 1B 06 CC */	sth r0, 0x6cc(r27)
/* 805B4E78  C0 3C 00 00 */	lfs f1, 0(r28)
/* 805B4E7C  4B CB 2A D9 */	bl cM_rndF__Ff
/* 805B4E80  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 805B4E84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805B4E88  40 80 00 18 */	bge lbl_805B4EA0
/* 805B4E8C  38 00 05 00 */	li r0, 0x500
/* 805B4E90  B0 1B 13 8E */	sth r0, 0x138e(r27)
/* 805B4E94  38 00 FB 00 */	li r0, -1280
/* 805B4E98  B0 1B 13 90 */	sth r0, 0x1390(r27)
/* 805B4E9C  48 00 01 30 */	b lbl_805B4FCC
lbl_805B4EA0:
/* 805B4EA0  38 00 FB 00 */	li r0, -1280
/* 805B4EA4  B0 1B 13 8E */	sth r0, 0x138e(r27)
/* 805B4EA8  38 00 05 00 */	li r0, 0x500
/* 805B4EAC  B0 1B 13 90 */	sth r0, 0x1390(r27)
/* 805B4EB0  48 00 01 1C */	b lbl_805B4FCC
lbl_805B4EB4:
/* 805B4EB4  2C 1D 00 36 */	cmpwi r29, 0x36
/* 805B4EB8  41 80 00 44 */	blt lbl_805B4EFC
/* 805B4EBC  40 82 00 3C */	bne lbl_805B4EF8
/* 805B4EC0  38 60 00 00 */	li r3, 0
/* 805B4EC4  38 00 00 10 */	li r0, 0x10
/* 805B4EC8  7C 09 03 A6 */	mtctr r0
lbl_805B4ECC:
/* 805B4ECC  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 805B4ED0  7C 9B 1A 14 */	add r4, r27, r3
/* 805B4ED4  D0 04 12 C8 */	stfs f0, 0x12c8(r4)
/* 805B4ED8  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805B4EDC  D0 04 12 CC */	stfs f0, 0x12cc(r4)
/* 805B4EE0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 805B4EE4  D0 04 12 D0 */	stfs f0, 0x12d0(r4)
/* 805B4EE8  38 63 00 0C */	addi r3, r3, 0xc
/* 805B4EEC  42 00 FF E0 */	bdnz lbl_805B4ECC
/* 805B4EF0  38 00 00 1E */	li r0, 0x1e
/* 805B4EF4  B0 1B 06 D6 */	sth r0, 0x6d6(r27)
lbl_805B4EF8:
/* 805B4EF8  3B 40 00 01 */	li r26, 1
lbl_805B4EFC:
/* 805B4EFC  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805B4F00  38 80 00 01 */	li r4, 1
/* 805B4F04  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805B4F08  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805B4F0C  40 82 00 18 */	bne lbl_805B4F24
/* 805B4F10  C0 3C 00 04 */	lfs f1, 4(r28)
/* 805B4F14  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805B4F18  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B4F1C  41 82 00 08 */	beq lbl_805B4F24
/* 805B4F20  38 80 00 00 */	li r4, 0
lbl_805B4F24:
/* 805B4F24  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805B4F28  41 82 00 A4 */	beq lbl_805B4FCC
/* 805B4F2C  7F 63 DB 78 */	mr r3, r27
/* 805B4F30  38 80 00 0A */	li r4, 0xa
/* 805B4F34  C0 3C 00 48 */	lfs f1, 0x48(r28)
/* 805B4F38  38 A0 00 02 */	li r5, 2
/* 805B4F3C  C0 5C 00 00 */	lfs f2, 0(r28)
/* 805B4F40  4B FF E6 61 */	bl anm_init__FP10b_bq_classifUcf
/* 805B4F44  38 00 00 02 */	li r0, 2
/* 805B4F48  B0 1B 06 CC */	sth r0, 0x6cc(r27)
/* 805B4F4C  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805BAD60@ha */
/* 805B4F50  38 63 AD 60 */	addi r3, r3, l_HIO@l /* 0x805BAD60@l */
/* 805B4F54  A8 03 00 0E */	lha r0, 0xe(r3)
/* 805B4F58  B0 1B 06 D4 */	sth r0, 0x6d4(r27)
/* 805B4F5C  48 00 00 70 */	b lbl_805B4FCC
lbl_805B4F60:
/* 805B4F60  3B 40 00 01 */	li r26, 1
/* 805B4F64  A8 1B 06 D4 */	lha r0, 0x6d4(r27)
/* 805B4F68  2C 00 00 00 */	cmpwi r0, 0
/* 805B4F6C  40 82 00 60 */	bne lbl_805B4FCC
/* 805B4F70  7F 63 DB 78 */	mr r3, r27
/* 805B4F74  38 80 00 0A */	li r4, 0xa
/* 805B4F78  C0 3C 00 48 */	lfs f1, 0x48(r28)
/* 805B4F7C  38 A0 00 00 */	li r5, 0
/* 805B4F80  C0 5C 00 00 */	lfs f2, 0(r28)
/* 805B4F84  4B FF E6 1D */	bl anm_init__FP10b_bq_classifUcf
/* 805B4F88  38 00 00 03 */	li r0, 3
/* 805B4F8C  B0 1B 06 CC */	sth r0, 0x6cc(r27)
/* 805B4F90  48 00 00 3C */	b lbl_805B4FCC
lbl_805B4F94:
/* 805B4F94  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805B4F98  38 80 00 01 */	li r4, 1
/* 805B4F9C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805B4FA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805B4FA4  40 82 00 18 */	bne lbl_805B4FBC
/* 805B4FA8  C0 3C 00 04 */	lfs f1, 4(r28)
/* 805B4FAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805B4FB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805B4FB4  41 82 00 08 */	beq lbl_805B4FBC
/* 805B4FB8  38 80 00 00 */	li r4, 0
lbl_805B4FBC:
/* 805B4FBC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805B4FC0  41 82 00 0C */	beq lbl_805B4FCC
/* 805B4FC4  38 00 00 01 */	li r0, 1
/* 805B4FC8  B0 1B 06 DE */	sth r0, 0x6de(r27)
lbl_805B4FCC:
/* 805B4FCC  A8 1B 06 DE */	lha r0, 0x6de(r27)
/* 805B4FD0  2C 00 00 00 */	cmpwi r0, 0
/* 805B4FD4  41 82 00 20 */	beq lbl_805B4FF4
/* 805B4FD8  38 00 00 01 */	li r0, 1
/* 805B4FDC  B0 1B 06 CA */	sth r0, 0x6ca(r27)
/* 805B4FE0  38 60 00 00 */	li r3, 0
/* 805B4FE4  B0 7B 06 CC */	sth r3, 0x6cc(r27)
/* 805B4FE8  38 00 00 0A */	li r0, 0xa
/* 805B4FEC  98 1B 06 FC */	stb r0, 0x6fc(r27)
/* 805B4FF0  B0 7B 13 8E */	sth r3, 0x138e(r27)
lbl_805B4FF4:
/* 805B4FF4  C0 5C 00 04 */	lfs f2, 4(r28)
/* 805B4FF8  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 805B4FFC  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 805B5000  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 805B5004  7F 40 07 75 */	extsb. r0, r26
/* 805B5008  41 82 04 08 */	beq lbl_805B5410
/* 805B500C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007013F@ha */
/* 805B5010  38 03 01 3F */	addi r0, r3, 0x013F /* 0x0007013F@l */
/* 805B5014  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B5018  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 805B501C  38 81 00 28 */	addi r4, r1, 0x28
/* 805B5020  38 A0 FF FF */	li r5, -1
/* 805B5024  81 9B 05 E0 */	lwz r12, 0x5e0(r27)
/* 805B5028  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805B502C  7D 89 03 A6 */	mtctr r12
/* 805B5030  4E 80 04 21 */	bctrl 
/* 805B5034  3B 00 00 00 */	li r24, 0
/* 805B5038  3A E0 00 00 */	li r23, 0
/* 805B503C  3A C0 00 00 */	li r22, 0
/* 805B5040  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B5044  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B5048  3C 60 80 5C */	lis r3, fireno_4463@ha /* 0x805BA93C@ha */
/* 805B504C  3B C3 A9 3C */	addi r30, r3, fireno_4463@l /* 0x805BA93C@l */
lbl_805B5050:
/* 805B5050  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B5054  38 00 00 FF */	li r0, 0xff
/* 805B5058  90 01 00 08 */	stw r0, 8(r1)
/* 805B505C  38 80 00 00 */	li r4, 0
/* 805B5060  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5064  38 00 FF FF */	li r0, -1
/* 805B5068  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B506C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5070  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5074  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5078  3B F6 12 00 */	addi r31, r22, 0x1200
/* 805B507C  7C 9B F8 2E */	lwzx r4, r27, r31
/* 805B5080  38 A0 00 00 */	li r5, 0
/* 805B5084  7C DE BA 2E */	lhzx r6, r30, r23
/* 805B5088  38 FB 04 D0 */	addi r7, r27, 0x4d0
/* 805B508C  39 00 00 00 */	li r8, 0
/* 805B5090  39 20 00 00 */	li r9, 0
/* 805B5094  39 40 00 00 */	li r10, 0
/* 805B5098  C0 3C 00 00 */	lfs f1, 0(r28)
/* 805B509C  4B A9 84 31 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B50A0  7C 7B F9 2E */	stwx r3, r27, r31
/* 805B50A4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B50A8  38 63 02 10 */	addi r3, r3, 0x210
/* 805B50AC  7C 9B F8 2E */	lwzx r4, r27, r31
/* 805B50B0  4B A9 68 69 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805B50B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B50B8  41 82 00 54 */	beq lbl_805B510C
/* 805B50BC  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805B50C0  80 63 00 04 */	lwz r3, 4(r3)
/* 805B50C4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805B50C8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805B50CC  38 63 08 D0 */	addi r3, r3, 0x8d0
/* 805B50D0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 805B50D4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 805B50D8  80 84 00 00 */	lwz r4, 0(r4)
/* 805B50DC  4B D9 13 D5 */	bl PSMTXCopy
/* 805B50E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B50E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B50E8  80 63 00 00 */	lwz r3, 0(r3)
/* 805B50EC  7F 24 CB 78 */	mr r4, r25
/* 805B50F0  4B A5 73 DD */	bl mDoMtx_ZrotM__FPA4_fs
/* 805B50F4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B50F8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805B50FC  80 63 00 00 */	lwz r3, 0(r3)
/* 805B5100  38 9F 00 68 */	addi r4, r31, 0x68
/* 805B5104  38 BF 00 A4 */	addi r5, r31, 0xa4
/* 805B5108  4B CC B6 D9 */	bl func_802807E0
lbl_805B510C:
/* 805B510C  3B 18 00 01 */	addi r24, r24, 1
/* 805B5110  2C 18 00 04 */	cmpwi r24, 4
/* 805B5114  3A F7 00 02 */	addi r23, r23, 2
/* 805B5118  3A D6 00 04 */	addi r22, r22, 4
/* 805B511C  41 80 FF 34 */	blt lbl_805B5050
/* 805B5120  80 7B 13 88 */	lwz r3, 0x1388(r27)
/* 805B5124  38 03 00 01 */	addi r0, r3, 1
/* 805B5128  90 1B 13 88 */	stw r0, 0x1388(r27)
/* 805B512C  80 1B 13 88 */	lwz r0, 0x1388(r27)
/* 805B5130  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 805B5134  90 1B 13 88 */	stw r0, 0x1388(r27)
/* 805B5138  80 1B 13 88 */	lwz r0, 0x1388(r27)
/* 805B513C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 805B5140  38 63 12 C8 */	addi r3, r3, 0x12c8
/* 805B5144  7C 7B 1A 14 */	add r3, r27, r3
/* 805B5148  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 805B514C  D0 03 00 00 */	stfs f0, 0(r3)
/* 805B5150  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805B5154  D0 03 00 04 */	stfs f0, 4(r3)
/* 805B5158  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 805B515C  D0 03 00 08 */	stfs f0, 8(r3)
/* 805B5160  80 7B 13 88 */	lwz r3, 0x1388(r27)
/* 805B5164  38 03 FF F8 */	addi r0, r3, -8
/* 805B5168  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 805B516C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 805B5170  38 63 12 C8 */	addi r3, r3, 0x12c8
/* 805B5174  7C 7B 1A 14 */	add r3, r27, r3
/* 805B5178  C0 03 00 00 */	lfs f0, 0(r3)
/* 805B517C  D0 1B 12 BC */	stfs f0, 0x12bc(r27)
/* 805B5180  C0 03 00 04 */	lfs f0, 4(r3)
/* 805B5184  D0 1B 12 C0 */	stfs f0, 0x12c0(r27)
/* 805B5188  C0 03 00 08 */	lfs f0, 8(r3)
/* 805B518C  D0 1B 12 C4 */	stfs f0, 0x12c4(r27)
/* 805B5190  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007013D@ha */
/* 805B5194  38 03 01 3D */	addi r0, r3, 0x013D /* 0x0007013D@l */
/* 805B5198  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B519C  38 7B 06 84 */	addi r3, r27, 0x684
/* 805B51A0  38 81 00 24 */	addi r4, r1, 0x24
/* 805B51A4  38 A0 00 00 */	li r5, 0
/* 805B51A8  38 C0 FF FF */	li r6, -1
/* 805B51AC  81 9B 06 94 */	lwz r12, 0x694(r27)
/* 805B51B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B51B4  7D 89 03 A6 */	mtctr r12
/* 805B51B8  4E 80 04 21 */	bctrl 
/* 805B51BC  38 61 00 E0 */	addi r3, r1, 0xe0
/* 805B51C0  4B AC 2A A9 */	bl __ct__11dBgS_LinChkFv
/* 805B51C4  38 61 00 E0 */	addi r3, r1, 0xe0
/* 805B51C8  38 9B 12 B0 */	addi r4, r27, 0x12b0
/* 805B51CC  38 BB 12 BC */	addi r5, r27, 0x12bc
/* 805B51D0  7F 66 DB 78 */	mr r6, r27
/* 805B51D4  4B AC 2B 91 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 805B51D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B51DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B51E0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805B51E4  38 81 00 E0 */	addi r4, r1, 0xe0
/* 805B51E8  4B AB F1 CD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 805B51EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805B51F0  41 82 00 F8 */	beq lbl_805B52E8
/* 805B51F4  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 805B51F8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805B51FC  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 805B5200  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 805B5204  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 805B5208  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 805B520C  3B C0 00 00 */	li r30, 0
/* 805B5210  3B 00 00 00 */	li r24, 0
/* 805B5214  3B 20 00 00 */	li r25, 0
/* 805B5218  3C 60 80 5C */	lis r3, fireno_4473@ha /* 0x805BA944@ha */
/* 805B521C  3A C3 A9 44 */	addi r22, r3, fireno_4473@l /* 0x805BA944@l */
lbl_805B5220:
/* 805B5220  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 805B5224  38 00 00 FF */	li r0, 0xff
/* 805B5228  90 01 00 08 */	stw r0, 8(r1)
/* 805B522C  38 80 00 00 */	li r4, 0
/* 805B5230  90 81 00 0C */	stw r4, 0xc(r1)
/* 805B5234  38 00 FF FF */	li r0, -1
/* 805B5238  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B523C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805B5240  90 81 00 18 */	stw r4, 0x18(r1)
/* 805B5244  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805B5248  3A F9 12 10 */	addi r23, r25, 0x1210
/* 805B524C  7C 9B B8 2E */	lwzx r4, r27, r23
/* 805B5250  38 A0 00 00 */	li r5, 0
/* 805B5254  7C D6 C2 2E */	lhzx r6, r22, r24
/* 805B5258  38 E1 00 98 */	addi r7, r1, 0x98
/* 805B525C  39 00 00 00 */	li r8, 0
/* 805B5260  39 20 00 00 */	li r9, 0
/* 805B5264  39 40 00 00 */	li r10, 0
/* 805B5268  C0 3C 00 00 */	lfs f1, 0(r28)
/* 805B526C  4B A9 82 61 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805B5270  7C 7B B9 2E */	stwx r3, r27, r23
/* 805B5274  3B DE 00 01 */	addi r30, r30, 1
/* 805B5278  2C 1E 00 02 */	cmpwi r30, 2
/* 805B527C  3B 18 00 02 */	addi r24, r24, 2
/* 805B5280  3B 39 00 04 */	addi r25, r25, 4
/* 805B5284  41 80 FF 9C */	blt lbl_805B5220
/* 805B5288  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 805B528C  D0 1B 11 44 */	stfs f0, 0x1144(r27)
/* 805B5290  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 805B5294  D0 1B 11 48 */	stfs f0, 0x1148(r27)
/* 805B5298  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 805B529C  D0 1B 11 4C */	stfs f0, 0x114c(r27)
/* 805B52A0  88 7B 13 93 */	lbz r3, 0x1393(r27)
/* 805B52A4  7C 60 07 74 */	extsb r0, r3
/* 805B52A8  2C 00 00 0A */	cmpwi r0, 0xa
/* 805B52AC  41 80 00 34 */	blt lbl_805B52E0
/* 805B52B0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007013E@ha */
/* 805B52B4  38 03 01 3E */	addi r0, r3, 0x013E /* 0x0007013E@l */
/* 805B52B8  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B52BC  38 7B 06 A4 */	addi r3, r27, 0x6a4
/* 805B52C0  38 81 00 20 */	addi r4, r1, 0x20
/* 805B52C4  38 A0 00 00 */	li r5, 0
/* 805B52C8  38 C0 FF FF */	li r6, -1
/* 805B52CC  81 9B 06 B4 */	lwz r12, 0x6b4(r27)
/* 805B52D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805B52D4  7D 89 03 A6 */	mtctr r12
/* 805B52D8  4E 80 04 21 */	bctrl 
/* 805B52DC  48 00 00 0C */	b lbl_805B52E8
lbl_805B52E0:
/* 805B52E0  38 03 00 01 */	addi r0, r3, 1
/* 805B52E4  98 1B 13 93 */	stb r0, 0x1393(r27)
lbl_805B52E8:
/* 805B52E8  38 61 00 80 */	addi r3, r1, 0x80
/* 805B52EC  38 9B 12 B0 */	addi r4, r27, 0x12b0
/* 805B52F0  38 A1 00 98 */	addi r5, r1, 0x98
/* 805B52F4  4B CB 18 41 */	bl __mi__4cXyzCFRC3Vec
/* 805B52F8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805B52FC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805B5300  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805B5304  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 805B5308  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 805B530C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 805B5310  38 61 00 74 */	addi r3, r1, 0x74
/* 805B5314  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805B5318  A8 1B 06 C8 */	lha r0, 0x6c8(r27)
/* 805B531C  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 805B5320  C8 3C 00 70 */	lfd f1, 0x70(r28)
/* 805B5324  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805B5328  90 01 01 5C */	stw r0, 0x15c(r1)
/* 805B532C  3C 00 43 30 */	lis r0, 0x4330
/* 805B5330  90 01 01 58 */	stw r0, 0x158(r1)
/* 805B5334  C8 01 01 58 */	lfd f0, 0x158(r1)
/* 805B5338  EC 20 08 28 */	fsubs f1, f0, f1
/* 805B533C  4B CB 18 49 */	bl __ml__4cXyzCFf
/* 805B5340  38 61 00 68 */	addi r3, r1, 0x68
/* 805B5344  38 81 00 74 */	addi r4, r1, 0x74
/* 805B5348  C0 3C 00 60 */	lfs f1, 0x60(r28)
/* 805B534C  4B CB 18 39 */	bl __ml__4cXyzCFf
/* 805B5350  38 61 00 5C */	addi r3, r1, 0x5c
/* 805B5354  38 81 00 98 */	addi r4, r1, 0x98
/* 805B5358  38 A1 00 68 */	addi r5, r1, 0x68
/* 805B535C  4B CB 17 89 */	bl __pl__4cXyzCFRC3Vec
/* 805B5360  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 805B5364  D0 1B 11 38 */	stfs f0, 0x1138(r27)
/* 805B5368  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805B536C  D0 1B 11 3C */	stfs f0, 0x113c(r27)
/* 805B5370  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 805B5374  D0 1B 11 40 */	stfs f0, 0x1140(r27)
/* 805B5378  3A E0 00 00 */	li r23, 0
/* 805B537C  3B 00 00 00 */	li r24, 0
/* 805B5380  CB FC 00 70 */	lfd f31, 0x70(r28)
/* 805B5384  3E C0 43 30 */	lis r22, 0x4330
lbl_805B5388:
/* 805B5388  38 61 00 50 */	addi r3, r1, 0x50
/* 805B538C  38 81 00 A4 */	addi r4, r1, 0xa4
/* 805B5390  6E E0 80 00 */	xoris r0, r23, 0x8000
/* 805B5394  90 01 01 5C */	stw r0, 0x15c(r1)
/* 805B5398  92 C1 01 58 */	stw r22, 0x158(r1)
/* 805B539C  C8 01 01 58 */	lfd f0, 0x158(r1)
/* 805B53A0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 805B53A4  4B CB 17 E1 */	bl __ml__4cXyzCFf
/* 805B53A8  38 61 00 44 */	addi r3, r1, 0x44
/* 805B53AC  38 81 00 50 */	addi r4, r1, 0x50
/* 805B53B0  C0 3C 00 60 */	lfs f1, 0x60(r28)
/* 805B53B4  4B CB 17 D1 */	bl __ml__4cXyzCFf
/* 805B53B8  38 61 00 38 */	addi r3, r1, 0x38
/* 805B53BC  38 81 00 98 */	addi r4, r1, 0x98
/* 805B53C0  38 A1 00 44 */	addi r5, r1, 0x44
/* 805B53C4  4B CB 17 21 */	bl __pl__4cXyzCFRC3Vec
/* 805B53C8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805B53CC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 805B53D0  7C 63 C2 14 */	add r3, r3, r24
/* 805B53D4  D0 03 00 00 */	stfs f0, 0(r3)
/* 805B53D8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805B53DC  D0 03 00 04 */	stfs f0, 4(r3)
/* 805B53E0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805B53E4  D0 03 00 08 */	stfs f0, 8(r3)
/* 805B53E8  3A F7 00 01 */	addi r23, r23, 1
/* 805B53EC  2C 17 00 04 */	cmpwi r23, 4
/* 805B53F0  3B 18 00 0C */	addi r24, r24, 0xc
/* 805B53F4  41 80 FF 94 */	blt lbl_805B5388
/* 805B53F8  38 00 00 05 */	li r0, 5
/* 805B53FC  98 1B 06 ED */	stb r0, 0x6ed(r27)
/* 805B5400  38 61 00 E0 */	addi r3, r1, 0xe0
/* 805B5404  38 80 FF FF */	li r4, -1
/* 805B5408  4B AC 28 D5 */	bl __dt__11dBgS_LinChkFv
/* 805B540C  48 00 00 44 */	b lbl_805B5450
lbl_805B5410:
/* 805B5410  38 00 00 00 */	li r0, 0
/* 805B5414  98 1B 13 93 */	stb r0, 0x1393(r27)
/* 805B5418  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 805B541C  C0 1C 00 64 */	lfs f0, 0x64(r28)
/* 805B5420  EC 01 00 2A */	fadds f0, f1, f0
/* 805B5424  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805B5428  38 60 00 00 */	li r3, 0
/* 805B542C  38 00 00 04 */	li r0, 4
/* 805B5430  7C 09 03 A6 */	mtctr r0
lbl_805B5434:
/* 805B5434  38 81 00 B0 */	addi r4, r1, 0xb0
/* 805B5438  7C 84 1A 14 */	add r4, r4, r3
/* 805B543C  D0 44 00 00 */	stfs f2, 0(r4)
/* 805B5440  D0 44 00 04 */	stfs f2, 4(r4)
/* 805B5444  D0 44 00 08 */	stfs f2, 8(r4)
/* 805B5448  38 63 00 0C */	addi r3, r3, 0xc
/* 805B544C  42 00 FF E8 */	bdnz lbl_805B5434
lbl_805B5450:
/* 805B5450  3B C0 00 00 */	li r30, 0
/* 805B5454  3B 00 00 00 */	li r24, 0
/* 805B5458  3B 20 00 00 */	li r25, 0
/* 805B545C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805B5460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805B5464  3A C3 23 3C */	addi r22, r3, 0x233c
lbl_805B5468:
/* 805B5468  38 61 00 2C */	addi r3, r1, 0x2c
/* 805B546C  38 81 00 B0 */	addi r4, r1, 0xb0
/* 805B5470  7C 84 CA 14 */	add r4, r4, r25
/* 805B5474  38 A1 00 8C */	addi r5, r1, 0x8c
/* 805B5478  4B CB 16 6D */	bl __pl__4cXyzCFRC3Vec
/* 805B547C  7F BB C2 14 */	add r29, r27, r24
/* 805B5480  3A FD 0C 44 */	addi r23, r29, 0xc44
/* 805B5484  7E E3 BB 78 */	mr r3, r23
/* 805B5488  38 81 00 2C */	addi r4, r1, 0x2c
/* 805B548C  4B CB A1 BD */	bl SetC__8cM3dGSphFRC4cXyz
/* 805B5490  7E E3 BB 78 */	mr r3, r23
/* 805B5494  C0 3C 00 68 */	lfs f1, 0x68(r28)
/* 805B5498  4B CB A2 71 */	bl SetR__8cM3dGSphFf
/* 805B549C  7E C3 B3 78 */	mr r3, r22
/* 805B54A0  38 9D 0B 20 */	addi r4, r29, 0xb20
/* 805B54A4  4B CA F7 05 */	bl Set__4cCcSFP8cCcD_Obj
/* 805B54A8  3B DE 00 01 */	addi r30, r30, 1
/* 805B54AC  2C 1E 00 04 */	cmpwi r30, 4
/* 805B54B0  3B 18 01 38 */	addi r24, r24, 0x138
/* 805B54B4  3B 39 00 0C */	addi r25, r25, 0xc
/* 805B54B8  41 80 FF B0 */	blt lbl_805B5468
/* 805B54BC  7F 43 D3 78 */	mr r3, r26
/* 805B54C0  E3 E1 01 98 */	psq_l f31, 408(r1), 0, 0 /* qr0 */
/* 805B54C4  CB E1 01 90 */	lfd f31, 0x190(r1)
/* 805B54C8  39 61 01 90 */	addi r11, r1, 0x190
/* 805B54CC  4B DA CD 41 */	bl _restgpr_22
/* 805B54D0  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 805B54D4  7C 08 03 A6 */	mtlr r0
/* 805B54D8  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 805B54DC  4E 80 00 20 */	blr 

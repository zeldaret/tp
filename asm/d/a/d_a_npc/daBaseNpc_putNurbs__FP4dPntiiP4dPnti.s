lbl_8014F8C4:
/* 8014F8C4  94 21 FD 70 */	stwu r1, -0x290(r1)
/* 8014F8C8  7C 08 02 A6 */	mflr r0
/* 8014F8CC  90 01 02 94 */	stw r0, 0x294(r1)
/* 8014F8D0  DB E1 02 80 */	stfd f31, 0x280(r1)
/* 8014F8D4  F3 E1 02 88 */	psq_st f31, 648(r1), 0, 0 /* qr0 */
/* 8014F8D8  DB C1 02 70 */	stfd f30, 0x270(r1)
/* 8014F8DC  F3 C1 02 78 */	psq_st f30, 632(r1), 0, 0 /* qr0 */
/* 8014F8E0  DB A1 02 60 */	stfd f29, 0x260(r1)
/* 8014F8E4  F3 A1 02 68 */	psq_st f29, 616(r1), 0, 0 /* qr0 */
/* 8014F8E8  39 61 02 60 */	addi r11, r1, 0x260
/* 8014F8EC  48 21 28 BD */	bl _savegpr_16
/* 8014F8F0  7C 73 1B 78 */	mr r19, r3
/* 8014F8F4  7C 94 23 78 */	mr r20, r4
/* 8014F8F8  7C B5 2B 78 */	mr r21, r5
/* 8014F8FC  7C D6 33 78 */	mr r22, r6
/* 8014F900  7C F7 3B 79 */	or. r23, r7, r7
/* 8014F904  7E 9D A3 78 */	mr r29, r20
/* 8014F908  41 82 00 08 */	beq lbl_8014F910
/* 8014F90C  3B B4 00 01 */	addi r29, r20, 1
lbl_8014F910:
/* 8014F910  39 00 00 00 */	li r8, 0
/* 8014F914  38 60 00 00 */	li r3, 0
/* 8014F918  7C 65 1B 78 */	mr r5, r3
/* 8014F91C  38 81 01 08 */	addi r4, r1, 0x108
/* 8014F920  34 1D 00 03 */	addic. r0, r29, 3
/* 8014F924  7C 09 03 A6 */	mtctr r0
/* 8014F928  40 81 00 50 */	ble lbl_8014F978
lbl_8014F92C:
/* 8014F92C  7C 1D 40 00 */	cmpw r29, r8
/* 8014F930  40 80 00 18 */	bge lbl_8014F948
/* 8014F934  38 C1 01 08 */	addi r6, r1, 0x108
/* 8014F938  7C C6 1A 14 */	add r6, r6, r3
/* 8014F93C  80 06 FF FC */	lwz r0, -4(r6)
/* 8014F940  90 06 00 00 */	stw r0, 0(r6)
/* 8014F944  48 00 00 28 */	b lbl_8014F96C
lbl_8014F948:
/* 8014F948  2C 08 00 02 */	cmpwi r8, 2
/* 8014F94C  40 81 00 1C */	ble lbl_8014F968
/* 8014F950  38 E1 01 08 */	addi r7, r1, 0x108
/* 8014F954  7C E7 1A 14 */	add r7, r7, r3
/* 8014F958  80 C7 FF FC */	lwz r6, -4(r7)
/* 8014F95C  38 06 00 0A */	addi r0, r6, 0xa
/* 8014F960  90 07 00 00 */	stw r0, 0(r7)
/* 8014F964  48 00 00 08 */	b lbl_8014F96C
lbl_8014F968:
/* 8014F968  7C A4 19 2E */	stwx r5, r4, r3
lbl_8014F96C:
/* 8014F96C  39 08 00 01 */	addi r8, r8, 1
/* 8014F970  38 63 00 04 */	addi r3, r3, 4
/* 8014F974  42 00 FF B8 */	bdnz lbl_8014F92C
lbl_8014F978:
/* 8014F978  38 60 00 00 */	li r3, 0
/* 8014F97C  38 00 00 01 */	li r0, 1
/* 8014F980  38 81 00 08 */	addi r4, r1, 8
/* 8014F984  7F A9 03 A6 */	mtctr r29
/* 8014F988  2C 1D 00 00 */	cmpwi r29, 0
/* 8014F98C  40 81 00 10 */	ble lbl_8014F99C
lbl_8014F990:
/* 8014F990  7C 04 19 2E */	stwx r0, r4, r3
/* 8014F994  38 63 00 04 */	addi r3, r3, 4
/* 8014F998  42 00 FF F8 */	bdnz lbl_8014F990
lbl_8014F99C:
/* 8014F99C  3B 00 00 00 */	li r24, 0
/* 8014F9A0  83 21 01 10 */	lwz r25, 0x110(r1)
/* 8014F9A4  38 1D 00 02 */	addi r0, r29, 2
/* 8014F9A8  54 1E 10 3A */	slwi r30, r0, 2
/* 8014F9AC  3B 81 01 08 */	addi r28, r1, 0x108
/* 8014F9B0  3B E1 00 08 */	addi r31, r1, 8
/* 8014F9B4  CB A2 99 E0 */	lfd f29, lit_4142(r2)
/* 8014F9B8  3E 00 43 30 */	lis r16, 0x4330
/* 8014F9BC  C3 E2 99 D8 */	lfs f31, lit_4116(r2)
/* 8014F9C0  48 00 00 FC */	b lbl_8014FABC
lbl_8014F9C4:
/* 8014F9C4  57 00 04 3E */	clrlwi r0, r24, 0x10
/* 8014F9C8  7C 15 00 00 */	cmpw r21, r0
/* 8014F9CC  40 81 00 FC */	ble lbl_8014FAC8
/* 8014F9D0  57 00 23 36 */	rlwinm r0, r24, 4, 0xc, 0x1b
/* 8014F9D4  7F 76 02 14 */	add r27, r22, r0
/* 8014F9D8  D3 FB 00 04 */	stfs f31, 4(r27)
/* 8014F9DC  D3 FB 00 0C */	stfs f31, 0xc(r27)
/* 8014F9E0  FF C0 F8 90 */	fmr f30, f31
/* 8014F9E4  3B 40 00 00 */	li r26, 0
/* 8014F9E8  3A 40 00 00 */	li r18, 0
/* 8014F9EC  3A 20 00 00 */	li r17, 0
/* 8014F9F0  48 00 00 A4 */	b lbl_8014FA94
lbl_8014F9F4:
/* 8014F9F4  38 60 00 02 */	li r3, 2
/* 8014F9F8  7F 44 D3 78 */	mr r4, r26
/* 8014F9FC  7F 25 CB 78 */	mr r5, r25
/* 8014FA00  38 C1 01 08 */	addi r6, r1, 0x108
/* 8014FA04  4B FF DC 79 */	bl daNpcBase_BBasis__FiiiPi
/* 8014FA08  7C 1A A0 00 */	cmpw r26, r20
/* 8014FA0C  40 82 00 30 */	bne lbl_8014FA3C
/* 8014FA10  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8014FA14  C0 13 00 04 */	lfs f0, 4(r19)
/* 8014FA18  EC 00 00 72 */	fmuls f0, f0, f1
/* 8014FA1C  EC 02 00 2A */	fadds f0, f2, f0
/* 8014FA20  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8014FA24  C0 5B 00 0C */	lfs f2, 0xc(r27)
/* 8014FA28  C0 13 00 0C */	lfs f0, 0xc(r19)
/* 8014FA2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8014FA30  EC 02 00 2A */	fadds f0, f2, f0
/* 8014FA34  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 8014FA38  48 00 00 30 */	b lbl_8014FA68
lbl_8014FA3C:
/* 8014FA3C  C0 5B 00 04 */	lfs f2, 4(r27)
/* 8014FA40  7C 73 8A 14 */	add r3, r19, r17
/* 8014FA44  C0 03 00 04 */	lfs f0, 4(r3)
/* 8014FA48  EC 01 00 32 */	fmuls f0, f1, f0
/* 8014FA4C  EC 02 00 2A */	fadds f0, f2, f0
/* 8014FA50  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8014FA54  C0 5B 00 0C */	lfs f2, 0xc(r27)
/* 8014FA58  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8014FA5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8014FA60  EC 02 00 2A */	fadds f0, f2, f0
/* 8014FA64  D0 1B 00 0C */	stfs f0, 0xc(r27)
lbl_8014FA68:
/* 8014FA68  7C 1F 90 2E */	lwzx r0, r31, r18
/* 8014FA6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8014FA70  90 01 02 1C */	stw r0, 0x21c(r1)
/* 8014FA74  92 01 02 18 */	stw r16, 0x218(r1)
/* 8014FA78  C8 01 02 18 */	lfd f0, 0x218(r1)
/* 8014FA7C  EC 00 E8 28 */	fsubs f0, f0, f29
/* 8014FA80  EC 01 00 32 */	fmuls f0, f1, f0
/* 8014FA84  EF DE 00 2A */	fadds f30, f30, f0
/* 8014FA88  3B 5A 00 01 */	addi r26, r26, 1
/* 8014FA8C  3A 52 00 04 */	addi r18, r18, 4
/* 8014FA90  3A 31 00 10 */	addi r17, r17, 0x10
lbl_8014FA94:
/* 8014FA94  7C 1A E8 00 */	cmpw r26, r29
/* 8014FA98  41 80 FF 5C */	blt lbl_8014F9F4
/* 8014FA9C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8014FAA0  EC 00 F0 24 */	fdivs f0, f0, f30
/* 8014FAA4  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8014FAA8  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 8014FAAC  EC 00 F0 24 */	fdivs f0, f0, f30
/* 8014FAB0  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 8014FAB4  3B 39 00 02 */	addi r25, r25, 2
/* 8014FAB8  3B 18 00 01 */	addi r24, r24, 1
lbl_8014FABC:
/* 8014FABC  7C 1C F0 2E */	lwzx r0, r28, r30
/* 8014FAC0  7C 19 00 00 */	cmpw r25, r0
/* 8014FAC4  41 80 FF 00 */	blt lbl_8014F9C4
lbl_8014FAC8:
/* 8014FAC8  2C 17 00 00 */	cmpwi r23, 0
/* 8014FACC  40 82 00 28 */	bne lbl_8014FAF4
/* 8014FAD0  56 80 20 36 */	slwi r0, r20, 4
/* 8014FAD4  7C 93 02 14 */	add r4, r19, r0
/* 8014FAD8  C0 04 FF F4 */	lfs f0, -0xc(r4)
/* 8014FADC  57 00 23 36 */	rlwinm r0, r24, 4, 0xc, 0x1b
/* 8014FAE0  7C 76 02 14 */	add r3, r22, r0
/* 8014FAE4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8014FAE8  C0 04 FF FC */	lfs f0, -4(r4)
/* 8014FAEC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8014FAF0  3B 18 00 01 */	addi r24, r24, 1
lbl_8014FAF4:
/* 8014FAF4  7F 03 C3 78 */	mr r3, r24
/* 8014FAF8  E3 E1 02 88 */	psq_l f31, 648(r1), 0, 0 /* qr0 */
/* 8014FAFC  CB E1 02 80 */	lfd f31, 0x280(r1)
/* 8014FB00  E3 C1 02 78 */	psq_l f30, 632(r1), 0, 0 /* qr0 */
/* 8014FB04  CB C1 02 70 */	lfd f30, 0x270(r1)
/* 8014FB08  E3 A1 02 68 */	psq_l f29, 616(r1), 0, 0 /* qr0 */
/* 8014FB0C  CB A1 02 60 */	lfd f29, 0x260(r1)
/* 8014FB10  39 61 02 60 */	addi r11, r1, 0x260
/* 8014FB14  48 21 26 E1 */	bl _restgpr_16
/* 8014FB18  80 01 02 94 */	lwz r0, 0x294(r1)
/* 8014FB1C  7C 08 03 A6 */	mtlr r0
/* 8014FB20  38 21 02 90 */	addi r1, r1, 0x290
/* 8014FB24  4E 80 00 20 */	blr 

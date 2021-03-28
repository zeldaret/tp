lbl_80BCEF30:
/* 80BCEF30  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BCEF34  7C 08 02 A6 */	mflr r0
/* 80BCEF38  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BCEF3C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80BCEF40  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80BCEF44  39 61 00 40 */	addi r11, r1, 0x40
/* 80BCEF48  4B 79 32 84 */	b _savegpr_25
/* 80BCEF4C  7C 79 1B 78 */	mr r25, r3
/* 80BCEF50  7C 9A 23 78 */	mr r26, r4
/* 80BCEF54  7C BB 2B 78 */	mr r27, r5
/* 80BCEF58  7C DC 33 78 */	mr r28, r6
/* 80BCEF5C  7C FD 3B 78 */	mr r29, r7
/* 80BCEF60  7D 1E 43 78 */	mr r30, r8
/* 80BCEF64  3C 80 80 BD */	lis r4, lit_3685@ha
/* 80BCEF68  3B E4 01 88 */	addi r31, r4, lit_3685@l
/* 80BCEF6C  88 1A 00 00 */	lbz r0, 0(r26)
/* 80BCEF70  28 00 00 03 */	cmplwi r0, 3
/* 80BCEF74  41 81 01 1C */	bgt lbl_80BCF090
/* 80BCEF78  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80BCEF7C  C0 3B 00 04 */	lfs f1, 4(r27)
/* 80BCEF80  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BCEF84  EC 01 00 2A */	fadds f0, f1, f0
/* 80BCEF88  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80BCEF8C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BCEF90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BCEF94  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BCEF98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BCEF9C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80BCEFA0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BCEFA4  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80BCEFA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BCEFAC  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80BCEFB0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BCEFB4  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80BCEFB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BCEFBC  38 81 00 14 */	addi r4, r1, 0x14
/* 80BCEFC0  38 A1 00 08 */	addi r5, r1, 8
/* 80BCEFC4  4B FF FD 9D */	bl Wall_Check__15daObjCRVFENCE_cF4cXyz4cXyz
/* 80BCEFC8  2C 03 00 00 */	cmpwi r3, 0
/* 80BCEFCC  41 82 00 14 */	beq lbl_80BCEFE0
/* 80BCEFD0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80BCEFD4  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80BCEFD8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BCEFDC  D0 1B 00 00 */	stfs f0, 0(r27)
lbl_80BCEFE0:
/* 80BCEFE0  88 1A 00 00 */	lbz r0, 0(r26)
/* 80BCEFE4  28 00 00 00 */	cmplwi r0, 0
/* 80BCEFE8  40 82 00 1C */	bne lbl_80BCF004
/* 80BCEFEC  38 7C 00 02 */	addi r3, r28, 2
/* 80BCEFF0  A8 9E 00 00 */	lha r4, 0(r30)
/* 80BCEFF4  38 A0 07 00 */	li r5, 0x700
/* 80BCEFF8  4B 6A 1B 98 */	b cLib_chaseAngleS__FPsss
/* 80BCEFFC  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 80BCF000  48 00 00 14 */	b lbl_80BCF014
lbl_80BCF004:
/* 80BCF004  7F 83 E3 78 */	mr r3, r28
/* 80BCF008  A8 9E 00 00 */	lha r4, 0(r30)
/* 80BCF00C  38 A0 07 00 */	li r5, 0x700
/* 80BCF010  4B 6A 1B 80 */	b cLib_chaseAngleS__FPsss
lbl_80BCF014:
/* 80BCF014  7F A3 EB 78 */	mr r3, r29
/* 80BCF018  7F 64 DB 78 */	mr r4, r27
/* 80BCF01C  7F A5 EB 78 */	mr r5, r29
/* 80BCF020  4B 77 80 70 */	b PSVECAdd
/* 80BCF024  C0 3B 00 04 */	lfs f1, 4(r27)
/* 80BCF028  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BCF02C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCF030  40 80 00 60 */	bge lbl_80BCF090
/* 80BCF034  C0 19 06 40 */	lfs f0, 0x640(r25)
/* 80BCF038  EC 20 F8 2A */	fadds f1, f0, f31
/* 80BCF03C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BCF040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCF044  4C 41 13 82 */	cror 2, 1, 2
/* 80BCF048  40 82 00 48 */	bne lbl_80BCF090
/* 80BCF04C  88 7A 00 00 */	lbz r3, 0(r26)
/* 80BCF050  38 03 00 01 */	addi r0, r3, 1
/* 80BCF054  98 1A 00 00 */	stb r0, 0(r26)
/* 80BCF058  C0 19 06 40 */	lfs f0, 0x640(r25)
/* 80BCF05C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BCF060  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BCF064  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80BCF068  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80BCF06C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BCF070  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80BCF074  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BCF078  C0 1B 00 00 */	lfs f0, 0(r27)
/* 80BCF07C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BCF080  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80BCF084  C0 1B 00 08 */	lfs f0, 8(r27)
/* 80BCF088  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BCF08C  D0 1B 00 08 */	stfs f0, 8(r27)
lbl_80BCF090:
/* 80BCF090  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80BCF094  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80BCF098  39 61 00 40 */	addi r11, r1, 0x40
/* 80BCF09C  4B 79 31 7C */	b _restgpr_25
/* 80BCF0A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BCF0A4  7C 08 03 A6 */	mtlr r0
/* 80BCF0A8  38 21 00 50 */	addi r1, r1, 0x50
/* 80BCF0AC  4E 80 00 20 */	blr 

lbl_802F4828:
/* 802F4828  94 21 FD 50 */	stwu r1, -0x2b0(r1)
/* 802F482C  7C 08 02 A6 */	mflr r0
/* 802F4830  90 01 02 B4 */	stw r0, 0x2b4(r1)
/* 802F4834  DB E1 02 A0 */	stfd f31, 0x2a0(r1)
/* 802F4838  F3 E1 02 A8 */	psq_st f31, 680(r1), 0, 0 /* qr0 */
/* 802F483C  DB C1 02 90 */	stfd f30, 0x290(r1)
/* 802F4840  F3 C1 02 98 */	psq_st f30, 664(r1), 0, 0 /* qr0 */
/* 802F4844  DB A1 02 80 */	stfd f29, 0x280(r1)
/* 802F4848  F3 A1 02 88 */	psq_st f29, 648(r1), 0, 0 /* qr0 */
/* 802F484C  DB 81 02 70 */	stfd f28, 0x270(r1)
/* 802F4850  F3 81 02 78 */	psq_st f28, 632(r1), 0, 0 /* qr0 */
/* 802F4854  DB 61 02 60 */	stfd f27, 0x260(r1)
/* 802F4858  F3 61 02 68 */	psq_st f27, 616(r1), 0, 0 /* qr0 */
/* 802F485C  DB 41 02 50 */	stfd f26, 0x250(r1)
/* 802F4860  F3 41 02 58 */	psq_st f26, 600(r1), 0, 0 /* qr0 */
/* 802F4864  39 61 02 50 */	addi r11, r1, 0x250
/* 802F4868  48 06 D9 65 */	bl _savegpr_25
/* 802F486C  7C 7A 1B 78 */	mr r26, r3
/* 802F4870  7C 9B 23 78 */	mr r27, r4
/* 802F4874  FF 80 08 90 */	fmr f28, f1
/* 802F4878  FF 40 10 90 */	fmr f26, f2
/* 802F487C  7C BC 2B 78 */	mr r28, r5
/* 802F4880  7C D9 33 78 */	mr r25, r6
/* 802F4884  FF A0 18 90 */	fmr f29, f3
/* 802F4888  FF C0 20 90 */	fmr f30, f4
/* 802F488C  7C FD 3B 78 */	mr r29, r7
/* 802F4890  80 03 00 04 */	lwz r0, 4(r3)
/* 802F4894  28 00 00 00 */	cmplwi r0, 0
/* 802F4898  41 82 02 6C */	beq lbl_802F4B04
/* 802F489C  48 00 10 B1 */	bl initchar__8J2DPrintFv
/* 802F48A0  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 802F48A4  D0 1A 00 24 */	stfs f0, 0x24(r26)
/* 802F48A8  C0 1A 00 30 */	lfs f0, 0x30(r26)
/* 802F48AC  D0 1A 00 28 */	stfs f0, 0x28(r26)
/* 802F48B0  7F 63 DB 78 */	mr r3, r27
/* 802F48B4  48 07 43 31 */	bl strlen
/* 802F48B8  7C 65 1B 78 */	mr r5, r3
/* 802F48BC  80 6D 90 08 */	lwz r3, mStrBuffSize__8J2DPrint(r13)
/* 802F48C0  7C 05 18 40 */	cmplw r5, r3
/* 802F48C4  41 80 00 10 */	blt lbl_802F48D4
/* 802F48C8  38 A3 FF FF */	addi r5, r3, -1
/* 802F48CC  38 00 00 01 */	li r0, 1
/* 802F48D0  98 0D 90 0C */	stb r0, data_8045158C(r13)
lbl_802F48D4:
/* 802F48D4  7F 43 D3 78 */	mr r3, r26
/* 802F48D8  7F 64 DB 78 */	mr r4, r27
/* 802F48DC  7C BE 2B 78 */	mr r30, r5
/* 802F48E0  FC 00 E0 1E */	fctiwz f0, f28
/* 802F48E4  D8 01 02 18 */	stfd f0, 0x218(r1)
/* 802F48E8  83 E1 02 1C */	lwz r31, 0x21c(r1)
/* 802F48EC  7F E6 FB 78 */	mr r6, r31
/* 802F48F0  38 E1 00 10 */	addi r7, r1, 0x10
/* 802F48F4  39 01 00 08 */	addi r8, r1, 8
/* 802F48F8  7F A9 EB 78 */	mr r9, r29
/* 802F48FC  39 40 00 00 */	li r10, 0
/* 802F4900  48 00 02 4D */	bl parse__8J2DPrintFPCUciiPUsRQ28J2DPrint5TSizeUcb
/* 802F4904  FF 60 08 90 */	fmr f27, f1
/* 802F4908  80 7A 00 04 */	lwz r3, 4(r26)
/* 802F490C  81 83 00 00 */	lwz r12, 0(r3)
/* 802F4910  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802F4914  7D 89 03 A6 */	mtctr r12
/* 802F4918  4E 80 04 21 */	bctrl 
/* 802F491C  C8 22 C7 D0 */	lfd f1, lit_650(r2)
/* 802F4920  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802F4924  90 01 02 24 */	stw r0, 0x224(r1)
/* 802F4928  3C 00 43 30 */	lis r0, 0x4330
/* 802F492C  90 01 02 20 */	stw r0, 0x220(r1)
/* 802F4930  C8 01 02 20 */	lfd f0, 0x220(r1)
/* 802F4934  EC 20 08 28 */	fsubs f1, f0, f1
/* 802F4938  C0 1A 00 54 */	lfs f0, 0x54(r26)
/* 802F493C  EF E0 08 24 */	fdivs f31, f0, f1
/* 802F4940  80 7A 00 04 */	lwz r3, 4(r26)
/* 802F4944  81 83 00 00 */	lwz r12, 0(r3)
/* 802F4948  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F494C  7D 89 03 A6 */	mtctr r12
/* 802F4950  4E 80 04 21 */	bctrl 
/* 802F4954  C8 42 C7 D0 */	lfd f2, lit_650(r2)
/* 802F4958  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 802F495C  90 01 02 2C */	stw r0, 0x22c(r1)
/* 802F4960  3C 60 43 30 */	lis r3, 0x4330
/* 802F4964  90 61 02 28 */	stw r3, 0x228(r1)
/* 802F4968  C8 01 02 28 */	lfd f0, 0x228(r1)
/* 802F496C  EC 00 10 28 */	fsubs f0, f0, f2
/* 802F4970  EF E0 07 F2 */	fmuls f31, f0, f31
/* 802F4974  EC 1B F8 2A */	fadds f0, f27, f31
/* 802F4978  2C 19 00 01 */	cmpwi r25, 1
/* 802F497C  41 82 00 18 */	beq lbl_802F4994
/* 802F4980  40 80 00 80 */	bge lbl_802F4A00
/* 802F4984  2C 19 00 00 */	cmpwi r25, 0
/* 802F4988  40 80 00 40 */	bge lbl_802F49C8
/* 802F498C  48 00 00 74 */	b lbl_802F4A00
/* 802F4990  48 00 00 70 */	b lbl_802F4A00
lbl_802F4994:
/* 802F4994  EC 3A 00 28 */	fsubs f1, f26, f0
/* 802F4998  C0 02 C7 D8 */	lfs f0, lit_786(r2)
/* 802F499C  EC 01 00 28 */	fsubs f0, f1, f0
/* 802F49A0  FC 00 00 1E */	fctiwz f0, f0
/* 802F49A4  D8 01 02 28 */	stfd f0, 0x228(r1)
/* 802F49A8  80 01 02 2C */	lwz r0, 0x22c(r1)
/* 802F49AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F49B0  90 01 02 24 */	stw r0, 0x224(r1)
/* 802F49B4  90 61 02 20 */	stw r3, 0x220(r1)
/* 802F49B8  C8 01 02 20 */	lfd f0, 0x220(r1)
/* 802F49BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 802F49C0  EF DE 00 2A */	fadds f30, f30, f0
/* 802F49C4  48 00 00 3C */	b lbl_802F4A00
lbl_802F49C8:
/* 802F49C8  EC 3A 00 28 */	fsubs f1, f26, f0
/* 802F49CC  C0 02 C7 D8 */	lfs f0, lit_786(r2)
/* 802F49D0  EC 01 00 28 */	fsubs f0, f1, f0
/* 802F49D4  FC 00 00 1E */	fctiwz f0, f0
/* 802F49D8  D8 01 02 28 */	stfd f0, 0x228(r1)
/* 802F49DC  80 01 02 2C */	lwz r0, 0x22c(r1)
/* 802F49E0  7C 00 0E 70 */	srawi r0, r0, 1
/* 802F49E4  7C 00 01 94 */	addze r0, r0
/* 802F49E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802F49EC  90 01 02 24 */	stw r0, 0x224(r1)
/* 802F49F0  90 61 02 20 */	stw r3, 0x220(r1)
/* 802F49F4  C8 01 02 20 */	lfd f0, 0x220(r1)
/* 802F49F8  EC 00 10 28 */	fsubs f0, f0, f2
/* 802F49FC  EF DE 00 2A */	fadds f30, f30, f0
lbl_802F4A00:
/* 802F4A00  38 60 00 00 */	li r3, 0
/* 802F4A04  38 81 00 10 */	addi r4, r1, 0x10
/* 802F4A08  48 00 00 98 */	b lbl_802F4AA0
lbl_802F4A0C:
/* 802F4A0C  2C 1C 00 01 */	cmpwi r28, 1
/* 802F4A10  41 82 00 28 */	beq lbl_802F4A38
/* 802F4A14  40 80 00 10 */	bge lbl_802F4A24
/* 802F4A18  2C 1C 00 00 */	cmpwi r28, 0
/* 802F4A1C  40 80 00 4C */	bge lbl_802F4A68
/* 802F4A20  48 00 00 7C */	b lbl_802F4A9C
lbl_802F4A24:
/* 802F4A24  2C 1C 00 03 */	cmpwi r28, 3
/* 802F4A28  40 80 00 74 */	bge lbl_802F4A9C
/* 802F4A2C  38 00 00 00 */	li r0, 0
/* 802F4A30  7C 04 1B 2E */	sthx r0, r4, r3
/* 802F4A34  48 00 00 68 */	b lbl_802F4A9C
lbl_802F4A38:
/* 802F4A38  C8 22 C7 E0 */	lfd f1, lit_791(r2)
/* 802F4A3C  90 01 02 2C */	stw r0, 0x22c(r1)
/* 802F4A40  3C 00 43 30 */	lis r0, 0x4330
/* 802F4A44  90 01 02 28 */	stw r0, 0x228(r1)
/* 802F4A48  C8 01 02 28 */	lfd f0, 0x228(r1)
/* 802F4A4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F4A50  EC 1C 00 28 */	fsubs f0, f28, f0
/* 802F4A54  FC 00 00 1E */	fctiwz f0, f0
/* 802F4A58  D8 01 02 20 */	stfd f0, 0x220(r1)
/* 802F4A5C  80 01 02 24 */	lwz r0, 0x224(r1)
/* 802F4A60  7C 04 1B 2E */	sthx r0, r4, r3
/* 802F4A64  48 00 00 38 */	b lbl_802F4A9C
lbl_802F4A68:
/* 802F4A68  C8 22 C7 E0 */	lfd f1, lit_791(r2)
/* 802F4A6C  90 01 02 2C */	stw r0, 0x22c(r1)
/* 802F4A70  3C 00 43 30 */	lis r0, 0x4330
/* 802F4A74  90 01 02 28 */	stw r0, 0x228(r1)
/* 802F4A78  C8 01 02 28 */	lfd f0, 0x228(r1)
/* 802F4A7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802F4A80  EC 3C 00 28 */	fsubs f1, f28, f0
/* 802F4A84  C0 02 C7 D8 */	lfs f0, lit_786(r2)
/* 802F4A88  EC 01 00 32 */	fmuls f0, f1, f0
/* 802F4A8C  FC 00 00 1E */	fctiwz f0, f0
/* 802F4A90  D8 01 02 20 */	stfd f0, 0x220(r1)
/* 802F4A94  80 01 02 24 */	lwz r0, 0x224(r1)
/* 802F4A98  7C 04 1B 2E */	sthx r0, r4, r3
lbl_802F4A9C:
/* 802F4A9C  38 63 00 02 */	addi r3, r3, 2
lbl_802F4AA0:
/* 802F4AA0  7C 04 1A 2E */	lhzx r0, r4, r3
/* 802F4AA4  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F4AA8  40 82 FF 64 */	bne lbl_802F4A0C
/* 802F4AAC  7F 43 D3 78 */	mr r3, r26
/* 802F4AB0  48 00 0E 9D */	bl initchar__8J2DPrintFv
/* 802F4AB4  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 802F4AB8  EC 00 E8 2A */	fadds f0, f0, f29
/* 802F4ABC  D0 1A 00 2C */	stfs f0, 0x2c(r26)
/* 802F4AC0  C0 3A 00 30 */	lfs f1, 0x30(r26)
/* 802F4AC4  EC 1E F8 2A */	fadds f0, f30, f31
/* 802F4AC8  EC 01 00 2A */	fadds f0, f1, f0
/* 802F4ACC  D0 1A 00 30 */	stfs f0, 0x30(r26)
/* 802F4AD0  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 802F4AD4  D0 1A 00 24 */	stfs f0, 0x24(r26)
/* 802F4AD8  C0 1A 00 30 */	lfs f0, 0x30(r26)
/* 802F4ADC  D0 1A 00 28 */	stfs f0, 0x28(r26)
/* 802F4AE0  7F 43 D3 78 */	mr r3, r26
/* 802F4AE4  7F 64 DB 78 */	mr r4, r27
/* 802F4AE8  7F C5 F3 78 */	mr r5, r30
/* 802F4AEC  7F E6 FB 78 */	mr r6, r31
/* 802F4AF0  38 E1 00 10 */	addi r7, r1, 0x10
/* 802F4AF4  39 01 00 08 */	addi r8, r1, 8
/* 802F4AF8  7F A9 EB 78 */	mr r9, r29
/* 802F4AFC  39 40 00 01 */	li r10, 1
/* 802F4B00  48 00 00 4D */	bl parse__8J2DPrintFPCUciiPUsRQ28J2DPrint5TSizeUcb
lbl_802F4B04:
/* 802F4B04  E3 E1 02 A8 */	psq_l f31, 680(r1), 0, 0 /* qr0 */
/* 802F4B08  CB E1 02 A0 */	lfd f31, 0x2a0(r1)
/* 802F4B0C  E3 C1 02 98 */	psq_l f30, 664(r1), 0, 0 /* qr0 */
/* 802F4B10  CB C1 02 90 */	lfd f30, 0x290(r1)
/* 802F4B14  E3 A1 02 88 */	psq_l f29, 648(r1), 0, 0 /* qr0 */
/* 802F4B18  CB A1 02 80 */	lfd f29, 0x280(r1)
/* 802F4B1C  E3 81 02 78 */	psq_l f28, 632(r1), 0, 0 /* qr0 */
/* 802F4B20  CB 81 02 70 */	lfd f28, 0x270(r1)
/* 802F4B24  E3 61 02 68 */	psq_l f27, 616(r1), 0, 0 /* qr0 */
/* 802F4B28  CB 61 02 60 */	lfd f27, 0x260(r1)
/* 802F4B2C  E3 41 02 58 */	psq_l f26, 600(r1), 0, 0 /* qr0 */
/* 802F4B30  CB 41 02 50 */	lfd f26, 0x250(r1)
/* 802F4B34  39 61 02 50 */	addi r11, r1, 0x250
/* 802F4B38  48 06 D6 E1 */	bl _restgpr_25
/* 802F4B3C  80 01 02 B4 */	lwz r0, 0x2b4(r1)
/* 802F4B40  7C 08 03 A6 */	mtlr r0
/* 802F4B44  38 21 02 B0 */	addi r1, r1, 0x2b0
/* 802F4B48  4E 80 00 20 */	blr 

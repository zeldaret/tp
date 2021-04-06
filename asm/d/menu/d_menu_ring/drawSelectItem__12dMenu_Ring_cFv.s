lbl_801EDC98:
/* 801EDC98  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801EDC9C  7C 08 02 A6 */	mflr r0
/* 801EDCA0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801EDCA4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 801EDCA8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 801EDCAC  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 801EDCB0  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 801EDCB4  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 801EDCB8  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 801EDCBC  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 801EDCC0  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 801EDCC4  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 801EDCC8  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 801EDCCC  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 801EDCD0  F3 41 00 68 */	psq_st f26, 104(r1), 0, 0 /* qr0 */
/* 801EDCD4  39 61 00 60 */	addi r11, r1, 0x60
/* 801EDCD8  48 17 44 E5 */	bl _savegpr_21
/* 801EDCDC  7C 7D 1B 78 */	mr r29, r3
/* 801EDCE0  3B C0 00 00 */	li r30, 0
/* 801EDCE4  3B 80 00 00 */	li r28, 0
/* 801EDCE8  3B 60 00 00 */	li r27, 0
/* 801EDCEC  3B 40 00 00 */	li r26, 0
lbl_801EDCF0:
/* 801EDCF0  7F FD D2 14 */	add r31, r29, r26
/* 801EDCF4  A8 7F 06 74 */	lha r3, 0x674(r31)
/* 801EDCF8  7C 60 07 35 */	extsh. r0, r3
/* 801EDCFC  41 82 01 D0 */	beq lbl_801EDECC
/* 801EDD00  2C 03 00 0A */	cmpwi r3, 0xa
/* 801EDD04  40 80 01 BC */	bge lbl_801EDEC0
/* 801EDD08  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801EDD0C  38 03 01 88 */	addi r0, r3, g_meter2_info@l /* 0x80430188@l */
/* 801EDD10  7C 60 DA 14 */	add r3, r0, r27
/* 801EDD14  80 83 00 28 */	lwz r4, 0x28(r3)
/* 801EDD18  C0 24 00 34 */	lfs f1, 0x34(r4)
/* 801EDD1C  C0 02 AA 14 */	lfs f0, lit_5811(r2)
/* 801EDD20  EF 80 00 72 */	fmuls f28, f0, f1
/* 801EDD24  C0 24 00 38 */	lfs f1, 0x38(r4)
/* 801EDD28  EF A0 00 72 */	fmuls f29, f0, f1
/* 801EDD2C  C3 44 00 3C */	lfs f26, 0x3c(r4)
/* 801EDD30  C3 64 00 40 */	lfs f27, 0x40(r4)
/* 801EDD34  38 61 00 08 */	addi r3, r1, 8
/* 801EDD38  80 A4 00 04 */	lwz r5, 4(r4)
/* 801EDD3C  38 C0 00 01 */	li r6, 1
/* 801EDD40  38 E0 00 00 */	li r7, 0
/* 801EDD44  48 06 71 79 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801EDD48  80 61 00 08 */	lwz r3, 8(r1)
/* 801EDD4C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801EDD50  90 61 00 14 */	stw r3, 0x14(r1)
/* 801EDD54  90 01 00 18 */	stw r0, 0x18(r1)
/* 801EDD58  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801EDD5C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801EDD60  A8 1F 06 74 */	lha r0, 0x674(r31)
/* 801EDD64  C8 22 A9 C8 */	lfd f1, lit_4596(r2)
/* 801EDD68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801EDD6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801EDD70  3C 00 43 30 */	lis r0, 0x4330
/* 801EDD74  90 01 00 20 */	stw r0, 0x20(r1)
/* 801EDD78  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 801EDD7C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801EDD80  C0 02 A9 EC */	lfs f0, lit_5369(r2)
/* 801EDD84  EC 41 00 24 */	fdivs f2, f1, f0
/* 801EDD88  88 1D 06 CD */	lbz r0, 0x6cd(r29)
/* 801EDD8C  28 00 00 FF */	cmplwi r0, 0xff
/* 801EDD90  41 82 00 0C */	beq lbl_801EDD9C
/* 801EDD94  C0 02 A9 9C */	lfs f0, lit_4305(r2)
/* 801EDD98  EC 40 10 28 */	fsubs f2, f0, f2
lbl_801EDD9C:
/* 801EDD9C  C0 22 A9 A4 */	lfs f1, lit_4307(r2)
/* 801EDDA0  EC 1C 08 28 */	fsubs f0, f28, f1
/* 801EDDA4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801EDDA8  EF E1 00 2A */	fadds f31, f1, f0
/* 801EDDAC  EC 1D 08 28 */	fsubs f0, f29, f1
/* 801EDDB0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 801EDDB4  EF C1 00 2A */	fadds f30, f1, f0
/* 801EDDB8  7E FD DA 14 */	add r23, r29, r27
/* 801EDDBC  C0 37 05 38 */	lfs f1, 0x538(r23)
/* 801EDDC0  EC 1A 08 28 */	fsubs f0, f26, f1
/* 801EDDC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EDDC8  EF A1 00 2A */	fadds f29, f1, f0
/* 801EDDCC  EC 1B 08 28 */	fsubs f0, f27, f1
/* 801EDDD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EDDD4  EF 81 00 2A */	fadds f28, f1, f0
/* 801EDDD8  C0 37 05 18 */	lfs f1, 0x518(r23)
/* 801EDDDC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801EDDE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 801EDDE4  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EDDE8  EF 61 00 2A */	fadds f27, f1, f0
/* 801EDDEC  C0 37 05 28 */	lfs f1, 0x528(r23)
/* 801EDDF0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801EDDF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801EDDF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EDDFC  EF 41 00 2A */	fadds f26, f1, f0
/* 801EDE00  3A A0 00 00 */	li r21, 0
/* 801EDE04  3B 20 00 00 */	li r25, 0
/* 801EDE08  7F 1D E2 14 */	add r24, r29, r28
/* 801EDE0C  48 00 00 98 */	b lbl_801EDEA4
lbl_801EDE10:
/* 801EDE10  3A D9 00 68 */	addi r22, r25, 0x68
/* 801EDE14  7C 78 B0 2E */	lwzx r3, r24, r22
/* 801EDE18  28 03 00 00 */	cmplwi r3, 0
/* 801EDE1C  41 82 00 80 */	beq lbl_801EDE9C
/* 801EDE20  C0 22 A9 E4 */	lfs f1, lit_5367(r2)
/* 801EDE24  C0 1D 05 14 */	lfs f0, 0x514(r29)
/* 801EDE28  EC 01 00 32 */	fmuls f0, f1, f0
/* 801EDE2C  FC 00 00 1E */	fctiwz f0, f0
/* 801EDE30  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801EDE34  80 81 00 24 */	lwz r4, 0x24(r1)
/* 801EDE38  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDE3C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801EDE40  7D 89 03 A6 */	mtctr r12
/* 801EDE44  4E 80 04 21 */	bctrl 
/* 801EDE48  C0 17 05 48 */	lfs f0, 0x548(r23)
/* 801EDE4C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801EDE50  EC 7D 00 32 */	fmuls f3, f29, f0
/* 801EDE54  C0 17 05 58 */	lfs f0, 0x558(r23)
/* 801EDE58  EC 00 07 B2 */	fmuls f0, f0, f30
/* 801EDE5C  EC 9C 00 32 */	fmuls f4, f28, f0
/* 801EDE60  7C 78 B0 2E */	lwzx r3, r24, r22
/* 801EDE64  C0 42 A9 B0 */	lfs f2, lit_4310(r2)
/* 801EDE68  EC 1F 18 28 */	fsubs f0, f31, f3
/* 801EDE6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EDE70  EC 3B 00 2A */	fadds f1, f27, f0
/* 801EDE74  EC 1E 20 28 */	fsubs f0, f30, f4
/* 801EDE78  EC 02 00 32 */	fmuls f0, f2, f0
/* 801EDE7C  EC 5A 00 2A */	fadds f2, f26, f0
/* 801EDE80  38 80 00 00 */	li r4, 0
/* 801EDE84  38 A0 00 00 */	li r5, 0
/* 801EDE88  38 C0 00 00 */	li r6, 0
/* 801EDE8C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EDE90  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801EDE94  7D 89 03 A6 */	mtctr r12
/* 801EDE98  4E 80 04 21 */	bctrl 
lbl_801EDE9C:
/* 801EDE9C  3A B5 00 01 */	addi r21, r21, 1
/* 801EDEA0  3B 39 00 04 */	addi r25, r25, 4
lbl_801EDEA4:
/* 801EDEA4  A8 1F 06 86 */	lha r0, 0x686(r31)
/* 801EDEA8  7C 15 00 00 */	cmpw r21, r0
/* 801EDEAC  41 80 FF 64 */	blt lbl_801EDE10
/* 801EDEB0  A8 7F 06 74 */	lha r3, 0x674(r31)
/* 801EDEB4  38 03 00 01 */	addi r0, r3, 1
/* 801EDEB8  B0 1F 06 74 */	sth r0, 0x674(r31)
/* 801EDEBC  48 00 00 10 */	b lbl_801EDECC
lbl_801EDEC0:
/* 801EDEC0  7F A3 EB 78 */	mr r3, r29
/* 801EDEC4  7F C4 F3 78 */	mr r4, r30
/* 801EDEC8  48 00 00 65 */	bl setSelectItemForce__12dMenu_Ring_cFi
lbl_801EDECC:
/* 801EDECC  3B DE 00 01 */	addi r30, r30, 1
/* 801EDED0  2C 1E 00 04 */	cmpwi r30, 4
/* 801EDED4  3B 9C 00 0C */	addi r28, r28, 0xc
/* 801EDED8  3B 7B 00 04 */	addi r27, r27, 4
/* 801EDEDC  3B 5A 00 02 */	addi r26, r26, 2
/* 801EDEE0  41 80 FE 10 */	blt lbl_801EDCF0
/* 801EDEE4  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 801EDEE8  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 801EDEEC  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 801EDEF0  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 801EDEF4  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 801EDEF8  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 801EDEFC  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 801EDF00  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 801EDF04  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 801EDF08  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 801EDF0C  E3 41 00 68 */	psq_l f26, 104(r1), 0, 0 /* qr0 */
/* 801EDF10  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 801EDF14  39 61 00 60 */	addi r11, r1, 0x60
/* 801EDF18  48 17 42 F1 */	bl _restgpr_21
/* 801EDF1C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801EDF20  7C 08 03 A6 */	mtlr r0
/* 801EDF24  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801EDF28  4E 80 00 20 */	blr 

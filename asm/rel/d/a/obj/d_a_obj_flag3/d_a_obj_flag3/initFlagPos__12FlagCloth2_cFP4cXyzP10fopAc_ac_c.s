lbl_80BEFD08:
/* 80BEFD08  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BEFD0C  7C 08 02 A6 */	mflr r0
/* 80BEFD10  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BEFD14  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80BEFD18  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80BEFD1C  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80BEFD20  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80BEFD24  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80BEFD28  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80BEFD2C  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80BEFD30  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80BEFD34  39 61 00 40 */	addi r11, r1, 0x40
/* 80BEFD38  4B 77 24 9C */	b _savegpr_27
/* 80BEFD3C  7C 7F 1B 78 */	mr r31, r3
/* 80BEFD40  3C 60 80 BF */	lis r3, M_attr__12daObjFlag3_c@ha
/* 80BEFD44  3B C3 04 58 */	addi r30, r3, M_attr__12daObjFlag3_c@l
/* 80BEFD48  90 9F 0D 50 */	stw r4, 0xd50(r31)
/* 80BEFD4C  80 7F 0D 50 */	lwz r3, 0xd50(r31)
/* 80BEFD50  38 81 00 0C */	addi r4, r1, 0xc
/* 80BEFD54  38 A1 00 08 */	addi r5, r1, 8
/* 80BEFD58  4B 46 B5 A0 */	b dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 80BEFD5C  80 7F 0D 50 */	lwz r3, 0xd50(r31)
/* 80BEFD60  4B 41 D0 04 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BEFD64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BEFD68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BEFD6C  38 9F 0D 54 */	addi r4, r31, 0xd54
/* 80BEFD70  4B 75 67 40 */	b PSMTXCopy
/* 80BEFD74  C3 BE 00 F0 */	lfs f29, 0xf0(r30)
/* 80BEFD78  C3 9E 00 B0 */	lfs f28, 0xb0(r30)
/* 80BEFD7C  3B BF 05 40 */	addi r29, r31, 0x540
/* 80BEFD80  3B 80 00 00 */	li r28, 0
/* 80BEFD84  FF C0 E0 90 */	fmr f30, f28
/* 80BEFD88  C3 FE 00 B4 */	lfs f31, 0xb4(r30)
lbl_80BEFD8C:
/* 80BEFD8C  3B 60 00 00 */	li r27, 0
lbl_80BEFD90:
/* 80BEFD90  D3 DD 00 00 */	stfs f30, 0(r29)
/* 80BEFD94  D3 BD 00 04 */	stfs f29, 4(r29)
/* 80BEFD98  D3 9D 00 08 */	stfs f28, 8(r29)
/* 80BEFD9C  2C 1C 00 00 */	cmpwi r28, 0
/* 80BEFDA0  41 82 00 48 */	beq lbl_80BEFDE8
/* 80BEFDA4  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 80BEFDA8  41 82 00 40 */	beq lbl_80BEFDE8
/* 80BEFDAC  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80BEFDB0  4B 67 7B DC */	b cM_rndFX__Ff
/* 80BEFDB4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80BEFDB8  EC 00 08 2A */	fadds f0, f0, f1
/* 80BEFDBC  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80BEFDC0  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80BEFDC4  4B 67 7B C8 */	b cM_rndFX__Ff
/* 80BEFDC8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80BEFDCC  EC 00 08 2A */	fadds f0, f0, f1
/* 80BEFDD0  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80BEFDD4  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80BEFDD8  4B 67 7B B4 */	b cM_rndFX__Ff
/* 80BEFDDC  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80BEFDE0  EC 00 08 2A */	fadds f0, f0, f1
/* 80BEFDE4  D0 1D 00 08 */	stfs f0, 8(r29)
lbl_80BEFDE8:
/* 80BEFDE8  EF 9C F8 2A */	fadds f28, f28, f31
/* 80BEFDEC  3B 7B 00 01 */	addi r27, r27, 1
/* 80BEFDF0  2C 1B 00 06 */	cmpwi r27, 6
/* 80BEFDF4  3B BD 00 0C */	addi r29, r29, 0xc
/* 80BEFDF8  41 80 FF 98 */	blt lbl_80BEFD90
/* 80BEFDFC  EF BD F8 2A */	fadds f29, f29, f31
/* 80BEFE00  C3 9E 00 B0 */	lfs f28, 0xb0(r30)
/* 80BEFE04  3B 9C 00 01 */	addi r28, r28, 1
/* 80BEFE08  2C 1C 00 06 */	cmpwi r28, 6
/* 80BEFE0C  41 80 FF 80 */	blt lbl_80BEFD8C
/* 80BEFE10  3B 7F 07 00 */	addi r27, r31, 0x700
/* 80BEFE14  3B 80 00 00 */	li r28, 0
lbl_80BEFE18:
/* 80BEFE18  7F E3 FB 78 */	mr r3, r31
/* 80BEFE1C  7F 64 DB 78 */	mr r4, r27
/* 80BEFE20  7F 85 E3 78 */	mr r5, r28
/* 80BEFE24  4B FF F1 51 */	bl calcFlagNormal__12FlagCloth2_cFP4cXyzi
/* 80BEFE28  3B 9C 00 01 */	addi r28, r28, 1
/* 80BEFE2C  2C 1C 00 24 */	cmpwi r28, 0x24
/* 80BEFE30  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80BEFE34  41 80 FF E4 */	blt lbl_80BEFE18
/* 80BEFE38  38 9F 07 00 */	addi r4, r31, 0x700
/* 80BEFE3C  38 7F 08 C0 */	addi r3, r31, 0x8c0
/* 80BEFE40  38 00 00 24 */	li r0, 0x24
/* 80BEFE44  7C 09 03 A6 */	mtctr r0
lbl_80BEFE48:
/* 80BEFE48  C0 04 00 08 */	lfs f0, 8(r4)
/* 80BEFE4C  FC 40 00 50 */	fneg f2, f0
/* 80BEFE50  C0 04 00 04 */	lfs f0, 4(r4)
/* 80BEFE54  FC 20 00 50 */	fneg f1, f0
/* 80BEFE58  C0 04 00 00 */	lfs f0, 0(r4)
/* 80BEFE5C  FC 00 00 50 */	fneg f0, f0
/* 80BEFE60  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BEFE64  D0 23 00 04 */	stfs f1, 4(r3)
/* 80BEFE68  D0 43 00 08 */	stfs f2, 8(r3)
/* 80BEFE6C  38 84 00 0C */	addi r4, r4, 0xc
/* 80BEFE70  38 63 00 0C */	addi r3, r3, 0xc
/* 80BEFE74  42 00 FF D4 */	bdnz lbl_80BEFE48
/* 80BEFE78  38 E0 00 00 */	li r7, 0
/* 80BEFE7C  7C E3 3B 78 */	mr r3, r7
/* 80BEFE80  C8 5E 00 A8 */	lfd f2, 0xa8(r30)
/* 80BEFE84  3C A0 43 30 */	lis r5, 0x4330
/* 80BEFE88  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
lbl_80BEFE8C:
/* 80BEFE8C  38 C0 00 00 */	li r6, 0
/* 80BEFE90  20 07 00 05 */	subfic r0, r7, 5
/* 80BEFE94  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80BEFE98  38 00 00 06 */	li r0, 6
/* 80BEFE9C  7C 09 03 A6 */	mtctr r0
lbl_80BEFEA0:
/* 80BEFEA0  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 80BEFEA4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BEFEA8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80BEFEAC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BEFEB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BEFEB4  EC 00 08 24 */	fdivs f0, f0, f1
/* 80BEFEB8  7C 06 1A 14 */	add r0, r6, r3
/* 80BEFEBC  54 00 18 38 */	slwi r0, r0, 3
/* 80BEFEC0  7D 1F 02 14 */	add r8, r31, r0
/* 80BEFEC4  D0 08 0A 80 */	stfs f0, 0xa80(r8)
/* 80BEFEC8  90 81 00 24 */	stw r4, 0x24(r1)
/* 80BEFECC  90 A1 00 20 */	stw r5, 0x20(r1)
/* 80BEFED0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BEFED4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80BEFED8  EC 00 08 24 */	fdivs f0, f0, f1
/* 80BEFEDC  D0 08 0A 84 */	stfs f0, 0xa84(r8)
/* 80BEFEE0  38 C6 00 01 */	addi r6, r6, 1
/* 80BEFEE4  42 00 FF BC */	bdnz lbl_80BEFEA0
/* 80BEFEE8  38 E7 00 01 */	addi r7, r7, 1
/* 80BEFEEC  2C 07 00 06 */	cmpwi r7, 6
/* 80BEFEF0  38 63 00 06 */	addi r3, r3, 6
/* 80BEFEF4  41 80 FF 98 */	blt lbl_80BEFE8C
/* 80BEFEF8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80BEFEFC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80BEFF00  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80BEFF04  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80BEFF08  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80BEFF0C  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80BEFF10  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80BEFF14  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80BEFF18  39 61 00 40 */	addi r11, r1, 0x40
/* 80BEFF1C  4B 77 23 04 */	b _restgpr_27
/* 80BEFF20  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BEFF24  7C 08 03 A6 */	mtlr r0
/* 80BEFF28  38 21 00 80 */	addi r1, r1, 0x80
/* 80BEFF2C  4E 80 00 20 */	blr 

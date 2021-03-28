lbl_8052CAA0:
/* 8052CAA0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8052CAA4  7C 08 02 A6 */	mflr r0
/* 8052CAA8  90 01 00 54 */	stw r0, 0x54(r1)
/* 8052CAAC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8052CAB0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8052CAB4  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8052CAB8  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8052CABC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8052CAC0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8052CAC4  7C 7E 1B 78 */	mr r30, r3
/* 8052CAC8  3C 80 80 53 */	lis r4, lit_3679@ha
/* 8052CACC  3B E4 61 68 */	addi r31, r4, lit_3679@l
/* 8052CAD0  C3 FF 00 18 */	lfs f31, 0x18(r31)
/* 8052CAD4  C3 DF 00 94 */	lfs f30, 0x94(r31)
/* 8052CAD8  A8 03 05 B8 */	lha r0, 0x5b8(r3)
/* 8052CADC  2C 00 00 01 */	cmpwi r0, 1
/* 8052CAE0  41 82 00 5C */	beq lbl_8052CB3C
/* 8052CAE4  40 80 00 10 */	bge lbl_8052CAF4
/* 8052CAE8  2C 00 00 00 */	cmpwi r0, 0
/* 8052CAEC  40 80 00 14 */	bge lbl_8052CB00
/* 8052CAF0  48 00 02 00 */	b lbl_8052CCF0
lbl_8052CAF4:
/* 8052CAF4  2C 00 00 03 */	cmpwi r0, 3
/* 8052CAF8  40 80 01 F8 */	bge lbl_8052CCF0
/* 8052CAFC  48 00 01 C0 */	b lbl_8052CCBC
lbl_8052CB00:
/* 8052CB00  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8052CB04  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 8052CB08  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8052CB0C  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8052CB10  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8052CB14  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 8052CB18  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052CB1C  4B FF EE B1 */	bl get_ground_y__FP13mg_fish_classP4cXyz
/* 8052CB20  D0 3E 05 DC */	stfs f1, 0x5dc(r30)
/* 8052CB24  A8 7E 05 B8 */	lha r3, 0x5b8(r30)
/* 8052CB28  38 03 00 01 */	addi r0, r3, 1
/* 8052CB2C  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052CB30  38 00 00 00 */	li r0, 0
/* 8052CB34  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8052CB38  48 00 01 B8 */	b lbl_8052CCF0
lbl_8052CB3C:
/* 8052CB3C  C3 FF 00 1C */	lfs f31, 0x1c(r31)
/* 8052CB40  C3 DF 00 10 */	lfs f30, 0x10(r31)
/* 8052CB44  38 61 00 0C */	addi r3, r1, 0xc
/* 8052CB48  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052CB4C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052CB50  4B D3 9F E4 */	b __mi__4cXyzCFRC3Vec
/* 8052CB54  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8052CB58  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8052CB5C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8052CB60  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8052CB64  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8052CB68  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8052CB6C  38 61 00 18 */	addi r3, r1, 0x18
/* 8052CB70  4B E1 A5 C8 */	b PSVECSquareMag
/* 8052CB74  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052CB78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052CB7C  40 81 00 58 */	ble lbl_8052CBD4
/* 8052CB80  FC 00 08 34 */	frsqrte f0, f1
/* 8052CB84  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8052CB88  FC 44 00 32 */	fmul f2, f4, f0
/* 8052CB8C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8052CB90  FC 00 00 32 */	fmul f0, f0, f0
/* 8052CB94  FC 01 00 32 */	fmul f0, f1, f0
/* 8052CB98  FC 03 00 28 */	fsub f0, f3, f0
/* 8052CB9C  FC 02 00 32 */	fmul f0, f2, f0
/* 8052CBA0  FC 44 00 32 */	fmul f2, f4, f0
/* 8052CBA4  FC 00 00 32 */	fmul f0, f0, f0
/* 8052CBA8  FC 01 00 32 */	fmul f0, f1, f0
/* 8052CBAC  FC 03 00 28 */	fsub f0, f3, f0
/* 8052CBB0  FC 02 00 32 */	fmul f0, f2, f0
/* 8052CBB4  FC 44 00 32 */	fmul f2, f4, f0
/* 8052CBB8  FC 00 00 32 */	fmul f0, f0, f0
/* 8052CBBC  FC 01 00 32 */	fmul f0, f1, f0
/* 8052CBC0  FC 03 00 28 */	fsub f0, f3, f0
/* 8052CBC4  FC 02 00 32 */	fmul f0, f2, f0
/* 8052CBC8  FC 21 00 32 */	fmul f1, f1, f0
/* 8052CBCC  FC 20 08 18 */	frsp f1, f1
/* 8052CBD0  48 00 00 88 */	b lbl_8052CC58
lbl_8052CBD4:
/* 8052CBD4  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8052CBD8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052CBDC  40 80 00 10 */	bge lbl_8052CBEC
/* 8052CBE0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052CBE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8052CBE8  48 00 00 70 */	b lbl_8052CC58
lbl_8052CBEC:
/* 8052CBEC  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052CBF0  80 81 00 08 */	lwz r4, 8(r1)
/* 8052CBF4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052CBF8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052CBFC  7C 03 00 00 */	cmpw r3, r0
/* 8052CC00  41 82 00 14 */	beq lbl_8052CC14
/* 8052CC04  40 80 00 40 */	bge lbl_8052CC44
/* 8052CC08  2C 03 00 00 */	cmpwi r3, 0
/* 8052CC0C  41 82 00 20 */	beq lbl_8052CC2C
/* 8052CC10  48 00 00 34 */	b lbl_8052CC44
lbl_8052CC14:
/* 8052CC14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052CC18  41 82 00 0C */	beq lbl_8052CC24
/* 8052CC1C  38 00 00 01 */	li r0, 1
/* 8052CC20  48 00 00 28 */	b lbl_8052CC48
lbl_8052CC24:
/* 8052CC24  38 00 00 02 */	li r0, 2
/* 8052CC28  48 00 00 20 */	b lbl_8052CC48
lbl_8052CC2C:
/* 8052CC2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052CC30  41 82 00 0C */	beq lbl_8052CC3C
/* 8052CC34  38 00 00 05 */	li r0, 5
/* 8052CC38  48 00 00 10 */	b lbl_8052CC48
lbl_8052CC3C:
/* 8052CC3C  38 00 00 03 */	li r0, 3
/* 8052CC40  48 00 00 08 */	b lbl_8052CC48
lbl_8052CC44:
/* 8052CC44  38 00 00 04 */	li r0, 4
lbl_8052CC48:
/* 8052CC48  2C 00 00 01 */	cmpwi r0, 1
/* 8052CC4C  40 82 00 0C */	bne lbl_8052CC58
/* 8052CC50  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052CC54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8052CC58:
/* 8052CC58  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8052CC5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052CC60  40 80 00 10 */	bge lbl_8052CC70
/* 8052CC64  38 00 00 02 */	li r0, 2
/* 8052CC68  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052CC6C  48 00 00 84 */	b lbl_8052CCF0
lbl_8052CC70:
/* 8052CC70  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8052CC74  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8052CC78  4B D3 A9 FC */	b cM_atan2s__Fff
/* 8052CC7C  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8052CC80  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8052CC84  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052CC88  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8052CC8C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052CC90  EC 41 00 2A */	fadds f2, f1, f0
/* 8052CC94  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052CC98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052CC9C  40 81 00 0C */	ble lbl_8052CCA8
/* 8052CCA0  FC 00 10 34 */	frsqrte f0, f2
/* 8052CCA4  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052CCA8:
/* 8052CCA8  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8052CCAC  4B D3 A9 C8 */	b cM_atan2s__Fff
/* 8052CCB0  7C 03 00 D0 */	neg r0, r3
/* 8052CCB4  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 8052CCB8  48 00 00 38 */	b lbl_8052CCF0
lbl_8052CCBC:
/* 8052CCBC  38 7E 05 CE */	addi r3, r30, 0x5ce
/* 8052CCC0  38 80 00 00 */	li r4, 0
/* 8052CCC4  38 A0 00 10 */	li r5, 0x10
/* 8052CCC8  38 C0 00 A0 */	li r6, 0xa0
/* 8052CCCC  4B D4 39 3C */	b cLib_addCalcAngleS2__FPssss
/* 8052CCD0  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 8052CCD4  2C 00 00 01 */	cmpwi r0, 1
/* 8052CCD8  40 82 00 18 */	bne lbl_8052CCF0
/* 8052CCDC  88 1E 0C 44 */	lbz r0, 0xc44(r30)
/* 8052CCE0  28 00 00 0A */	cmplwi r0, 0xa
/* 8052CCE4  40 80 00 0C */	bge lbl_8052CCF0
/* 8052CCE8  38 00 00 00 */	li r0, 0
/* 8052CCEC  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_8052CCF0:
/* 8052CCF0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8052CCF4  FC 20 F8 90 */	fmr f1, f31
/* 8052CCF8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8052CCFC  FC 60 F0 90 */	fmr f3, f30
/* 8052CD00  4B D4 2D 3C */	b cLib_addCalc2__FPffff
/* 8052CD04  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8052CD08  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8052CD0C  38 A0 00 02 */	li r5, 2
/* 8052CD10  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052CD14  4B D4 38 F4 */	b cLib_addCalcAngleS2__FPssss
/* 8052CD18  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8052CD1C  A8 9E 05 CE */	lha r4, 0x5ce(r30)
/* 8052CD20  38 A0 00 02 */	li r5, 2
/* 8052CD24  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052CD28  4B D4 38 E0 */	b cLib_addCalcAngleS2__FPssss
/* 8052CD2C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8052CD30  38 80 03 00 */	li r4, 0x300
/* 8052CD34  38 A0 00 01 */	li r5, 1
/* 8052CD38  38 C0 00 20 */	li r6, 0x20
/* 8052CD3C  4B D4 38 CC */	b cLib_addCalcAngleS2__FPssss
/* 8052CD40  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8052CD44  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8052CD48  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8052CD4C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8052CD50  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8052CD54  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8052CD58  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8052CD5C  7C 08 03 A6 */	mtlr r0
/* 8052CD60  38 21 00 50 */	addi r1, r1, 0x50
/* 8052CD64  4E 80 00 20 */	blr 

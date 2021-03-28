lbl_8099CC50:
/* 8099CC50  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8099CC54  7C 08 02 A6 */	mflr r0
/* 8099CC58  90 01 00 74 */	stw r0, 0x74(r1)
/* 8099CC5C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8099CC60  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8099CC64  39 61 00 60 */	addi r11, r1, 0x60
/* 8099CC68  4B 9C 55 74 */	b _savegpr_29
/* 8099CC6C  7C 7F 1B 78 */	mr r31, r3
/* 8099CC70  7C 80 23 78 */	mr r0, r4
/* 8099CC74  FF E0 08 90 */	fmr f31, f1
/* 8099CC78  7C BD 2B 78 */	mr r29, r5
/* 8099CC7C  3C 60 80 9A */	lis r3, m__19daNpcClerkt_Param_c@ha
/* 8099CC80  3B C3 D2 44 */	addi r30, r3, m__19daNpcClerkt_Param_c@l
/* 8099CC84  38 A0 00 00 */	li r5, 0
/* 8099CC88  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 8099CC8C  28 04 00 00 */	cmplwi r4, 0
/* 8099CC90  41 82 01 40 */	beq lbl_8099CDD0
/* 8099CC94  38 61 00 18 */	addi r3, r1, 0x18
/* 8099CC98  7C 05 03 78 */	mr r5, r0
/* 8099CC9C  4B 8C 9E 98 */	b __mi__4cXyzCFRC3Vec
/* 8099CCA0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 8099CCA4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8099CCA8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8099CCAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8099CCB0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8099CCB4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8099CCB8  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8099CCBC  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8099CCC0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8099CCC4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8099CCC8  38 61 00 0C */	addi r3, r1, 0xc
/* 8099CCCC  4B 9A A4 6C */	b PSVECSquareMag
/* 8099CCD0  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8099CCD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8099CCD8  40 81 00 58 */	ble lbl_8099CD30
/* 8099CCDC  FC 00 08 34 */	frsqrte f0, f1
/* 8099CCE0  C8 9E 00 E0 */	lfd f4, 0xe0(r30)
/* 8099CCE4  FC 44 00 32 */	fmul f2, f4, f0
/* 8099CCE8  C8 7E 00 E8 */	lfd f3, 0xe8(r30)
/* 8099CCEC  FC 00 00 32 */	fmul f0, f0, f0
/* 8099CCF0  FC 01 00 32 */	fmul f0, f1, f0
/* 8099CCF4  FC 03 00 28 */	fsub f0, f3, f0
/* 8099CCF8  FC 02 00 32 */	fmul f0, f2, f0
/* 8099CCFC  FC 44 00 32 */	fmul f2, f4, f0
/* 8099CD00  FC 00 00 32 */	fmul f0, f0, f0
/* 8099CD04  FC 01 00 32 */	fmul f0, f1, f0
/* 8099CD08  FC 03 00 28 */	fsub f0, f3, f0
/* 8099CD0C  FC 02 00 32 */	fmul f0, f2, f0
/* 8099CD10  FC 44 00 32 */	fmul f2, f4, f0
/* 8099CD14  FC 00 00 32 */	fmul f0, f0, f0
/* 8099CD18  FC 01 00 32 */	fmul f0, f1, f0
/* 8099CD1C  FC 03 00 28 */	fsub f0, f3, f0
/* 8099CD20  FC 02 00 32 */	fmul f0, f2, f0
/* 8099CD24  FC 41 00 32 */	fmul f2, f1, f0
/* 8099CD28  FC 40 10 18 */	frsp f2, f2
/* 8099CD2C  48 00 00 90 */	b lbl_8099CDBC
lbl_8099CD30:
/* 8099CD30  C8 1E 00 F0 */	lfd f0, 0xf0(r30)
/* 8099CD34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8099CD38  40 80 00 10 */	bge lbl_8099CD48
/* 8099CD3C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8099CD40  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8099CD44  48 00 00 78 */	b lbl_8099CDBC
lbl_8099CD48:
/* 8099CD48  D0 21 00 08 */	stfs f1, 8(r1)
/* 8099CD4C  80 81 00 08 */	lwz r4, 8(r1)
/* 8099CD50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8099CD54  3C 00 7F 80 */	lis r0, 0x7f80
/* 8099CD58  7C 03 00 00 */	cmpw r3, r0
/* 8099CD5C  41 82 00 14 */	beq lbl_8099CD70
/* 8099CD60  40 80 00 40 */	bge lbl_8099CDA0
/* 8099CD64  2C 03 00 00 */	cmpwi r3, 0
/* 8099CD68  41 82 00 20 */	beq lbl_8099CD88
/* 8099CD6C  48 00 00 34 */	b lbl_8099CDA0
lbl_8099CD70:
/* 8099CD70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8099CD74  41 82 00 0C */	beq lbl_8099CD80
/* 8099CD78  38 00 00 01 */	li r0, 1
/* 8099CD7C  48 00 00 28 */	b lbl_8099CDA4
lbl_8099CD80:
/* 8099CD80  38 00 00 02 */	li r0, 2
/* 8099CD84  48 00 00 20 */	b lbl_8099CDA4
lbl_8099CD88:
/* 8099CD88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8099CD8C  41 82 00 0C */	beq lbl_8099CD98
/* 8099CD90  38 00 00 05 */	li r0, 5
/* 8099CD94  48 00 00 10 */	b lbl_8099CDA4
lbl_8099CD98:
/* 8099CD98  38 00 00 03 */	li r0, 3
/* 8099CD9C  48 00 00 08 */	b lbl_8099CDA4
lbl_8099CDA0:
/* 8099CDA0  38 00 00 04 */	li r0, 4
lbl_8099CDA4:
/* 8099CDA4  2C 00 00 01 */	cmpwi r0, 1
/* 8099CDA8  40 82 00 10 */	bne lbl_8099CDB8
/* 8099CDAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8099CDB0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 8099CDB4  48 00 00 08 */	b lbl_8099CDBC
lbl_8099CDB8:
/* 8099CDB8  FC 40 08 90 */	fmr f2, f1
lbl_8099CDBC:
/* 8099CDBC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8099CDC0  4B 8C A8 B4 */	b cM_atan2s__Fff
/* 8099CDC4  7C 03 00 D0 */	neg r0, r3
/* 8099CDC8  7C 05 07 34 */	extsh r5, r0
/* 8099CDCC  7C A5 EA 14 */	add r5, r5, r29
lbl_8099CDD0:
/* 8099CDD0  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 8099CDD4  7C A5 02 14 */	add r5, r5, r0
/* 8099CDD8  C0 7E 00 C0 */	lfs f3, 0xc0(r30)
/* 8099CDDC  EC 83 F8 24 */	fdivs f4, f3, f31
/* 8099CDE0  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 8099CDE4  C8 5E 00 D8 */	lfd f2, 0xd8(r30)
/* 8099CDE8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8099CDEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8099CDF0  3C 60 43 30 */	lis r3, 0x4330
/* 8099CDF4  90 61 00 30 */	stw r3, 0x30(r1)
/* 8099CDF8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8099CDFC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8099CE00  EC 03 20 28 */	fsubs f0, f3, f4
/* 8099CE04  EC 21 00 32 */	fmuls f1, f1, f0
/* 8099CE08  7C A0 07 34 */	extsh r0, r5
/* 8099CE0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8099CE10  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8099CE14  90 61 00 38 */	stw r3, 0x38(r1)
/* 8099CE18  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8099CE1C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8099CE20  EC 00 01 32 */	fmuls f0, f0, f4
/* 8099CE24  EC 01 00 2A */	fadds f0, f1, f0
/* 8099CE28  FC 00 00 1E */	fctiwz f0, f0
/* 8099CE2C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8099CE30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8099CE34  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 8099CE38  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8099CE3C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8099CE40  39 61 00 60 */	addi r11, r1, 0x60
/* 8099CE44  4B 9C 53 E4 */	b _restgpr_29
/* 8099CE48  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8099CE4C  7C 08 03 A6 */	mtlr r0
/* 8099CE50  38 21 00 70 */	addi r1, r1, 0x70
/* 8099CE54  4E 80 00 20 */	blr 

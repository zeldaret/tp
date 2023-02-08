lbl_8001CC5C:
/* 8001CC5C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8001CC60  7C 08 02 A6 */	mflr r0
/* 8001CC64  90 01 00 44 */	stw r0, 0x44(r1)
/* 8001CC68  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8001CC6C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8001CC70  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8001CC74  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8001CC78  7C 7E 1B 78 */	mr r30, r3
/* 8001CC7C  FF E0 08 90 */	fmr f31, f1
/* 8001CC80  48 18 B7 F5 */	bl dKy_Sound_get__Fv
/* 8001CC84  7C 7F 1B 78 */	mr r31, r3
/* 8001CC88  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8001CC8C  3C 03 00 01 */	addis r0, r3, 1
/* 8001CC90  28 00 FF FF */	cmplwi r0, 0xffff
/* 8001CC94  41 82 01 44 */	beq lbl_8001CDD8
/* 8001CC98  28 1E 00 00 */	cmplwi r30, 0
/* 8001CC9C  41 82 00 0C */	beq lbl_8001CCA8
/* 8001CCA0  80 1E 00 04 */	lwz r0, 4(r30)
/* 8001CCA4  48 00 00 08 */	b lbl_8001CCAC
lbl_8001CCA8:
/* 8001CCA8  38 00 FF FF */	li r0, -1
lbl_8001CCAC:
/* 8001CCAC  7C 03 00 40 */	cmplw r3, r0
/* 8001CCB0  41 82 01 28 */	beq lbl_8001CDD8
/* 8001CCB4  38 61 00 0C */	addi r3, r1, 0xc
/* 8001CCB8  7F E4 FB 78 */	mr r4, r31
/* 8001CCBC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8001CCC0  48 24 9E 75 */	bl __mi__4cXyzCFRC3Vec
/* 8001CCC4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8001CCC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8001CCCC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8001CCD0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8001CCD4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8001CCD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8001CCDC  38 61 00 18 */	addi r3, r1, 0x18
/* 8001CCE0  48 32 A4 59 */	bl PSVECSquareMag
/* 8001CCE4  C0 02 82 04 */	lfs f0, lit_4645(r2)
/* 8001CCE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001CCEC  40 81 00 58 */	ble lbl_8001CD44
/* 8001CCF0  FC 00 08 34 */	frsqrte f0, f1
/* 8001CCF4  C8 82 82 08 */	lfd f4, lit_4745(r2)
/* 8001CCF8  FC 44 00 32 */	fmul f2, f4, f0
/* 8001CCFC  C8 62 82 10 */	lfd f3, lit_4746(r2)
/* 8001CD00  FC 00 00 32 */	fmul f0, f0, f0
/* 8001CD04  FC 01 00 32 */	fmul f0, f1, f0
/* 8001CD08  FC 03 00 28 */	fsub f0, f3, f0
/* 8001CD0C  FC 02 00 32 */	fmul f0, f2, f0
/* 8001CD10  FC 44 00 32 */	fmul f2, f4, f0
/* 8001CD14  FC 00 00 32 */	fmul f0, f0, f0
/* 8001CD18  FC 01 00 32 */	fmul f0, f1, f0
/* 8001CD1C  FC 03 00 28 */	fsub f0, f3, f0
/* 8001CD20  FC 02 00 32 */	fmul f0, f2, f0
/* 8001CD24  FC 44 00 32 */	fmul f2, f4, f0
/* 8001CD28  FC 00 00 32 */	fmul f0, f0, f0
/* 8001CD2C  FC 01 00 32 */	fmul f0, f1, f0
/* 8001CD30  FC 03 00 28 */	fsub f0, f3, f0
/* 8001CD34  FC 02 00 32 */	fmul f0, f2, f0
/* 8001CD38  FC 21 00 32 */	fmul f1, f1, f0
/* 8001CD3C  FC 20 08 18 */	frsp f1, f1
/* 8001CD40  48 00 00 88 */	b lbl_8001CDC8
lbl_8001CD44:
/* 8001CD44  C8 02 82 18 */	lfd f0, lit_4747(r2)
/* 8001CD48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8001CD4C  40 80 00 10 */	bge lbl_8001CD5C
/* 8001CD50  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8001CD54  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8001CD58  48 00 00 70 */	b lbl_8001CDC8
lbl_8001CD5C:
/* 8001CD5C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8001CD60  80 81 00 08 */	lwz r4, 8(r1)
/* 8001CD64  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8001CD68  3C 00 7F 80 */	lis r0, 0x7f80
/* 8001CD6C  7C 03 00 00 */	cmpw r3, r0
/* 8001CD70  41 82 00 14 */	beq lbl_8001CD84
/* 8001CD74  40 80 00 40 */	bge lbl_8001CDB4
/* 8001CD78  2C 03 00 00 */	cmpwi r3, 0
/* 8001CD7C  41 82 00 20 */	beq lbl_8001CD9C
/* 8001CD80  48 00 00 34 */	b lbl_8001CDB4
lbl_8001CD84:
/* 8001CD84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8001CD88  41 82 00 0C */	beq lbl_8001CD94
/* 8001CD8C  38 00 00 01 */	li r0, 1
/* 8001CD90  48 00 00 28 */	b lbl_8001CDB8
lbl_8001CD94:
/* 8001CD94  38 00 00 02 */	li r0, 2
/* 8001CD98  48 00 00 20 */	b lbl_8001CDB8
lbl_8001CD9C:
/* 8001CD9C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8001CDA0  41 82 00 0C */	beq lbl_8001CDAC
/* 8001CDA4  38 00 00 05 */	li r0, 5
/* 8001CDA8  48 00 00 10 */	b lbl_8001CDB8
lbl_8001CDAC:
/* 8001CDAC  38 00 00 03 */	li r0, 3
/* 8001CDB0  48 00 00 08 */	b lbl_8001CDB8
lbl_8001CDB4:
/* 8001CDB4  38 00 00 04 */	li r0, 4
lbl_8001CDB8:
/* 8001CDB8  2C 00 00 01 */	cmpwi r0, 1
/* 8001CDBC  40 82 00 0C */	bne lbl_8001CDC8
/* 8001CDC0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8001CDC4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8001CDC8:
/* 8001CDC8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8001CDCC  40 80 00 0C */	bge lbl_8001CDD8
/* 8001CDD0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8001CDD4  48 00 00 08 */	b lbl_8001CDDC
lbl_8001CDD8:
/* 8001CDD8  38 60 00 00 */	li r3, 0
lbl_8001CDDC:
/* 8001CDDC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8001CDE0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8001CDE4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8001CDE8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8001CDEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8001CDF0  7C 08 03 A6 */	mtlr r0
/* 8001CDF4  38 21 00 40 */	addi r1, r1, 0x40
/* 8001CDF8  4E 80 00 20 */	blr 

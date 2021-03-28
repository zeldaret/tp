lbl_806E2D40:
/* 806E2D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E2D44  7C 08 02 A6 */	mflr r0
/* 806E2D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E2D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E2D50  93 C1 00 08 */	stw r30, 8(r1)
/* 806E2D54  7C 7F 1B 78 */	mr r31, r3
/* 806E2D58  3C 80 80 6E */	lis r4, lit_3791@ha
/* 806E2D5C  3B C4 59 20 */	addi r30, r4, lit_3791@l
/* 806E2D60  80 03 07 40 */	lwz r0, 0x740(r3)
/* 806E2D64  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806E2D68  41 82 00 50 */	beq lbl_806E2DB8
/* 806E2D6C  88 9F 05 DA */	lbz r4, 0x5da(r31)
/* 806E2D70  38 04 00 01 */	addi r0, r4, 1
/* 806E2D74  98 1F 05 DA */	stb r0, 0x5da(r31)
/* 806E2D78  88 1F 05 DA */	lbz r0, 0x5da(r31)
/* 806E2D7C  28 00 00 01 */	cmplwi r0, 1
/* 806E2D80  40 82 00 38 */	bne lbl_806E2DB8
/* 806E2D84  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 806E2D88  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 806E2D8C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 806E2D90  38 04 F0 00 */	addi r0, r4, -4096
/* 806E2D94  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806E2D98  38 80 00 08 */	li r4, 8
/* 806E2D9C  38 A0 00 00 */	li r5, 0
/* 806E2DA0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806E2DA4  FC 40 08 90 */	fmr f2, f1
/* 806E2DA8  4B FF E0 E5 */	bl SetAnm__8daE_HM_cFiiff
/* 806E2DAC  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 806E2DB0  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E2DB4  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_806E2DB8:
/* 806E2DB8  80 1F 07 40 */	lwz r0, 0x740(r31)
/* 806E2DBC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806E2DC0  41 82 00 18 */	beq lbl_806E2DD8
/* 806E2DC4  C8 3E 01 28 */	lfd f1, 0x128(r30)
/* 806E2DC8  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 806E2DCC  FC 01 00 32 */	fmul f0, f1, f0
/* 806E2DD0  FC 00 00 18 */	frsp f0, f0
/* 806E2DD4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_806E2DD8:
/* 806E2DD8  88 1F 05 DA */	lbz r0, 0x5da(r31)
/* 806E2DDC  28 00 00 01 */	cmplwi r0, 1
/* 806E2DE0  40 81 00 A8 */	ble lbl_806E2E88
/* 806E2DE4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806E2DE8  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E2DEC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 806E2DF0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E2DF4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806E2DF8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 806E2DFC  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E2E00  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E2E04  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 806E2E08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E2E0C  40 81 00 2C */	ble lbl_806E2E38
/* 806E2E10  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 806E2E14  7C 64 1B 78 */	mr r4, r3
/* 806E2E18  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 806E2E1C  4B C6 42 BC */	b PSVECScale
/* 806E2E20  38 00 00 01 */	li r0, 1
/* 806E2E24  98 1F 06 0C */	stb r0, 0x60c(r31)
/* 806E2E28  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 806E2E2C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806E2E30  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 806E2E34  4B B8 D9 0C */	b cLib_chaseF__FPfff
lbl_806E2E38:
/* 806E2E38  80 7F 06 18 */	lwz r3, 0x618(r31)
/* 806E2E3C  38 80 00 01 */	li r4, 1
/* 806E2E40  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E2E44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E2E48  40 82 00 18 */	bne lbl_806E2E60
/* 806E2E4C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806E2E50  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E2E54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E2E58  41 82 00 08 */	beq lbl_806E2E60
/* 806E2E5C  38 80 00 00 */	li r4, 0
lbl_806E2E60:
/* 806E2E60  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E2E64  41 82 00 24 */	beq lbl_806E2E88
/* 806E2E68  7F E3 FB 78 */	mr r3, r31
/* 806E2E6C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806E2E70  38 A0 00 0A */	li r5, 0xa
/* 806E2E74  38 C0 00 00 */	li r6, 0
/* 806E2E78  38 E0 00 23 */	li r7, 0x23
/* 806E2E7C  4B 93 9C 5C */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806E2E80  7F E3 FB 78 */	mr r3, r31
/* 806E2E84  4B 93 6D F8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806E2E88:
/* 806E2E88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E2E8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806E2E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E2E94  7C 08 03 A6 */	mtlr r0
/* 806E2E98  38 21 00 10 */	addi r1, r1, 0x10
/* 806E2E9C  4E 80 00 20 */	blr 

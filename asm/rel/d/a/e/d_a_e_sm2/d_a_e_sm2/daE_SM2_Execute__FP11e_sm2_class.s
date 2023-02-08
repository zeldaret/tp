lbl_8079BEF0:
/* 8079BEF0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8079BEF4  7C 08 02 A6 */	mflr r0
/* 8079BEF8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8079BEFC  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8079BF00  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8079BF04  93 E1 00 AC */	stw r31, 0xac(r1)
/* 8079BF08  93 C1 00 A8 */	stw r30, 0xa8(r1)
/* 8079BF0C  7C 7E 1B 78 */	mr r30, r3
/* 8079BF10  3C 60 80 7A */	lis r3, lit_3790@ha /* 0x8079D5B0@ha */
/* 8079BF14  3B E3 D5 B0 */	addi r31, r3, lit_3790@l /* 0x8079D5B0@l */
/* 8079BF18  3C 60 80 7A */	lis r3, l_HIO@ha /* 0x8079DBD4@ha */
/* 8079BF1C  38 63 DB D4 */	addi r3, r3, l_HIO@l /* 0x8079DBD4@l */
/* 8079BF20  88 03 00 07 */	lbz r0, 7(r3)
/* 8079BF24  28 00 00 00 */	cmplwi r0, 0
/* 8079BF28  41 82 00 0C */	beq lbl_8079BF34
/* 8079BF2C  A8 03 00 04 */	lha r0, 4(r3)
/* 8079BF30  98 1E 08 3C */	stb r0, 0x83c(r30)
lbl_8079BF34:
/* 8079BF34  88 7E 08 3C */	lbz r3, 0x83c(r30)
/* 8079BF38  4B FF D1 39 */	bl size_get__FUc
/* 8079BF3C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8079BF40  EF E0 00 72 */	fmuls f31, f0, f1
/* 8079BF44  88 7E 08 3C */	lbz r3, 0x83c(r30)
/* 8079BF48  4B FF D1 29 */	bl size_get__FUc
/* 8079BF4C  38 7E 08 34 */	addi r3, r30, 0x834
/* 8079BF50  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 8079BF54  FC 60 F8 90 */	fmr f3, f31
/* 8079BF58  4B AD 3A E5 */	bl cLib_addCalc2__FPffff
/* 8079BF5C  7F C3 F3 78 */	mr r3, r30
/* 8079BF60  38 80 00 00 */	li r4, 0
/* 8079BF64  4B FF FD B1 */	bl col_set__FP11e_sm2_classSc
/* 8079BF68  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 8079BF6C  38 03 00 01 */	addi r0, r3, 1
/* 8079BF70  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8079BF74  38 60 00 00 */	li r3, 0
/* 8079BF78  38 00 00 03 */	li r0, 3
/* 8079BF7C  7C 09 03 A6 */	mtctr r0
lbl_8079BF80:
/* 8079BF80  38 A3 06 86 */	addi r5, r3, 0x686
/* 8079BF84  7C 9E 2A AE */	lhax r4, r30, r5
/* 8079BF88  2C 04 00 00 */	cmpwi r4, 0
/* 8079BF8C  41 82 00 0C */	beq lbl_8079BF98
/* 8079BF90  38 04 FF FF */	addi r0, r4, -1
/* 8079BF94  7C 1E 2B 2E */	sthx r0, r30, r5
lbl_8079BF98:
/* 8079BF98  38 63 00 02 */	addi r3, r3, 2
/* 8079BF9C  42 00 FF E4 */	bdnz lbl_8079BF80
/* 8079BFA0  A8 7E 06 8C */	lha r3, 0x68c(r30)
/* 8079BFA4  2C 03 00 00 */	cmpwi r3, 0
/* 8079BFA8  41 82 00 0C */	beq lbl_8079BFB4
/* 8079BFAC  38 03 FF FF */	addi r0, r3, -1
/* 8079BFB0  B0 1E 06 8C */	sth r0, 0x68c(r30)
lbl_8079BFB4:
/* 8079BFB4  A8 7E 06 8E */	lha r3, 0x68e(r30)
/* 8079BFB8  2C 03 00 00 */	cmpwi r3, 0
/* 8079BFBC  41 82 00 0C */	beq lbl_8079BFC8
/* 8079BFC0  38 03 FF FF */	addi r0, r3, -1
/* 8079BFC4  B0 1E 06 8E */	sth r0, 0x68e(r30)
lbl_8079BFC8:
/* 8079BFC8  7F C3 F3 78 */	mr r3, r30
/* 8079BFCC  4B FF EF C9 */	bl action__FP11e_sm2_class
/* 8079BFD0  88 9E 08 3E */	lbz r4, 0x83e(r30)
/* 8079BFD4  28 04 00 00 */	cmplwi r4, 0
/* 8079BFD8  41 82 00 B4 */	beq lbl_8079C08C
/* 8079BFDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079BFE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079BFE4  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8079BFE8  38 04 FF FF */	addi r0, r4, -1
/* 8079BFEC  98 1E 08 3E */	stb r0, 0x83e(r30)
/* 8079BFF0  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 8079BFF4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8079BFF8  C0 03 00 DC */	lfs f0, 0xdc(r3)
/* 8079BFFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8079C000  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 8079C004  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8079C008  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8079C00C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8079C010  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8079C014  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8079C018  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8079C01C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8079C020  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8079C024  EC 01 00 2A */	fadds f0, f1, f0
/* 8079C028  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8079C02C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079C030  4B 8D BC 39 */	bl __ct__11dBgS_LinChkFv
/* 8079C034  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079C038  38 81 00 20 */	addi r4, r1, 0x20
/* 8079C03C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8079C040  7F C6 F3 78 */	mr r6, r30
/* 8079C044  4B 8D BD 21 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8079C048  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079C04C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079C050  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8079C054  38 81 00 2C */	addi r4, r1, 0x2c
/* 8079C058  4B 8D 83 5D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8079C05C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079C060  41 82 00 20 */	beq lbl_8079C080
/* 8079C064  7F C3 F3 78 */	mr r3, r30
/* 8079C068  4B FF D0 1D */	bl sm2_delete__FP11e_sm2_class
/* 8079C06C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079C070  38 80 FF FF */	li r4, -1
/* 8079C074  4B 8D BC 69 */	bl __dt__11dBgS_LinChkFv
/* 8079C078  38 60 00 01 */	li r3, 1
/* 8079C07C  48 00 00 84 */	b lbl_8079C100
lbl_8079C080:
/* 8079C080  38 61 00 2C */	addi r3, r1, 0x2c
/* 8079C084  38 80 FF FF */	li r4, -1
/* 8079C088  4B 8D BC 55 */	bl __dt__11dBgS_LinChkFv
lbl_8079C08C:
/* 8079C08C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8079C090  C0 1E 08 34 */	lfs f0, 0x834(r30)
/* 8079C094  EC 01 00 32 */	fmuls f0, f1, f0
/* 8079C098  D0 01 00 08 */	stfs f0, 8(r1)
/* 8079C09C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8079C0A0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8079C0A4  7F C3 F3 78 */	mr r3, r30
/* 8079C0A8  38 9E 05 DC */	addi r4, r30, 0x5dc
/* 8079C0AC  38 BE 05 38 */	addi r5, r30, 0x538
/* 8079C0B0  38 C1 00 08 */	addi r6, r1, 8
/* 8079C0B4  48 00 10 5D */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8079C0B8  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 8079C0BC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8079C0C0  EC 21 00 28 */	fsubs f1, f1, f0
/* 8079C0C4  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 8079C0C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079C0CC  40 81 00 30 */	ble lbl_8079C0FC
/* 8079C0D0  7F C3 F3 78 */	mr r3, r30
/* 8079C0D4  4B 87 DB A9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8079C0D8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8079C0DC  54 04 46 3E */	srwi r4, r0, 0x18
/* 8079C0E0  2C 04 00 FF */	cmpwi r4, 0xff
/* 8079C0E4  41 82 00 18 */	beq lbl_8079C0FC
/* 8079C0E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079C0EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079C0F0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8079C0F4  7C 05 07 74 */	extsb r5, r0
/* 8079C0F8  4B 89 91 09 */	bl onSwitch__10dSv_info_cFii
lbl_8079C0FC:
/* 8079C0FC  38 60 00 01 */	li r3, 1
lbl_8079C100:
/* 8079C100  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8079C104  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8079C108  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 8079C10C  83 C1 00 A8 */	lwz r30, 0xa8(r1)
/* 8079C110  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8079C114  7C 08 03 A6 */	mtlr r0
/* 8079C118  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8079C11C  4E 80 00 20 */	blr 

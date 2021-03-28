lbl_8065AE88:
/* 8065AE88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8065AE8C  7C 08 02 A6 */	mflr r0
/* 8065AE90  90 01 00 34 */	stw r0, 0x34(r1)
/* 8065AE94  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8065AE98  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8065AE9C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 8065AEA0  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 8065AEA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8065AEA8  93 C1 00 08 */	stw r30, 8(r1)
/* 8065AEAC  7C 7F 1B 78 */	mr r31, r3
/* 8065AEB0  88 03 0C A5 */	lbz r0, 0xca5(r3)
/* 8065AEB4  28 00 00 00 */	cmplwi r0, 0
/* 8065AEB8  41 82 00 0C */	beq lbl_8065AEC4
/* 8065AEBC  38 60 00 00 */	li r3, 0
/* 8065AEC0  48 00 01 4C */	b lbl_8065B00C
lbl_8065AEC4:
/* 8065AEC4  38 00 00 06 */	li r0, 6
/* 8065AEC8  98 1F 0C 60 */	stb r0, 0xc60(r31)
/* 8065AECC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8065AED0  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 8065AED4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8065AED8  4B 9B F9 08 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8065AEDC  FF E0 08 90 */	fmr f31, f1
/* 8065AEE0  C3 DF 0C 78 */	lfs f30, 0xc78(r31)
/* 8065AEE4  88 1F 0C A3 */	lbz r0, 0xca3(r31)
/* 8065AEE8  28 00 00 00 */	cmplwi r0, 0
/* 8065AEEC  41 82 00 0C */	beq lbl_8065AEF8
/* 8065AEF0  3C 60 80 66 */	lis r3, lit_5049@ha
/* 8065AEF4  C3 C3 2E 48 */	lfs f30, lit_5049@l(r3)
lbl_8065AEF8:
/* 8065AEF8  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 8065AEFC  40 81 00 0C */	ble lbl_8065AF08
/* 8065AF00  38 60 00 00 */	li r3, 0
/* 8065AF04  48 00 01 08 */	b lbl_8065B00C
lbl_8065AF08:
/* 8065AF08  7F E3 FB 78 */	mr r3, r31
/* 8065AF0C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8065AF10  4B 9B F8 00 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8065AF14  A8 1F 0C 34 */	lha r0, 0xc34(r31)
/* 8065AF18  7C 00 18 50 */	subf r0, r0, r3
/* 8065AF1C  7C 1E 07 34 */	extsh r30, r0
/* 8065AF20  7F C3 F3 78 */	mr r3, r30
/* 8065AF24  4B D0 A1 AC */	b abs
/* 8065AF28  7C 60 07 34 */	extsh r0, r3
/* 8065AF2C  2C 00 20 00 */	cmpwi r0, 0x2000
/* 8065AF30  40 80 00 24 */	bge lbl_8065AF54
/* 8065AF34  7F C0 07 35 */	extsh. r0, r30
/* 8065AF38  40 81 00 10 */	ble lbl_8065AF48
/* 8065AF3C  38 00 00 00 */	li r0, 0
/* 8065AF40  98 1F 0C 60 */	stb r0, 0xc60(r31)
/* 8065AF44  48 00 00 C4 */	b lbl_8065B008
lbl_8065AF48:
/* 8065AF48  38 00 00 01 */	li r0, 1
/* 8065AF4C  98 1F 0C 60 */	stb r0, 0xc60(r31)
/* 8065AF50  48 00 00 B8 */	b lbl_8065B008
lbl_8065AF54:
/* 8065AF54  2C 00 60 00 */	cmpwi r0, 0x6000
/* 8065AF58  40 81 00 24 */	ble lbl_8065AF7C
/* 8065AF5C  7F C0 07 35 */	extsh. r0, r30
/* 8065AF60  40 81 00 10 */	ble lbl_8065AF70
/* 8065AF64  38 00 00 04 */	li r0, 4
/* 8065AF68  98 1F 0C 60 */	stb r0, 0xc60(r31)
/* 8065AF6C  48 00 00 9C */	b lbl_8065B008
lbl_8065AF70:
/* 8065AF70  38 00 00 05 */	li r0, 5
/* 8065AF74  98 1F 0C 60 */	stb r0, 0xc60(r31)
/* 8065AF78  48 00 00 90 */	b lbl_8065B008
lbl_8065AF7C:
/* 8065AF7C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8065AF80  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8065AF84  57 C0 04 38 */	rlwinm r0, r30, 0, 0x10, 0x1c
/* 8065AF88  7C 64 02 14 */	add r3, r4, r0
/* 8065AF8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8065AF90  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8065AF94  FC 00 02 10 */	fabs f0, f0
/* 8065AF98  FC 20 00 18 */	frsp f1, f0
/* 8065AF9C  C0 04 20 04 */	lfs f0, 0x2004(r4)
/* 8065AFA0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8065AFA4  FC 00 02 10 */	fabs f0, f0
/* 8065AFA8  FC 00 00 18 */	frsp f0, f0
/* 8065AFAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065AFB0  40 81 00 0C */	ble lbl_8065AFBC
/* 8065AFB4  38 60 00 00 */	li r3, 0
/* 8065AFB8  48 00 00 54 */	b lbl_8065B00C
lbl_8065AFBC:
/* 8065AFBC  7C 04 04 2E */	lfsx f0, r4, r0
/* 8065AFC0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8065AFC4  FC 00 02 10 */	fabs f0, f0
/* 8065AFC8  FC 20 00 18 */	frsp f1, f0
/* 8065AFCC  C0 04 20 00 */	lfs f0, 0x2000(r4)
/* 8065AFD0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8065AFD4  FC 00 02 10 */	fabs f0, f0
/* 8065AFD8  FC 00 00 18 */	frsp f0, f0
/* 8065AFDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065AFE0  40 81 00 0C */	ble lbl_8065AFEC
/* 8065AFE4  38 60 00 00 */	li r3, 0
/* 8065AFE8  48 00 00 24 */	b lbl_8065B00C
lbl_8065AFEC:
/* 8065AFEC  7F C0 07 35 */	extsh. r0, r30
/* 8065AFF0  40 81 00 10 */	ble lbl_8065B000
/* 8065AFF4  38 00 00 02 */	li r0, 2
/* 8065AFF8  98 1F 0C 60 */	stb r0, 0xc60(r31)
/* 8065AFFC  48 00 00 0C */	b lbl_8065B008
lbl_8065B000:
/* 8065B000  38 00 00 03 */	li r0, 3
/* 8065B004  98 1F 0C 60 */	stb r0, 0xc60(r31)
lbl_8065B008:
/* 8065B008  38 60 00 01 */	li r3, 1
lbl_8065B00C:
/* 8065B00C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8065B010  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8065B014  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 8065B018  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 8065B01C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8065B020  83 C1 00 08 */	lwz r30, 8(r1)
/* 8065B024  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8065B028  7C 08 03 A6 */	mtlr r0
/* 8065B02C  38 21 00 30 */	addi r1, r1, 0x30
/* 8065B030  4E 80 00 20 */	blr 

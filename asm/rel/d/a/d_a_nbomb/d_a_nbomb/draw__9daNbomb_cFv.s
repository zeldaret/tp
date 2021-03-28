lbl_804CBC60:
/* 804CBC60  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804CBC64  7C 08 02 A6 */	mflr r0
/* 804CBC68  90 01 00 64 */	stw r0, 0x64(r1)
/* 804CBC6C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 804CBC70  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 804CBC74  39 61 00 50 */	addi r11, r1, 0x50
/* 804CBC78  4B E9 65 60 */	b _savegpr_28
/* 804CBC7C  7C 7C 1B 78 */	mr r28, r3
/* 804CBC80  3C 60 80 4D */	lis r3, lit_3767@ha
/* 804CBC84  3B E3 C3 40 */	addi r31, r3, lit_3767@l
/* 804CBC88  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804CBC8C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804CBC90  38 80 00 00 */	li r4, 0
/* 804CBC94  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 804CBC98  38 DC 01 0C */	addi r6, r28, 0x10c
/* 804CBC9C  4B CD 7B 28 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 804CBCA0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 804CBCA4  28 00 00 00 */	cmplwi r0, 0
/* 804CBCA8  40 82 00 0C */	bne lbl_804CBCB4
/* 804CBCAC  38 60 00 01 */	li r3, 1
/* 804CBCB0  48 00 05 30 */	b lbl_804CC1E0
lbl_804CBCB4:
/* 804CBCB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CBCB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CBCBC  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 804CBCC0  38 60 00 00 */	li r3, 0
/* 804CBCC4  B0 61 00 0A */	sth r3, 0xa(r1)
/* 804CBCC8  B0 61 00 0E */	sth r3, 0xe(r1)
/* 804CBCCC  80 9C 0B 4C */	lwz r4, 0xb4c(r28)
/* 804CBCD0  54 80 05 29 */	rlwinm. r0, r4, 0, 0x14, 0x14
/* 804CBCD4  41 82 00 10 */	beq lbl_804CBCE4
/* 804CBCD8  B0 61 00 08 */	sth r3, 8(r1)
/* 804CBCDC  B0 61 00 0C */	sth r3, 0xc(r1)
/* 804CBCE0  48 00 02 90 */	b lbl_804CBF70
lbl_804CBCE4:
/* 804CBCE4  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 804CBCE8  41 82 00 2C */	beq lbl_804CBD14
/* 804CBCEC  7F C3 F3 78 */	mr r3, r30
/* 804CBCF0  4B C0 B0 A4 */	b getFreezeR__9daAlink_cCFv
/* 804CBCF4  B0 61 00 08 */	sth r3, 8(r1)
/* 804CBCF8  7F C3 F3 78 */	mr r3, r30
/* 804CBCFC  4B C0 B0 A8 */	b getFreezeG__9daAlink_cCFv
/* 804CBD00  B0 61 00 0A */	sth r3, 0xa(r1)
/* 804CBD04  7F C3 F3 78 */	mr r3, r30
/* 804CBD08  4B C0 B0 AC */	b getFreezeB__9daAlink_cCFv
/* 804CBD0C  B0 61 00 0C */	sth r3, 0xc(r1)
/* 804CBD10  48 00 02 60 */	b lbl_804CBF70
lbl_804CBD14:
/* 804CBD14  7F C3 F3 78 */	mr r3, r30
/* 804CBD18  4B C1 7A 48 */	b getBombExplodeTime__9daAlink_cCFv
/* 804CBD1C  A8 BC 0B 58 */	lha r5, 0xb58(r28)
/* 804CBD20  7C 64 07 34 */	extsh r4, r3
/* 804CBD24  7C 05 20 00 */	cmpw r5, r4
/* 804CBD28  40 81 00 74 */	ble lbl_804CBD9C
/* 804CBD2C  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 804CBD30  7C 04 28 50 */	subf r0, r4, r5
/* 804CBD34  C8 5F 00 98 */	lfd f2, 0x98(r31)
/* 804CBD38  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CBD3C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804CBD40  3C 60 43 30 */	lis r3, 0x4330
/* 804CBD44  90 61 00 28 */	stw r3, 0x28(r1)
/* 804CBD48  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804CBD4C  EC 00 10 28 */	fsubs f0, f0, f2
/* 804CBD50  EC 21 00 32 */	fmuls f1, f1, f0
/* 804CBD54  7C 80 0E 70 */	srawi r0, r4, 1
/* 804CBD58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CBD5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CBD60  90 61 00 30 */	stw r3, 0x30(r1)
/* 804CBD64  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804CBD68  EC 00 10 28 */	fsubs f0, f0, f2
/* 804CBD6C  EC 21 00 24 */	fdivs f1, f1, f0
/* 804CBD70  4B D9 B8 74 */	b cM_rad2s__Ff
/* 804CBD74  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 804CBD78  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 804CBD7C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804CBD80  7C 64 02 14 */	add r3, r4, r0
/* 804CBD84  C0 03 00 04 */	lfs f0, 4(r3)
/* 804CBD88  FC 00 02 10 */	fabs f0, f0
/* 804CBD8C  FC 20 00 18 */	frsp f1, f0
/* 804CBD90  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804CBD94  EF E0 08 28 */	fsubs f31, f0, f1
/* 804CBD98  48 00 01 5C */	b lbl_804CBEF4
lbl_804CBD9C:
/* 804CBD9C  7C 80 0E 70 */	srawi r0, r4, 1
/* 804CBDA0  7C 05 00 00 */	cmpw r5, r0
/* 804CBDA4  40 81 00 74 */	ble lbl_804CBE18
/* 804CBDA8  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 804CBDAC  7C 00 28 50 */	subf r0, r0, r5
/* 804CBDB0  C8 5F 00 98 */	lfd f2, 0x98(r31)
/* 804CBDB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CBDB8  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CBDBC  3C 60 43 30 */	lis r3, 0x4330
/* 804CBDC0  90 61 00 30 */	stw r3, 0x30(r1)
/* 804CBDC4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804CBDC8  EC 00 10 28 */	fsubs f0, f0, f2
/* 804CBDCC  EC 21 00 32 */	fmuls f1, f1, f0
/* 804CBDD0  7C 80 16 70 */	srawi r0, r4, 2
/* 804CBDD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CBDD8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804CBDDC  90 61 00 28 */	stw r3, 0x28(r1)
/* 804CBDE0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804CBDE4  EC 00 10 28 */	fsubs f0, f0, f2
/* 804CBDE8  EC 21 00 24 */	fdivs f1, f1, f0
/* 804CBDEC  4B D9 B7 F8 */	b cM_rad2s__Ff
/* 804CBDF0  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 804CBDF4  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 804CBDF8  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804CBDFC  7C 64 02 14 */	add r3, r4, r0
/* 804CBE00  C0 03 00 04 */	lfs f0, 4(r3)
/* 804CBE04  FC 00 02 10 */	fabs f0, f0
/* 804CBE08  FC 20 00 18 */	frsp f1, f0
/* 804CBE0C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804CBE10  EF E0 08 28 */	fsubs f31, f0, f1
/* 804CBE14  48 00 00 E0 */	b lbl_804CBEF4
lbl_804CBE18:
/* 804CBE18  7C 80 16 70 */	srawi r0, r4, 2
/* 804CBE1C  7C 05 00 00 */	cmpw r5, r0
/* 804CBE20  40 81 00 6C */	ble lbl_804CBE8C
/* 804CBE24  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 804CBE28  7C 00 28 50 */	subf r0, r0, r5
/* 804CBE2C  C8 5F 00 98 */	lfd f2, 0x98(r31)
/* 804CBE30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CBE34  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CBE38  3C 60 43 30 */	lis r3, 0x4330
/* 804CBE3C  90 61 00 30 */	stw r3, 0x30(r1)
/* 804CBE40  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804CBE44  EC 00 10 28 */	fsubs f0, f0, f2
/* 804CBE48  EC 21 00 32 */	fmuls f1, f1, f0
/* 804CBE4C  7C 80 1E 70 */	srawi r0, r4, 3
/* 804CBE50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CBE54  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804CBE58  90 61 00 28 */	stw r3, 0x28(r1)
/* 804CBE5C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804CBE60  EC 00 10 28 */	fsubs f0, f0, f2
/* 804CBE64  EC 21 00 24 */	fdivs f1, f1, f0
/* 804CBE68  4B D9 B7 7C */	b cM_rad2s__Ff
/* 804CBE6C  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804CBE70  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804CBE74  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804CBE78  7C 03 04 2E */	lfsx f0, r3, r0
/* 804CBE7C  FC 00 02 10 */	fabs f0, f0
/* 804CBE80  FC 00 00 18 */	frsp f0, f0
/* 804CBE84  FF E0 00 90 */	fmr f31, f0
/* 804CBE88  48 00 00 6C */	b lbl_804CBEF4
lbl_804CBE8C:
/* 804CBE8C  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 804CBE90  7C 80 1E 70 */	srawi r0, r4, 3
/* 804CBE94  7C 00 28 50 */	subf r0, r0, r5
/* 804CBE98  C8 5F 00 98 */	lfd f2, 0x98(r31)
/* 804CBE9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CBEA0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CBEA4  3C 60 43 30 */	lis r3, 0x4330
/* 804CBEA8  90 61 00 30 */	stw r3, 0x30(r1)
/* 804CBEAC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804CBEB0  EC 00 10 28 */	fsubs f0, f0, f2
/* 804CBEB4  EC 21 00 32 */	fmuls f1, f1, f0
/* 804CBEB8  7C 80 26 70 */	srawi r0, r4, 4
/* 804CBEBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CBEC0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804CBEC4  90 61 00 28 */	stw r3, 0x28(r1)
/* 804CBEC8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804CBECC  EC 00 10 28 */	fsubs f0, f0, f2
/* 804CBED0  EC 21 00 24 */	fdivs f1, f1, f0
/* 804CBED4  4B D9 B7 10 */	b cM_rad2s__Ff
/* 804CBED8  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804CBEDC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804CBEE0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804CBEE4  7C 03 04 2E */	lfsx f0, r3, r0
/* 804CBEE8  FC 00 02 10 */	fabs f0, f0
/* 804CBEEC  FC 00 00 18 */	frsp f0, f0
/* 804CBEF0  FF E0 00 90 */	fmr f31, f0
lbl_804CBEF4:
/* 804CBEF4  88 1C 0B 54 */	lbz r0, 0xb54(r28)
/* 804CBEF8  28 00 00 04 */	cmplwi r0, 4
/* 804CBEFC  41 82 00 0C */	beq lbl_804CBF08
/* 804CBF00  28 00 00 05 */	cmplwi r0, 5
/* 804CBF04  40 82 00 48 */	bne lbl_804CBF4C
lbl_804CBF08:
/* 804CBF08  7F C3 F3 78 */	mr r3, r30
/* 804CBF0C  4B C1 78 D4 */	b getEnemyBombColorR__9daAlink_cCFv
/* 804CBF10  7C 60 07 34 */	extsh r0, r3
/* 804CBF14  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 804CBF18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CBF1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CBF20  3C 00 43 30 */	lis r0, 0x4330
/* 804CBF24  90 01 00 30 */	stw r0, 0x30(r1)
/* 804CBF28  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804CBF2C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CBF30  EC 1F 00 32 */	fmuls f0, f31, f0
/* 804CBF34  FC 00 00 1E */	fctiwz f0, f0
/* 804CBF38  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804CBF3C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804CBF40  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804CBF44  B0 01 00 08 */	sth r0, 8(r1)
/* 804CBF48  48 00 00 20 */	b lbl_804CBF68
lbl_804CBF4C:
/* 804CBF4C  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 804CBF50  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804CBF54  FC 00 00 1E */	fctiwz f0, f0
/* 804CBF58  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804CBF5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CBF60  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804CBF64  B0 01 00 08 */	sth r0, 8(r1)
lbl_804CBF68:
/* 804CBF68  38 00 00 00 */	li r0, 0
/* 804CBF6C  B0 01 00 0C */	sth r0, 0xc(r1)
lbl_804CBF70:
/* 804CBF70  80 1C 0B 4C */	lwz r0, 0xb4c(r28)
/* 804CBF74  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804CBF78  41 82 00 28 */	beq lbl_804CBFA0
/* 804CBF7C  7F C3 F3 78 */	mr r3, r30
/* 804CBF80  4B C0 AE 14 */	b getFreezeR__9daAlink_cCFv
/* 804CBF84  B0 7C 04 64 */	sth r3, 0x464(r28)
/* 804CBF88  7F C3 F3 78 */	mr r3, r30
/* 804CBF8C  4B C0 AE 18 */	b getFreezeG__9daAlink_cCFv
/* 804CBF90  B0 7C 04 66 */	sth r3, 0x466(r28)
/* 804CBF94  7F C3 F3 78 */	mr r3, r30
/* 804CBF98  4B C0 AE 1C */	b getFreezeB__9daAlink_cCFv
/* 804CBF9C  B0 7C 04 68 */	sth r3, 0x468(r28)
lbl_804CBFA0:
/* 804CBFA0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804CBFA4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804CBFA8  80 9C 05 74 */	lwz r4, 0x574(r28)
/* 804CBFAC  80 84 00 04 */	lwz r4, 4(r4)
/* 804CBFB0  38 BC 01 0C */	addi r5, r28, 0x10c
/* 804CBFB4  4B CD 8D EC */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 804CBFB8  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 804CBFBC  83 C3 00 04 */	lwz r30, 4(r3)
/* 804CBFC0  88 1C 0B 54 */	lbz r0, 0xb54(r28)
/* 804CBFC4  28 00 00 04 */	cmplwi r0, 4
/* 804CBFC8  40 82 00 6C */	bne lbl_804CC034
/* 804CBFCC  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 804CBFD0  83 A3 00 04 */	lwz r29, 4(r3)
/* 804CBFD4  80 63 00 00 */	lwz r3, 0(r3)
/* 804CBFD8  80 63 00 08 */	lwz r3, 8(r3)
/* 804CBFDC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804CBFE0  60 00 00 01 */	ori r0, r0, 1
/* 804CBFE4  90 03 00 0C */	stw r0, 0xc(r3)
/* 804CBFE8  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 804CBFEC  80 63 00 08 */	lwz r3, 8(r3)
/* 804CBFF0  80 63 00 08 */	lwz r3, 8(r3)
/* 804CBFF4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804CBFF8  60 00 00 01 */	ori r0, r0, 1
/* 804CBFFC  90 03 00 0C */	stw r0, 0xc(r3)
/* 804CC000  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 804CC004  80 63 00 04 */	lwz r3, 4(r3)
/* 804CC008  80 63 00 08 */	lwz r3, 8(r3)
/* 804CC00C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804CC010  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804CC014  90 03 00 0C */	stw r0, 0xc(r3)
/* 804CC018  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 804CC01C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804CC020  80 63 00 08 */	lwz r3, 8(r3)
/* 804CC024  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804CC028  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 804CC02C  90 03 00 0C */	stw r0, 0xc(r3)
/* 804CC030  48 00 00 0C */	b lbl_804CC03C
lbl_804CC034:
/* 804CC034  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 804CC038  83 A3 00 00 */	lwz r29, 0(r3)
lbl_804CC03C:
/* 804CC03C  88 1C 0B 54 */	lbz r0, 0xb54(r28)
/* 804CC040  28 00 00 05 */	cmplwi r0, 5
/* 804CC044  41 82 00 10 */	beq lbl_804CC054
/* 804CC048  80 1C 0B 4C */	lwz r0, 0xb4c(r28)
/* 804CC04C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804CC050  41 82 00 4C */	beq lbl_804CC09C
lbl_804CC054:
/* 804CC054  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 804CC058  38 80 00 00 */	li r4, 0
/* 804CC05C  38 A1 00 08 */	addi r5, r1, 8
/* 804CC060  81 83 00 00 */	lwz r12, 0(r3)
/* 804CC064  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 804CC068  7D 89 03 A6 */	mtctr r12
/* 804CC06C  4E 80 04 21 */	bctrl 
/* 804CC070  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 804CC074  80 63 00 04 */	lwz r3, 4(r3)
/* 804CC078  7C 7D 1B 78 */	mr r29, r3
/* 804CC07C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804CC080  38 80 00 00 */	li r4, 0
/* 804CC084  38 A1 00 08 */	addi r5, r1, 8
/* 804CC088  81 83 00 00 */	lwz r12, 0(r3)
/* 804CC08C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 804CC090  7D 89 03 A6 */	mtctr r12
/* 804CC094  4E 80 04 21 */	bctrl 
/* 804CC098  48 00 00 20 */	b lbl_804CC0B8
lbl_804CC09C:
/* 804CC09C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 804CC0A0  38 80 00 01 */	li r4, 1
/* 804CC0A4  38 A1 00 08 */	addi r5, r1, 8
/* 804CC0A8  81 83 00 00 */	lwz r12, 0(r3)
/* 804CC0AC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 804CC0B0  7D 89 03 A6 */	mtctr r12
/* 804CC0B4  4E 80 04 21 */	bctrl 
lbl_804CC0B8:
/* 804CC0B8  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 804CC0BC  4B B4 1C A8 */	b mDoExt_modelEntryDL__FP8J3DModel
/* 804CC0C0  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 804CC0C4  4B B6 58 88 */	b entry__10daMirror_cFP8J3DModel
/* 804CC0C8  38 00 00 00 */	li r0, 0
/* 804CC0CC  B0 01 00 08 */	sth r0, 8(r1)
/* 804CC0D0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 804CC0D4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 804CC0D8  88 1C 0B 54 */	lbz r0, 0xb54(r28)
/* 804CC0DC  28 00 00 05 */	cmplwi r0, 5
/* 804CC0E0  41 82 00 10 */	beq lbl_804CC0F0
/* 804CC0E4  80 1C 0B 4C */	lwz r0, 0xb4c(r28)
/* 804CC0E8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804CC0EC  41 82 00 48 */	beq lbl_804CC134
lbl_804CC0F0:
/* 804CC0F0  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 804CC0F4  38 80 00 00 */	li r4, 0
/* 804CC0F8  38 A1 00 08 */	addi r5, r1, 8
/* 804CC0FC  81 83 00 00 */	lwz r12, 0(r3)
/* 804CC100  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 804CC104  7D 89 03 A6 */	mtctr r12
/* 804CC108  4E 80 04 21 */	bctrl 
/* 804CC10C  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 804CC110  80 63 00 00 */	lwz r3, 0(r3)
/* 804CC114  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 804CC118  38 80 00 00 */	li r4, 0
/* 804CC11C  38 A1 00 08 */	addi r5, r1, 8
/* 804CC120  81 83 00 00 */	lwz r12, 0(r3)
/* 804CC124  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 804CC128  7D 89 03 A6 */	mtctr r12
/* 804CC12C  4E 80 04 21 */	bctrl 
/* 804CC130  48 00 00 20 */	b lbl_804CC150
lbl_804CC134:
/* 804CC134  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 804CC138  38 80 00 01 */	li r4, 1
/* 804CC13C  38 A1 00 08 */	addi r5, r1, 8
/* 804CC140  81 83 00 00 */	lwz r12, 0(r3)
/* 804CC144  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 804CC148  7D 89 03 A6 */	mtctr r12
/* 804CC14C  4E 80 04 21 */	bctrl 
lbl_804CC150:
/* 804CC150  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 804CC154  C0 1C 06 10 */	lfs f0, 0x610(r28)
/* 804CC158  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804CC15C  41 82 00 80 */	beq lbl_804CC1DC
/* 804CC160  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 804CC164  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804CC168  40 82 00 74 */	bne lbl_804CC1DC
/* 804CC16C  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804CC170  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804CC174  90 01 00 20 */	stw r0, 0x20(r1)
/* 804CC178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CC17C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CC180  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804CC184  38 9C 06 68 */	addi r4, r28, 0x668
/* 804CC188  38 A1 00 10 */	addi r5, r1, 0x10
/* 804CC18C  4B BA 85 B8 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 804CC190  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CC194  41 82 00 3C */	beq lbl_804CC1D0
/* 804CC198  C0 3C 06 10 */	lfs f1, 0x610(r28)
/* 804CC19C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CC1A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CC1A4  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 804CC1A8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804CC1AC  C0 5F 01 74 */	lfs f2, 0x174(r31)
/* 804CC1B0  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 804CC1B4  EC 42 00 32 */	fmuls f2, f2, f0
/* 804CC1B8  38 A1 00 10 */	addi r5, r1, 0x10
/* 804CC1BC  38 C0 00 00 */	li r6, 0
/* 804CC1C0  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 804CC1C4  3C E0 80 42 */	lis r7, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 804CC1C8  38 E7 48 D0 */	addi r7, r7, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 804CC1CC  4B B8 9D B8 */	b setSimple__21dDlst_shadowControl_cFP4cXyzffP4cXyzsfP9_GXTexObj
lbl_804CC1D0:
/* 804CC1D0  3C 60 80 4D */	lis r3, __vt__8cM3dGPla@ha
/* 804CC1D4  38 03 C5 E0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 804CC1D8  90 01 00 20 */	stw r0, 0x20(r1)
lbl_804CC1DC:
/* 804CC1DC  38 60 00 01 */	li r3, 1
lbl_804CC1E0:
/* 804CC1E0  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 804CC1E4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 804CC1E8  39 61 00 50 */	addi r11, r1, 0x50
/* 804CC1EC  4B E9 60 38 */	b _restgpr_28
/* 804CC1F0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804CC1F4  7C 08 03 A6 */	mtlr r0
/* 804CC1F8  38 21 00 60 */	addi r1, r1, 0x60
/* 804CC1FC  4E 80 00 20 */	blr 

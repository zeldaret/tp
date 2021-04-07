lbl_8011AC28:
/* 8011AC28  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8011AC2C  7C 08 02 A6 */	mflr r0
/* 8011AC30  90 01 00 44 */	stw r0, 0x44(r1)
/* 8011AC34  39 61 00 40 */	addi r11, r1, 0x40
/* 8011AC38  48 24 75 9D */	bl _savegpr_27
/* 8011AC3C  7C 7C 1B 78 */	mr r28, r3
/* 8011AC40  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 8011AC44  3B E3 D6 58 */	addi r31, r3, lit_3757@l /* 0x8038D658@l */
/* 8011AC48  A8 1C 30 10 */	lha r0, 0x3010(r28)
/* 8011AC4C  2C 00 00 00 */	cmpwi r0, 0
/* 8011AC50  41 82 00 10 */	beq lbl_8011AC60
/* 8011AC54  80 1C 05 8C */	lwz r0, 0x58c(r28)
/* 8011AC58  60 00 00 08 */	ori r0, r0, 8
/* 8011AC5C  90 1C 05 8C */	stw r0, 0x58c(r28)
lbl_8011AC60:
/* 8011AC60  80 1C 31 98 */	lwz r0, 0x3198(r28)
/* 8011AC64  2C 00 00 00 */	cmpwi r0, 0
/* 8011AC68  41 82 00 58 */	beq lbl_8011ACC0
/* 8011AC6C  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 8011AC70  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8011AC74  41 82 00 30 */	beq lbl_8011ACA4
/* 8011AC78  38 00 00 00 */	li r0, 0
/* 8011AC7C  88 7C 2F AA */	lbz r3, 0x2faa(r28)
/* 8011AC80  28 03 00 01 */	cmplwi r3, 1
/* 8011AC84  41 82 00 0C */	beq lbl_8011AC90
/* 8011AC88  28 03 00 02 */	cmplwi r3, 2
/* 8011AC8C  40 82 00 08 */	bne lbl_8011AC94
lbl_8011AC90:
/* 8011AC90  38 00 00 01 */	li r0, 1
lbl_8011AC94:
/* 8011AC94  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8011AC98  41 82 00 0C */	beq lbl_8011ACA4
/* 8011AC9C  7F 83 E3 78 */	mr r3, r28
/* 8011ACA0  4B FD 2D 85 */	bl setSyncRidePos__9daAlink_cFv
lbl_8011ACA4:
/* 8011ACA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011ACA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011ACAC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011ACB0  80 9C 31 84 */	lwz r4, 0x3184(r28)
/* 8011ACB4  4B F2 D4 C9 */	bl cutEnd__16dEvent_manager_cFi
/* 8011ACB8  38 60 00 01 */	li r3, 1
/* 8011ACBC  48 00 07 1C */	b lbl_8011B3D8
lbl_8011ACC0:
/* 8011ACC0  3B DC 1F D0 */	addi r30, r28, 0x1fd0
/* 8011ACC4  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 8011ACC8  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8011ACCC  41 82 00 34 */	beq lbl_8011AD00
/* 8011ACD0  38 00 00 00 */	li r0, 0
/* 8011ACD4  88 7C 2F AA */	lbz r3, 0x2faa(r28)
/* 8011ACD8  28 03 00 01 */	cmplwi r3, 1
/* 8011ACDC  41 82 00 0C */	beq lbl_8011ACE8
/* 8011ACE0  28 03 00 02 */	cmplwi r3, 2
/* 8011ACE4  40 82 00 08 */	bne lbl_8011ACEC
lbl_8011ACE8:
/* 8011ACE8  38 00 00 01 */	li r0, 1
lbl_8011ACEC:
/* 8011ACEC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8011ACF0  41 82 00 24 */	beq lbl_8011AD14
/* 8011ACF4  7F 83 E3 78 */	mr r3, r28
/* 8011ACF8  4B FD 2D 2D */	bl setSyncRidePos__9daAlink_cFv
/* 8011ACFC  48 00 00 18 */	b lbl_8011AD14
lbl_8011AD00:
/* 8011AD00  88 1C 2F 99 */	lbz r0, 0x2f99(r28)
/* 8011AD04  28 00 00 0C */	cmplwi r0, 0xc
/* 8011AD08  41 82 00 0C */	beq lbl_8011AD14
/* 8011AD0C  38 00 00 04 */	li r0, 4
/* 8011AD10  98 1C 2F 99 */	stb r0, 0x2f99(r28)
lbl_8011AD14:
/* 8011AD14  A8 1C 30 0A */	lha r0, 0x300a(r28)
/* 8011AD18  2C 00 00 00 */	cmpwi r0, 0
/* 8011AD1C  40 82 00 F0 */	bne lbl_8011AE0C
/* 8011AD20  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 8011AD24  C0 BC 34 7C */	lfs f5, 0x347c(r28)
/* 8011AD28  FC 04 28 40 */	fcmpo cr0, f4, f5
/* 8011AD2C  41 80 00 E0 */	blt lbl_8011AE0C
/* 8011AD30  C0 1C 34 80 */	lfs f0, 0x3480(r28)
/* 8011AD34  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8011AD38  40 80 00 C4 */	bge lbl_8011ADFC
/* 8011AD3C  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8011AD40  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8011AD44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8011AD48  90 01 00 0C */	stw r0, 0xc(r1)
/* 8011AD4C  3C 60 43 30 */	lis r3, 0x4330
/* 8011AD50  90 61 00 08 */	stw r3, 8(r1)
/* 8011AD54  C8 01 00 08 */	lfd f0, 8(r1)
/* 8011AD58  EC 60 08 28 */	fsubs f3, f0, f1
/* 8011AD5C  C0 5C 34 84 */	lfs f2, 0x3484(r28)
/* 8011AD60  A8 1C 30 0E */	lha r0, 0x300e(r28)
/* 8011AD64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8011AD68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011AD6C  90 61 00 10 */	stw r3, 0x10(r1)
/* 8011AD70  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8011AD74  EC 20 08 28 */	fsubs f1, f0, f1
/* 8011AD78  EC 04 28 28 */	fsubs f0, f4, f5
/* 8011AD7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8011AD80  EC 02 00 32 */	fmuls f0, f2, f0
/* 8011AD84  EC 03 00 28 */	fsubs f0, f3, f0
/* 8011AD88  FC 00 00 1E */	fctiwz f0, f0
/* 8011AD8C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8011AD90  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8011AD94  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8011AD98  A8 1C 30 10 */	lha r0, 0x3010(r28)
/* 8011AD9C  2C 00 00 00 */	cmpwi r0, 0
/* 8011ADA0  41 82 00 6C */	beq lbl_8011AE0C
/* 8011ADA4  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 8011ADA8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011ADAC  41 82 00 60 */	beq lbl_8011AE0C
/* 8011ADB0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8011ADB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8011ADB8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8011ADBC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8011ADC0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8011ADC4  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 8011ADC8  C0 42 96 6C */	lfs f2, lit_37749(r2)
/* 8011ADCC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8011ADD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011ADD4  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8011ADD8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8011ADDC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8011ADE0  7C 63 02 14 */	add r3, r3, r0
/* 8011ADE4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011ADE8  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 8011ADEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8011ADF0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011ADF4  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 8011ADF8  48 00 00 14 */	b lbl_8011AE0C
lbl_8011ADFC:
/* 8011ADFC  A8 7C 30 0E */	lha r3, 0x300e(r28)
/* 8011AE00  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8011AE04  7C 03 00 50 */	subf r0, r3, r0
/* 8011AE08  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
lbl_8011AE0C:
/* 8011AE0C  7F 83 E3 78 */	mr r3, r28
/* 8011AE10  4B F0 0D 35 */	bl fopAcM_getItemEventPartner__FPC10fopAc_ac_c
/* 8011AE14  7C 7D 1B 78 */	mr r29, r3
/* 8011AE18  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 8011AE1C  2C 00 FF FF */	cmpwi r0, -1
/* 8011AE20  40 82 00 54 */	bne lbl_8011AE74
/* 8011AE24  28 1D 00 00 */	cmplwi r29, 0
/* 8011AE28  41 82 00 4C */	beq lbl_8011AE74
/* 8011AE2C  4B F1 CC 31 */	bl getItemNo__12daItemBase_cFv
/* 8011AE30  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8011AE34  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 8011AE38  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 8011AE3C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011AE40  40 82 00 34 */	bne lbl_8011AE74
/* 8011AE44  7F 83 E3 78 */	mr r3, r28
/* 8011AE48  38 80 00 D3 */	li r4, 0xd3
/* 8011AE4C  4B F9 17 0D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8011AE50  2C 03 00 00 */	cmpwi r3, 0
/* 8011AE54  40 82 00 10 */	bne lbl_8011AE64
/* 8011AE58  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 8011AE5C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8011AE60  41 82 00 14 */	beq lbl_8011AE74
lbl_8011AE64:
/* 8011AE64  7F 83 E3 78 */	mr r3, r28
/* 8011AE68  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 8011AE6C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8011AE70  4B FF D3 31 */	bl setGetItemFace__9daAlink_cFUs
lbl_8011AE74:
/* 8011AE74  C0 3C 34 78 */	lfs f1, 0x3478(r28)
/* 8011AE78  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8011AE7C  EC 01 00 2A */	fadds f0, f1, f0
/* 8011AE80  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 8011AE84  C0 3C 34 78 */	lfs f1, 0x3478(r28)
/* 8011AE88  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 8011AE8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011AE90  40 81 00 08 */	ble lbl_8011AE98
/* 8011AE94  D0 1C 34 78 */	stfs f0, 0x3478(r28)
lbl_8011AE98:
/* 8011AE98  C0 3C 34 78 */	lfs f1, 0x3478(r28)
/* 8011AE9C  C0 02 93 34 */	lfs f0, lit_7710(r2)
/* 8011AEA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8011AEA4  4C 41 13 82 */	cror 2, 1, 2
/* 8011AEA8  40 82 00 60 */	bne lbl_8011AF08
/* 8011AEAC  A8 1C 30 08 */	lha r0, 0x3008(r28)
/* 8011AEB0  2C 00 00 00 */	cmpwi r0, 0
/* 8011AEB4  40 82 00 54 */	bne lbl_8011AF08
/* 8011AEB8  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 8011AEBC  2C 00 FF FF */	cmpwi r0, -1
/* 8011AEC0  41 82 00 48 */	beq lbl_8011AF08
/* 8011AEC4  38 00 00 01 */	li r0, 1
/* 8011AEC8  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 8011AECC  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 8011AED0  7C 04 03 78 */	mr r4, r0
/* 8011AED4  2C 00 00 21 */	cmpwi r0, 0x21
/* 8011AED8  40 82 00 28 */	bne lbl_8011AF00
/* 8011AEDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011AEE0  A0 A3 61 C0 */	lhz r5, g_dComIfG_gameInfo@l(r3)  /* 0x804061C0@l */
/* 8011AEE4  38 60 00 05 */	li r3, 5
/* 8011AEE8  7C 05 1B D6 */	divw r0, r5, r3
/* 8011AEEC  7C 00 19 D6 */	mullw r0, r0, r3
/* 8011AEF0  7C 00 28 50 */	subf r0, r0, r5
/* 8011AEF4  2C 00 00 04 */	cmpwi r0, 4
/* 8011AEF8  40 82 00 08 */	bne lbl_8011AF00
/* 8011AEFC  38 80 00 22 */	li r4, 0x22
lbl_8011AF00:
/* 8011AF00  7F 83 E3 78 */	mr r3, r28
/* 8011AF04  4B FF F7 85 */	bl setGetSubBgm__9daAlink_cFi
lbl_8011AF08:
/* 8011AF08  3B 60 00 01 */	li r27, 1
/* 8011AF0C  A8 7C 30 0A */	lha r3, 0x300a(r28)
/* 8011AF10  7C 60 07 35 */	extsh. r0, r3
/* 8011AF14  40 82 00 3C */	bne lbl_8011AF50
/* 8011AF18  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 8011AF1C  A8 1E 00 08 */	lha r0, 8(r30)
/* 8011AF20  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 8011AF24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8011AF28  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8011AF2C  3C 00 43 30 */	lis r0, 0x4330
/* 8011AF30  90 01 00 18 */	stw r0, 0x18(r1)
/* 8011AF34  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8011AF38  EC 20 08 28 */	fsubs f1, f0, f1
/* 8011AF3C  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 8011AF40  EC 01 00 28 */	fsubs f0, f1, f0
/* 8011AF44  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8011AF48  4C 41 13 82 */	cror 2, 1, 2
/* 8011AF4C  41 82 00 0C */	beq lbl_8011AF58
lbl_8011AF50:
/* 8011AF50  7C 60 07 35 */	extsh. r0, r3
/* 8011AF54  41 82 00 24 */	beq lbl_8011AF78
lbl_8011AF58:
/* 8011AF58  28 1D 00 00 */	cmplwi r29, 0
/* 8011AF5C  41 82 00 1C */	beq lbl_8011AF78
/* 8011AF60  38 7C 28 0C */	addi r3, r28, 0x280c
/* 8011AF64  7F A4 EB 78 */	mr r4, r29
/* 8011AF68  48 04 3D 51 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 8011AF6C  7F A3 EB 78 */	mr r3, r29
/* 8011AF70  4B F1 CB 05 */	bl show__12daItemBase_cFv
/* 8011AF74  3B 60 00 00 */	li r27, 0
lbl_8011AF78:
/* 8011AF78  7F C3 F3 78 */	mr r3, r30
/* 8011AF7C  48 04 35 51 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8011AF80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011AF84  41 82 00 70 */	beq lbl_8011AFF4
/* 8011AF88  38 00 00 01 */	li r0, 1
/* 8011AF8C  B0 1C 30 0A */	sth r0, 0x300a(r28)
/* 8011AF90  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 8011AF94  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011AF98  41 82 00 14 */	beq lbl_8011AFAC
/* 8011AF9C  7F 83 E3 78 */	mr r3, r28
/* 8011AFA0  38 80 00 84 */	li r4, 0x84
/* 8011AFA4  48 00 E6 D5 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011AFA8  48 00 00 20 */	b lbl_8011AFC8
lbl_8011AFAC:
/* 8011AFAC  7F 83 E3 78 */	mr r3, r28
/* 8011AFB0  38 80 00 D3 */	li r4, 0xd3
/* 8011AFB4  4B F9 1F CD */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011AFB8  7F 83 E3 78 */	mr r3, r28
/* 8011AFBC  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 8011AFC0  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 8011AFC4  4B FF D1 DD */	bl setGetItemFace__9daAlink_cFUs
lbl_8011AFC8:
/* 8011AFC8  38 00 00 0C */	li r0, 0xc
/* 8011AFCC  98 1C 2F 99 */	stb r0, 0x2f99(r28)
/* 8011AFD0  80 1C 06 10 */	lwz r0, 0x610(r28)
/* 8011AFD4  2C 00 00 01 */	cmpwi r0, 1
/* 8011AFD8  40 82 03 FC */	bne lbl_8011B3D4
/* 8011AFDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011AFE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011AFE4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011AFE8  80 9C 31 84 */	lwz r4, 0x3184(r28)
/* 8011AFEC  4B F2 D1 91 */	bl cutEnd__16dEvent_manager_cFi
/* 8011AFF0  48 00 03 E4 */	b lbl_8011B3D4
lbl_8011AFF4:
/* 8011AFF4  A8 1C 30 0A */	lha r0, 0x300a(r28)
/* 8011AFF8  2C 00 00 00 */	cmpwi r0, 0
/* 8011AFFC  41 82 03 C0 */	beq lbl_8011B3BC
/* 8011B000  80 1C 06 10 */	lwz r0, 0x610(r28)
/* 8011B004  2C 00 00 01 */	cmpwi r0, 1
/* 8011B008  40 82 00 24 */	bne lbl_8011B02C
/* 8011B00C  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 8011B010  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8011B014  41 82 00 18 */	beq lbl_8011B02C
/* 8011B018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011B01C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011B020  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011B024  80 9C 31 84 */	lwz r4, 0x3184(r28)
/* 8011B028  4B F2 D1 55 */	bl cutEnd__16dEvent_manager_cFi
lbl_8011B02C:
/* 8011B02C  A8 7C 30 0A */	lha r3, 0x300a(r28)
/* 8011B030  2C 03 00 00 */	cmpwi r3, 0
/* 8011B034  40 80 00 B0 */	bge lbl_8011B0E4
/* 8011B038  38 03 00 01 */	addi r0, r3, 1
/* 8011B03C  B0 1C 30 0A */	sth r0, 0x300a(r28)
/* 8011B040  A8 BC 30 0A */	lha r5, 0x300a(r28)
/* 8011B044  7C A0 07 35 */	extsh. r0, r5
/* 8011B048  40 82 00 40 */	bne lbl_8011B088
/* 8011B04C  38 00 00 01 */	li r0, 1
/* 8011B050  B0 1C 30 0A */	sth r0, 0x300a(r28)
/* 8011B054  A8 7C 30 0E */	lha r3, 0x300e(r28)
/* 8011B058  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8011B05C  7C 03 00 50 */	subf r0, r3, r0
/* 8011B060  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 8011B064  80 1C 06 10 */	lwz r0, 0x610(r28)
/* 8011B068  2C 00 00 01 */	cmpwi r0, 1
/* 8011B06C  40 82 00 78 */	bne lbl_8011B0E4
/* 8011B070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011B074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011B078  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011B07C  80 9C 31 84 */	lwz r4, 0x3184(r28)
/* 8011B080  4B F2 D0 FD */	bl cutEnd__16dEvent_manager_cFi
/* 8011B084  48 00 00 60 */	b lbl_8011B0E4
lbl_8011B088:
/* 8011B088  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 8011B08C  C8 62 92 B0 */	lfd f3, lit_6025(r2)
/* 8011B090  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8011B094  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8011B098  3C 80 43 30 */	lis r4, 0x4330
/* 8011B09C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8011B0A0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8011B0A4  EC 40 18 28 */	fsubs f2, f0, f3
/* 8011B0A8  C0 22 96 68 */	lfs f1, lit_37528(r2)
/* 8011B0AC  A8 7C 30 0E */	lha r3, 0x300e(r28)
/* 8011B0B0  38 05 00 07 */	addi r0, r5, 7
/* 8011B0B4  7C 03 01 D6 */	mullw r0, r3, r0
/* 8011B0B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8011B0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011B0C0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8011B0C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8011B0C8  EC 00 18 28 */	fsubs f0, f0, f3
/* 8011B0CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8011B0D0  EC 02 00 28 */	fsubs f0, f2, f0
/* 8011B0D4  FC 00 00 1E */	fctiwz f0, f0
/* 8011B0D8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8011B0DC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8011B0E0  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
lbl_8011B0E4:
/* 8011B0E4  28 1D 00 00 */	cmplwi r29, 0
/* 8011B0E8  41 82 02 EC */	beq lbl_8011B3D4
/* 8011B0EC  41 82 00 0C */	beq lbl_8011B0F8
/* 8011B0F0  80 7D 00 04 */	lwz r3, 4(r29)
/* 8011B0F4  48 00 00 08 */	b lbl_8011B0FC
lbl_8011B0F8:
/* 8011B0F8  38 60 FF FF */	li r3, -1
lbl_8011B0FC:
/* 8011B0FC  4B F0 70 3D */	bl fpcM_IsCreating__FUi
/* 8011B100  2C 03 00 00 */	cmpwi r3, 0
/* 8011B104  40 82 02 D0 */	bne lbl_8011B3D4
/* 8011B108  80 1C 32 CC */	lwz r0, 0x32cc(r28)
/* 8011B10C  28 00 00 00 */	cmplwi r0, 0
/* 8011B110  40 82 01 24 */	bne lbl_8011B234
/* 8011B114  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 8011B118  2C 00 FF FF */	cmpwi r0, -1
/* 8011B11C  41 82 01 18 */	beq lbl_8011B234
/* 8011B120  2C 00 00 70 */	cmpwi r0, 0x70
/* 8011B124  40 82 00 28 */	bne lbl_8011B14C
/* 8011B128  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8011B12C  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8011B130  38 63 01 06 */	addi r3, r3, 0x106
/* 8011B134  4B F8 29 2D */	bl checkStageName__9daAlink_cFPCc
/* 8011B138  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B13C  41 82 00 10 */	beq lbl_8011B14C
/* 8011B140  38 00 00 6E */	li r0, 0x6e
/* 8011B144  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011B148  48 00 00 EC */	b lbl_8011B234
lbl_8011B14C:
/* 8011B14C  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 8011B150  2C 00 00 23 */	cmpwi r0, 0x23
/* 8011B154  40 82 00 28 */	bne lbl_8011B17C
/* 8011B158  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8011B15C  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8011B160  38 63 01 0E */	addi r3, r3, 0x10e
/* 8011B164  4B F8 28 FD */	bl checkStageName__9daAlink_cFPCc
/* 8011B168  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B16C  41 82 00 10 */	beq lbl_8011B17C
/* 8011B170  38 00 05 C0 */	li r0, 0x5c0
/* 8011B174  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011B178  48 00 00 BC */	b lbl_8011B234
lbl_8011B17C:
/* 8011B17C  A8 9C 30 0C */	lha r4, 0x300c(r28)
/* 8011B180  2C 04 00 E0 */	cmpwi r4, 0xe0
/* 8011B184  40 82 00 44 */	bne lbl_8011B1C8
/* 8011B188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011B18C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011B190  88 03 01 0C */	lbz r0, 0x10c(r3)
/* 8011B194  28 00 00 14 */	cmplwi r0, 0x14
/* 8011B198  40 82 00 10 */	bne lbl_8011B1A8
/* 8011B19C  38 00 04 CF */	li r0, 0x4cf
/* 8011B1A0  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011B1A4  48 00 00 90 */	b lbl_8011B234
lbl_8011B1A8:
/* 8011B1A8  28 00 00 3C */	cmplwi r0, 0x3c
/* 8011B1AC  40 82 00 10 */	bne lbl_8011B1BC
/* 8011B1B0  38 00 04 D0 */	li r0, 0x4d0
/* 8011B1B4  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011B1B8  48 00 00 7C */	b lbl_8011B234
lbl_8011B1BC:
/* 8011B1BC  38 04 00 65 */	addi r0, r4, 0x65
/* 8011B1C0  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011B1C4  48 00 00 70 */	b lbl_8011B234
lbl_8011B1C8:
/* 8011B1C8  2C 04 00 21 */	cmpwi r4, 0x21
/* 8011B1CC  40 82 00 30 */	bne lbl_8011B1FC
/* 8011B1D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011B1D4  A0 83 61 C0 */	lhz r4, g_dComIfG_gameInfo@l(r3)  /* 0x804061C0@l */
/* 8011B1D8  38 60 00 05 */	li r3, 5
/* 8011B1DC  7C 04 1B D6 */	divw r0, r4, r3
/* 8011B1E0  7C 00 19 D6 */	mullw r0, r0, r3
/* 8011B1E4  7C 00 20 50 */	subf r0, r0, r4
/* 8011B1E8  54 00 10 3A */	slwi r0, r0, 2
/* 8011B1EC  38 7F 45 34 */	addi r3, r31, 0x4534
/* 8011B1F0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8011B1F4  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011B1F8  48 00 00 3C */	b lbl_8011B234
lbl_8011B1FC:
/* 8011B1FC  2C 04 00 33 */	cmpwi r4, 0x33
/* 8011B200  40 82 00 28 */	bne lbl_8011B228
/* 8011B204  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8011B208  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8011B20C  38 63 01 15 */	addi r3, r3, 0x115
/* 8011B210  4B F8 28 51 */	bl checkStageName__9daAlink_cFPCc
/* 8011B214  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011B218  41 82 00 10 */	beq lbl_8011B228
/* 8011B21C  38 00 01 51 */	li r0, 0x151
/* 8011B220  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011B224  48 00 00 10 */	b lbl_8011B234
lbl_8011B228:
/* 8011B228  A8 7C 30 0C */	lha r3, 0x300c(r28)
/* 8011B22C  38 03 00 65 */	addi r0, r3, 0x65
/* 8011B230  90 1C 32 CC */	stw r0, 0x32cc(r28)
lbl_8011B234:
/* 8011B234  80 9C 32 CC */	lwz r4, 0x32cc(r28)
/* 8011B238  28 04 00 00 */	cmplwi r4, 0
/* 8011B23C  41 82 01 98 */	beq lbl_8011B3D4
/* 8011B240  7F 83 E3 78 */	mr r3, r28
/* 8011B244  4B FF D5 71 */	bl checkEndMessage__9daAlink_cFUl
/* 8011B248  2C 03 00 00 */	cmpwi r3, 0
/* 8011B24C  41 82 01 88 */	beq lbl_8011B3D4
/* 8011B250  80 1C 32 CC */	lwz r0, 0x32cc(r28)
/* 8011B254  28 00 01 64 */	cmplwi r0, 0x164
/* 8011B258  40 80 00 AC */	bge lbl_8011B304
/* 8011B25C  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 8011B260  2C 00 00 C0 */	cmpwi r0, 0xc0
/* 8011B264  41 80 00 44 */	blt lbl_8011B2A8
/* 8011B268  2C 00 00 D7 */	cmpwi r0, 0xd7
/* 8011B26C  41 81 00 3C */	bgt lbl_8011B2A8
/* 8011B270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011B274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011B278  38 63 00 CC */	addi r3, r3, 0xcc
/* 8011B27C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8011B280  4B F1 8C 49 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8011B284  2C 03 00 00 */	cmpwi r3, 0
/* 8011B288  41 82 00 20 */	beq lbl_8011B2A8
/* 8011B28C  80 7C 32 CC */	lwz r3, 0x32cc(r28)
/* 8011B290  38 03 07 D0 */	addi r0, r3, 0x7d0
/* 8011B294  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011B298  38 00 FF FF */	li r0, -1
/* 8011B29C  90 1C 28 F0 */	stw r0, 0x28f0(r28)
/* 8011B2A0  38 60 00 01 */	li r3, 1
/* 8011B2A4  48 00 01 34 */	b lbl_8011B3D8
lbl_8011B2A8:
/* 8011B2A8  A8 1C 30 10 */	lha r0, 0x3010(r28)
/* 8011B2AC  2C 00 00 00 */	cmpwi r0, 0
/* 8011B2B0  41 82 00 54 */	beq lbl_8011B304
/* 8011B2B4  7F 83 E3 78 */	mr r3, r28
/* 8011B2B8  A8 9C 30 0C */	lha r4, 0x300c(r28)
/* 8011B2BC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8011B2C0  81 8C 02 14 */	lwz r12, 0x214(r12)
/* 8011B2C4  7D 89 03 A6 */	mtctr r12
/* 8011B2C8  4E 80 04 21 */	bctrl 
/* 8011B2CC  2C 03 00 00 */	cmpwi r3, 0
/* 8011B2D0  41 82 00 34 */	beq lbl_8011B304
/* 8011B2D4  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 8011B2D8  2C 00 00 ED */	cmpwi r0, 0xed
/* 8011B2DC  40 82 00 0C */	bne lbl_8011B2E8
/* 8011B2E0  38 00 00 6A */	li r0, 0x6a
/* 8011B2E4  90 1C 32 CC */	stw r0, 0x32cc(r28)
lbl_8011B2E8:
/* 8011B2E8  80 7C 32 CC */	lwz r3, 0x32cc(r28)
/* 8011B2EC  38 03 05 DC */	addi r0, r3, 0x5dc
/* 8011B2F0  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 8011B2F4  38 00 FF FF */	li r0, -1
/* 8011B2F8  90 1C 28 F0 */	stw r0, 0x28f0(r28)
/* 8011B2FC  38 60 00 01 */	li r3, 1
/* 8011B300  48 00 00 D8 */	b lbl_8011B3D8
lbl_8011B304:
/* 8011B304  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011B308  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011B30C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8011B310  80 9C 31 84 */	lwz r4, 0x3184(r28)
/* 8011B314  4B F2 CE 69 */	bl cutEnd__16dEvent_manager_cFi
/* 8011B318  7F A3 EB 78 */	mr r3, r29
/* 8011B31C  4B F1 C7 C9 */	bl dead__12daItemBase_cFv
/* 8011B320  38 00 00 01 */	li r0, 1
/* 8011B324  90 1C 31 98 */	stw r0, 0x3198(r28)
/* 8011B328  38 00 00 0C */	li r0, 0xc
/* 8011B32C  98 1C 2F 99 */	stb r0, 0x2f99(r28)
/* 8011B330  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 8011B334  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011B338  41 82 00 18 */	beq lbl_8011B350
/* 8011B33C  7F 83 E3 78 */	mr r3, r28
/* 8011B340  38 9F 17 D0 */	addi r4, r31, 0x17d0
/* 8011B344  C0 24 00 94 */	lfs f1, 0x94(r4)
/* 8011B348  48 00 D4 FD */	bl setBlendWolfMoveAnime__9daAlink_cFf
/* 8011B34C  48 00 00 88 */	b lbl_8011B3D4
lbl_8011B350:
/* 8011B350  A0 1C 2F DC */	lhz r0, 0x2fdc(r28)
/* 8011B354  28 00 00 48 */	cmplwi r0, 0x48
/* 8011B358  40 82 00 0C */	bne lbl_8011B364
/* 8011B35C  38 00 00 00 */	li r0, 0
/* 8011B360  98 1C 2F 94 */	stb r0, 0x2f94(r28)
lbl_8011B364:
/* 8011B364  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8011B368  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 8011B36C  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 8011B370  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 8011B374  41 82 00 34 */	beq lbl_8011B3A8
/* 8011B378  7F 83 E3 78 */	mr r3, r28
/* 8011B37C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011B380  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 8011B384  FC 60 10 90 */	fmr f3, f2
/* 8011B388  38 80 00 48 */	li r4, 0x48
/* 8011B38C  38 A0 00 48 */	li r5, 0x48
/* 8011B390  38 C0 00 0A */	li r6, 0xa
/* 8011B394  C0 82 92 C4 */	lfs f4, lit_6109(r2)
/* 8011B398  4B F9 16 7D */	bl setDoubleAnime__9daAlink_cFfffQ29daAlink_c11daAlink_ANMQ29daAlink_c11daAlink_ANMif
/* 8011B39C  38 00 00 60 */	li r0, 0x60
/* 8011B3A0  98 1C 2F 99 */	stb r0, 0x2f99(r28)
/* 8011B3A4  48 00 00 30 */	b lbl_8011B3D4
lbl_8011B3A8:
/* 8011B3A8  7F 83 E3 78 */	mr r3, r28
/* 8011B3AC  38 9F 00 0C */	addi r4, r31, 0xc
/* 8011B3B0  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 8011B3B4  4B F9 2A 61 */	bl setBlendMoveAnime__9daAlink_cFf
/* 8011B3B8  48 00 00 1C */	b lbl_8011B3D4
lbl_8011B3BC:
/* 8011B3BC  2C 1B 00 00 */	cmpwi r27, 0
/* 8011B3C0  41 82 00 14 */	beq lbl_8011B3D4
/* 8011B3C4  28 1D 00 00 */	cmplwi r29, 0
/* 8011B3C8  41 82 00 0C */	beq lbl_8011B3D4
/* 8011B3CC  7F A3 EB 78 */	mr r3, r29
/* 8011B3D0  4B F1 C6 95 */	bl hide__12daItemBase_cFv
lbl_8011B3D4:
/* 8011B3D4  38 60 00 01 */	li r3, 1
lbl_8011B3D8:
/* 8011B3D8  39 61 00 40 */	addi r11, r1, 0x40
/* 8011B3DC  48 24 6E 45 */	bl _restgpr_27
/* 8011B3E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8011B3E4  7C 08 03 A6 */	mtlr r0
/* 8011B3E8  38 21 00 40 */	addi r1, r1, 0x40
/* 8011B3EC  4E 80 00 20 */	blr 

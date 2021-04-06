lbl_8005BA48:
/* 8005BA48  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8005BA4C  7C 08 02 A6 */	mflr r0
/* 8005BA50  90 01 00 84 */	stw r0, 0x84(r1)
/* 8005BA54  39 61 00 80 */	addi r11, r1, 0x80
/* 8005BA58  48 30 67 81 */	bl _savegpr_28
/* 8005BA5C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005BA60  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005BA64  83 E3 0E 74 */	lwz r31, 0xe74(r3)
/* 8005BA68  83 C3 0E 78 */	lwz r30, 0xe78(r3)
/* 8005BA6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005BA70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005BA74  83 83 5D 74 */	lwz r28, 0x5d74(r3)
/* 8005BA78  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8005BA7C  C0 02 87 D0 */	lfs f0, lit_4103(r2)
/* 8005BA80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005BA84  41 80 04 3C */	blt lbl_8005BEC0
/* 8005BA88  7F 83 E3 78 */	mr r3, r28
/* 8005BA8C  38 81 00 4C */	addi r4, r1, 0x4c
/* 8005BA90  C0 22 87 D4 */	lfs f1, lit_4104(r2)
/* 8005BA94  FC 40 08 90 */	fmr f2, f1
/* 8005BA98  4B FF FC E9 */	bl dKy_set_eyevect_calc__FP12camera_classP3Vecff
/* 8005BA9C  38 61 00 4C */	addi r3, r1, 0x4c
/* 8005BAA0  38 9F 00 10 */	addi r4, r31, 0x10
/* 8005BAA4  38 A1 00 40 */	addi r5, r1, 0x40
/* 8005BAA8  4B FF FC B9 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005BAAC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8005BAB0  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 8005BAB4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8005BAB8  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 8005BABC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8005BAC0  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 8005BAC4  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8005BAC8  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 8005BACC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8005BAD0  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 8005BAD4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8005BAD8  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 8005BADC  38 7E 00 24 */	addi r3, r30, 0x24
/* 8005BAE0  38 81 00 1C */	addi r4, r1, 0x1c
/* 8005BAE4  4B FB 98 2D */	bl mDoLib_project__FP3VecP3Vec
/* 8005BAE8  C0 02 87 D8 */	lfs f0, lit_4105(r2)
/* 8005BAEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8005BAF0  C0 02 87 DC */	lfs f0, lit_4106(r2)
/* 8005BAF4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8005BAF8  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005BAFC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8005BB00  38 61 00 10 */	addi r3, r1, 0x10
/* 8005BB04  38 81 00 1C */	addi r4, r1, 0x1c
/* 8005BB08  38 A1 00 28 */	addi r5, r1, 0x28
/* 8005BB0C  4B FF FC 55 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005BB10  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8005BB14  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 8005BB18  48 20 BB 5D */	bl cM_atan2s__Fff
/* 8005BB1C  7C 60 07 34 */	extsh r0, r3
/* 8005BB20  C8 22 87 C8 */	lfd f1, lit_3995(r2)
/* 8005BB24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8005BB28  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8005BB2C  3C 00 43 30 */	lis r0, 0x4330
/* 8005BB30  90 01 00 58 */	stw r0, 0x58(r1)
/* 8005BB34  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8005BB38  EC 00 08 28 */	fsubs f0, f0, f1
/* 8005BB3C  D0 1E 00 94 */	stfs f0, 0x94(r30)
/* 8005BB40  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 8005BB44  C0 02 87 E0 */	lfs f0, lit_4107(r2)
/* 8005BB48  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005BB4C  D0 1E 00 94 */	stfs f0, 0x94(r30)
/* 8005BB50  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 8005BB54  C0 02 87 E4 */	lfs f0, lit_4108(r2)
/* 8005BB58  EC 01 00 2A */	fadds f0, f1, f0
/* 8005BB5C  D0 1E 00 94 */	stfs f0, 0x94(r30)
/* 8005BB60  38 7C 00 D8 */	addi r3, r28, 0xd8
/* 8005BB64  38 9C 00 E4 */	addi r4, r28, 0xe4
/* 8005BB68  38 A1 00 34 */	addi r5, r1, 0x34
/* 8005BB6C  4B FF FB F5 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005BB70  3B A0 00 02 */	li r29, 2
/* 8005BB74  3B 80 00 18 */	li r28, 0x18
lbl_8005BB78:
/* 8005BB78  2C 1D 00 02 */	cmpwi r29, 2
/* 8005BB7C  40 82 01 90 */	bne lbl_8005BD0C
/* 8005BB80  38 61 00 40 */	addi r3, r1, 0x40
/* 8005BB84  38 81 00 34 */	addi r4, r1, 0x34
/* 8005BB88  48 2E B8 15 */	bl PSVECSquareDistance
/* 8005BB8C  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005BB90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005BB94  40 81 00 58 */	ble lbl_8005BBEC
/* 8005BB98  FC 00 08 34 */	frsqrte f0, f1
/* 8005BB9C  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005BBA0  FC 44 00 32 */	fmul f2, f4, f0
/* 8005BBA4  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005BBA8  FC 00 00 32 */	fmul f0, f0, f0
/* 8005BBAC  FC 01 00 32 */	fmul f0, f1, f0
/* 8005BBB0  FC 03 00 28 */	fsub f0, f3, f0
/* 8005BBB4  FC 02 00 32 */	fmul f0, f2, f0
/* 8005BBB8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005BBBC  FC 00 00 32 */	fmul f0, f0, f0
/* 8005BBC0  FC 01 00 32 */	fmul f0, f1, f0
/* 8005BBC4  FC 03 00 28 */	fsub f0, f3, f0
/* 8005BBC8  FC 02 00 32 */	fmul f0, f2, f0
/* 8005BBCC  FC 44 00 32 */	fmul f2, f4, f0
/* 8005BBD0  FC 00 00 32 */	fmul f0, f0, f0
/* 8005BBD4  FC 01 00 32 */	fmul f0, f1, f0
/* 8005BBD8  FC 03 00 28 */	fsub f0, f3, f0
/* 8005BBDC  FC 02 00 32 */	fmul f0, f2, f0
/* 8005BBE0  FC 21 00 32 */	fmul f1, f1, f0
/* 8005BBE4  FC 20 08 18 */	frsp f1, f1
/* 8005BBE8  48 00 00 88 */	b lbl_8005BC70
lbl_8005BBEC:
/* 8005BBEC  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005BBF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005BBF4  40 80 00 10 */	bge lbl_8005BC04
/* 8005BBF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005BBFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005BC00  48 00 00 70 */	b lbl_8005BC70
lbl_8005BC04:
/* 8005BC04  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8005BC08  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8005BC0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005BC10  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005BC14  7C 03 00 00 */	cmpw r3, r0
/* 8005BC18  41 82 00 14 */	beq lbl_8005BC2C
/* 8005BC1C  40 80 00 40 */	bge lbl_8005BC5C
/* 8005BC20  2C 03 00 00 */	cmpwi r3, 0
/* 8005BC24  41 82 00 20 */	beq lbl_8005BC44
/* 8005BC28  48 00 00 34 */	b lbl_8005BC5C
lbl_8005BC2C:
/* 8005BC2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005BC30  41 82 00 0C */	beq lbl_8005BC3C
/* 8005BC34  38 00 00 01 */	li r0, 1
/* 8005BC38  48 00 00 28 */	b lbl_8005BC60
lbl_8005BC3C:
/* 8005BC3C  38 00 00 02 */	li r0, 2
/* 8005BC40  48 00 00 20 */	b lbl_8005BC60
lbl_8005BC44:
/* 8005BC44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005BC48  41 82 00 0C */	beq lbl_8005BC54
/* 8005BC4C  38 00 00 05 */	li r0, 5
/* 8005BC50  48 00 00 10 */	b lbl_8005BC60
lbl_8005BC54:
/* 8005BC54  38 00 00 03 */	li r0, 3
/* 8005BC58  48 00 00 08 */	b lbl_8005BC60
lbl_8005BC5C:
/* 8005BC5C  38 00 00 04 */	li r0, 4
lbl_8005BC60:
/* 8005BC60  2C 00 00 01 */	cmpwi r0, 1
/* 8005BC64  40 82 00 0C */	bne lbl_8005BC70
/* 8005BC68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005BC6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005BC70:
/* 8005BC70  C0 42 87 F8 */	lfs f2, lit_4111(r2)
/* 8005BC74  C0 02 87 FC */	lfs f0, lit_4112(r2)
/* 8005BC78  EC 00 00 72 */	fmuls f0, f0, f1
/* 8005BC7C  EC 82 00 2A */	fadds f4, f2, f0
/* 8005BC80  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 8005BC84  C8 62 87 C8 */	lfd f3, lit_3995(r2)
/* 8005BC88  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 8005BC8C  90 61 00 5C */	stw r3, 0x5c(r1)
/* 8005BC90  3C 00 43 30 */	lis r0, 0x4330
/* 8005BC94  90 01 00 58 */	stw r0, 0x58(r1)
/* 8005BC98  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8005BC9C  EC 20 18 28 */	fsubs f1, f0, f3
/* 8005BCA0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8005BCA4  EC 00 01 32 */	fmuls f0, f0, f4
/* 8005BCA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005BCAC  EC 02 00 28 */	fsubs f0, f2, f0
/* 8005BCB0  7C 9E E2 14 */	add r4, r30, r28
/* 8005BCB4  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 8005BCB8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 8005BCBC  90 61 00 64 */	stw r3, 0x64(r1)
/* 8005BCC0  90 01 00 60 */	stw r0, 0x60(r1)
/* 8005BCC4  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 8005BCC8  EC 20 18 28 */	fsubs f1, f0, f3
/* 8005BCCC  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8005BCD0  EC 00 01 32 */	fmuls f0, f0, f4
/* 8005BCD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005BCD8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8005BCDC  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 8005BCE0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 8005BCE4  90 61 00 6C */	stw r3, 0x6c(r1)
/* 8005BCE8  90 01 00 68 */	stw r0, 0x68(r1)
/* 8005BCEC  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8005BCF0  EC 20 18 28 */	fsubs f1, f0, f3
/* 8005BCF4  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8005BCF8  EC 00 01 32 */	fmuls f0, f0, f4
/* 8005BCFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005BD00  EC 02 00 28 */	fsubs f0, f2, f0
/* 8005BD04  D0 04 00 2C */	stfs f0, 0x2c(r4)
/* 8005BD08  48 00 01 A8 */	b lbl_8005BEB0
lbl_8005BD0C:
/* 8005BD0C  38 61 00 40 */	addi r3, r1, 0x40
/* 8005BD10  38 81 00 34 */	addi r4, r1, 0x34
/* 8005BD14  48 2E B6 89 */	bl PSVECSquareDistance
/* 8005BD18  C0 02 87 B8 */	lfs f0, lit_3954(r2)
/* 8005BD1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005BD20  40 81 00 58 */	ble lbl_8005BD78
/* 8005BD24  FC 00 08 34 */	frsqrte f0, f1
/* 8005BD28  C8 82 87 E8 */	lfd f4, lit_4109(r2)
/* 8005BD2C  FC 44 00 32 */	fmul f2, f4, f0
/* 8005BD30  C8 62 87 F0 */	lfd f3, lit_4110(r2)
/* 8005BD34  FC 00 00 32 */	fmul f0, f0, f0
/* 8005BD38  FC 01 00 32 */	fmul f0, f1, f0
/* 8005BD3C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005BD40  FC 02 00 32 */	fmul f0, f2, f0
/* 8005BD44  FC 44 00 32 */	fmul f2, f4, f0
/* 8005BD48  FC 00 00 32 */	fmul f0, f0, f0
/* 8005BD4C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005BD50  FC 03 00 28 */	fsub f0, f3, f0
/* 8005BD54  FC 02 00 32 */	fmul f0, f2, f0
/* 8005BD58  FC 44 00 32 */	fmul f2, f4, f0
/* 8005BD5C  FC 00 00 32 */	fmul f0, f0, f0
/* 8005BD60  FC 01 00 32 */	fmul f0, f1, f0
/* 8005BD64  FC 03 00 28 */	fsub f0, f3, f0
/* 8005BD68  FC 02 00 32 */	fmul f0, f2, f0
/* 8005BD6C  FC 21 00 32 */	fmul f1, f1, f0
/* 8005BD70  FC 20 08 18 */	frsp f1, f1
/* 8005BD74  48 00 00 88 */	b lbl_8005BDFC
lbl_8005BD78:
/* 8005BD78  C8 02 87 B0 */	lfd f0, lit_3953(r2)
/* 8005BD7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005BD80  40 80 00 10 */	bge lbl_8005BD90
/* 8005BD84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005BD88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8005BD8C  48 00 00 70 */	b lbl_8005BDFC
lbl_8005BD90:
/* 8005BD90  D0 21 00 08 */	stfs f1, 8(r1)
/* 8005BD94  80 81 00 08 */	lwz r4, 8(r1)
/* 8005BD98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005BD9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005BDA0  7C 03 00 00 */	cmpw r3, r0
/* 8005BDA4  41 82 00 14 */	beq lbl_8005BDB8
/* 8005BDA8  40 80 00 40 */	bge lbl_8005BDE8
/* 8005BDAC  2C 03 00 00 */	cmpwi r3, 0
/* 8005BDB0  41 82 00 20 */	beq lbl_8005BDD0
/* 8005BDB4  48 00 00 34 */	b lbl_8005BDE8
lbl_8005BDB8:
/* 8005BDB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005BDBC  41 82 00 0C */	beq lbl_8005BDC8
/* 8005BDC0  38 00 00 01 */	li r0, 1
/* 8005BDC4  48 00 00 28 */	b lbl_8005BDEC
lbl_8005BDC8:
/* 8005BDC8  38 00 00 02 */	li r0, 2
/* 8005BDCC  48 00 00 20 */	b lbl_8005BDEC
lbl_8005BDD0:
/* 8005BDD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005BDD4  41 82 00 0C */	beq lbl_8005BDE0
/* 8005BDD8  38 00 00 05 */	li r0, 5
/* 8005BDDC  48 00 00 10 */	b lbl_8005BDEC
lbl_8005BDE0:
/* 8005BDE0  38 00 00 03 */	li r0, 3
/* 8005BDE4  48 00 00 08 */	b lbl_8005BDEC
lbl_8005BDE8:
/* 8005BDE8  38 00 00 04 */	li r0, 4
lbl_8005BDEC:
/* 8005BDEC  2C 00 00 01 */	cmpwi r0, 1
/* 8005BDF0  40 82 00 0C */	bne lbl_8005BDFC
/* 8005BDF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8005BDF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8005BDFC:
/* 8005BDFC  C0 42 87 F8 */	lfs f2, lit_4111(r2)
/* 8005BE00  C0 02 88 00 */	lfs f0, lit_4113(r2)
/* 8005BE04  EC 00 00 72 */	fmuls f0, f0, f1
/* 8005BE08  EC E2 00 2A */	fadds f7, f2, f0
/* 8005BE0C  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 8005BE10  C0 C1 00 40 */	lfs f6, 0x40(r1)
/* 8005BE14  C0 A2 88 04 */	lfs f5, lit_4114(r2)
/* 8005BE18  EC 45 01 B2 */	fmuls f2, f5, f6
/* 8005BE1C  C8 82 87 C8 */	lfd f4, lit_3995(r2)
/* 8005BE20  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 8005BE24  90 61 00 6C */	stw r3, 0x6c(r1)
/* 8005BE28  3C 00 43 30 */	lis r0, 0x4330
/* 8005BE2C  90 01 00 68 */	stw r0, 0x68(r1)
/* 8005BE30  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 8005BE34  EC 20 20 28 */	fsubs f1, f0, f4
/* 8005BE38  EC 06 01 F2 */	fmuls f0, f6, f7
/* 8005BE3C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005BE40  EC 02 00 2A */	fadds f0, f2, f0
/* 8005BE44  EC 03 00 28 */	fsubs f0, f3, f0
/* 8005BE48  7C 9E E2 14 */	add r4, r30, r28
/* 8005BE4C  D0 04 00 24 */	stfs f0, 0x24(r4)
/* 8005BE50  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 8005BE54  C0 C1 00 44 */	lfs f6, 0x44(r1)
/* 8005BE58  EC 45 01 B2 */	fmuls f2, f5, f6
/* 8005BE5C  90 61 00 64 */	stw r3, 0x64(r1)
/* 8005BE60  90 01 00 60 */	stw r0, 0x60(r1)
/* 8005BE64  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 8005BE68  EC 20 20 28 */	fsubs f1, f0, f4
/* 8005BE6C  EC 06 01 F2 */	fmuls f0, f6, f7
/* 8005BE70  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005BE74  EC 02 00 2A */	fadds f0, f2, f0
/* 8005BE78  EC 03 00 28 */	fsubs f0, f3, f0
/* 8005BE7C  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 8005BE80  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 8005BE84  C0 C1 00 48 */	lfs f6, 0x48(r1)
/* 8005BE88  EC 45 01 B2 */	fmuls f2, f5, f6
/* 8005BE8C  90 61 00 5C */	stw r3, 0x5c(r1)
/* 8005BE90  90 01 00 58 */	stw r0, 0x58(r1)
/* 8005BE94  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8005BE98  EC 20 20 28 */	fsubs f1, f0, f4
/* 8005BE9C  EC 06 01 F2 */	fmuls f0, f6, f7
/* 8005BEA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8005BEA4  EC 02 00 2A */	fadds f0, f2, f0
/* 8005BEA8  EC 03 00 28 */	fsubs f0, f3, f0
/* 8005BEAC  D0 04 00 2C */	stfs f0, 0x2c(r4)
lbl_8005BEB0:
/* 8005BEB0  3B BD 00 01 */	addi r29, r29, 1
/* 8005BEB4  2C 1D 00 08 */	cmpwi r29, 8
/* 8005BEB8  3B 9C 00 0C */	addi r28, r28, 0xc
/* 8005BEBC  41 80 FC BC */	blt lbl_8005BB78
lbl_8005BEC0:
/* 8005BEC0  39 61 00 80 */	addi r11, r1, 0x80
/* 8005BEC4  48 30 63 61 */	bl _restgpr_28
/* 8005BEC8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8005BECC  7C 08 03 A6 */	mtlr r0
/* 8005BED0  38 21 00 80 */	addi r1, r1, 0x80
/* 8005BED4  4E 80 00 20 */	blr 

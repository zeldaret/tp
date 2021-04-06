lbl_805EE888:
/* 805EE888  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805EE88C  7C 08 02 A6 */	mflr r0
/* 805EE890  90 01 00 74 */	stw r0, 0x74(r1)
/* 805EE894  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 805EE898  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 805EE89C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 805EE8A0  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 805EE8A4  39 61 00 50 */	addi r11, r1, 0x50
/* 805EE8A8  4B D7 39 29 */	bl _savegpr_26
/* 805EE8AC  7C 7D 1B 78 */	mr r29, r3
/* 805EE8B0  3C 80 80 5F */	lis r4, lit_3774@ha /* 0x805F4188@ha */
/* 805EE8B4  3B C4 41 88 */	addi r30, r4, lit_3774@l /* 0x805F4188@l */
/* 805EE8B8  3C 80 80 5F */	lis r4, l_HIO@ha /* 0x805F47DC@ha */
/* 805EE8BC  3B E4 47 DC */	addi r31, r4, l_HIO@l /* 0x805F47DC@l */
/* 805EE8C0  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 805EE8C4  A8 03 07 20 */	lha r0, 0x720(r3)
/* 805EE8C8  28 00 00 0A */	cmplwi r0, 0xa
/* 805EE8CC  41 81 04 AC */	bgt lbl_805EED78
/* 805EE8D0  3C 80 80 5F */	lis r4, lit_4354@ha /* 0x805F43C0@ha */
/* 805EE8D4  38 84 43 C0 */	addi r4, r4, lit_4354@l /* 0x805F43C0@l */
/* 805EE8D8  54 00 10 3A */	slwi r0, r0, 2
/* 805EE8DC  7C 04 00 2E */	lwzx r0, r4, r0
/* 805EE8E0  7C 09 03 A6 */	mtctr r0
/* 805EE8E4  4E 80 04 20 */	bctr 
lbl_805EE8E8:
/* 805EE8E8  38 80 00 0F */	li r4, 0xf
/* 805EE8EC  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 805EE8F0  38 A0 00 02 */	li r5, 2
/* 805EE8F4  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 805EE8F8  4B FF F1 05 */	bl anm_init__FP10b_gm_classifUcf
/* 805EE8FC  38 00 00 01 */	li r0, 1
/* 805EE900  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805EE904  38 00 00 00 */	li r0, 0
/* 805EE908  B0 1D 05 CC */	sth r0, 0x5cc(r29)
lbl_805EE90C:
/* 805EE90C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 805EE910  2C 00 10 00 */	cmpwi r0, 0x1000
/* 805EE914  40 80 00 9C */	bge lbl_805EE9B0
/* 805EE918  2C 00 F0 00 */	cmpwi r0, -4096
/* 805EE91C  40 81 00 94 */	ble lbl_805EE9B0
/* 805EE920  3B 40 00 00 */	li r26, 0
/* 805EE924  3B 80 00 00 */	li r28, 0
/* 805EE928  C3 DE 00 44 */	lfs f30, 0x44(r30)
/* 805EE92C  3C 60 80 5F */	lis r3, target_pos@ha /* 0x805F485C@ha */
/* 805EE930  3B 63 48 5C */	addi r27, r3, target_pos@l /* 0x805F485C@l */
lbl_805EE934:
/* 805EE934  7C 7B E2 14 */	add r3, r27, r28
/* 805EE938  C0 03 00 00 */	lfs f0, 0(r3)
/* 805EE93C  EC 3E 00 32 */	fmuls f1, f30, f0
/* 805EE940  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805EE944  EC 21 00 28 */	fsubs f1, f1, f0
/* 805EE948  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805EE94C  C0 03 00 08 */	lfs f0, 8(r3)
/* 805EE950  EC 5E 00 32 */	fmuls f2, f30, f0
/* 805EE954  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805EE958  EC 42 00 28 */	fsubs f2, f2, f0
/* 805EE95C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805EE960  4B C7 8D 15 */	bl cM_atan2s__Fff
/* 805EE964  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 805EE968  7C 03 20 50 */	subf r0, r3, r4
/* 805EE96C  7C 00 07 34 */	extsh r0, r0
/* 805EE970  2C 00 18 00 */	cmpwi r0, 0x1800
/* 805EE974  40 80 00 2C */	bge lbl_805EE9A0
/* 805EE978  2C 00 E8 00 */	cmpwi r0, -6144
/* 805EE97C  40 81 00 24 */	ble lbl_805EE9A0
/* 805EE980  7C 00 07 35 */	extsh. r0, r0
/* 805EE984  40 81 00 10 */	ble lbl_805EE994
/* 805EE988  38 04 02 00 */	addi r0, r4, 0x200
/* 805EE98C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805EE990  48 00 00 20 */	b lbl_805EE9B0
lbl_805EE994:
/* 805EE994  38 04 FE 00 */	addi r0, r4, -512
/* 805EE998  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805EE99C  48 00 00 14 */	b lbl_805EE9B0
lbl_805EE9A0:
/* 805EE9A0  3B 5A 00 01 */	addi r26, r26, 1
/* 805EE9A4  2C 1A 00 04 */	cmpwi r26, 4
/* 805EE9A8  3B 9C 00 0C */	addi r28, r28, 0xc
/* 805EE9AC  41 80 FF 88 */	blt lbl_805EE934
lbl_805EE9B0:
/* 805EE9B0  7F A3 EB 78 */	mr r3, r29
/* 805EE9B4  4B FF FA 85 */	bl bg_check__FP10b_gm_class
/* 805EE9B8  2C 03 00 00 */	cmpwi r3, 0
/* 805EE9BC  41 82 03 BC */	beq lbl_805EED78
/* 805EE9C0  38 00 00 02 */	li r0, 2
/* 805EE9C4  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805EE9C8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805EE9CC  C0 3D 05 D8 */	lfs f1, 0x5d8(r29)
/* 805EE9D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805EE9D4  40 82 00 10 */	bne lbl_805EE9E4
/* 805EE9D8  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 805EE9DC  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 805EE9E0  48 00 03 98 */	b lbl_805EED78
lbl_805EE9E4:
/* 805EE9E4  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 805EE9E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805EE9EC  40 82 00 10 */	bne lbl_805EE9FC
/* 805EE9F0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805EE9F4  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 805EE9F8  48 00 03 80 */	b lbl_805EED78
lbl_805EE9FC:
/* 805EE9FC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805EEA00  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805EEA04  40 82 00 10 */	bne lbl_805EEA14
/* 805EEA08  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 805EEA0C  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 805EEA10  48 00 03 68 */	b lbl_805EED78
lbl_805EEA14:
/* 805EEA14  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 805EEA18  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805EEA1C  40 82 03 5C */	bne lbl_805EED78
/* 805EEA20  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 805EEA24  D0 1D 05 D8 */	stfs f0, 0x5d8(r29)
/* 805EEA28  48 00 03 50 */	b lbl_805EED78
lbl_805EEA2C:
/* 805EEA2C  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 805EEA30  C0 3D 05 D8 */	lfs f1, 0x5d8(r29)
/* 805EEA34  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805EEA38  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 805EEA3C  4B C8 10 01 */	bl cLib_addCalc2__FPffff
/* 805EEA40  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 805EEA44  C0 1D 05 D4 */	lfs f0, 0x5d4(r29)
/* 805EEA48  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805EEA4C  40 82 00 0C */	bne lbl_805EEA58
/* 805EEA50  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805EEA54  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
lbl_805EEA58:
/* 805EEA58  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805EEA5C  C0 3D 05 D4 */	lfs f1, 0x5d4(r29)
/* 805EEA60  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805EEA64  41 82 00 28 */	beq lbl_805EEA8C
/* 805EEA68  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 805EEA6C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805EEA70  41 82 00 1C */	beq lbl_805EEA8C
/* 805EEA74  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805EEA78  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805EEA7C  41 82 00 10 */	beq lbl_805EEA8C
/* 805EEA80  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 805EEA84  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805EEA88  40 82 00 2C */	bne lbl_805EEAB4
lbl_805EEA8C:
/* 805EEA8C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805EEA90  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805EEA94  40 82 00 18 */	bne lbl_805EEAAC
/* 805EEA98  38 00 00 03 */	li r0, 3
/* 805EEA9C  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805EEAA0  38 00 00 3C */	li r0, 0x3c
/* 805EEAA4  B0 1D 07 24 */	sth r0, 0x724(r29)
/* 805EEAA8  48 00 00 0C */	b lbl_805EEAB4
lbl_805EEAAC:
/* 805EEAAC  38 00 00 01 */	li r0, 1
/* 805EEAB0  B0 1D 07 20 */	sth r0, 0x720(r29)
lbl_805EEAB4:
/* 805EEAB4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805EEAB8  A8 9D 05 CE */	lha r4, 0x5ce(r29)
/* 805EEABC  38 A0 00 04 */	li r5, 4
/* 805EEAC0  38 C0 04 00 */	li r6, 0x400
/* 805EEAC4  4B C8 1B 45 */	bl cLib_addCalcAngleS2__FPssss
/* 805EEAC8  C0 1D 05 D4 */	lfs f0, 0x5d4(r29)
/* 805EEACC  FC 00 00 1E */	fctiwz f0, f0
/* 805EEAD0  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805EEAD4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 805EEAD8  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 805EEADC  48 00 02 9C */	b lbl_805EED78
lbl_805EEAE0:
/* 805EEAE0  A8 1D 07 24 */	lha r0, 0x724(r29)
/* 805EEAE4  2C 00 00 00 */	cmpwi r0, 0
/* 805EEAE8  40 82 02 90 */	bne lbl_805EED78
/* 805EEAEC  38 61 00 0C */	addi r3, r1, 0xc
/* 805EEAF0  38 9D 05 B8 */	addi r4, r29, 0x5b8
/* 805EEAF4  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 805EEAF8  4B C7 80 3D */	bl __mi__4cXyzCFRC3Vec
/* 805EEAFC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805EEB00  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805EEB04  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805EEB08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805EEB0C  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 805EEB10  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 805EEB14  4B C7 8B 61 */	bl cM_atan2s__Fff
/* 805EEB18  3C 63 00 01 */	addis r3, r3, 1
/* 805EEB1C  38 03 80 00 */	addi r0, r3, -32768
/* 805EEB20  7C 04 07 34 */	extsh r4, r0
/* 805EEB24  38 7D 04 DE */	addi r3, r29, 0x4de
/* 805EEB28  38 A0 00 04 */	li r5, 4
/* 805EEB2C  38 C0 03 00 */	li r6, 0x300
/* 805EEB30  4B C8 1A D9 */	bl cLib_addCalcAngleS2__FPssss
/* 805EEB34  38 61 00 18 */	addi r3, r1, 0x18
/* 805EEB38  4B D5 86 01 */	bl PSVECSquareMag
/* 805EEB3C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805EEB40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EEB44  40 81 00 58 */	ble lbl_805EEB9C
/* 805EEB48  FC 00 08 34 */	frsqrte f0, f1
/* 805EEB4C  C8 9E 00 60 */	lfd f4, 0x60(r30)
/* 805EEB50  FC 44 00 32 */	fmul f2, f4, f0
/* 805EEB54  C8 7E 00 68 */	lfd f3, 0x68(r30)
/* 805EEB58  FC 00 00 32 */	fmul f0, f0, f0
/* 805EEB5C  FC 01 00 32 */	fmul f0, f1, f0
/* 805EEB60  FC 03 00 28 */	fsub f0, f3, f0
/* 805EEB64  FC 02 00 32 */	fmul f0, f2, f0
/* 805EEB68  FC 44 00 32 */	fmul f2, f4, f0
/* 805EEB6C  FC 00 00 32 */	fmul f0, f0, f0
/* 805EEB70  FC 01 00 32 */	fmul f0, f1, f0
/* 805EEB74  FC 03 00 28 */	fsub f0, f3, f0
/* 805EEB78  FC 02 00 32 */	fmul f0, f2, f0
/* 805EEB7C  FC 44 00 32 */	fmul f2, f4, f0
/* 805EEB80  FC 00 00 32 */	fmul f0, f0, f0
/* 805EEB84  FC 01 00 32 */	fmul f0, f1, f0
/* 805EEB88  FC 03 00 28 */	fsub f0, f3, f0
/* 805EEB8C  FC 02 00 32 */	fmul f0, f2, f0
/* 805EEB90  FC 21 00 32 */	fmul f1, f1, f0
/* 805EEB94  FC 20 08 18 */	frsp f1, f1
/* 805EEB98  48 00 00 88 */	b lbl_805EEC20
lbl_805EEB9C:
/* 805EEB9C  C8 1E 00 70 */	lfd f0, 0x70(r30)
/* 805EEBA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EEBA4  40 80 00 10 */	bge lbl_805EEBB4
/* 805EEBA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805EEBAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805EEBB0  48 00 00 70 */	b lbl_805EEC20
lbl_805EEBB4:
/* 805EEBB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 805EEBB8  80 81 00 08 */	lwz r4, 8(r1)
/* 805EEBBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805EEBC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 805EEBC4  7C 03 00 00 */	cmpw r3, r0
/* 805EEBC8  41 82 00 14 */	beq lbl_805EEBDC
/* 805EEBCC  40 80 00 40 */	bge lbl_805EEC0C
/* 805EEBD0  2C 03 00 00 */	cmpwi r3, 0
/* 805EEBD4  41 82 00 20 */	beq lbl_805EEBF4
/* 805EEBD8  48 00 00 34 */	b lbl_805EEC0C
lbl_805EEBDC:
/* 805EEBDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805EEBE0  41 82 00 0C */	beq lbl_805EEBEC
/* 805EEBE4  38 00 00 01 */	li r0, 1
/* 805EEBE8  48 00 00 28 */	b lbl_805EEC10
lbl_805EEBEC:
/* 805EEBEC  38 00 00 02 */	li r0, 2
/* 805EEBF0  48 00 00 20 */	b lbl_805EEC10
lbl_805EEBF4:
/* 805EEBF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805EEBF8  41 82 00 0C */	beq lbl_805EEC04
/* 805EEBFC  38 00 00 05 */	li r0, 5
/* 805EEC00  48 00 00 10 */	b lbl_805EEC10
lbl_805EEC04:
/* 805EEC04  38 00 00 03 */	li r0, 3
/* 805EEC08  48 00 00 08 */	b lbl_805EEC10
lbl_805EEC0C:
/* 805EEC0C  38 00 00 04 */	li r0, 4
lbl_805EEC10:
/* 805EEC10  2C 00 00 01 */	cmpwi r0, 1
/* 805EEC14  40 82 00 0C */	bne lbl_805EEC20
/* 805EEC18  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805EEC1C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805EEC20:
/* 805EEC20  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 805EEC24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EEC28  40 80 01 50 */	bge lbl_805EED78
/* 805EEC2C  A8 1D 07 26 */	lha r0, 0x726(r29)
/* 805EEC30  2C 00 00 00 */	cmpwi r0, 0
/* 805EEC34  41 82 00 18 */	beq lbl_805EEC4C
/* 805EEC38  38 00 00 00 */	li r0, 0
/* 805EEC3C  B0 1D 07 22 */	sth r0, 0x722(r29)
/* 805EEC40  38 00 00 04 */	li r0, 4
/* 805EEC44  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805EEC48  48 00 01 30 */	b lbl_805EED78
lbl_805EEC4C:
/* 805EEC4C  88 1D 1A D5 */	lbz r0, 0x1ad5(r29)
/* 805EEC50  2C 00 00 02 */	cmpwi r0, 2
/* 805EEC54  41 82 00 18 */	beq lbl_805EEC6C
/* 805EEC58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EEC5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EEC60  88 03 00 EC */	lbz r0, 0xec(r3)
/* 805EEC64  28 00 00 03 */	cmplwi r0, 3
/* 805EEC68  41 81 00 20 */	bgt lbl_805EEC88
lbl_805EEC6C:
/* 805EEC6C  38 00 00 06 */	li r0, 6
/* 805EEC70  B0 1D 07 1E */	sth r0, 0x71e(r29)
/* 805EEC74  38 00 00 00 */	li r0, 0
/* 805EEC78  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805EEC7C  38 00 00 01 */	li r0, 1
/* 805EEC80  98 1D 1A D5 */	stb r0, 0x1ad5(r29)
/* 805EEC84  48 00 00 F4 */	b lbl_805EED78
lbl_805EEC88:
/* 805EEC88  38 00 00 00 */	li r0, 0
/* 805EEC8C  B0 1D 07 22 */	sth r0, 0x722(r29)
/* 805EEC90  38 00 00 04 */	li r0, 4
/* 805EEC94  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805EEC98  C0 3E 00 00 */	lfs f1, 0(r30)
/* 805EEC9C  4B C7 8C B9 */	bl cM_rndF__Ff
/* 805EECA0  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 805EECA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EECA8  40 80 00 D0 */	bge lbl_805EED78
/* 805EECAC  38 00 00 05 */	li r0, 5
/* 805EECB0  B0 1D 07 1E */	sth r0, 0x71e(r29)
/* 805EECB4  38 00 00 00 */	li r0, 0
/* 805EECB8  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805EECBC  48 00 00 BC */	b lbl_805EED78
lbl_805EECC0:
/* 805EECC0  C3 FE 00 1C */	lfs f31, 0x1c(r30)
/* 805EECC4  A8 1D 07 22 */	lha r0, 0x722(r29)
/* 805EECC8  2C 00 00 00 */	cmpwi r0, 0
/* 805EECCC  40 82 00 AC */	bne lbl_805EED78
/* 805EECD0  80 1D 06 A4 */	lwz r0, 0x6a4(r29)
/* 805EECD4  2C 00 00 0F */	cmpwi r0, 0xf
/* 805EECD8  41 82 00 18 */	beq lbl_805EECF0
/* 805EECDC  38 80 00 0F */	li r4, 0xf
/* 805EECE0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 805EECE4  38 A0 00 02 */	li r5, 2
/* 805EECE8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 805EECEC  4B FF ED 11 */	bl anm_init__FP10b_gm_classifUcf
lbl_805EECF0:
/* 805EECF0  38 00 00 03 */	li r0, 3
/* 805EECF4  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 805EECF8  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 805EECFC  4B C7 8C 59 */	bl cM_rndF__Ff
/* 805EED00  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805EED04  EC 00 08 2A */	fadds f0, f0, f1
/* 805EED08  FC 00 00 1E */	fctiwz f0, f0
/* 805EED0C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805EED10  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 805EED14  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 805EED18  7C 00 1A 14 */	add r0, r0, r3
/* 805EED1C  98 1D 05 B6 */	stb r0, 0x5b6(r29)
/* 805EED20  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 805EED24  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 805EED28  98 1D 05 B6 */	stb r0, 0x5b6(r29)
/* 805EED2C  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 805EED30  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805EED34  3C 60 80 5F */	lis r3, target_pos@ha /* 0x805F485C@ha */
/* 805EED38  38 63 48 5C */	addi r3, r3, target_pos@l /* 0x805F485C@l */
/* 805EED3C  7C 03 04 2E */	lfsx f0, r3, r0
/* 805EED40  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 805EED44  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805EED48  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805EED4C  88 1D 05 B6 */	lbz r0, 0x5b6(r29)
/* 805EED50  1C 00 00 0C */	mulli r0, r0, 0xc
/* 805EED54  7C 63 02 14 */	add r3, r3, r0
/* 805EED58  C0 03 00 08 */	lfs f0, 8(r3)
/* 805EED5C  D0 1D 05 C0 */	stfs f0, 0x5c0(r29)
/* 805EED60  48 00 00 18 */	b lbl_805EED78
lbl_805EED64:
/* 805EED64  C3 FE 00 1C */	lfs f31, 0x1c(r30)
/* 805EED68  A8 7D 05 C4 */	lha r3, 0x5c4(r29)
/* 805EED6C  3C 63 00 01 */	addis r3, r3, 1
/* 805EED70  38 03 80 00 */	addi r0, r3, -32768
/* 805EED74  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_805EED78:
/* 805EED78  38 7D 05 2C */	addi r3, r29, 0x52c
/* 805EED7C  FC 20 F8 90 */	fmr f1, f31
/* 805EED80  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805EED84  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 805EED88  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805EED8C  EC 03 00 32 */	fmuls f0, f3, f0
/* 805EED90  EC 62 00 2A */	fadds f3, f2, f0
/* 805EED94  4B C8 0C A9 */	bl cLib_addCalc2__FPffff
/* 805EED98  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 805EED9C  2C 00 10 00 */	cmpwi r0, 0x1000
/* 805EEDA0  40 80 00 38 */	bge lbl_805EEDD8
/* 805EEDA4  2C 00 F0 00 */	cmpwi r0, -4096
/* 805EEDA8  40 81 00 30 */	ble lbl_805EEDD8
/* 805EEDAC  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 805EEDB0  C0 3D 07 40 */	lfs f1, 0x740(r29)
/* 805EEDB4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805EEDB8  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805EEDBC  4B C8 0C 81 */	bl cLib_addCalc2__FPffff
/* 805EEDC0  38 7D 07 88 */	addi r3, r29, 0x788
/* 805EEDC4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805EEDC8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805EEDCC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805EEDD0  4B A8 7C DD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 805EEDD4  48 00 00 54 */	b lbl_805EEE28
lbl_805EEDD8:
/* 805EEDD8  2C 00 70 00 */	cmpwi r0, 0x7000
/* 805EEDDC  41 81 00 0C */	bgt lbl_805EEDE8
/* 805EEDE0  2C 00 90 00 */	cmpwi r0, -28672
/* 805EEDE4  40 80 00 1C */	bge lbl_805EEE00
lbl_805EEDE8:
/* 805EEDE8  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 805EEDEC  C0 3D 07 40 */	lfs f1, 0x740(r29)
/* 805EEDF0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805EEDF4  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805EEDF8  4B C8 0C 45 */	bl cLib_addCalc2__FPffff
/* 805EEDFC  48 00 00 2C */	b lbl_805EEE28
lbl_805EEE00:
/* 805EEE00  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805EEE04  C0 3D 07 3C */	lfs f1, 0x73c(r29)
/* 805EEE08  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805EEE0C  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805EEE10  4B C8 0C 2D */	bl cLib_addCalc2__FPffff
/* 805EEE14  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 805EEE18  C0 3D 07 44 */	lfs f1, 0x744(r29)
/* 805EEE1C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805EEE20  C0 7E 00 34 */	lfs f3, 0x34(r30)
/* 805EEE24  4B C8 0C 19 */	bl cLib_addCalc2__FPffff
lbl_805EEE28:
/* 805EEE28  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 805EEE2C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 805EEE30  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 805EEE34  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 805EEE38  39 61 00 50 */	addi r11, r1, 0x50
/* 805EEE3C  4B D7 33 E1 */	bl _restgpr_26
/* 805EEE40  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805EEE44  7C 08 03 A6 */	mtlr r0
/* 805EEE48  38 21 00 70 */	addi r1, r1, 0x70
/* 805EEE4C  4E 80 00 20 */	blr 

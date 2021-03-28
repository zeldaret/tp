lbl_80CAEA60:
/* 80CAEA60  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CAEA64  7C 08 02 A6 */	mflr r0
/* 80CAEA68  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CAEA6C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80CAEA70  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80CAEA74  39 61 00 70 */	addi r11, r1, 0x70
/* 80CAEA78  4B 6B 37 4C */	b _savegpr_23
/* 80CAEA7C  7C 79 1B 78 */	mr r25, r3
/* 80CAEA80  3C 60 80 CB */	lis r3, l_dzbIdx@ha
/* 80CAEA84  3B C3 F0 1C */	addi r30, r3, l_dzbIdx@l
/* 80CAEA88  38 00 00 01 */	li r0, 1
/* 80CAEA8C  98 19 0D 27 */	stb r0, 0xd27(r25)
/* 80CAEA90  C0 39 04 FC */	lfs f1, 0x4fc(r25)
/* 80CAEA94  C0 19 05 30 */	lfs f0, 0x530(r25)
/* 80CAEA98  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAEA9C  D0 19 04 FC */	stfs f0, 0x4fc(r25)
/* 80CAEAA0  3B 60 00 00 */	li r27, 0
/* 80CAEAA4  3B 00 00 00 */	li r24, 0
/* 80CAEAA8  3A E0 00 00 */	li r23, 0
/* 80CAEAAC  C3 FE 00 90 */	lfs f31, 0x90(r30)
/* 80CAEAB0  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80CAEAB4  3B E3 0C D0 */	addi r31, r3, mGroundY__11fopAcM_gc_c@l
lbl_80CAEAB8:
/* 80CAEAB8  7F 23 CB 78 */	mr r3, r25
/* 80CAEABC  7F 64 DB 78 */	mr r4, r27
/* 80CAEAC0  3B A1 00 24 */	addi r29, r1, 0x24
/* 80CAEAC4  7F BD BA 14 */	add r29, r29, r23
/* 80CAEAC8  7F A5 EB 78 */	mr r5, r29
/* 80CAEACC  4B FF FB F9 */	bl getLinePosPic__14daObjPicture_cFiP4cXyz
/* 80CAEAD0  38 18 0C AC */	addi r0, r24, 0xcac
/* 80CAEAD4  7C 79 00 2E */	lwzx r3, r25, r0
/* 80CAEAD8  80 63 00 38 */	lwz r3, 0x38(r3)
/* 80CAEADC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CAEAE0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80CAEAE4  D0 03 00 00 */	stfs f0, 0(r3)
/* 80CAEAE8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80CAEAEC  D0 03 00 04 */	stfs f0, 4(r3)
/* 80CAEAF0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80CAEAF4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80CAEAF8  3B 40 00 01 */	li r26, 1
/* 80CAEAFC  3B 83 00 0C */	addi r28, r3, 0xc
lbl_80CAEB00:
/* 80CAEB00  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CAEB04  EC 1F 00 2A */	fadds f0, f31, f0
/* 80CAEB08  C0 5C 00 04 */	lfs f2, 4(r28)
/* 80CAEB0C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80CAEB10  4C 41 13 82 */	cror 2, 1, 2
/* 80CAEB14  40 82 00 0C */	bne lbl_80CAEB20
/* 80CAEB18  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80CAEB1C  48 00 01 C8 */	b lbl_80CAECE4
lbl_80CAEB20:
/* 80CAEB20  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80CAEB24  C0 19 04 FC */	lfs f0, 0x4fc(r25)
/* 80CAEB28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CAEB2C  EC 02 00 2A */	fadds f0, f2, f0
/* 80CAEB30  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80CAEB34  C0 5C 00 08 */	lfs f2, 8(r28)
/* 80CAEB38  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80CAEB3C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CAEB40  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 80CAEB44  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CAEB48  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CAEB4C  C0 59 04 D8 */	lfs f2, 0x4d8(r25)
/* 80CAEB50  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 80CAEB54  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CAEB58  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CAEB5C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80CAEB60  38 61 00 0C */	addi r3, r1, 0xc
/* 80CAEB64  38 81 00 18 */	addi r4, r1, 0x18
/* 80CAEB68  4B 69 88 34 */	b PSVECSquareDistance
/* 80CAEB6C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80CAEB70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAEB74  40 81 00 58 */	ble lbl_80CAEBCC
/* 80CAEB78  FC 00 08 34 */	frsqrte f0, f1
/* 80CAEB7C  C8 9E 00 98 */	lfd f4, 0x98(r30)
/* 80CAEB80  FC 44 00 32 */	fmul f2, f4, f0
/* 80CAEB84  C8 7E 00 A0 */	lfd f3, 0xa0(r30)
/* 80CAEB88  FC 00 00 32 */	fmul f0, f0, f0
/* 80CAEB8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80CAEB90  FC 03 00 28 */	fsub f0, f3, f0
/* 80CAEB94  FC 02 00 32 */	fmul f0, f2, f0
/* 80CAEB98  FC 44 00 32 */	fmul f2, f4, f0
/* 80CAEB9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80CAEBA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80CAEBA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80CAEBA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80CAEBAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80CAEBB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80CAEBB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80CAEBB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80CAEBBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80CAEBC0  FC 21 00 32 */	fmul f1, f1, f0
/* 80CAEBC4  FC 20 08 18 */	frsp f1, f1
/* 80CAEBC8  48 00 00 88 */	b lbl_80CAEC50
lbl_80CAEBCC:
/* 80CAEBCC  C8 1E 00 A8 */	lfd f0, 0xa8(r30)
/* 80CAEBD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CAEBD4  40 80 00 10 */	bge lbl_80CAEBE4
/* 80CAEBD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CAEBDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80CAEBE0  48 00 00 70 */	b lbl_80CAEC50
lbl_80CAEBE4:
/* 80CAEBE4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CAEBE8  80 81 00 08 */	lwz r4, 8(r1)
/* 80CAEBEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80CAEBF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80CAEBF4  7C 03 00 00 */	cmpw r3, r0
/* 80CAEBF8  41 82 00 14 */	beq lbl_80CAEC0C
/* 80CAEBFC  40 80 00 40 */	bge lbl_80CAEC3C
/* 80CAEC00  2C 03 00 00 */	cmpwi r3, 0
/* 80CAEC04  41 82 00 20 */	beq lbl_80CAEC24
/* 80CAEC08  48 00 00 34 */	b lbl_80CAEC3C
lbl_80CAEC0C:
/* 80CAEC0C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CAEC10  41 82 00 0C */	beq lbl_80CAEC1C
/* 80CAEC14  38 00 00 01 */	li r0, 1
/* 80CAEC18  48 00 00 28 */	b lbl_80CAEC40
lbl_80CAEC1C:
/* 80CAEC1C  38 00 00 02 */	li r0, 2
/* 80CAEC20  48 00 00 20 */	b lbl_80CAEC40
lbl_80CAEC24:
/* 80CAEC24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80CAEC28  41 82 00 0C */	beq lbl_80CAEC34
/* 80CAEC2C  38 00 00 05 */	li r0, 5
/* 80CAEC30  48 00 00 10 */	b lbl_80CAEC40
lbl_80CAEC34:
/* 80CAEC34  38 00 00 03 */	li r0, 3
/* 80CAEC38  48 00 00 08 */	b lbl_80CAEC40
lbl_80CAEC3C:
/* 80CAEC3C  38 00 00 04 */	li r0, 4
lbl_80CAEC40:
/* 80CAEC40  2C 00 00 01 */	cmpwi r0, 1
/* 80CAEC44  40 82 00 0C */	bne lbl_80CAEC50
/* 80CAEC48  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80CAEC4C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80CAEC50:
/* 80CAEC50  A8 99 04 E4 */	lha r4, 0x4e4(r25)
/* 80CAEC54  20 04 40 00 */	subfic r0, r4, 0x4000
/* 80CAEC58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CAEC5C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CAEC60  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CAEC64  7C 03 04 2E */	lfsx f0, r3, r0
/* 80CAEC68  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 80CAEC6C  7C 43 04 2E */	lfsx f2, r3, r0
/* 80CAEC70  EC 00 10 24 */	fdivs f0, f0, f2
/* 80CAEC74  EC 41 00 32 */	fmuls f2, f1, f0
/* 80CAEC78  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 80CAEC7C  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80CAEC80  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80CAEC84  EC 01 00 2A */	fadds f0, f1, f0
/* 80CAEC88  EC 42 00 2A */	fadds f2, f2, f0
/* 80CAEC8C  2C 04 20 00 */	cmpwi r4, 0x2000
/* 80CAEC90  41 80 00 14 */	blt lbl_80CAECA4
/* 80CAEC94  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80CAEC98  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80CAEC9C  40 80 00 08 */	bge lbl_80CAECA4
/* 80CAECA0  D0 5C 00 04 */	stfs f2, 4(r28)
lbl_80CAECA4:
/* 80CAECA4  7F 83 E3 78 */	mr r3, r28
/* 80CAECA8  7F A4 EB 78 */	mr r4, r29
/* 80CAECAC  C0 5E 00 B0 */	lfs f2, 0xb0(r30)
/* 80CAECB0  20 1A 00 0A */	subfic r0, r26, 0xa
/* 80CAECB4  C8 3E 00 B8 */	lfd f1, 0xb8(r30)
/* 80CAECB8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CAECBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CAECC0  3C 00 43 30 */	lis r0, 0x4330
/* 80CAECC4  90 01 00 40 */	stw r0, 0x40(r1)
/* 80CAECC8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80CAECCC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CAECD0  EC 22 00 32 */	fmuls f1, f2, f0
/* 80CAECD4  C0 5E 00 B4 */	lfs f2, 0xb4(r30)
/* 80CAECD8  4B 5C 16 78 */	b cLib_addCalcPosXZ2__FP4cXyzRC4cXyzff
/* 80CAECDC  38 00 00 00 */	li r0, 0
/* 80CAECE0  98 19 0D 27 */	stb r0, 0xd27(r25)
lbl_80CAECE4:
/* 80CAECE4  3B 5A 00 01 */	addi r26, r26, 1
/* 80CAECE8  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80CAECEC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80CAECF0  41 80 FE 10 */	blt lbl_80CAEB00
/* 80CAECF4  3B 7B 00 01 */	addi r27, r27, 1
/* 80CAECF8  2C 1B 00 02 */	cmpwi r27, 2
/* 80CAECFC  3B 18 00 04 */	addi r24, r24, 4
/* 80CAED00  3A F7 00 0C */	addi r23, r23, 0xc
/* 80CAED04  41 80 FD B4 */	blt lbl_80CAEAB8
/* 80CAED08  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80CAED0C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80CAED10  39 61 00 70 */	addi r11, r1, 0x70
/* 80CAED14  4B 6B 34 FC */	b _restgpr_23
/* 80CAED18  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CAED1C  7C 08 03 A6 */	mtlr r0
/* 80CAED20  38 21 00 80 */	addi r1, r1, 0x80
/* 80CAED24  4E 80 00 20 */	blr 

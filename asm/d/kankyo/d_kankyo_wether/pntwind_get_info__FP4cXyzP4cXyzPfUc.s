lbl_8005AE90:
/* 8005AE90  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8005AE94  7C 08 02 A6 */	mflr r0
/* 8005AE98  90 01 00 44 */	stw r0, 0x44(r1)
/* 8005AE9C  39 61 00 40 */	addi r11, r1, 0x40
/* 8005AEA0  48 30 73 29 */	bl _savegpr_24
/* 8005AEA4  7C 79 1B 78 */	mr r25, r3
/* 8005AEA8  7C 9A 23 78 */	mr r26, r4
/* 8005AEAC  7C BB 2B 78 */	mr r27, r5
/* 8005AEB0  7C DC 33 78 */	mr r28, r6
/* 8005AEB4  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 8005AEB8  D0 04 00 00 */	stfs f0, 0(r4)
/* 8005AEBC  D0 04 00 04 */	stfs f0, 4(r4)
/* 8005AEC0  D0 04 00 08 */	stfs f0, 8(r4)
/* 8005AEC4  D0 05 00 00 */	stfs f0, 0(r5)
/* 8005AEC8  3B A0 00 00 */	li r29, 0
/* 8005AECC  3B 00 00 00 */	li r24, 0
/* 8005AED0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005AED4  3B E3 CA 54 */	addi r31, r3, g_env_light@l
lbl_8005AED8:
/* 8005AED8  7C 7F C2 14 */	add r3, r31, r24
/* 8005AEDC  83 C3 07 D0 */	lwz r30, 0x7d0(r3)
/* 8005AEE0  28 1E 00 00 */	cmplwi r30, 0
/* 8005AEE4  41 82 03 30 */	beq lbl_8005B214
/* 8005AEE8  88 7E 00 29 */	lbz r3, 0x29(r30)
/* 8005AEEC  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 8005AEF0  7C 03 00 40 */	cmplw r3, r0
/* 8005AEF4  40 82 03 20 */	bne lbl_8005B214
/* 8005AEF8  7F 23 CB 78 */	mr r3, r25
/* 8005AEFC  7F C4 F3 78 */	mr r4, r30
/* 8005AF00  48 2E C4 9D */	bl PSVECSquareDistance
/* 8005AF04  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 8005AF08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005AF0C  40 81 00 58 */	ble lbl_8005AF64
/* 8005AF10  FC 00 08 34 */	frsqrte f0, f1
/* 8005AF14  C8 82 87 78 */	lfd f4, lit_5524(r2)
/* 8005AF18  FC 44 00 32 */	fmul f2, f4, f0
/* 8005AF1C  C8 62 87 80 */	lfd f3, lit_5525(r2)
/* 8005AF20  FC 00 00 32 */	fmul f0, f0, f0
/* 8005AF24  FC 01 00 32 */	fmul f0, f1, f0
/* 8005AF28  FC 03 00 28 */	fsub f0, f3, f0
/* 8005AF2C  FC 02 00 32 */	fmul f0, f2, f0
/* 8005AF30  FC 44 00 32 */	fmul f2, f4, f0
/* 8005AF34  FC 00 00 32 */	fmul f0, f0, f0
/* 8005AF38  FC 01 00 32 */	fmul f0, f1, f0
/* 8005AF3C  FC 03 00 28 */	fsub f0, f3, f0
/* 8005AF40  FC 02 00 32 */	fmul f0, f2, f0
/* 8005AF44  FC 44 00 32 */	fmul f2, f4, f0
/* 8005AF48  FC 00 00 32 */	fmul f0, f0, f0
/* 8005AF4C  FC 01 00 32 */	fmul f0, f1, f0
/* 8005AF50  FC 03 00 28 */	fsub f0, f3, f0
/* 8005AF54  FC 02 00 32 */	fmul f0, f2, f0
/* 8005AF58  FC 21 00 32 */	fmul f1, f1, f0
/* 8005AF5C  FC 20 08 18 */	frsp f1, f1
/* 8005AF60  48 00 00 88 */	b lbl_8005AFE8
lbl_8005AF64:
/* 8005AF64  C8 02 87 88 */	lfd f0, lit_5526(r2)
/* 8005AF68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005AF6C  40 80 00 10 */	bge lbl_8005AF7C
/* 8005AF70  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8005AF74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8005AF78  48 00 00 70 */	b lbl_8005AFE8
lbl_8005AF7C:
/* 8005AF7C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8005AF80  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8005AF84  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005AF88  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005AF8C  7C 03 00 00 */	cmpw r3, r0
/* 8005AF90  41 82 00 14 */	beq lbl_8005AFA4
/* 8005AF94  40 80 00 40 */	bge lbl_8005AFD4
/* 8005AF98  2C 03 00 00 */	cmpwi r3, 0
/* 8005AF9C  41 82 00 20 */	beq lbl_8005AFBC
/* 8005AFA0  48 00 00 34 */	b lbl_8005AFD4
lbl_8005AFA4:
/* 8005AFA4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005AFA8  41 82 00 0C */	beq lbl_8005AFB4
/* 8005AFAC  38 00 00 01 */	li r0, 1
/* 8005AFB0  48 00 00 28 */	b lbl_8005AFD8
lbl_8005AFB4:
/* 8005AFB4  38 00 00 02 */	li r0, 2
/* 8005AFB8  48 00 00 20 */	b lbl_8005AFD8
lbl_8005AFBC:
/* 8005AFBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005AFC0  41 82 00 0C */	beq lbl_8005AFCC
/* 8005AFC4  38 00 00 05 */	li r0, 5
/* 8005AFC8  48 00 00 10 */	b lbl_8005AFD8
lbl_8005AFCC:
/* 8005AFCC  38 00 00 03 */	li r0, 3
/* 8005AFD0  48 00 00 08 */	b lbl_8005AFD8
lbl_8005AFD4:
/* 8005AFD4  38 00 00 04 */	li r0, 4
lbl_8005AFD8:
/* 8005AFD8  2C 00 00 01 */	cmpwi r0, 1
/* 8005AFDC  40 82 00 0C */	bne lbl_8005AFE8
/* 8005AFE0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8005AFE4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8005AFE8:
/* 8005AFE8  88 1E 00 28 */	lbz r0, 0x28(r30)
/* 8005AFEC  28 00 00 00 */	cmplwi r0, 0
/* 8005AFF0  40 82 01 BC */	bne lbl_8005B1AC
/* 8005AFF4  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8005AFF8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8005AFFC  40 80 02 18 */	bge lbl_8005B214
/* 8005B000  C0 7E 00 1C */	lfs f3, 0x1c(r30)
/* 8005B004  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 8005B008  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8005B00C  40 81 02 08 */	ble lbl_8005B214
/* 8005B010  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8005B014  41 82 02 00 */	beq lbl_8005B214
/* 8005B018  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005B01C  40 81 00 18 */	ble lbl_8005B034
/* 8005B020  EC 01 10 24 */	fdivs f0, f1, f2
/* 8005B024  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005B028  EC 00 00 32 */	fmuls f0, f0, f0
/* 8005B02C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8005B030  48 00 00 08 */	b lbl_8005B038
lbl_8005B034:
/* 8005B034  C0 02 86 E4 */	lfs f0, lit_4379(r2)
lbl_8005B038:
/* 8005B038  EC 03 00 32 */	fmuls f0, f3, f0
/* 8005B03C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8005B040  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8005B044  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8005B048  FC 00 00 50 */	fneg f0, f0
/* 8005B04C  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 8005B050  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8005B054  EC 01 00 2A */	fadds f0, f1, f0
/* 8005B058  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8005B05C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8005B060  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8005B064  FC 00 00 50 */	fneg f0, f0
/* 8005B068  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8005B06C  EC 01 00 2A */	fadds f0, f1, f0
/* 8005B070  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8005B074  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8005B078  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8005B07C  FC 00 00 50 */	fneg f0, f0
/* 8005B080  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8005B084  EC 01 00 2A */	fadds f0, f1, f0
/* 8005B088  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8005B08C  38 61 00 10 */	addi r3, r1, 0x10
/* 8005B090  7F 24 CB 78 */	mr r4, r25
/* 8005B094  7F 45 D3 78 */	mr r5, r26
/* 8005B098  48 00 06 C9 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 8005B09C  7F 23 CB 78 */	mr r3, r25
/* 8005B0A0  38 81 00 10 */	addi r4, r1, 0x10
/* 8005B0A4  48 2E C2 F9 */	bl PSVECSquareDistance
/* 8005B0A8  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 8005B0AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005B0B0  40 81 00 58 */	ble lbl_8005B108
/* 8005B0B4  FC 00 08 34 */	frsqrte f0, f1
/* 8005B0B8  C8 82 87 78 */	lfd f4, lit_5524(r2)
/* 8005B0BC  FC 44 00 32 */	fmul f2, f4, f0
/* 8005B0C0  C8 62 87 80 */	lfd f3, lit_5525(r2)
/* 8005B0C4  FC 00 00 32 */	fmul f0, f0, f0
/* 8005B0C8  FC 01 00 32 */	fmul f0, f1, f0
/* 8005B0CC  FC 03 00 28 */	fsub f0, f3, f0
/* 8005B0D0  FC 02 00 32 */	fmul f0, f2, f0
/* 8005B0D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8005B0D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8005B0DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8005B0E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8005B0E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8005B0E8  FC 44 00 32 */	fmul f2, f4, f0
/* 8005B0EC  FC 00 00 32 */	fmul f0, f0, f0
/* 8005B0F0  FC 01 00 32 */	fmul f0, f1, f0
/* 8005B0F4  FC 03 00 28 */	fsub f0, f3, f0
/* 8005B0F8  FC 02 00 32 */	fmul f0, f2, f0
/* 8005B0FC  FC 21 00 32 */	fmul f1, f1, f0
/* 8005B100  FC 20 08 18 */	frsp f1, f1
/* 8005B104  48 00 00 88 */	b lbl_8005B18C
lbl_8005B108:
/* 8005B108  C8 02 87 88 */	lfd f0, lit_5526(r2)
/* 8005B10C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005B110  40 80 00 10 */	bge lbl_8005B120
/* 8005B114  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8005B118  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8005B11C  48 00 00 70 */	b lbl_8005B18C
lbl_8005B120:
/* 8005B120  D0 21 00 08 */	stfs f1, 8(r1)
/* 8005B124  80 81 00 08 */	lwz r4, 8(r1)
/* 8005B128  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8005B12C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8005B130  7C 03 00 00 */	cmpw r3, r0
/* 8005B134  41 82 00 14 */	beq lbl_8005B148
/* 8005B138  40 80 00 40 */	bge lbl_8005B178
/* 8005B13C  2C 03 00 00 */	cmpwi r3, 0
/* 8005B140  41 82 00 20 */	beq lbl_8005B160
/* 8005B144  48 00 00 34 */	b lbl_8005B178
lbl_8005B148:
/* 8005B148  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005B14C  41 82 00 0C */	beq lbl_8005B158
/* 8005B150  38 00 00 01 */	li r0, 1
/* 8005B154  48 00 00 28 */	b lbl_8005B17C
lbl_8005B158:
/* 8005B158  38 00 00 02 */	li r0, 2
/* 8005B15C  48 00 00 20 */	b lbl_8005B17C
lbl_8005B160:
/* 8005B160  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8005B164  41 82 00 0C */	beq lbl_8005B170
/* 8005B168  38 00 00 05 */	li r0, 5
/* 8005B16C  48 00 00 10 */	b lbl_8005B17C
lbl_8005B170:
/* 8005B170  38 00 00 03 */	li r0, 3
/* 8005B174  48 00 00 08 */	b lbl_8005B17C
lbl_8005B178:
/* 8005B178  38 00 00 04 */	li r0, 4
lbl_8005B17C:
/* 8005B17C  2C 00 00 01 */	cmpwi r0, 1
/* 8005B180  40 82 00 0C */	bne lbl_8005B18C
/* 8005B184  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8005B188  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8005B18C:
/* 8005B18C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8005B190  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005B194  40 80 00 90 */	bge lbl_8005B224
/* 8005B198  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 8005B19C  D0 1A 00 00 */	stfs f0, 0(r26)
/* 8005B1A0  D0 1A 00 04 */	stfs f0, 4(r26)
/* 8005B1A4  D0 1A 00 08 */	stfs f0, 8(r26)
/* 8005B1A8  48 00 00 7C */	b lbl_8005B224
lbl_8005B1AC:
/* 8005B1AC  C0 7E 00 18 */	lfs f3, 0x18(r30)
/* 8005B1B0  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 8005B1B4  40 80 00 60 */	bge lbl_8005B214
/* 8005B1B8  C0 5E 00 1C */	lfs f2, 0x1c(r30)
/* 8005B1BC  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 8005B1C0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8005B1C4  40 81 00 50 */	ble lbl_8005B214
/* 8005B1C8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8005B1CC  41 82 00 48 */	beq lbl_8005B214
/* 8005B1D0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8005B1D4  40 81 00 14 */	ble lbl_8005B1E8
/* 8005B1D8  C0 42 86 E4 */	lfs f2, lit_4379(r2)
/* 8005B1DC  EC 01 18 24 */	fdivs f0, f1, f3
/* 8005B1E0  EC 22 00 28 */	fsubs f1, f2, f0
/* 8005B1E4  48 00 00 08 */	b lbl_8005B1EC
lbl_8005B1E8:
/* 8005B1E8  C0 22 86 E4 */	lfs f1, lit_4379(r2)
lbl_8005B1EC:
/* 8005B1EC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8005B1F0  D0 1A 00 00 */	stfs f0, 0(r26)
/* 8005B1F4  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8005B1F8  D0 1A 00 04 */	stfs f0, 4(r26)
/* 8005B1FC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8005B200  D0 1A 00 08 */	stfs f0, 8(r26)
/* 8005B204  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8005B208  EC 00 00 72 */	fmuls f0, f0, f1
/* 8005B20C  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8005B210  48 00 00 14 */	b lbl_8005B224
lbl_8005B214:
/* 8005B214  3B BD 00 01 */	addi r29, r29, 1
/* 8005B218  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 8005B21C  3B 18 00 04 */	addi r24, r24, 4
/* 8005B220  41 80 FC B8 */	blt lbl_8005AED8
lbl_8005B224:
/* 8005B224  39 61 00 40 */	addi r11, r1, 0x40
/* 8005B228  48 30 6F ED */	bl _restgpr_24
/* 8005B22C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8005B230  7C 08 03 A6 */	mtlr r0
/* 8005B234  38 21 00 40 */	addi r1, r1, 0x40
/* 8005B238  4E 80 00 20 */	blr 

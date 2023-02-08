lbl_80D1BA30:
/* 80D1BA30  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D1BA34  7C 08 02 A6 */	mflr r0
/* 80D1BA38  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D1BA3C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80D1BA40  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80D1BA44  7C 7E 1B 78 */	mr r30, r3
/* 80D1BA48  3C 60 80 D2 */	lis r3, lit_3628@ha /* 0x80D1C354@ha */
/* 80D1BA4C  3B E3 C3 54 */	addi r31, r3, lit_3628@l /* 0x80D1C354@l */
/* 80D1BA50  C0 1E 06 E8 */	lfs f0, 0x6e8(r30)
/* 80D1BA54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D1BA58  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80D1BA5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D1BA60  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80D1BA64  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D1BA68  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 80D1BA6C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D1BA70  C0 1E 06 F8 */	lfs f0, 0x6f8(r30)
/* 80D1BA74  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D1BA78  C0 1E 06 FC */	lfs f0, 0x6fc(r30)
/* 80D1BA7C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D1BA80  38 61 00 24 */	addi r3, r1, 0x24
/* 80D1BA84  38 81 00 18 */	addi r4, r1, 0x18
/* 80D1BA88  38 A1 00 0C */	addi r5, r1, 0xc
/* 80D1BA8C  4B 33 FC D5 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 80D1BA90  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D1BA94  D0 1E 07 4C */	stfs f0, 0x74c(r30)
/* 80D1BA98  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D1BA9C  D0 1E 07 50 */	stfs f0, 0x750(r30)
/* 80D1BAA0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D1BAA4  D0 1E 07 54 */	stfs f0, 0x754(r30)
/* 80D1BAA8  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80D1BAAC  C0 1E 07 00 */	lfs f0, 0x700(r30)
/* 80D1BAB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D1BAB4  D0 1E 07 58 */	stfs f0, 0x758(r30)
/* 80D1BAB8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D1BABC  D0 1E 07 60 */	stfs f0, 0x760(r30)
/* 80D1BAC0  C0 7E 07 58 */	lfs f3, 0x758(r30)
/* 80D1BAC4  38 7E 07 40 */	addi r3, r30, 0x740
/* 80D1BAC8  C0 3E 06 F4 */	lfs f1, 0x6f4(r30)
/* 80D1BACC  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80D1BAD0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D1BAD4  EC 80 00 F2 */	fmuls f4, f0, f3
/* 80D1BAD8  4B 55 3E A5 */	bl cLib_addCalc__FPfffff
/* 80D1BADC  C0 7E 07 58 */	lfs f3, 0x758(r30)
/* 80D1BAE0  38 7E 07 44 */	addi r3, r30, 0x744
/* 80D1BAE4  C0 3E 06 F8 */	lfs f1, 0x6f8(r30)
/* 80D1BAE8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80D1BAEC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D1BAF0  EC 80 00 F2 */	fmuls f4, f0, f3
/* 80D1BAF4  4B 55 3E 89 */	bl cLib_addCalc__FPfffff
/* 80D1BAF8  C0 7E 07 58 */	lfs f3, 0x758(r30)
/* 80D1BAFC  38 7E 07 48 */	addi r3, r30, 0x748
/* 80D1BB00  C0 3E 06 FC */	lfs f1, 0x6fc(r30)
/* 80D1BB04  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80D1BB08  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80D1BB0C  EC 80 00 F2 */	fmuls f4, f0, f3
/* 80D1BB10  4B 55 3E 6D */	bl cLib_addCalc__FPfffff
/* 80D1BB14  38 7E 07 40 */	addi r3, r30, 0x740
/* 80D1BB18  38 9E 06 F4 */	addi r4, r30, 0x6f4
/* 80D1BB1C  4B 62 B8 81 */	bl PSVECSquareDistance
/* 80D1BB20  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80D1BB24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1BB28  40 81 00 58 */	ble lbl_80D1BB80
/* 80D1BB2C  FC 00 08 34 */	frsqrte f0, f1
/* 80D1BB30  C8 9F 00 20 */	lfd f4, 0x20(r31)
/* 80D1BB34  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1BB38  C8 7F 00 28 */	lfd f3, 0x28(r31)
/* 80D1BB3C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1BB40  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1BB44  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1BB48  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1BB4C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1BB50  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1BB54  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1BB58  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1BB5C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1BB60  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1BB64  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1BB68  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1BB6C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1BB70  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1BB74  FC 21 00 32 */	fmul f1, f1, f0
/* 80D1BB78  FC 20 08 18 */	frsp f1, f1
/* 80D1BB7C  48 00 00 88 */	b lbl_80D1BC04
lbl_80D1BB80:
/* 80D1BB80  C8 1F 00 30 */	lfd f0, 0x30(r31)
/* 80D1BB84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1BB88  40 80 00 10 */	bge lbl_80D1BB98
/* 80D1BB8C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D1BB90  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D1BB94  48 00 00 70 */	b lbl_80D1BC04
lbl_80D1BB98:
/* 80D1BB98  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D1BB9C  80 81 00 08 */	lwz r4, 8(r1)
/* 80D1BBA0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D1BBA4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D1BBA8  7C 03 00 00 */	cmpw r3, r0
/* 80D1BBAC  41 82 00 14 */	beq lbl_80D1BBC0
/* 80D1BBB0  40 80 00 40 */	bge lbl_80D1BBF0
/* 80D1BBB4  2C 03 00 00 */	cmpwi r3, 0
/* 80D1BBB8  41 82 00 20 */	beq lbl_80D1BBD8
/* 80D1BBBC  48 00 00 34 */	b lbl_80D1BBF0
lbl_80D1BBC0:
/* 80D1BBC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D1BBC4  41 82 00 0C */	beq lbl_80D1BBD0
/* 80D1BBC8  38 00 00 01 */	li r0, 1
/* 80D1BBCC  48 00 00 28 */	b lbl_80D1BBF4
lbl_80D1BBD0:
/* 80D1BBD0  38 00 00 02 */	li r0, 2
/* 80D1BBD4  48 00 00 20 */	b lbl_80D1BBF4
lbl_80D1BBD8:
/* 80D1BBD8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D1BBDC  41 82 00 0C */	beq lbl_80D1BBE8
/* 80D1BBE0  38 00 00 05 */	li r0, 5
/* 80D1BBE4  48 00 00 10 */	b lbl_80D1BBF4
lbl_80D1BBE8:
/* 80D1BBE8  38 00 00 03 */	li r0, 3
/* 80D1BBEC  48 00 00 08 */	b lbl_80D1BBF4
lbl_80D1BBF0:
/* 80D1BBF0  38 00 00 04 */	li r0, 4
lbl_80D1BBF4:
/* 80D1BBF4  2C 00 00 01 */	cmpwi r0, 1
/* 80D1BBF8  40 82 00 0C */	bne lbl_80D1BC04
/* 80D1BBFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D1BC00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D1BC04:
/* 80D1BC04  C0 1E 07 58 */	lfs f0, 0x758(r30)
/* 80D1BC08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1BC0C  40 80 00 1C */	bge lbl_80D1BC28
/* 80D1BC10  C0 1E 06 E8 */	lfs f0, 0x6e8(r30)
/* 80D1BC14  D0 1E 07 40 */	stfs f0, 0x740(r30)
/* 80D1BC18  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 80D1BC1C  D0 1E 07 44 */	stfs f0, 0x744(r30)
/* 80D1BC20  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 80D1BC24  D0 1E 07 48 */	stfs f0, 0x748(r30)
lbl_80D1BC28:
/* 80D1BC28  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80D1BC2C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80D1BC30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D1BC34  7C 08 03 A6 */	mtlr r0
/* 80D1BC38  38 21 00 40 */	addi r1, r1, 0x40
/* 80D1BC3C  4E 80 00 20 */	blr 

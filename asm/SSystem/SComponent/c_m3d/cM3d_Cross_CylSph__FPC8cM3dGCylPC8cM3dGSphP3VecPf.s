lbl_8026BA48:
/* 8026BA48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8026BA4C  7C 08 02 A6 */	mflr r0
/* 8026BA50  90 01 00 44 */	stw r0, 0x44(r1)
/* 8026BA54  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8026BA58  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8026BA5C  39 61 00 30 */	addi r11, r1, 0x30
/* 8026BA60  48 0F 67 79 */	bl _savegpr_28
/* 8026BA64  7C 7E 1B 78 */	mr r30, r3
/* 8026BA68  7C 9F 23 78 */	mr r31, r4
/* 8026BA6C  7C BC 2B 78 */	mr r28, r5
/* 8026BA70  7C DD 33 78 */	mr r29, r6
/* 8026BA74  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8026BA78  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 8026BA7C  EF E1 00 2A */	fadds f31, f1, f0
/* 8026BA80  C0 24 00 00 */	lfs f1, 0(r4)
/* 8026BA84  C0 44 00 08 */	lfs f2, 8(r4)
/* 8026BA88  C0 63 00 00 */	lfs f3, 0(r3)
/* 8026BA8C  C0 83 00 08 */	lfs f4, 8(r3)
/* 8026BA90  4B FF CB 85 */	bl cM3d_Len2dSq__Fffff
/* 8026BA94  C0 02 B7 18 */	lfs f0, lit_2256(r2)
/* 8026BA98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026BA9C  40 81 00 58 */	ble lbl_8026BAF4
/* 8026BAA0  FC 00 08 34 */	frsqrte f0, f1
/* 8026BAA4  C8 82 B7 20 */	lfd f4, lit_2257(r2)
/* 8026BAA8  FC 44 00 32 */	fmul f2, f4, f0
/* 8026BAAC  C8 62 B7 28 */	lfd f3, lit_2258(r2)
/* 8026BAB0  FC 00 00 32 */	fmul f0, f0, f0
/* 8026BAB4  FC 01 00 32 */	fmul f0, f1, f0
/* 8026BAB8  FC 03 00 28 */	fsub f0, f3, f0
/* 8026BABC  FC 02 00 32 */	fmul f0, f2, f0
/* 8026BAC0  FC 44 00 32 */	fmul f2, f4, f0
/* 8026BAC4  FC 00 00 32 */	fmul f0, f0, f0
/* 8026BAC8  FC 01 00 32 */	fmul f0, f1, f0
/* 8026BACC  FC 03 00 28 */	fsub f0, f3, f0
/* 8026BAD0  FC 02 00 32 */	fmul f0, f2, f0
/* 8026BAD4  FC 44 00 32 */	fmul f2, f4, f0
/* 8026BAD8  FC 00 00 32 */	fmul f0, f0, f0
/* 8026BADC  FC 01 00 32 */	fmul f0, f1, f0
/* 8026BAE0  FC 03 00 28 */	fsub f0, f3, f0
/* 8026BAE4  FC 02 00 32 */	fmul f0, f2, f0
/* 8026BAE8  FC 21 00 32 */	fmul f1, f1, f0
/* 8026BAEC  FC 20 08 18 */	frsp f1, f1
/* 8026BAF0  48 00 00 88 */	b lbl_8026BB78
lbl_8026BAF4:
/* 8026BAF4  C8 02 B7 30 */	lfd f0, lit_2259(r2)
/* 8026BAF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8026BAFC  40 80 00 10 */	bge lbl_8026BB0C
/* 8026BB00  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026BB04  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8026BB08  48 00 00 70 */	b lbl_8026BB78
lbl_8026BB0C:
/* 8026BB0C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8026BB10  80 81 00 08 */	lwz r4, 8(r1)
/* 8026BB14  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8026BB18  3C 00 7F 80 */	lis r0, 0x7f80
/* 8026BB1C  7C 03 00 00 */	cmpw r3, r0
/* 8026BB20  41 82 00 14 */	beq lbl_8026BB34
/* 8026BB24  40 80 00 40 */	bge lbl_8026BB64
/* 8026BB28  2C 03 00 00 */	cmpwi r3, 0
/* 8026BB2C  41 82 00 20 */	beq lbl_8026BB4C
/* 8026BB30  48 00 00 34 */	b lbl_8026BB64
lbl_8026BB34:
/* 8026BB34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026BB38  41 82 00 0C */	beq lbl_8026BB44
/* 8026BB3C  38 00 00 01 */	li r0, 1
/* 8026BB40  48 00 00 28 */	b lbl_8026BB68
lbl_8026BB44:
/* 8026BB44  38 00 00 02 */	li r0, 2
/* 8026BB48  48 00 00 20 */	b lbl_8026BB68
lbl_8026BB4C:
/* 8026BB4C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8026BB50  41 82 00 0C */	beq lbl_8026BB5C
/* 8026BB54  38 00 00 05 */	li r0, 5
/* 8026BB58  48 00 00 10 */	b lbl_8026BB68
lbl_8026BB5C:
/* 8026BB5C  38 00 00 03 */	li r0, 3
/* 8026BB60  48 00 00 08 */	b lbl_8026BB68
lbl_8026BB64:
/* 8026BB64  38 00 00 04 */	li r0, 4
lbl_8026BB68:
/* 8026BB68  2C 00 00 01 */	cmpwi r0, 1
/* 8026BB6C  40 82 00 0C */	bne lbl_8026BB78
/* 8026BB70  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8026BB74  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8026BB78:
/* 8026BB78  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8026BB7C  40 80 00 0C */	bge lbl_8026BB88
/* 8026BB80  38 60 00 00 */	li r3, 0
/* 8026BB84  48 00 00 D8 */	b lbl_8026BC5C
lbl_8026BB88:
/* 8026BB88  C0 9F 00 04 */	lfs f4, 4(r31)
/* 8026BB8C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8026BB90  EC 04 10 2A */	fadds f0, f4, f2
/* 8026BB94  C0 7E 00 04 */	lfs f3, 4(r30)
/* 8026BB98  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 8026BB9C  4C 41 13 82 */	cror 2, 1, 2
/* 8026BBA0  40 82 00 B8 */	bne lbl_8026BC58
/* 8026BBA4  EC 44 10 28 */	fsubs f2, f4, f2
/* 8026BBA8  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8026BBAC  EC 03 00 2A */	fadds f0, f3, f0
/* 8026BBB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026BBB4  4C 40 13 82 */	cror 2, 0, 2
/* 8026BBB8  40 82 00 A0 */	bne lbl_8026BC58
/* 8026BBBC  EC 1F 08 28 */	fsubs f0, f31, f1
/* 8026BBC0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 8026BBC4  FC 00 0A 10 */	fabs f0, f1
/* 8026BBC8  FC 40 00 18 */	frsp f2, f0
/* 8026BBCC  C0 0D 8C 00 */	lfs f0, G_CM3D_F_ABS_MIN(r13)
/* 8026BBD0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8026BBD4  41 80 00 68 */	blt lbl_8026BC3C
/* 8026BBD8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8026BBDC  EF E0 08 24 */	fdivs f31, f0, f1
/* 8026BBE0  C0 02 B7 38 */	lfs f0, lit_2273(r2)
/* 8026BBE4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8026BBE8  4C 40 13 82 */	cror 2, 0, 2
/* 8026BBEC  40 82 00 38 */	bne lbl_8026BC24
/* 8026BBF0  7F E3 FB 78 */	mr r3, r31
/* 8026BBF4  7F C4 F3 78 */	mr r4, r30
/* 8026BBF8  38 A1 00 0C */	addi r5, r1, 0xc
/* 8026BBFC  48 0D B4 B9 */	bl PSVECSubtract
/* 8026BC00  38 61 00 0C */	addi r3, r1, 0xc
/* 8026BC04  7C 64 1B 78 */	mr r4, r3
/* 8026BC08  FC 20 F8 90 */	fmr f1, f31
/* 8026BC0C  48 0D B4 CD */	bl PSVECScale
/* 8026BC10  38 61 00 0C */	addi r3, r1, 0xc
/* 8026BC14  7F C4 F3 78 */	mr r4, r30
/* 8026BC18  7F 85 E3 78 */	mr r5, r28
/* 8026BC1C  48 0D B4 75 */	bl PSVECAdd
/* 8026BC20  48 00 00 30 */	b lbl_8026BC50
lbl_8026BC24:
/* 8026BC24  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8026BC28  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8026BC2C  D0 9C 00 04 */	stfs f4, 4(r28)
/* 8026BC30  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8026BC34  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8026BC38  48 00 00 18 */	b lbl_8026BC50
lbl_8026BC3C:
/* 8026BC3C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8026BC40  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8026BC44  D0 9C 00 04 */	stfs f4, 4(r28)
/* 8026BC48  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8026BC4C  D0 1C 00 08 */	stfs f0, 8(r28)
lbl_8026BC50:
/* 8026BC50  38 60 00 01 */	li r3, 1
/* 8026BC54  48 00 00 08 */	b lbl_8026BC5C
lbl_8026BC58:
/* 8026BC58  38 60 00 00 */	li r3, 0
lbl_8026BC5C:
/* 8026BC5C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8026BC60  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8026BC64  39 61 00 30 */	addi r11, r1, 0x30
/* 8026BC68  48 0F 65 BD */	bl _restgpr_28
/* 8026BC6C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8026BC70  7C 08 03 A6 */	mtlr r0
/* 8026BC74  38 21 00 40 */	addi r1, r1, 0x40
/* 8026BC78  4E 80 00 20 */	blr 

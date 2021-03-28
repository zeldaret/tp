lbl_8047BAF8:
/* 8047BAF8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8047BAFC  7C 08 02 A6 */	mflr r0
/* 8047BB00  90 01 01 14 */	stw r0, 0x114(r1)
/* 8047BB04  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8047BB08  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 8047BB0C  39 61 01 00 */	addi r11, r1, 0x100
/* 8047BB10  4B EE 66 BC */	b _savegpr_25
/* 8047BB14  7C 7E 1B 78 */	mr r30, r3
/* 8047BB18  3C 60 80 48 */	lis r3, lit_3770@ha
/* 8047BB1C  3B E3 D8 10 */	addi r31, r3, lit_3770@l
/* 8047BB20  38 00 00 01 */	li r0, 1
/* 8047BB24  98 1E 10 38 */	stb r0, 0x1038(r30)
/* 8047BB28  2C 04 00 64 */	cmpwi r4, 0x64
/* 8047BB2C  40 82 00 50 */	bne lbl_8047BB7C
/* 8047BB30  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8047BB34  38 9E 06 18 */	addi r4, r30, 0x618
/* 8047BB38  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8047BB3C  4B DE AF F8 */	b __mi__4cXyzCFRC3Vec
/* 8047BB40  38 61 00 94 */	addi r3, r1, 0x94
/* 8047BB44  38 81 00 A0 */	addi r4, r1, 0xa0
/* 8047BB48  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8047BB4C  4B DE B0 38 */	b __ml__4cXyzCFf
/* 8047BB50  38 61 00 88 */	addi r3, r1, 0x88
/* 8047BB54  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8047BB58  38 A1 00 94 */	addi r5, r1, 0x94
/* 8047BB5C  4B DE AF 88 */	b __pl__4cXyzCFRC3Vec
/* 8047BB60  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8047BB64  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8047BB68  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8047BB6C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8047BB70  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8047BB74  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8047BB78  48 00 00 2C */	b lbl_8047BBA4
lbl_8047BB7C:
/* 8047BB7C  38 04 FF FF */	addi r0, r4, -1
/* 8047BB80  1C 60 01 38 */	mulli r3, r0, 0x138
/* 8047BB84  38 63 07 9C */	addi r3, r3, 0x79c
/* 8047BB88  7C 7E 1A 14 */	add r3, r30, r3
/* 8047BB8C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8047BB90  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8047BB94  C0 03 00 04 */	lfs f0, 4(r3)
/* 8047BB98  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8047BB9C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047BBA0  D0 01 00 CC */	stfs f0, 0xcc(r1)
lbl_8047BBA4:
/* 8047BBA4  88 1E 15 09 */	lbz r0, 0x1509(r30)
/* 8047BBA8  7C 00 07 75 */	extsb. r0, r0
/* 8047BBAC  41 82 00 14 */	beq lbl_8047BBC0
/* 8047BBB0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8047BBB4  D0 1E 14 E8 */	stfs f0, 0x14e8(r30)
/* 8047BBB8  D0 1E 12 8C */	stfs f0, 0x128c(r30)
/* 8047BBBC  48 00 02 14 */	b lbl_8047BDD0
lbl_8047BBC0:
/* 8047BBC0  38 61 00 7C */	addi r3, r1, 0x7c
/* 8047BBC4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8047BBC8  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 8047BBCC  4B DE AF 68 */	b __mi__4cXyzCFRC3Vec
/* 8047BBD0  38 61 00 7C */	addi r3, r1, 0x7c
/* 8047BBD4  4B EC B5 64 */	b PSVECSquareMag
/* 8047BBD8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8047BBDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047BBE0  40 81 00 58 */	ble lbl_8047BC38
/* 8047BBE4  FC 00 08 34 */	frsqrte f0, f1
/* 8047BBE8  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 8047BBEC  FC 44 00 32 */	fmul f2, f4, f0
/* 8047BBF0  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 8047BBF4  FC 00 00 32 */	fmul f0, f0, f0
/* 8047BBF8  FC 01 00 32 */	fmul f0, f1, f0
/* 8047BBFC  FC 03 00 28 */	fsub f0, f3, f0
/* 8047BC00  FC 02 00 32 */	fmul f0, f2, f0
/* 8047BC04  FC 44 00 32 */	fmul f2, f4, f0
/* 8047BC08  FC 00 00 32 */	fmul f0, f0, f0
/* 8047BC0C  FC 01 00 32 */	fmul f0, f1, f0
/* 8047BC10  FC 03 00 28 */	fsub f0, f3, f0
/* 8047BC14  FC 02 00 32 */	fmul f0, f2, f0
/* 8047BC18  FC 44 00 32 */	fmul f2, f4, f0
/* 8047BC1C  FC 00 00 32 */	fmul f0, f0, f0
/* 8047BC20  FC 01 00 32 */	fmul f0, f1, f0
/* 8047BC24  FC 03 00 28 */	fsub f0, f3, f0
/* 8047BC28  FC 02 00 32 */	fmul f0, f2, f0
/* 8047BC2C  FC 21 00 32 */	fmul f1, f1, f0
/* 8047BC30  FC 20 08 18 */	frsp f1, f1
/* 8047BC34  48 00 00 88 */	b lbl_8047BCBC
lbl_8047BC38:
/* 8047BC38  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 8047BC3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047BC40  40 80 00 10 */	bge lbl_8047BC50
/* 8047BC44  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8047BC48  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8047BC4C  48 00 00 70 */	b lbl_8047BCBC
lbl_8047BC50:
/* 8047BC50  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8047BC54  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8047BC58  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8047BC5C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8047BC60  7C 03 00 00 */	cmpw r3, r0
/* 8047BC64  41 82 00 14 */	beq lbl_8047BC78
/* 8047BC68  40 80 00 40 */	bge lbl_8047BCA8
/* 8047BC6C  2C 03 00 00 */	cmpwi r3, 0
/* 8047BC70  41 82 00 20 */	beq lbl_8047BC90
/* 8047BC74  48 00 00 34 */	b lbl_8047BCA8
lbl_8047BC78:
/* 8047BC78  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8047BC7C  41 82 00 0C */	beq lbl_8047BC88
/* 8047BC80  38 00 00 01 */	li r0, 1
/* 8047BC84  48 00 00 28 */	b lbl_8047BCAC
lbl_8047BC88:
/* 8047BC88  38 00 00 02 */	li r0, 2
/* 8047BC8C  48 00 00 20 */	b lbl_8047BCAC
lbl_8047BC90:
/* 8047BC90  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8047BC94  41 82 00 0C */	beq lbl_8047BCA0
/* 8047BC98  38 00 00 05 */	li r0, 5
/* 8047BC9C  48 00 00 10 */	b lbl_8047BCAC
lbl_8047BCA0:
/* 8047BCA0  38 00 00 03 */	li r0, 3
/* 8047BCA4  48 00 00 08 */	b lbl_8047BCAC
lbl_8047BCA8:
/* 8047BCA8  38 00 00 04 */	li r0, 4
lbl_8047BCAC:
/* 8047BCAC  2C 00 00 01 */	cmpwi r0, 1
/* 8047BCB0  40 82 00 0C */	bne lbl_8047BCBC
/* 8047BCB4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8047BCB8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8047BCBC:
/* 8047BCBC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8047BCC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8047BCC4  D0 1E 12 8C */	stfs f0, 0x128c(r30)
/* 8047BCC8  38 61 00 70 */	addi r3, r1, 0x70
/* 8047BCCC  38 9E 06 18 */	addi r4, r30, 0x618
/* 8047BCD0  38 A1 00 C4 */	addi r5, r1, 0xc4
/* 8047BCD4  4B DE AE 60 */	b __mi__4cXyzCFRC3Vec
/* 8047BCD8  38 61 00 70 */	addi r3, r1, 0x70
/* 8047BCDC  4B EC B4 5C */	b PSVECSquareMag
/* 8047BCE0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8047BCE4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047BCE8  40 81 00 58 */	ble lbl_8047BD40
/* 8047BCEC  FC 00 08 34 */	frsqrte f0, f1
/* 8047BCF0  C8 9F 00 50 */	lfd f4, 0x50(r31)
/* 8047BCF4  FC 44 00 32 */	fmul f2, f4, f0
/* 8047BCF8  C8 7F 00 58 */	lfd f3, 0x58(r31)
/* 8047BCFC  FC 00 00 32 */	fmul f0, f0, f0
/* 8047BD00  FC 01 00 32 */	fmul f0, f1, f0
/* 8047BD04  FC 03 00 28 */	fsub f0, f3, f0
/* 8047BD08  FC 02 00 32 */	fmul f0, f2, f0
/* 8047BD0C  FC 44 00 32 */	fmul f2, f4, f0
/* 8047BD10  FC 00 00 32 */	fmul f0, f0, f0
/* 8047BD14  FC 01 00 32 */	fmul f0, f1, f0
/* 8047BD18  FC 03 00 28 */	fsub f0, f3, f0
/* 8047BD1C  FC 02 00 32 */	fmul f0, f2, f0
/* 8047BD20  FC 44 00 32 */	fmul f2, f4, f0
/* 8047BD24  FC 00 00 32 */	fmul f0, f0, f0
/* 8047BD28  FC 01 00 32 */	fmul f0, f1, f0
/* 8047BD2C  FC 03 00 28 */	fsub f0, f3, f0
/* 8047BD30  FC 02 00 32 */	fmul f0, f2, f0
/* 8047BD34  FC 21 00 32 */	fmul f1, f1, f0
/* 8047BD38  FC 20 08 18 */	frsp f1, f1
/* 8047BD3C  48 00 00 88 */	b lbl_8047BDC4
lbl_8047BD40:
/* 8047BD40  C8 1F 00 60 */	lfd f0, 0x60(r31)
/* 8047BD44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047BD48  40 80 00 10 */	bge lbl_8047BD58
/* 8047BD4C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8047BD50  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8047BD54  48 00 00 70 */	b lbl_8047BDC4
lbl_8047BD58:
/* 8047BD58  D0 21 00 08 */	stfs f1, 8(r1)
/* 8047BD5C  80 81 00 08 */	lwz r4, 8(r1)
/* 8047BD60  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8047BD64  3C 00 7F 80 */	lis r0, 0x7f80
/* 8047BD68  7C 03 00 00 */	cmpw r3, r0
/* 8047BD6C  41 82 00 14 */	beq lbl_8047BD80
/* 8047BD70  40 80 00 40 */	bge lbl_8047BDB0
/* 8047BD74  2C 03 00 00 */	cmpwi r3, 0
/* 8047BD78  41 82 00 20 */	beq lbl_8047BD98
/* 8047BD7C  48 00 00 34 */	b lbl_8047BDB0
lbl_8047BD80:
/* 8047BD80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8047BD84  41 82 00 0C */	beq lbl_8047BD90
/* 8047BD88  38 00 00 01 */	li r0, 1
/* 8047BD8C  48 00 00 28 */	b lbl_8047BDB4
lbl_8047BD90:
/* 8047BD90  38 00 00 02 */	li r0, 2
/* 8047BD94  48 00 00 20 */	b lbl_8047BDB4
lbl_8047BD98:
/* 8047BD98  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8047BD9C  41 82 00 0C */	beq lbl_8047BDA8
/* 8047BDA0  38 00 00 05 */	li r0, 5
/* 8047BDA4  48 00 00 10 */	b lbl_8047BDB4
lbl_8047BDA8:
/* 8047BDA8  38 00 00 03 */	li r0, 3
/* 8047BDAC  48 00 00 08 */	b lbl_8047BDB4
lbl_8047BDB0:
/* 8047BDB0  38 00 00 04 */	li r0, 4
lbl_8047BDB4:
/* 8047BDB4  2C 00 00 01 */	cmpwi r0, 1
/* 8047BDB8  40 82 00 0C */	bne lbl_8047BDC4
/* 8047BDBC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8047BDC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8047BDC4:
/* 8047BDC4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8047BDC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8047BDCC  D0 1E 14 E8 */	stfs f0, 0x14e8(r30)
lbl_8047BDD0:
/* 8047BDD0  38 61 00 64 */	addi r3, r1, 0x64
/* 8047BDD4  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8047BDD8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8047BDDC  4B DE AD 58 */	b __mi__4cXyzCFRC3Vec
/* 8047BDE0  38 61 00 58 */	addi r3, r1, 0x58
/* 8047BDE4  38 81 00 64 */	addi r4, r1, 0x64
/* 8047BDE8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8047BDEC  4B DE AD 98 */	b __ml__4cXyzCFf
/* 8047BDF0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8047BDF4  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8047BDF8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8047BDFC  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8047BE00  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8047BE04  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8047BE08  38 61 00 4C */	addi r3, r1, 0x4c
/* 8047BE0C  38 81 00 C4 */	addi r4, r1, 0xc4
/* 8047BE10  38 BE 06 18 */	addi r5, r30, 0x618
/* 8047BE14  4B DE AD 20 */	b __mi__4cXyzCFRC3Vec
/* 8047BE18  38 61 00 40 */	addi r3, r1, 0x40
/* 8047BE1C  38 81 00 4C */	addi r4, r1, 0x4c
/* 8047BE20  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8047BE24  4B DE AD 60 */	b __ml__4cXyzCFf
/* 8047BE28  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8047BE2C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8047BE30  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8047BE34  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8047BE38  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8047BE3C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8047BE40  3B 40 00 00 */	li r26, 0
/* 8047BE44  3B A0 00 00 */	li r29, 0
/* 8047BE48  CB FF 00 40 */	lfd f31, 0x40(r31)
/* 8047BE4C  3F 80 43 30 */	lis r28, 0x4330
lbl_8047BE50:
/* 8047BE50  80 7E 10 54 */	lwz r3, 0x1054(r30)
/* 8047BE54  7F 63 E8 2E */	lwzx r27, r3, r29
/* 8047BE58  3B 20 00 01 */	li r25, 1
/* 8047BE5C  3B 7B 00 0C */	addi r27, r27, 0xc
lbl_8047BE60:
/* 8047BE60  38 61 00 34 */	addi r3, r1, 0x34
/* 8047BE64  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8047BE68  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 8047BE6C  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8047BE70  93 81 00 D0 */	stw r28, 0xd0(r1)
/* 8047BE74  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 8047BE78  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8047BE7C  4B DE AD 08 */	b __ml__4cXyzCFf
/* 8047BE80  38 61 00 28 */	addi r3, r1, 0x28
/* 8047BE84  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8047BE88  38 A1 00 34 */	addi r5, r1, 0x34
/* 8047BE8C  4B DE AC 58 */	b __pl__4cXyzCFRC3Vec
/* 8047BE90  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8047BE94  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8047BE98  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8047BE9C  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8047BEA0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8047BEA4  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8047BEA8  3B 39 00 01 */	addi r25, r25, 1
/* 8047BEAC  2C 19 00 14 */	cmpwi r25, 0x14
/* 8047BEB0  3B 7B 00 0C */	addi r27, r27, 0xc
/* 8047BEB4  41 80 FF AC */	blt lbl_8047BE60
/* 8047BEB8  80 7E 12 B0 */	lwz r3, 0x12b0(r30)
/* 8047BEBC  7F 63 E8 2E */	lwzx r27, r3, r29
/* 8047BEC0  3B 20 00 01 */	li r25, 1
/* 8047BEC4  3B 7B 00 0C */	addi r27, r27, 0xc
lbl_8047BEC8:
/* 8047BEC8  38 61 00 1C */	addi r3, r1, 0x1c
/* 8047BECC  38 81 00 AC */	addi r4, r1, 0xac
/* 8047BED0  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 8047BED4  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8047BED8  93 81 00 D0 */	stw r28, 0xd0(r1)
/* 8047BEDC  C8 01 00 D0 */	lfd f0, 0xd0(r1)
/* 8047BEE0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8047BEE4  4B DE AC A0 */	b __ml__4cXyzCFf
/* 8047BEE8  38 61 00 10 */	addi r3, r1, 0x10
/* 8047BEEC  38 9E 06 18 */	addi r4, r30, 0x618
/* 8047BEF0  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8047BEF4  4B DE AB F0 */	b __pl__4cXyzCFRC3Vec
/* 8047BEF8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8047BEFC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8047BF00  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8047BF04  D0 1B 00 04 */	stfs f0, 4(r27)
/* 8047BF08  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8047BF0C  D0 1B 00 08 */	stfs f0, 8(r27)
/* 8047BF10  3B 39 00 01 */	addi r25, r25, 1
/* 8047BF14  2C 19 00 14 */	cmpwi r25, 0x14
/* 8047BF18  3B 7B 00 0C */	addi r27, r27, 0xc
/* 8047BF1C  41 80 FF AC */	blt lbl_8047BEC8
/* 8047BF20  3B 5A 00 01 */	addi r26, r26, 1
/* 8047BF24  2C 1A 00 06 */	cmpwi r26, 6
/* 8047BF28  3B BD 00 20 */	addi r29, r29, 0x20
/* 8047BF2C  41 80 FF 24 */	blt lbl_8047BE50
/* 8047BF30  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8047BF34  D0 1E 12 94 */	stfs f0, 0x1294(r30)
/* 8047BF38  D0 1E 14 F0 */	stfs f0, 0x14f0(r30)
/* 8047BF3C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8047BF40  54 00 00 3E */	slwi r0, r0, 0
/* 8047BF44  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 8047BF48  38 00 00 00 */	li r0, 0
/* 8047BF4C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8047BF50  3C 60 80 48 */	lis r3, l_HIO@ha
/* 8047BF54  38 63 D9 D8 */	addi r3, r3, l_HIO@l
/* 8047BF58  A8 03 00 10 */	lha r0, 0x10(r3)
/* 8047BF5C  2C 00 00 00 */	cmpwi r0, 0
/* 8047BF60  40 82 00 0C */	bne lbl_8047BF6C
/* 8047BF64  38 00 00 01 */	li r0, 1
/* 8047BF68  98 1E 06 38 */	stb r0, 0x638(r30)
lbl_8047BF6C:
/* 8047BF6C  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8047BF70  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8047BF74  39 61 01 00 */	addi r11, r1, 0x100
/* 8047BF78  4B EE 62 A0 */	b _restgpr_25
/* 8047BF7C  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8047BF80  7C 08 03 A6 */	mtlr r0
/* 8047BF84  38 21 01 10 */	addi r1, r1, 0x110
/* 8047BF88  4E 80 00 20 */	blr 

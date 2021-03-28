lbl_8081BC10:
/* 8081BC10  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8081BC14  7C 08 02 A6 */	mflr r0
/* 8081BC18  90 01 00 84 */	stw r0, 0x84(r1)
/* 8081BC1C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8081BC20  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8081BC24  39 61 00 70 */	addi r11, r1, 0x70
/* 8081BC28  4B B4 65 A4 */	b _savegpr_25
/* 8081BC2C  7C 7B 1B 78 */	mr r27, r3
/* 8081BC30  3C 60 80 82 */	lis r3, lit_3791@ha
/* 8081BC34  3B C3 18 AC */	addi r30, r3, lit_3791@l
/* 8081BC38  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8081BC3C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8081BC40  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8081BC44  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8081BC48  38 00 FF FF */	li r0, -1
/* 8081BC4C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8081BC50  90 01 00 30 */	stw r0, 0x30(r1)
/* 8081BC54  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8081BC58  3B 80 00 00 */	li r28, 0
/* 8081BC5C  3B 40 00 00 */	li r26, 0
/* 8081BC60  3C 60 80 82 */	lis r3, data_80821F38@ha
/* 8081BC64  3B E3 1F 38 */	addi r31, r3, data_80821F38@l
/* 8081BC68  C3 FE 00 18 */	lfs f31, 0x18(r30)
lbl_8081BC6C:
/* 8081BC6C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8081BC70  7F 3F D2 14 */	add r25, r31, r26
/* 8081BC74  7F 24 CB 78 */	mr r4, r25
/* 8081BC78  4B A5 4F 8C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8081BC7C  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 8081BC80  3C 84 00 01 */	addis r4, r4, 1
/* 8081BC84  38 04 80 00 */	addi r0, r4, -32768
/* 8081BC88  7C 03 00 50 */	subf r0, r3, r0
/* 8081BC8C  7C 03 07 34 */	extsh r3, r0
/* 8081BC90  4B B4 94 40 */	b abs
/* 8081BC94  7C 7D 07 34 */	extsh r29, r3
/* 8081BC98  C0 3B 04 D8 */	lfs f1, 0x4d8(r27)
/* 8081BC9C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8081BCA0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8081BCA4  D3 E1 00 18 */	stfs f31, 0x18(r1)
/* 8081BCA8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8081BCAC  C0 19 00 00 */	lfs f0, 0(r25)
/* 8081BCB0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8081BCB4  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 8081BCB8  C0 19 00 08 */	lfs f0, 8(r25)
/* 8081BCBC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8081BCC0  38 61 00 14 */	addi r3, r1, 0x14
/* 8081BCC4  38 81 00 20 */	addi r4, r1, 0x20
/* 8081BCC8  4B B2 B6 D4 */	b PSVECSquareDistance
/* 8081BCCC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8081BCD0  40 81 00 58 */	ble lbl_8081BD28
/* 8081BCD4  FC 00 08 34 */	frsqrte f0, f1
/* 8081BCD8  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081BCDC  FC 44 00 32 */	fmul f2, f4, f0
/* 8081BCE0  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081BCE4  FC 00 00 32 */	fmul f0, f0, f0
/* 8081BCE8  FC 01 00 32 */	fmul f0, f1, f0
/* 8081BCEC  FC 03 00 28 */	fsub f0, f3, f0
/* 8081BCF0  FC 02 00 32 */	fmul f0, f2, f0
/* 8081BCF4  FC 44 00 32 */	fmul f2, f4, f0
/* 8081BCF8  FC 00 00 32 */	fmul f0, f0, f0
/* 8081BCFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8081BD00  FC 03 00 28 */	fsub f0, f3, f0
/* 8081BD04  FC 02 00 32 */	fmul f0, f2, f0
/* 8081BD08  FC 44 00 32 */	fmul f2, f4, f0
/* 8081BD0C  FC 00 00 32 */	fmul f0, f0, f0
/* 8081BD10  FC 01 00 32 */	fmul f0, f1, f0
/* 8081BD14  FC 03 00 28 */	fsub f0, f3, f0
/* 8081BD18  FC 02 00 32 */	fmul f0, f2, f0
/* 8081BD1C  FC 21 00 32 */	fmul f1, f1, f0
/* 8081BD20  FC 20 08 18 */	frsp f1, f1
/* 8081BD24  48 00 00 88 */	b lbl_8081BDAC
lbl_8081BD28:
/* 8081BD28  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081BD2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081BD30  40 80 00 10 */	bge lbl_8081BD40
/* 8081BD34  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081BD38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8081BD3C  48 00 00 70 */	b lbl_8081BDAC
lbl_8081BD40:
/* 8081BD40  D0 21 00 08 */	stfs f1, 8(r1)
/* 8081BD44  80 81 00 08 */	lwz r4, 8(r1)
/* 8081BD48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081BD4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081BD50  7C 03 00 00 */	cmpw r3, r0
/* 8081BD54  41 82 00 14 */	beq lbl_8081BD68
/* 8081BD58  40 80 00 40 */	bge lbl_8081BD98
/* 8081BD5C  2C 03 00 00 */	cmpwi r3, 0
/* 8081BD60  41 82 00 20 */	beq lbl_8081BD80
/* 8081BD64  48 00 00 34 */	b lbl_8081BD98
lbl_8081BD68:
/* 8081BD68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081BD6C  41 82 00 0C */	beq lbl_8081BD78
/* 8081BD70  38 00 00 01 */	li r0, 1
/* 8081BD74  48 00 00 28 */	b lbl_8081BD9C
lbl_8081BD78:
/* 8081BD78  38 00 00 02 */	li r0, 2
/* 8081BD7C  48 00 00 20 */	b lbl_8081BD9C
lbl_8081BD80:
/* 8081BD80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081BD84  41 82 00 0C */	beq lbl_8081BD90
/* 8081BD88  38 00 00 05 */	li r0, 5
/* 8081BD8C  48 00 00 10 */	b lbl_8081BD9C
lbl_8081BD90:
/* 8081BD90  38 00 00 03 */	li r0, 3
/* 8081BD94  48 00 00 08 */	b lbl_8081BD9C
lbl_8081BD98:
/* 8081BD98  38 00 00 04 */	li r0, 4
lbl_8081BD9C:
/* 8081BD9C  2C 00 00 01 */	cmpwi r0, 1
/* 8081BDA0  40 82 00 0C */	bne lbl_8081BDAC
/* 8081BDA4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081BDA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8081BDAC:
/* 8081BDAC  2C 1D 30 00 */	cmpwi r29, 0x3000
/* 8081BDB0  40 80 00 94 */	bge lbl_8081BE44
/* 8081BDB4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 8081BDB8  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8081BDBC  40 80 00 40 */	bge lbl_8081BDFC
/* 8081BDC0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8081BDC4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8081BDC8  A8 01 00 0E */	lha r0, 0xe(r1)
/* 8081BDCC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8081BDD0  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8081BDD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8081BDD8  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8081BDDC  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8081BDE0  B0 01 00 0E */	sth r0, 0xe(r1)
/* 8081BDE4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8081BDE8  90 01 00 30 */	stw r0, 0x30(r1)
/* 8081BDEC  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8081BDF0  B3 A1 00 0E */	sth r29, 0xe(r1)
/* 8081BDF4  93 81 00 2C */	stw r28, 0x2c(r1)
/* 8081BDF8  48 00 00 4C */	b lbl_8081BE44
lbl_8081BDFC:
/* 8081BDFC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8081BE00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081BE04  40 80 00 28 */	bge lbl_8081BE2C
/* 8081BE08  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8081BE0C  A8 01 00 0E */	lha r0, 0xe(r1)
/* 8081BE10  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8081BE14  80 01 00 30 */	lwz r0, 0x30(r1)
/* 8081BE18  90 01 00 34 */	stw r0, 0x34(r1)
/* 8081BE1C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 8081BE20  B3 A1 00 0E */	sth r29, 0xe(r1)
/* 8081BE24  93 81 00 30 */	stw r28, 0x30(r1)
/* 8081BE28  48 00 00 1C */	b lbl_8081BE44
lbl_8081BE2C:
/* 8081BE2C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8081BE30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081BE34  40 80 00 10 */	bge lbl_8081BE44
/* 8081BE38  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8081BE3C  B3 A1 00 10 */	sth r29, 0x10(r1)
/* 8081BE40  93 81 00 34 */	stw r28, 0x34(r1)
lbl_8081BE44:
/* 8081BE44  3B 9C 00 01 */	addi r28, r28, 1
/* 8081BE48  2C 1C 00 0F */	cmpwi r28, 0xf
/* 8081BE4C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8081BE50  41 80 FE 1C */	blt lbl_8081BC6C
/* 8081BE54  38 60 00 00 */	li r3, 0
/* 8081BE58  38 80 00 00 */	li r4, 0
/* 8081BE5C  38 E1 00 2C */	addi r7, r1, 0x2c
/* 8081BE60  38 C1 00 38 */	addi r6, r1, 0x38
/* 8081BE64  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8081BE68  38 A1 00 0C */	addi r5, r1, 0xc
/* 8081BE6C  38 00 00 03 */	li r0, 3
/* 8081BE70  7C 09 03 A6 */	mtctr r0
lbl_8081BE74:
/* 8081BE74  7D 07 20 2E */	lwzx r8, r7, r4
/* 8081BE78  2C 08 FF FF */	cmpwi r8, -1
/* 8081BE7C  41 82 00 24 */	beq lbl_8081BEA0
/* 8081BE80  7C 26 24 2E */	lfsx f1, r6, r4
/* 8081BE84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081BE88  40 80 00 18 */	bge lbl_8081BEA0
/* 8081BE8C  7C 05 1A AE */	lhax r0, r5, r3
/* 8081BE90  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8081BE94  40 80 00 0C */	bge lbl_8081BEA0
/* 8081BE98  99 1B 07 11 */	stb r8, 0x711(r27)
/* 8081BE9C  48 00 00 2C */	b lbl_8081BEC8
lbl_8081BEA0:
/* 8081BEA0  38 63 00 02 */	addi r3, r3, 2
/* 8081BEA4  38 84 00 04 */	addi r4, r4, 4
/* 8081BEA8  42 00 FF CC */	bdnz lbl_8081BE74
/* 8081BEAC  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8081BEB0  2C 00 FF FF */	cmpwi r0, -1
/* 8081BEB4  41 82 00 0C */	beq lbl_8081BEC0
/* 8081BEB8  98 1B 07 11 */	stb r0, 0x711(r27)
/* 8081BEBC  48 00 00 0C */	b lbl_8081BEC8
lbl_8081BEC0:
/* 8081BEC0  38 00 00 00 */	li r0, 0
/* 8081BEC4  98 1B 07 11 */	stb r0, 0x711(r27)
lbl_8081BEC8:
/* 8081BEC8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8081BECC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8081BED0  39 61 00 70 */	addi r11, r1, 0x70
/* 8081BED4  4B B4 63 44 */	b _restgpr_25
/* 8081BED8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8081BEDC  7C 08 03 A6 */	mtlr r0
/* 8081BEE0  38 21 00 80 */	addi r1, r1, 0x80
/* 8081BEE4  4E 80 00 20 */	blr 

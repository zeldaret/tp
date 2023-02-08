lbl_8052BB30:
/* 8052BB30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8052BB34  7C 08 02 A6 */	mflr r0
/* 8052BB38  90 01 00 64 */	stw r0, 0x64(r1)
/* 8052BB3C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8052BB40  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8052BB44  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8052BB48  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8052BB4C  7C 7E 1B 78 */	mr r30, r3
/* 8052BB50  3C 60 80 53 */	lis r3, lit_3679@ha /* 0x80536168@ha */
/* 8052BB54  3B E3 61 68 */	addi r31, r3, lit_3679@l /* 0x80536168@l */
/* 8052BB58  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 8052BB5C  2C 00 00 01 */	cmpwi r0, 1
/* 8052BB60  41 82 01 0C */	beq lbl_8052BC6C
/* 8052BB64  40 80 00 10 */	bge lbl_8052BB74
/* 8052BB68  2C 00 00 00 */	cmpwi r0, 0
/* 8052BB6C  40 80 00 14 */	bge lbl_8052BB80
/* 8052BB70  48 00 03 94 */	b lbl_8052BF04
lbl_8052BB74:
/* 8052BB74  2C 00 00 03 */	cmpwi r0, 3
/* 8052BB78  40 80 03 8C */	bge lbl_8052BF04
/* 8052BB7C  48 00 02 74 */	b lbl_8052BDF0
lbl_8052BB80:
/* 8052BB80  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8052BB84  4B D3 BE 09 */	bl cM_rndFX__Ff
/* 8052BB88  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8052BB8C  EC 00 08 2A */	fadds f0, f0, f1
/* 8052BB90  D0 1E 05 C0 */	stfs f0, 0x5c0(r30)
/* 8052BB94  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8052BB98  4B D3 BD F5 */	bl cM_rndFX__Ff
/* 8052BB9C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8052BBA0  EC 00 08 2A */	fadds f0, f0, f1
/* 8052BBA4  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 8052BBA8  A8 1E 06 28 */	lha r0, 0x628(r30)
/* 8052BBAC  2C 00 00 00 */	cmpwi r0, 0
/* 8052BBB0  40 82 00 18 */	bne lbl_8052BBC8
/* 8052BBB4  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8052BBB8  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8052BBBC  38 00 00 02 */	li r0, 2
/* 8052BBC0  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052BBC4  48 00 00 14 */	b lbl_8052BBD8
lbl_8052BBC8:
/* 8052BBC8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8052BBCC  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
/* 8052BBD0  38 00 00 01 */	li r0, 1
/* 8052BBD4  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
lbl_8052BBD8:
/* 8052BBD8  7F C3 F3 78 */	mr r3, r30
/* 8052BBDC  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052BBE0  4B FF FD ED */	bl get_ground_y__FP13mg_fish_classP4cXyz
/* 8052BBE4  D0 3E 05 DC */	stfs f1, 0x5dc(r30)
/* 8052BBE8  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8052BBEC  C3 FE 05 DC */	lfs f31, 0x5dc(r30)
/* 8052BBF0  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8052BBF4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052BBF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052BBFC  40 81 00 64 */	ble lbl_8052BC60
/* 8052BC00  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8052BC04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052BC08  40 80 00 58 */	bge lbl_8052BC60
/* 8052BC0C  A8 1E 05 B8 */	lha r0, 0x5b8(r30)
/* 8052BC10  2C 00 00 01 */	cmpwi r0, 1
/* 8052BC14  40 82 00 28 */	bne lbl_8052BC3C
/* 8052BC18  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 8052BC1C  4B D3 BD 71 */	bl cM_rndFX__Ff
/* 8052BC20  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8052BC24  EC 20 08 2A */	fadds f1, f0, f1
/* 8052BC28  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 8052BC2C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8052BC30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052BC34  EC 1F 00 2A */	fadds f0, f31, f0
/* 8052BC38  D0 1E 05 C4 */	stfs f0, 0x5c4(r30)
lbl_8052BC3C:
/* 8052BC3C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8052BC40  4B D3 BD 15 */	bl cM_rndF__Ff
/* 8052BC44  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8052BC48  EC 00 08 2A */	fadds f0, f0, f1
/* 8052BC4C  FC 00 00 1E */	fctiwz f0, f0
/* 8052BC50  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052BC54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052BC58  B0 1E 06 24 */	sth r0, 0x624(r30)
/* 8052BC5C  48 00 00 10 */	b lbl_8052BC6C
lbl_8052BC60:
/* 8052BC60  38 00 00 00 */	li r0, 0
/* 8052BC64  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052BC68  48 00 02 9C */	b lbl_8052BF04
lbl_8052BC6C:
/* 8052BC6C  38 61 00 28 */	addi r3, r1, 0x28
/* 8052BC70  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052BC74  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052BC78  4B D3 AE BD */	bl __mi__4cXyzCFRC3Vec
/* 8052BC7C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 8052BC80  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8052BC84  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8052BC88  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8052BC8C  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8052BC90  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8052BC94  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8052BC98  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8052BC9C  40 82 00 44 */	bne lbl_8052BCE0
/* 8052BCA0  4B D3 B9 D5 */	bl cM_atan2s__Fff
/* 8052BCA4  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8052BCA8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8052BCAC  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052BCB0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8052BCB4  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052BCB8  EC 41 00 2A */	fadds f2, f1, f0
/* 8052BCBC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052BCC0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052BCC4  40 81 00 0C */	ble lbl_8052BCD0
/* 8052BCC8  FC 00 10 34 */	frsqrte f0, f2
/* 8052BCCC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052BCD0:
/* 8052BCD0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8052BCD4  4B D3 B9 A1 */	bl cM_atan2s__Fff
/* 8052BCD8  7C 03 00 D0 */	neg r0, r3
/* 8052BCDC  B0 1E 05 CE */	sth r0, 0x5ce(r30)
lbl_8052BCE0:
/* 8052BCE0  A8 1E 06 24 */	lha r0, 0x624(r30)
/* 8052BCE4  2C 00 00 00 */	cmpwi r0, 0
/* 8052BCE8  41 82 00 FC */	beq lbl_8052BDE4
/* 8052BCEC  38 61 00 34 */	addi r3, r1, 0x34
/* 8052BCF0  4B E1 B4 49 */	bl PSVECSquareMag
/* 8052BCF4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052BCF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052BCFC  40 81 00 58 */	ble lbl_8052BD54
/* 8052BD00  FC 00 08 34 */	frsqrte f0, f1
/* 8052BD04  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8052BD08  FC 44 00 32 */	fmul f2, f4, f0
/* 8052BD0C  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8052BD10  FC 00 00 32 */	fmul f0, f0, f0
/* 8052BD14  FC 01 00 32 */	fmul f0, f1, f0
/* 8052BD18  FC 03 00 28 */	fsub f0, f3, f0
/* 8052BD1C  FC 02 00 32 */	fmul f0, f2, f0
/* 8052BD20  FC 44 00 32 */	fmul f2, f4, f0
/* 8052BD24  FC 00 00 32 */	fmul f0, f0, f0
/* 8052BD28  FC 01 00 32 */	fmul f0, f1, f0
/* 8052BD2C  FC 03 00 28 */	fsub f0, f3, f0
/* 8052BD30  FC 02 00 32 */	fmul f0, f2, f0
/* 8052BD34  FC 44 00 32 */	fmul f2, f4, f0
/* 8052BD38  FC 00 00 32 */	fmul f0, f0, f0
/* 8052BD3C  FC 01 00 32 */	fmul f0, f1, f0
/* 8052BD40  FC 03 00 28 */	fsub f0, f3, f0
/* 8052BD44  FC 02 00 32 */	fmul f0, f2, f0
/* 8052BD48  FC 21 00 32 */	fmul f1, f1, f0
/* 8052BD4C  FC 20 08 18 */	frsp f1, f1
/* 8052BD50  48 00 00 88 */	b lbl_8052BDD8
lbl_8052BD54:
/* 8052BD54  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8052BD58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052BD5C  40 80 00 10 */	bge lbl_8052BD6C
/* 8052BD60  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052BD64  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8052BD68  48 00 00 70 */	b lbl_8052BDD8
lbl_8052BD6C:
/* 8052BD6C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052BD70  80 81 00 08 */	lwz r4, 8(r1)
/* 8052BD74  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052BD78  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052BD7C  7C 03 00 00 */	cmpw r3, r0
/* 8052BD80  41 82 00 14 */	beq lbl_8052BD94
/* 8052BD84  40 80 00 40 */	bge lbl_8052BDC4
/* 8052BD88  2C 03 00 00 */	cmpwi r3, 0
/* 8052BD8C  41 82 00 20 */	beq lbl_8052BDAC
/* 8052BD90  48 00 00 34 */	b lbl_8052BDC4
lbl_8052BD94:
/* 8052BD94  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052BD98  41 82 00 0C */	beq lbl_8052BDA4
/* 8052BD9C  38 00 00 01 */	li r0, 1
/* 8052BDA0  48 00 00 28 */	b lbl_8052BDC8
lbl_8052BDA4:
/* 8052BDA4  38 00 00 02 */	li r0, 2
/* 8052BDA8  48 00 00 20 */	b lbl_8052BDC8
lbl_8052BDAC:
/* 8052BDAC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052BDB0  41 82 00 0C */	beq lbl_8052BDBC
/* 8052BDB4  38 00 00 05 */	li r0, 5
/* 8052BDB8  48 00 00 10 */	b lbl_8052BDC8
lbl_8052BDBC:
/* 8052BDBC  38 00 00 03 */	li r0, 3
/* 8052BDC0  48 00 00 08 */	b lbl_8052BDC8
lbl_8052BDC4:
/* 8052BDC4  38 00 00 04 */	li r0, 4
lbl_8052BDC8:
/* 8052BDC8  2C 00 00 01 */	cmpwi r0, 1
/* 8052BDCC  40 82 00 0C */	bne lbl_8052BDD8
/* 8052BDD0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8052BDD4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8052BDD8:
/* 8052BDD8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8052BDDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052BDE0  40 80 01 24 */	bge lbl_8052BF04
lbl_8052BDE4:
/* 8052BDE4  38 00 00 00 */	li r0, 0
/* 8052BDE8  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052BDEC  48 00 01 18 */	b lbl_8052BF04
lbl_8052BDF0:
/* 8052BDF0  38 61 00 1C */	addi r3, r1, 0x1c
/* 8052BDF4  38 9E 05 C0 */	addi r4, r30, 0x5c0
/* 8052BDF8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8052BDFC  4B D3 AD 39 */	bl __mi__4cXyzCFRC3Vec
/* 8052BE00  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8052BE04  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8052BE08  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8052BE0C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8052BE10  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 8052BE14  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8052BE18  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 8052BE1C  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 8052BE20  40 82 00 44 */	bne lbl_8052BE64
/* 8052BE24  4B D3 B8 51 */	bl cM_atan2s__Fff
/* 8052BE28  B0 7E 05 CC */	sth r3, 0x5cc(r30)
/* 8052BE2C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8052BE30  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052BE34  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8052BE38  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052BE3C  EC 41 00 2A */	fadds f2, f1, f0
/* 8052BE40  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052BE44  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052BE48  40 81 00 0C */	ble lbl_8052BE54
/* 8052BE4C  FC 00 10 34 */	frsqrte f0, f2
/* 8052BE50  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052BE54:
/* 8052BE54  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8052BE58  4B D3 B8 1D */	bl cM_atan2s__Fff
/* 8052BE5C  7C 03 00 D0 */	neg r0, r3
/* 8052BE60  B0 1E 05 CE */	sth r0, 0x5ce(r30)
lbl_8052BE64:
/* 8052BE64  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8052BE68  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 8052BE6C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8052BE70  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052BE74  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052BE78  40 81 00 8C */	ble lbl_8052BF04
/* 8052BE7C  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 8052BE80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8052BE84  C0 1E 06 3C */	lfs f0, 0x63c(r30)
/* 8052BE88  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8052BE8C  C0 1E 06 40 */	lfs f0, 0x640(r30)
/* 8052BE90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8052BE94  7F C3 F3 78 */	mr r3, r30
/* 8052BE98  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8052BE9C  38 81 00 10 */	addi r4, r1, 0x10
/* 8052BEA0  4B FF DF E9 */	bl sibuki_set__FP13mg_fish_classf4cXyz
/* 8052BEA4  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020087@ha */
/* 8052BEA8  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00020087@l */
/* 8052BEAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052BEB0  38 7E 08 00 */	addi r3, r30, 0x800
/* 8052BEB4  38 81 00 0C */	addi r4, r1, 0xc
/* 8052BEB8  38 A0 00 00 */	li r5, 0
/* 8052BEBC  38 C0 FF FF */	li r6, -1
/* 8052BEC0  81 9E 08 00 */	lwz r12, 0x800(r30)
/* 8052BEC4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8052BEC8  7D 89 03 A6 */	mtctr r12
/* 8052BECC  4E 80 04 21 */	bctrl 
/* 8052BED0  38 00 20 00 */	li r0, 0x2000
/* 8052BED4  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 8052BED8  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 8052BEDC  38 00 00 00 */	li r0, 0
/* 8052BEE0  B0 1E 05 B8 */	sth r0, 0x5b8(r30)
/* 8052BEE4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8052BEE8  4B D3 BA 6D */	bl cM_rndF__Ff
/* 8052BEEC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8052BEF0  EC 00 08 2A */	fadds f0, f0, f1
/* 8052BEF4  FC 00 00 1E */	fctiwz f0, f0
/* 8052BEF8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052BEFC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052BF00  B0 1E 06 28 */	sth r0, 0x628(r30)
lbl_8052BF04:
/* 8052BF04  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8052BF08  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8052BF0C  FC 40 08 90 */	fmr f2, f1
/* 8052BF10  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8052BF14  4B D4 3B 29 */	bl cLib_addCalc2__FPffff
/* 8052BF18  38 00 04 00 */	li r0, 0x400
/* 8052BF1C  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 8052BF20  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8052BF24  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 8052BF28  38 A0 00 02 */	li r5, 2
/* 8052BF2C  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052BF30  4B D4 46 D9 */	bl cLib_addCalcAngleS2__FPssss
/* 8052BF34  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 8052BF38  A8 9E 05 CE */	lha r4, 0x5ce(r30)
/* 8052BF3C  38 A0 00 02 */	li r5, 2
/* 8052BF40  A8 DE 05 D0 */	lha r6, 0x5d0(r30)
/* 8052BF44  4B D4 46 C5 */	bl cLib_addCalcAngleS2__FPssss
/* 8052BF48  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8052BF4C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8052BF50  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8052BF54  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8052BF58  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8052BF5C  7C 08 03 A6 */	mtlr r0
/* 8052BF60  38 21 00 60 */	addi r1, r1, 0x60
/* 8052BF64  4E 80 00 20 */	blr 

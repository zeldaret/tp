lbl_8069BC4C:
/* 8069BC4C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8069BC50  7C 08 02 A6 */	mflr r0
/* 8069BC54  90 01 00 84 */	stw r0, 0x84(r1)
/* 8069BC58  39 61 00 80 */	addi r11, r1, 0x80
/* 8069BC5C  4B CC 65 80 */	b _savegpr_29
/* 8069BC60  7C 7E 1B 78 */	mr r30, r3
/* 8069BC64  3C 60 80 6A */	lis r3, lit_3902@ha
/* 8069BC68  3B E3 19 0C */	addi r31, r3, lit_3902@l
/* 8069BC6C  A8 1E 06 68 */	lha r0, 0x668(r30)
/* 8069BC70  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8069BC74  40 82 00 40 */	bne lbl_8069BCB4
/* 8069BC78  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069BC7C  4B BC BC D8 */	b cM_rndF__Ff
/* 8069BC80  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 8069BC84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069BC88  40 80 00 2C */	bge lbl_8069BCB4
/* 8069BC8C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070087@ha */
/* 8069BC90  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00070087@l */
/* 8069BC94  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069BC98  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069BC9C  38 81 00 0C */	addi r4, r1, 0xc
/* 8069BCA0  38 A0 FF FF */	li r5, -1
/* 8069BCA4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8069BCA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069BCAC  7D 89 03 A6 */	mtctr r12
/* 8069BCB0  4E 80 04 21 */	bctrl 
lbl_8069BCB4:
/* 8069BCB4  A8 1E 06 6C */	lha r0, 0x66c(r30)
/* 8069BCB8  2C 00 00 00 */	cmpwi r0, 0
/* 8069BCBC  41 82 00 FC */	beq lbl_8069BDB8
/* 8069BCC0  40 80 00 10 */	bge lbl_8069BCD0
/* 8069BCC4  2C 00 FF FF */	cmpwi r0, -1
/* 8069BCC8  40 80 00 14 */	bge lbl_8069BCDC
/* 8069BCCC  48 00 03 EC */	b lbl_8069C0B8
lbl_8069BCD0:
/* 8069BCD0  2C 00 00 02 */	cmpwi r0, 2
/* 8069BCD4  40 80 03 E4 */	bge lbl_8069C0B8
/* 8069BCD8  48 00 01 B4 */	b lbl_8069BE8C
lbl_8069BCDC:
/* 8069BCDC  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8069BCE0  38 80 00 01 */	li r4, 1
/* 8069BCE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8069BCE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069BCEC  40 82 00 18 */	bne lbl_8069BD04
/* 8069BCF0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8069BCF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8069BCF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8069BCFC  41 82 00 08 */	beq lbl_8069BD04
/* 8069BD00  38 80 00 00 */	li r4, 0
lbl_8069BD04:
/* 8069BD04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8069BD08  41 82 00 10 */	beq lbl_8069BD18
/* 8069BD0C  38 00 00 00 */	li r0, 0
/* 8069BD10  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069BD14  48 00 00 A4 */	b lbl_8069BDB8
lbl_8069BD18:
/* 8069BD18  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069BD1C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8069BD20  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8069BD24  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8069BD28  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 8069BD2C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8069BD30  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8069BD34  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8069BD38  80 63 00 00 */	lwz r3, 0(r3)
/* 8069BD3C  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 8069BD40  4B 97 06 9C */	b mDoMtx_YrotS__FPA4_fs
/* 8069BD44  38 61 00 40 */	addi r3, r1, 0x40
/* 8069BD48  38 81 00 34 */	addi r4, r1, 0x34
/* 8069BD4C  4B BD 51 A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8069BD50  38 61 00 1C */	addi r3, r1, 0x1c
/* 8069BD54  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8069BD58  38 A1 00 34 */	addi r5, r1, 0x34
/* 8069BD5C  4B BC AD 88 */	b __pl__4cXyzCFRC3Vec
/* 8069BD60  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8069BD64  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8069BD68  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8069BD6C  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8069BD70  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8069BD74  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8069BD78  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8069BD7C  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 8069BD80  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8069BD84  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 8069BD88  4B BD 3C B4 */	b cLib_addCalc2__FPffff
/* 8069BD8C  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8069BD90  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 8069BD94  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8069BD98  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 8069BD9C  4B BD 3C A0 */	b cLib_addCalc2__FPffff
/* 8069BDA0  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8069BDA4  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 8069BDA8  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 8069BDAC  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 8069BDB0  4B BD 3C 8C */	b cLib_addCalc2__FPffff
/* 8069BDB4  48 00 03 04 */	b lbl_8069C0B8
lbl_8069BDB8:
/* 8069BDB8  7F C3 F3 78 */	mr r3, r30
/* 8069BDBC  38 80 00 12 */	li r4, 0x12
/* 8069BDC0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8069BDC4  38 A0 00 02 */	li r5, 2
/* 8069BDC8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069BDCC  4B FF ED 69 */	bl anm_init__FP10e_db_classifUcf
/* 8069BDD0  7F C3 F3 78 */	mr r3, r30
/* 8069BDD4  38 80 00 14 */	li r4, 0x14
/* 8069BDD8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8069BDDC  38 A0 00 02 */	li r5, 2
/* 8069BDE0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069BDE4  4B FF ED FD */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069BDE8  38 00 00 01 */	li r0, 1
/* 8069BDEC  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069BDF0  88 1E 05 B6 */	lbz r0, 0x5b6(r30)
/* 8069BDF4  28 00 00 01 */	cmplwi r0, 1
/* 8069BDF8  40 82 00 28 */	bne lbl_8069BE20
/* 8069BDFC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8069BE00  4B BC BB 54 */	b cM_rndF__Ff
/* 8069BE04  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8069BE08  EC 00 08 2A */	fadds f0, f0, f1
/* 8069BE0C  FC 00 00 1E */	fctiwz f0, f0
/* 8069BE10  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8069BE14  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8069BE18  B0 1E 06 96 */	sth r0, 0x696(r30)
/* 8069BE1C  48 00 00 64 */	b lbl_8069BE80
lbl_8069BE20:
/* 8069BE20  3C 60 80 6A */	lis r3, l_HIO@ha
/* 8069BE24  3B A3 1D A8 */	addi r29, r3, l_HIO@l
/* 8069BE28  A8 1D 00 16 */	lha r0, 0x16(r29)
/* 8069BE2C  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 8069BE30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8069BE34  90 01 00 5C */	stw r0, 0x5c(r1)
/* 8069BE38  3C 00 43 30 */	lis r0, 0x4330
/* 8069BE3C  90 01 00 58 */	stw r0, 0x58(r1)
/* 8069BE40  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 8069BE44  EC 20 08 28 */	fsubs f1, f0, f1
/* 8069BE48  4B BC BB 0C */	b cM_rndF__Ff
/* 8069BE4C  A8 1D 00 16 */	lha r0, 0x16(r29)
/* 8069BE50  C8 5F 00 A0 */	lfd f2, 0xa0(r31)
/* 8069BE54  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8069BE58  90 01 00 64 */	stw r0, 0x64(r1)
/* 8069BE5C  3C 00 43 30 */	lis r0, 0x4330
/* 8069BE60  90 01 00 60 */	stw r0, 0x60(r1)
/* 8069BE64  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 8069BE68  EC 00 10 28 */	fsubs f0, f0, f2
/* 8069BE6C  EC 00 08 2A */	fadds f0, f0, f1
/* 8069BE70  FC 00 00 1E */	fctiwz f0, f0
/* 8069BE74  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8069BE78  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8069BE7C  B0 1E 06 96 */	sth r0, 0x696(r30)
lbl_8069BE80:
/* 8069BE80  38 00 00 00 */	li r0, 0
/* 8069BE84  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8069BE88  48 00 02 30 */	b lbl_8069C0B8
lbl_8069BE8C:
/* 8069BE8C  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 8069BE90  2C 00 00 00 */	cmpwi r0, 0
/* 8069BE94  40 82 00 9C */	bne lbl_8069BF30
/* 8069BE98  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 8069BE9C  4B BC BA B8 */	b cM_rndF__Ff
/* 8069BEA0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8069BEA4  EC 00 08 2A */	fadds f0, f0, f1
/* 8069BEA8  FC 00 00 1E */	fctiwz f0, f0
/* 8069BEAC  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8069BEB0  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8069BEB4  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 8069BEB8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8069BEBC  4B BC BA D0 */	b cM_rndFX__Ff
/* 8069BEC0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8069BEC4  EC 00 08 2A */	fadds f0, f0, f1
/* 8069BEC8  D0 1E 06 74 */	stfs f0, 0x674(r30)
/* 8069BECC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8069BED0  4B BC BA BC */	b cM_rndFX__Ff
/* 8069BED4  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8069BED8  EC 00 08 2A */	fadds f0, f0, f1
/* 8069BEDC  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 8069BEE0  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069BEE4  7C 00 07 75 */	extsb. r0, r0
/* 8069BEE8  41 82 00 24 */	beq lbl_8069BF0C
/* 8069BEEC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8069BEF0  4B BC BA 9C */	b cM_rndFX__Ff
/* 8069BEF4  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8069BEF8  EC 20 08 2A */	fadds f1, f0, f1
/* 8069BEFC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8069BF00  EC 00 08 28 */	fsubs f0, f0, f1
/* 8069BF04  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 8069BF08  48 00 00 20 */	b lbl_8069BF28
lbl_8069BF0C:
/* 8069BF0C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 8069BF10  4B BC BA 7C */	b cM_rndFX__Ff
/* 8069BF14  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 8069BF18  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8069BF1C  EC 02 00 2A */	fadds f0, f2, f0
/* 8069BF20  EC 00 08 2A */	fadds f0, f0, f1
/* 8069BF24  D0 1E 06 78 */	stfs f0, 0x678(r30)
lbl_8069BF28:
/* 8069BF28  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069BF2C  D0 1E 06 8C */	stfs f0, 0x68c(r30)
lbl_8069BF30:
/* 8069BF30  A8 9E 06 68 */	lha r4, 0x668(r30)
/* 8069BF34  1C 04 07 6C */	mulli r0, r4, 0x76c
/* 8069BF38  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069BF3C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8069BF40  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8069BF44  7C 03 04 2E */	lfsx f0, r3, r0
/* 8069BF48  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 8069BF4C  EC 22 00 32 */	fmuls f1, f2, f0
/* 8069BF50  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8069BF54  1C 04 08 98 */	mulli r0, r4, 0x898
/* 8069BF58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069BF5C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8069BF60  EC 02 00 32 */	fmuls f0, f2, f0
/* 8069BF64  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8069BF68  1C 04 07 D0 */	mulli r0, r4, 0x7d0
/* 8069BF6C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069BF70  7C 63 02 14 */	add r3, r3, r0
/* 8069BF74  C0 03 00 04 */	lfs f0, 4(r3)
/* 8069BF78  EC 02 00 32 */	fmuls f0, f2, f0
/* 8069BF7C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8069BF80  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8069BF84  C0 1E 06 74 */	lfs f0, 0x674(r30)
/* 8069BF88  EC 20 08 2A */	fadds f1, f0, f1
/* 8069BF8C  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069BF90  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8069BF94  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069BF98  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069BF9C  4B BD 3A A0 */	b cLib_addCalc2__FPffff
/* 8069BFA0  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 8069BFA4  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 8069BFA8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8069BFAC  EC 21 00 2A */	fadds f1, f1, f0
/* 8069BFB0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069BFB4  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8069BFB8  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069BFBC  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069BFC0  4B BD 3A 7C */	b cLib_addCalc2__FPffff
/* 8069BFC4  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 8069BFC8  C0 3E 06 78 */	lfs f1, 0x678(r30)
/* 8069BFCC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8069BFD0  EC 21 00 2A */	fadds f1, f1, f0
/* 8069BFD4  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 8069BFD8  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 8069BFDC  C0 1E 06 8C */	lfs f0, 0x68c(r30)
/* 8069BFE0  EC 63 00 32 */	fmuls f3, f3, f0
/* 8069BFE4  4B BD 3A 58 */	b cLib_addCalc2__FPffff
/* 8069BFE8  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8069BFEC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069BFF0  FC 40 08 90 */	fmr f2, f1
/* 8069BFF4  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8069BFF8  4B BD 3A 44 */	b cLib_addCalc2__FPffff
/* 8069BFFC  88 1E 05 B7 */	lbz r0, 0x5b7(r30)
/* 8069C000  28 00 00 01 */	cmplwi r0, 1
/* 8069C004  41 82 00 60 */	beq lbl_8069C064
/* 8069C008  7F C3 F3 78 */	mr r3, r30
/* 8069C00C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8069C010  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 8069C014  EC 21 00 2A */	fadds f1, f1, f0
/* 8069C018  4B FF EF 9D */	bl pl_check__FP10e_db_classf
/* 8069C01C  2C 03 00 00 */	cmpwi r3, 0
/* 8069C020  40 82 00 44 */	bne lbl_8069C064
/* 8069C024  38 00 00 00 */	li r0, 0
/* 8069C028  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069C02C  38 00 00 02 */	li r0, 2
/* 8069C030  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069C034  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007008D@ha */
/* 8069C038  38 03 00 8D */	addi r0, r3, 0x008D /* 0x0007008D@l */
/* 8069C03C  90 01 00 08 */	stw r0, 8(r1)
/* 8069C040  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069C044  38 81 00 08 */	addi r4, r1, 8
/* 8069C048  38 A0 00 00 */	li r5, 0
/* 8069C04C  38 C0 FF FF */	li r6, -1
/* 8069C050  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8069C054  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069C058  7D 89 03 A6 */	mtctr r12
/* 8069C05C  4E 80 04 21 */	bctrl 
/* 8069C060  48 00 00 58 */	b lbl_8069C0B8
lbl_8069C064:
/* 8069C064  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069C068  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069C06C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8069C070  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8069C074  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069C078  40 82 00 40 */	bne lbl_8069C0B8
/* 8069C07C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8069C080  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 8069C084  40 82 00 34 */	bne lbl_8069C0B8
/* 8069C088  A8 1E 06 96 */	lha r0, 0x696(r30)
/* 8069C08C  2C 00 00 00 */	cmpwi r0, 0
/* 8069C090  40 82 00 28 */	bne lbl_8069C0B8
/* 8069C094  7F C3 F3 78 */	mr r3, r30
/* 8069C098  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 8069C09C  4B FF EF 19 */	bl pl_check__FP10e_db_classf
/* 8069C0A0  2C 03 00 00 */	cmpwi r3, 0
/* 8069C0A4  41 82 00 14 */	beq lbl_8069C0B8
/* 8069C0A8  38 00 00 04 */	li r0, 4
/* 8069C0AC  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069C0B0  38 00 00 00 */	li r0, 0
/* 8069C0B4  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_8069C0B8:
/* 8069C0B8  88 1E 08 50 */	lbz r0, 0x850(r30)
/* 8069C0BC  7C 00 07 75 */	extsb. r0, r0
/* 8069C0C0  41 82 00 AC */	beq lbl_8069C16C
/* 8069C0C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069C0C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069C0CC  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 8069C0D0  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8069C0D4  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 8069C0D8  3C 84 00 01 */	addis r4, r4, 1
/* 8069C0DC  38 04 80 00 */	addi r0, r4, -32768
/* 8069C0E0  7C 04 07 34 */	extsh r4, r0
/* 8069C0E4  38 A0 00 08 */	li r5, 8
/* 8069C0E8  38 C0 08 00 */	li r6, 0x800
/* 8069C0EC  4B BD 45 1C */	b cLib_addCalcAngleS2__FPssss
/* 8069C0F0  38 61 00 10 */	addi r3, r1, 0x10
/* 8069C0F4  38 9D 05 38 */	addi r4, r29, 0x538
/* 8069C0F8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8069C0FC  4B BC AA 38 */	b __mi__4cXyzCFRC3Vec
/* 8069C100  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8069C104  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8069C108  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8069C10C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8069C110  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8069C114  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8069C118  EC 21 00 72 */	fmuls f1, f1, f1
/* 8069C11C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8069C120  EC 41 00 2A */	fadds f2, f1, f0
/* 8069C124  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069C128  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8069C12C  40 81 00 0C */	ble lbl_8069C138
/* 8069C130  FC 00 10 34 */	frsqrte f0, f2
/* 8069C134  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8069C138:
/* 8069C138  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 8069C13C  4B BC B5 38 */	b cM_atan2s__Fff
/* 8069C140  7C 64 07 34 */	extsh r4, r3
/* 8069C144  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8069C148  3C 84 00 01 */	addis r4, r4, 1
/* 8069C14C  38 04 80 00 */	addi r0, r4, -32768
/* 8069C150  7C 04 07 34 */	extsh r4, r0
/* 8069C154  38 A0 00 08 */	li r5, 8
/* 8069C158  38 C0 04 00 */	li r6, 0x400
/* 8069C15C  4B BD 44 AC */	b cLib_addCalcAngleS2__FPssss
/* 8069C160  38 00 00 01 */	li r0, 1
/* 8069C164  98 1E 0B 14 */	stb r0, 0xb14(r30)
/* 8069C168  48 00 00 2C */	b lbl_8069C194
lbl_8069C16C:
/* 8069C16C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8069C170  A8 9E 06 84 */	lha r4, 0x684(r30)
/* 8069C174  38 A0 00 08 */	li r5, 8
/* 8069C178  38 C0 08 00 */	li r6, 0x800
/* 8069C17C  4B BD 44 8C */	b cLib_addCalcAngleS2__FPssss
/* 8069C180  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 8069C184  38 80 00 00 */	li r4, 0
/* 8069C188  38 A0 00 08 */	li r5, 8
/* 8069C18C  38 C0 04 00 */	li r6, 0x400
/* 8069C190  4B BD 44 78 */	b cLib_addCalcAngleS2__FPssss
lbl_8069C194:
/* 8069C194  39 61 00 80 */	addi r11, r1, 0x80
/* 8069C198  4B CC 60 90 */	b _restgpr_29
/* 8069C19C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8069C1A0  7C 08 03 A6 */	mtlr r0
/* 8069C1A4  38 21 00 80 */	addi r1, r1, 0x80
/* 8069C1A8  4E 80 00 20 */	blr 

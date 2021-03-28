lbl_8080BCFC:
/* 8080BCFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8080BD00  7C 08 02 A6 */	mflr r0
/* 8080BD04  90 01 00 34 */	stw r0, 0x34(r1)
/* 8080BD08  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8080BD0C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8080BD10  7C 7E 1B 78 */	mr r30, r3
/* 8080BD14  3C 60 80 81 */	lis r3, lit_3925@ha
/* 8080BD18  3B E3 59 94 */	addi r31, r3, lit_3925@l
/* 8080BD1C  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 8080BD20  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8080BD24  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 8080BD28  4B A6 4A 18 */	b cLib_chaseF__FPfff
/* 8080BD2C  80 1E 06 98 */	lwz r0, 0x698(r30)
/* 8080BD30  2C 00 00 02 */	cmpwi r0, 2
/* 8080BD34  41 82 00 EC */	beq lbl_8080BE20
/* 8080BD38  40 80 00 14 */	bge lbl_8080BD4C
/* 8080BD3C  2C 00 00 00 */	cmpwi r0, 0
/* 8080BD40  41 82 00 1C */	beq lbl_8080BD5C
/* 8080BD44  40 80 00 60 */	bge lbl_8080BDA4
/* 8080BD48  48 00 02 EC */	b lbl_8080C034
lbl_8080BD4C:
/* 8080BD4C  2C 00 00 04 */	cmpwi r0, 4
/* 8080BD50  41 82 02 A8 */	beq lbl_8080BFF8
/* 8080BD54  40 80 02 E0 */	bge lbl_8080C034
/* 8080BD58  48 00 01 40 */	b lbl_8080BE98
lbl_8080BD5C:
/* 8080BD5C  7F C3 F3 78 */	mr r3, r30
/* 8080BD60  4B FF E0 25 */	bl setAppear__8daE_YM_cFv
/* 8080BD64  7F C3 F3 78 */	mr r3, r30
/* 8080BD68  4B FF E0 05 */	bl setNormalCc__8daE_YM_cFv
/* 8080BD6C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080BD70  4B A5 BC 1C */	b cM_rndFX__Ff
/* 8080BD74  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8080BD78  EC 00 08 2A */	fadds f0, f0, f1
/* 8080BD7C  FC 00 00 1E */	fctiwz f0, f0
/* 8080BD80  D8 01 00 08 */	stfd f0, 8(r1)
/* 8080BD84  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8080BD88  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080BD8C  38 00 00 28 */	li r0, 0x28
/* 8080BD90  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
/* 8080BD94  38 00 00 01 */	li r0, 1
/* 8080BD98  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080BD9C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080BDA0  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
lbl_8080BDA4:
/* 8080BDA4  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8080BDA8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080BDAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080BDB0  40 80 00 10 */	bge lbl_8080BDC0
/* 8080BDB4  38 7E 07 60 */	addi r3, r30, 0x760
/* 8080BDB8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8080BDBC  4B 86 B3 58 */	b SetGroundUpY__9dBgS_AcchFf
lbl_8080BDC0:
/* 8080BDC0  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 8080BDC4  38 80 80 00 */	li r4, -32768
/* 8080BDC8  38 A0 04 00 */	li r5, 0x400
/* 8080BDCC  4B A6 4D C4 */	b cLib_chaseAngleS__FPsss
/* 8080BDD0  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 8080BDD4  2C 00 00 00 */	cmpwi r0, 0
/* 8080BDD8  41 82 00 20 */	beq lbl_8080BDF8
/* 8080BDDC  38 7E 06 E6 */	addi r3, r30, 0x6e6
/* 8080BDE0  38 80 0F A0 */	li r4, 0xfa0
/* 8080BDE4  38 A0 00 C8 */	li r5, 0xc8
/* 8080BDE8  4B A6 4D A8 */	b cLib_chaseAngleS__FPsss
/* 8080BDEC  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 8080BDF0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080BDF4  48 00 02 40 */	b lbl_8080C034
lbl_8080BDF8:
/* 8080BDF8  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8080BDFC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080BE00  41 82 02 34 */	beq lbl_8080C034
/* 8080BE04  38 00 00 02 */	li r0, 2
/* 8080BE08  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080BE0C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080BE10  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080BE14  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8080BE18  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080BE1C  48 00 02 18 */	b lbl_8080C034
lbl_8080BE20:
/* 8080BE20  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8080BE24  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080BE28  41 82 02 0C */	beq lbl_8080C034
/* 8080BE2C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080BE30  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080BE34  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080BE38  38 7E 06 E6 */	addi r3, r30, 0x6e6
/* 8080BE3C  38 80 00 00 */	li r4, 0
/* 8080BE40  38 A0 00 C8 */	li r5, 0xc8
/* 8080BE44  4B A6 4D 4C */	b cLib_chaseAngleS__FPsss
/* 8080BE48  2C 03 00 00 */	cmpwi r3, 0
/* 8080BE4C  41 82 01 E8 */	beq lbl_8080C034
/* 8080BE50  38 00 00 03 */	li r0, 3
/* 8080BE54  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080BE58  38 00 00 32 */	li r0, 0x32
/* 8080BE5C  B0 1E 06 F0 */	sth r0, 0x6f0(r30)
/* 8080BE60  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080BE64  4B A5 BA F0 */	b cM_rndF__Ff
/* 8080BE68  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8080BE6C  EC 00 08 2A */	fadds f0, f0, f1
/* 8080BE70  FC 00 00 1E */	fctiwz f0, f0
/* 8080BE74  D8 01 00 08 */	stfd f0, 8(r1)
/* 8080BE78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8080BE7C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8080BE80  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
/* 8080BE84  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 8080BE88  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 8080BE8C  38 00 00 00 */	li r0, 0
/* 8080BE90  98 1E 06 A5 */	stb r0, 0x6a5(r30)
/* 8080BE94  48 00 01 A0 */	b lbl_8080C034
lbl_8080BE98:
/* 8080BE98  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 8080BE9C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8080BEA0  40 80 00 64 */	bge lbl_8080BF04
/* 8080BEA4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 8080BEA8  4B A5 BA AC */	b cM_rndF__Ff
/* 8080BEAC  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8080BEB0  EC 00 08 2A */	fadds f0, f0, f1
/* 8080BEB4  FC 00 00 1E */	fctiwz f0, f0
/* 8080BEB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8080BEBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8080BEC0  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8080BEC4  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8080BEC8  4B A5 BA 8C */	b cM_rndF__Ff
/* 8080BECC  A8 1E 06 E8 */	lha r0, 0x6e8(r30)
/* 8080BED0  C8 5F 00 A8 */	lfd f2, 0xa8(r31)
/* 8080BED4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8080BED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080BEDC  3C 00 43 30 */	lis r0, 0x4330
/* 8080BEE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8080BEE4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8080BEE8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8080BEEC  EC 00 08 2A */	fadds f0, f0, f1
/* 8080BEF0  FC 00 00 1E */	fctiwz f0, f0
/* 8080BEF4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8080BEF8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8080BEFC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8080BF00  48 00 00 AC */	b lbl_8080BFAC
lbl_8080BF04:
/* 8080BF04  A8 1E 06 F2 */	lha r0, 0x6f2(r30)
/* 8080BF08  2C 00 00 00 */	cmpwi r0, 0
/* 8080BF0C  40 82 00 38 */	bne lbl_8080BF44
/* 8080BF10  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080BF14  4B A5 BA 40 */	b cM_rndF__Ff
/* 8080BF18  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8080BF1C  EC 00 08 2A */	fadds f0, f0, f1
/* 8080BF20  FC 00 00 1E */	fctiwz f0, f0
/* 8080BF24  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8080BF28  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8080BF2C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8080BF30  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
/* 8080BF34  88 7E 06 A5 */	lbz r3, 0x6a5(r30)
/* 8080BF38  38 03 00 01 */	addi r0, r3, 1
/* 8080BF3C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8080BF40  98 1E 06 A5 */	stb r0, 0x6a5(r30)
lbl_8080BF44:
/* 8080BF44  88 1E 06 A5 */	lbz r0, 0x6a5(r30)
/* 8080BF48  28 00 00 00 */	cmplwi r0, 0
/* 8080BF4C  40 82 00 60 */	bne lbl_8080BFAC
/* 8080BF50  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8080BF54  4B A5 BA 00 */	b cM_rndF__Ff
/* 8080BF58  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8080BF5C  EC 00 08 2A */	fadds f0, f0, f1
/* 8080BF60  FC 00 00 1E */	fctiwz f0, f0
/* 8080BF64  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8080BF68  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8080BF6C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 8080BF70  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8080BF74  4B A5 B9 E0 */	b cM_rndF__Ff
/* 8080BF78  A8 1E 06 E8 */	lha r0, 0x6e8(r30)
/* 8080BF7C  C8 5F 00 A8 */	lfd f2, 0xa8(r31)
/* 8080BF80  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8080BF84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080BF88  3C 00 43 30 */	lis r0, 0x4330
/* 8080BF8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8080BF90  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8080BF94  EC 00 10 28 */	fsubs f0, f0, f2
/* 8080BF98  EC 00 08 2A */	fadds f0, f0, f1
/* 8080BF9C  FC 00 00 1E */	fctiwz f0, f0
/* 8080BFA0  D8 01 00 08 */	stfd f0, 8(r1)
/* 8080BFA4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8080BFA8  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_8080BFAC:
/* 8080BFAC  A8 1E 06 F0 */	lha r0, 0x6f0(r30)
/* 8080BFB0  2C 00 00 00 */	cmpwi r0, 0
/* 8080BFB4  40 82 00 80 */	bne lbl_8080C034
/* 8080BFB8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8080BFBC  4B A5 B9 98 */	b cM_rndF__Ff
/* 8080BFC0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8080BFC4  EC 00 08 2A */	fadds f0, f0, f1
/* 8080BFC8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080BFCC  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 8080BFD0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080BFD4  38 00 00 04 */	li r0, 4
/* 8080BFD8  90 1E 06 98 */	stw r0, 0x698(r30)
/* 8080BFDC  38 7E 07 60 */	addi r3, r30, 0x760
/* 8080BFE0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080BFE4  4B 86 B1 30 */	b SetGroundUpY__9dBgS_AcchFf
/* 8080BFE8  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8080BFEC  38 03 C0 00 */	addi r0, r3, -16384
/* 8080BFF0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 8080BFF4  48 00 00 40 */	b lbl_8080C034
lbl_8080BFF8:
/* 8080BFF8  38 7E 04 E8 */	addi r3, r30, 0x4e8
/* 8080BFFC  38 80 00 00 */	li r4, 0
/* 8080C000  38 A0 10 00 */	li r5, 0x1000
/* 8080C004  4B A6 4B 8C */	b cLib_chaseAngleS__FPsss
/* 8080C008  2C 03 00 00 */	cmpwi r3, 0
/* 8080C00C  41 82 00 28 */	beq lbl_8080C034
/* 8080C010  80 1E 07 8C */	lwz r0, 0x78c(r30)
/* 8080C014  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8080C018  41 82 00 1C */	beq lbl_8080C034
/* 8080C01C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080C020  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8080C024  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8080C028  7F C3 F3 78 */	mr r3, r30
/* 8080C02C  38 80 00 02 */	li r4, 2
/* 8080C030  4B FF DF 6D */	bl setActionMode__8daE_YM_cFi
lbl_8080C034:
/* 8080C034  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 8080C038  A8 1E 06 E6 */	lha r0, 0x6e6(r30)
/* 8080C03C  7C 03 02 14 */	add r0, r3, r0
/* 8080C040  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 8080C044  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8080C048  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8080C04C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8080C050  7C 08 03 A6 */	mtlr r0
/* 8080C054  38 21 00 30 */	addi r1, r1, 0x30
/* 8080C058  4E 80 00 20 */	blr 

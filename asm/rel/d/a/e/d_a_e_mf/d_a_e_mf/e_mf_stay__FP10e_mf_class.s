lbl_8070BB10:
/* 8070BB10  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8070BB14  7C 08 02 A6 */	mflr r0
/* 8070BB18  90 01 00 54 */	stw r0, 0x54(r1)
/* 8070BB1C  39 61 00 50 */	addi r11, r1, 0x50
/* 8070BB20  4B C5 66 BD */	bl _savegpr_29
/* 8070BB24  7C 7E 1B 78 */	mr r30, r3
/* 8070BB28  3C 80 80 71 */	lis r4, lit_3828@ha /* 0x80713974@ha */
/* 8070BB2C  3B E4 39 74 */	addi r31, r4, lit_3828@l /* 0x80713974@l */
/* 8070BB30  38 00 00 05 */	li r0, 5
/* 8070BB34  98 03 06 D4 */	stb r0, 0x6d4(r3)
/* 8070BB38  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8070BB3C  28 00 00 0A */	cmplwi r0, 0xa
/* 8070BB40  41 81 03 DC */	bgt lbl_8070BF1C
/* 8070BB44  3C 80 80 71 */	lis r4, lit_4569@ha /* 0x80713B40@ha */
/* 8070BB48  38 84 3B 40 */	addi r4, r4, lit_4569@l /* 0x80713B40@l */
/* 8070BB4C  54 00 10 3A */	slwi r0, r0, 2
/* 8070BB50  7C 04 00 2E */	lwzx r0, r4, r0
/* 8070BB54  7C 09 03 A6 */	mtctr r0
/* 8070BB58  4E 80 04 20 */	bctr 
lbl_8070BB5C:
/* 8070BB5C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8070BB60  4B B5 BD F5 */	bl cM_rndF__Ff
/* 8070BB64  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8070BB68  EC 40 08 2A */	fadds f2, f0, f1
/* 8070BB6C  7F C3 F3 78 */	mr r3, r30
/* 8070BB70  38 80 00 1F */	li r4, 0x1f
/* 8070BB74  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070BB78  38 A0 00 02 */	li r5, 2
/* 8070BB7C  4B FF EC B1 */	bl anm_init__FP10e_mf_classifUcf
/* 8070BB80  38 00 00 01 */	li r0, 1
/* 8070BB84  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070BB88:
/* 8070BB88  7F C3 F3 78 */	mr r3, r30
/* 8070BB8C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8070BB90  4B 91 10 CD */	bl fopAcM_otoCheck__FPC10fopAc_ac_cf
/* 8070BB94  2C 03 00 00 */	cmpwi r3, 0
/* 8070BB98  40 82 00 1C */	bne lbl_8070BBB4
/* 8070BB9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8070BBA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070BBA4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8070BBA8  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8070BBAC  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8070BBB0  41 82 03 6C */	beq lbl_8070BF1C
lbl_8070BBB4:
/* 8070BBB4  4B A9 C8 C1 */	bl dKy_Sound_get__Fv
/* 8070BBB8  7C 7D 1B 78 */	mr r29, r3
/* 8070BBBC  38 61 00 10 */	addi r3, r1, 0x10
/* 8070BBC0  7F A4 EB 78 */	mr r4, r29
/* 8070BBC4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8070BBC8  4B B5 AF 6D */	bl __mi__4cXyzCFRC3Vec
/* 8070BBCC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8070BBD0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8070BBD4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8070BBD8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8070BBDC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8070BBE0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8070BBE4  EC 21 00 72 */	fmuls f1, f1, f1
/* 8070BBE8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8070BBEC  EC 41 00 2A */	fadds f2, f1, f0
/* 8070BBF0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8070BBF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8070BBF8  40 81 00 0C */	ble lbl_8070BC04
/* 8070BBFC  FC 00 10 34 */	frsqrte f0, f2
/* 8070BC00  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8070BC04:
/* 8070BC04  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8070BC08  4B B5 BA 6D */	bl cM_atan2s__Fff
/* 8070BC0C  7C 60 07 34 */	extsh r0, r3
/* 8070BC10  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8070BC14  40 81 00 10 */	ble lbl_8070BC24
/* 8070BC18  38 00 00 05 */	li r0, 5
/* 8070BC1C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070BC20  48 00 00 0C */	b lbl_8070BC2C
lbl_8070BC24:
/* 8070BC24  38 00 00 02 */	li r0, 2
/* 8070BC28  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070BC2C:
/* 8070BC2C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070BC30  4B B5 BD 25 */	bl cM_rndF__Ff
/* 8070BC34  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8070BC38  EC 00 08 2A */	fadds f0, f0, f1
/* 8070BC3C  FC 00 00 1E */	fctiwz f0, f0
/* 8070BC40  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8070BC44  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8070BC48  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070BC4C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8070BC50  D0 1E 07 18 */	stfs f0, 0x718(r30)
/* 8070BC54  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8070BC58  D0 1E 07 1C */	stfs f0, 0x71c(r30)
/* 8070BC5C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8070BC60  D0 1E 07 20 */	stfs f0, 0x720(r30)
/* 8070BC64  48 00 02 B8 */	b lbl_8070BF1C
lbl_8070BC68:
/* 8070BC68  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070BC6C  2C 00 00 00 */	cmpwi r0, 0
/* 8070BC70  40 82 02 AC */	bne lbl_8070BF1C
/* 8070BC74  38 80 00 15 */	li r4, 0x15
/* 8070BC78  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070BC7C  38 A0 00 00 */	li r5, 0
/* 8070BC80  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8070BC84  4B FF EB A9 */	bl anm_init__FP10e_mf_classifUcf
/* 8070BC88  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D9@ha */
/* 8070BC8C  38 03 03 D9 */	addi r0, r3, 0x03D9 /* 0x000703D9@l */
/* 8070BC90  90 01 00 0C */	stw r0, 0xc(r1)
/* 8070BC94  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070BC98  38 81 00 0C */	addi r4, r1, 0xc
/* 8070BC9C  38 A0 FF FF */	li r5, -1
/* 8070BCA0  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070BCA4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070BCA8  7D 89 03 A6 */	mtctr r12
/* 8070BCAC  4E 80 04 21 */	bctrl 
/* 8070BCB0  38 00 00 03 */	li r0, 3
/* 8070BCB4  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070BCB8  48 00 02 64 */	b lbl_8070BF1C
lbl_8070BCBC:
/* 8070BCBC  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070BCC0  38 80 00 01 */	li r4, 1
/* 8070BCC4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070BCC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070BCCC  40 82 00 18 */	bne lbl_8070BCE4
/* 8070BCD0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070BCD4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070BCD8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070BCDC  41 82 00 08 */	beq lbl_8070BCE4
/* 8070BCE0  38 80 00 00 */	li r4, 0
lbl_8070BCE4:
/* 8070BCE4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070BCE8  41 82 02 34 */	beq lbl_8070BF1C
/* 8070BCEC  7F C3 F3 78 */	mr r3, r30
/* 8070BCF0  38 9E 07 18 */	addi r4, r30, 0x718
/* 8070BCF4  4B FF F4 21 */	bl other_bg_check2__FP10e_mf_classP4cXyz
/* 8070BCF8  2C 03 00 00 */	cmpwi r3, 0
/* 8070BCFC  41 82 00 30 */	beq lbl_8070BD2C
/* 8070BD00  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070BD04  4B B5 BC 51 */	bl cM_rndF__Ff
/* 8070BD08  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8070BD0C  EC 00 08 2A */	fadds f0, f0, f1
/* 8070BD10  FC 00 00 1E */	fctiwz f0, f0
/* 8070BD14  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8070BD18  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8070BD1C  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070BD20  38 00 00 04 */	li r0, 4
/* 8070BD24  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070BD28  48 00 01 F4 */	b lbl_8070BF1C
lbl_8070BD2C:
/* 8070BD2C  38 00 00 0A */	li r0, 0xa
/* 8070BD30  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070BD34  38 00 00 00 */	li r0, 0
/* 8070BD38  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070BD3C  48 00 01 E0 */	b lbl_8070BF1C
lbl_8070BD40:
/* 8070BD40  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070BD44  2C 00 00 00 */	cmpwi r0, 0
/* 8070BD48  40 82 01 D4 */	bne lbl_8070BF1C
/* 8070BD4C  38 00 00 0A */	li r0, 0xa
/* 8070BD50  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070BD54  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070BD58  4B B5 BB FD */	bl cM_rndF__Ff
/* 8070BD5C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8070BD60  EC 00 08 2A */	fadds f0, f0, f1
/* 8070BD64  FC 00 00 1E */	fctiwz f0, f0
/* 8070BD68  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8070BD6C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8070BD70  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070BD74  7F C3 F3 78 */	mr r3, r30
/* 8070BD78  38 80 00 21 */	li r4, 0x21
/* 8070BD7C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070BD80  38 A0 00 02 */	li r5, 2
/* 8070BD84  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8070BD88  4B FF EA A5 */	bl anm_init__FP10e_mf_classifUcf
/* 8070BD8C  48 00 01 90 */	b lbl_8070BF1C
lbl_8070BD90:
/* 8070BD90  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070BD94  2C 00 00 00 */	cmpwi r0, 0
/* 8070BD98  40 82 01 84 */	bne lbl_8070BF1C
/* 8070BD9C  38 80 00 15 */	li r4, 0x15
/* 8070BDA0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8070BDA4  38 A0 00 00 */	li r5, 0
/* 8070BDA8  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 8070BDAC  4B FF EA 81 */	bl anm_init__FP10e_mf_classifUcf
/* 8070BDB0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703D9@ha */
/* 8070BDB4  38 03 03 D9 */	addi r0, r3, 0x03D9 /* 0x000703D9@l */
/* 8070BDB8  90 01 00 08 */	stw r0, 8(r1)
/* 8070BDBC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 8070BDC0  38 81 00 08 */	addi r4, r1, 8
/* 8070BDC4  38 A0 FF FF */	li r5, -1
/* 8070BDC8  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 8070BDCC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8070BDD0  7D 89 03 A6 */	mtctr r12
/* 8070BDD4  4E 80 04 21 */	bctrl 
/* 8070BDD8  38 00 00 06 */	li r0, 6
/* 8070BDDC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070BDE0  48 00 01 3C */	b lbl_8070BF1C
lbl_8070BDE4:
/* 8070BDE4  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070BDE8  38 80 00 01 */	li r4, 1
/* 8070BDEC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070BDF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070BDF4  40 82 00 18 */	bne lbl_8070BE0C
/* 8070BDF8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070BDFC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070BE00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070BE04  41 82 00 08 */	beq lbl_8070BE0C
/* 8070BE08  38 80 00 00 */	li r4, 0
lbl_8070BE0C:
/* 8070BE0C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070BE10  41 82 01 0C */	beq lbl_8070BF1C
/* 8070BE14  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 8070BE18  4B B5 BB 3D */	bl cM_rndF__Ff
/* 8070BE1C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8070BE20  EC 00 08 2A */	fadds f0, f0, f1
/* 8070BE24  FC 00 00 1E */	fctiwz f0, f0
/* 8070BE28  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8070BE2C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8070BE30  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070BE34  38 00 00 07 */	li r0, 7
/* 8070BE38  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070BE3C  48 00 00 E0 */	b lbl_8070BF1C
lbl_8070BE40:
/* 8070BE40  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070BE44  2C 00 00 00 */	cmpwi r0, 0
/* 8070BE48  40 82 00 D4 */	bne lbl_8070BF1C
/* 8070BE4C  38 00 00 0A */	li r0, 0xa
/* 8070BE50  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070BE54  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8070BE58  4B B5 BA FD */	bl cM_rndF__Ff
/* 8070BE5C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8070BE60  EC 00 08 2A */	fadds f0, f0, f1
/* 8070BE64  FC 00 00 1E */	fctiwz f0, f0
/* 8070BE68  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8070BE6C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8070BE70  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070BE74  7F C3 F3 78 */	mr r3, r30
/* 8070BE78  38 80 00 22 */	li r4, 0x22
/* 8070BE7C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8070BE80  38 A0 00 02 */	li r5, 2
/* 8070BE84  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8070BE88  4B FF E9 A5 */	bl anm_init__FP10e_mf_classifUcf
/* 8070BE8C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8070BE90  4B B5 BA C5 */	bl cM_rndF__Ff
/* 8070BE94  FC 00 08 1E */	fctiwz f0, f1
/* 8070BE98  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8070BE9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8070BEA0  7C 00 07 34 */	extsh r0, r0
/* 8070BEA4  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 8070BEA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8070BEAC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8070BEB0  3C 00 43 30 */	lis r0, 0x4330
/* 8070BEB4  90 01 00 38 */	stw r0, 0x38(r1)
/* 8070BEB8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8070BEBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8070BEC0  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070BEC4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8070BEC8  48 00 00 54 */	b lbl_8070BF1C
lbl_8070BECC:
/* 8070BECC  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 8070BED0  38 80 00 01 */	li r4, 1
/* 8070BED4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8070BED8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8070BEDC  40 82 00 18 */	bne lbl_8070BEF4
/* 8070BEE0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8070BEE4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8070BEE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8070BEEC  41 82 00 08 */	beq lbl_8070BEF4
/* 8070BEF0  38 80 00 00 */	li r4, 0
lbl_8070BEF4:
/* 8070BEF4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8070BEF8  41 82 00 24 */	beq lbl_8070BF1C
/* 8070BEFC  38 00 00 00 */	li r0, 0
/* 8070BF00  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070BF04  48 00 00 18 */	b lbl_8070BF1C
lbl_8070BF08:
/* 8070BF08  A8 1E 06 C0 */	lha r0, 0x6c0(r30)
/* 8070BF0C  2C 00 00 00 */	cmpwi r0, 0
/* 8070BF10  40 82 00 0C */	bne lbl_8070BF1C
/* 8070BF14  38 00 00 00 */	li r0, 0
/* 8070BF18  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070BF1C:
/* 8070BF1C  A8 1E 06 AC */	lha r0, 0x6ac(r30)
/* 8070BF20  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8070BF24  40 82 00 58 */	bne lbl_8070BF7C
/* 8070BF28  7F C3 F3 78 */	mr r3, r30
/* 8070BF2C  C0 3E 06 B8 */	lfs f1, 0x6b8(r30)
/* 8070BF30  38 80 40 00 */	li r4, 0x4000
/* 8070BF34  4B FF F8 39 */	bl pl_check__FP10e_mf_classfs
/* 8070BF38  2C 03 00 00 */	cmpwi r3, 0
/* 8070BF3C  41 82 00 20 */	beq lbl_8070BF5C
/* 8070BF40  38 00 00 03 */	li r0, 3
/* 8070BF44  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070BF48  38 00 FF F6 */	li r0, -10
/* 8070BF4C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8070BF50  38 00 00 3C */	li r0, 0x3c
/* 8070BF54  B0 1E 06 C0 */	sth r0, 0x6c0(r30)
/* 8070BF58  48 00 00 24 */	b lbl_8070BF7C
lbl_8070BF5C:
/* 8070BF5C  7F C3 F3 78 */	mr r3, r30
/* 8070BF60  4B FF F7 81 */	bl bomb_view_check__FP10e_mf_class
/* 8070BF64  28 03 00 00 */	cmplwi r3, 0
/* 8070BF68  41 82 00 14 */	beq lbl_8070BF7C
/* 8070BF6C  38 00 00 0B */	li r0, 0xb
/* 8070BF70  B0 1E 06 AE */	sth r0, 0x6ae(r30)
/* 8070BF74  38 00 00 00 */	li r0, 0
/* 8070BF78  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
lbl_8070BF7C:
/* 8070BF7C  39 61 00 50 */	addi r11, r1, 0x50
/* 8070BF80  4B C5 62 A9 */	bl _restgpr_29
/* 8070BF84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8070BF88  7C 08 03 A6 */	mtlr r0
/* 8070BF8C  38 21 00 50 */	addi r1, r1, 0x50
/* 8070BF90  4E 80 00 20 */	blr 

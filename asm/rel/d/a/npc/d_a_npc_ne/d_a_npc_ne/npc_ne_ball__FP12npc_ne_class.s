lbl_80A8BAFC:
/* 80A8BAFC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A8BB00  7C 08 02 A6 */	mflr r0
/* 80A8BB04  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A8BB08  39 61 00 50 */	addi r11, r1, 0x50
/* 80A8BB0C  4B 8D 66 D1 */	bl _savegpr_29
/* 80A8BB10  7C 7D 1B 78 */	mr r29, r3
/* 80A8BB14  3C 80 80 A9 */	lis r4, lit_3990@ha /* 0x80A9241C@ha */
/* 80A8BB18  3B E4 24 1C */	addi r31, r4, lit_3990@l /* 0x80A9241C@l */
/* 80A8BB1C  4B FF DF 95 */	bl search_bird__FP12npc_ne_class
/* 80A8BB20  28 03 00 00 */	cmplwi r3, 0
/* 80A8BB24  40 82 00 14 */	bne lbl_80A8BB38
/* 80A8BB28  38 00 00 00 */	li r0, 0
/* 80A8BB2C  B0 1D 06 42 */	sth r0, 0x642(r29)
/* 80A8BB30  B0 1D 06 46 */	sth r0, 0x646(r29)
/* 80A8BB34  48 00 05 48 */	b lbl_80A8C07C
lbl_80A8BB38:
/* 80A8BB38  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A8BB3C  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 80A8BB40  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A8BB44  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 80A8BB48  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A8BB4C  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 80A8BB50  38 61 00 0C */	addi r3, r1, 0xc
/* 80A8BB54  38 9D 05 C4 */	addi r4, r29, 0x5c4
/* 80A8BB58  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80A8BB5C  4B 7D AF D9 */	bl __mi__4cXyzCFRC3Vec
/* 80A8BB60  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80A8BB64  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A8BB68  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A8BB6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8BB70  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80A8BB74  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80A8BB78  4B 7D BA FD */	bl cM_atan2s__Fff
/* 80A8BB7C  B0 7D 05 D0 */	sth r3, 0x5d0(r29)
/* 80A8BB80  38 61 00 18 */	addi r3, r1, 0x18
/* 80A8BB84  4B 8B B5 B5 */	bl PSVECSquareMag
/* 80A8BB88  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8BB8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8BB90  40 81 00 58 */	ble lbl_80A8BBE8
/* 80A8BB94  FC 00 08 34 */	frsqrte f0, f1
/* 80A8BB98  C8 9F 00 C8 */	lfd f4, 0xc8(r31)
/* 80A8BB9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8BBA0  C8 7F 00 D0 */	lfd f3, 0xd0(r31)
/* 80A8BBA4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8BBA8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8BBAC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8BBB0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8BBB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8BBB8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8BBBC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8BBC0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8BBC4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8BBC8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A8BBCC  FC 00 00 32 */	fmul f0, f0, f0
/* 80A8BBD0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A8BBD4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A8BBD8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A8BBDC  FC 21 00 32 */	fmul f1, f1, f0
/* 80A8BBE0  FC 20 08 18 */	frsp f1, f1
/* 80A8BBE4  48 00 00 88 */	b lbl_80A8BC6C
lbl_80A8BBE8:
/* 80A8BBE8  C8 1F 00 D8 */	lfd f0, 0xd8(r31)
/* 80A8BBEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8BBF0  40 80 00 10 */	bge lbl_80A8BC00
/* 80A8BBF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8BBF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A8BBFC  48 00 00 70 */	b lbl_80A8BC6C
lbl_80A8BC00:
/* 80A8BC00  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A8BC04  80 81 00 08 */	lwz r4, 8(r1)
/* 80A8BC08  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A8BC0C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A8BC10  7C 03 00 00 */	cmpw r3, r0
/* 80A8BC14  41 82 00 14 */	beq lbl_80A8BC28
/* 80A8BC18  40 80 00 40 */	bge lbl_80A8BC58
/* 80A8BC1C  2C 03 00 00 */	cmpwi r3, 0
/* 80A8BC20  41 82 00 20 */	beq lbl_80A8BC40
/* 80A8BC24  48 00 00 34 */	b lbl_80A8BC58
lbl_80A8BC28:
/* 80A8BC28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8BC2C  41 82 00 0C */	beq lbl_80A8BC38
/* 80A8BC30  38 00 00 01 */	li r0, 1
/* 80A8BC34  48 00 00 28 */	b lbl_80A8BC5C
lbl_80A8BC38:
/* 80A8BC38  38 00 00 02 */	li r0, 2
/* 80A8BC3C  48 00 00 20 */	b lbl_80A8BC5C
lbl_80A8BC40:
/* 80A8BC40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A8BC44  41 82 00 0C */	beq lbl_80A8BC50
/* 80A8BC48  38 00 00 05 */	li r0, 5
/* 80A8BC4C  48 00 00 10 */	b lbl_80A8BC5C
lbl_80A8BC50:
/* 80A8BC50  38 00 00 03 */	li r0, 3
/* 80A8BC54  48 00 00 08 */	b lbl_80A8BC5C
lbl_80A8BC58:
/* 80A8BC58  38 00 00 04 */	li r0, 4
lbl_80A8BC5C:
/* 80A8BC5C  2C 00 00 01 */	cmpwi r0, 1
/* 80A8BC60  40 82 00 0C */	bne lbl_80A8BC6C
/* 80A8BC64  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A8BC68  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A8BC6C:
/* 80A8BC6C  D0 3D 05 D8 */	stfs f1, 0x5d8(r29)
/* 80A8BC70  3B C0 00 00 */	li r30, 0
/* 80A8BC74  38 00 00 02 */	li r0, 2
/* 80A8BC78  98 1D 06 68 */	stb r0, 0x668(r29)
/* 80A8BC7C  C0 1D 05 C4 */	lfs f0, 0x5c4(r29)
/* 80A8BC80  D0 1D 06 6C */	stfs f0, 0x66c(r29)
/* 80A8BC84  C0 1D 05 C8 */	lfs f0, 0x5c8(r29)
/* 80A8BC88  D0 1D 06 70 */	stfs f0, 0x670(r29)
/* 80A8BC8C  C0 1D 05 CC */	lfs f0, 0x5cc(r29)
/* 80A8BC90  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 80A8BC94  A8 1D 06 46 */	lha r0, 0x646(r29)
/* 80A8BC98  28 00 00 06 */	cmplwi r0, 6
/* 80A8BC9C  41 81 03 C0 */	bgt lbl_80A8C05C
/* 80A8BCA0  3C 60 80 A9 */	lis r3, lit_5215@ha /* 0x80A92880@ha */
/* 80A8BCA4  38 63 28 80 */	addi r3, r3, lit_5215@l /* 0x80A92880@l */
/* 80A8BCA8  54 00 10 3A */	slwi r0, r0, 2
/* 80A8BCAC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A8BCB0  7C 09 03 A6 */	mtctr r0
/* 80A8BCB4  4E 80 04 20 */	bctr 
lbl_80A8BCB8:
/* 80A8BCB8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8BCBC  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80A8BCC0  7F A3 EB 78 */	mr r3, r29
/* 80A8BCC4  38 80 00 19 */	li r4, 0x19
/* 80A8BCC8  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8BCCC  38 A0 00 02 */	li r5, 2
/* 80A8BCD0  C0 5D 06 38 */	lfs f2, 0x638(r29)
/* 80A8BCD4  4B FF D0 41 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8BCD8  A8 7D 06 46 */	lha r3, 0x646(r29)
/* 80A8BCDC  38 03 00 01 */	addi r0, r3, 1
/* 80A8BCE0  B0 1D 06 46 */	sth r0, 0x646(r29)
/* 80A8BCE4  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80A8BCE8  4B 7D BC A5 */	bl cM_rndFX__Ff
/* 80A8BCEC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8BCF0  EC 02 08 2A */	fadds f0, f2, f1
/* 80A8BCF4  D0 1D 05 E0 */	stfs f0, 0x5e0(r29)
/* 80A8BCF8  FC 20 10 90 */	fmr f1, f2
/* 80A8BCFC  4B 7D BC 59 */	bl cM_rndF__Ff
/* 80A8BD00  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80A8BD04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8BD08  40 80 00 10 */	bge lbl_80A8BD18
/* 80A8BD0C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A8BD10  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
/* 80A8BD14  48 00 00 0C */	b lbl_80A8BD20
lbl_80A8BD18:
/* 80A8BD18  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A8BD1C  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
lbl_80A8BD20:
/* 80A8BD20  3B C0 04 00 */	li r30, 0x400
/* 80A8BD24  38 00 C5 68 */	li r0, -15000
/* 80A8BD28  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 80A8BD2C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80A8BD30  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80A8BD34  C0 5D 05 D8 */	lfs f2, 0x5d8(r29)
/* 80A8BD38  C0 1D 06 D4 */	lfs f0, 0x6d4(r29)
/* 80A8BD3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A8BD40  40 80 01 10 */	bge lbl_80A8BE50
/* 80A8BD44  38 7D 06 38 */	addi r3, r29, 0x638
/* 80A8BD48  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8BD4C  FC 40 08 90 */	fmr f2, f1
/* 80A8BD50  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80A8BD54  4B 7E 3C E9 */	bl cLib_addCalc2__FPffff
/* 80A8BD58  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A8BD5C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8BD60  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80A8BD64  4B 7E 3D 1D */	bl cLib_addCalc0__FPfff
/* 80A8BD68  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80A8BD6C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8BD70  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80A8BD74  40 80 02 E8 */	bge lbl_80A8C05C
/* 80A8BD78  C0 5D 06 D4 */	lfs f2, 0x6d4(r29)
/* 80A8BD7C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80A8BD80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A8BD84  40 80 00 54 */	bge lbl_80A8BDD8
/* 80A8BD88  38 00 00 03 */	li r0, 3
/* 80A8BD8C  B0 1D 06 46 */	sth r0, 0x646(r29)
/* 80A8BD90  4B 7D BB C5 */	bl cM_rndF__Ff
/* 80A8BD94  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8BD98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8BD9C  40 80 00 20 */	bge lbl_80A8BDBC
/* 80A8BDA0  7F A3 EB 78 */	mr r3, r29
/* 80A8BDA4  38 80 00 0A */	li r4, 0xa
/* 80A8BDA8  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80A8BDAC  38 A0 00 00 */	li r5, 0
/* 80A8BDB0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8BDB4  4B FF CF 61 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8BDB8  48 00 02 A4 */	b lbl_80A8C05C
lbl_80A8BDBC:
/* 80A8BDBC  7F A3 EB 78 */	mr r3, r29
/* 80A8BDC0  38 80 00 0B */	li r4, 0xb
/* 80A8BDC4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80A8BDC8  38 A0 00 00 */	li r5, 0
/* 80A8BDCC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8BDD0  4B FF CF 45 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8BDD4  48 00 02 88 */	b lbl_80A8C05C
lbl_80A8BDD8:
/* 80A8BDD8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8BDDC  4B 7D BB 79 */	bl cM_rndF__Ff
/* 80A8BDE0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8BDE4  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8BDE8  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80A8BDEC  7F A3 EB 78 */	mr r3, r29
/* 80A8BDF0  38 80 00 18 */	li r4, 0x18
/* 80A8BDF4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8BDF8  38 A0 00 02 */	li r5, 2
/* 80A8BDFC  C0 5D 06 38 */	lfs f2, 0x638(r29)
/* 80A8BE00  4B FF CF 15 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8BE04  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80A8BE08  4B 7D BB 4D */	bl cM_rndF__Ff
/* 80A8BE0C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8BE10  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8BE14  FC 00 00 1E */	fctiwz f0, f0
/* 80A8BE18  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80A8BE1C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A8BE20  B0 1D 06 4C */	sth r0, 0x64c(r29)
/* 80A8BE24  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A8BE28  4B 7D BB 2D */	bl cM_rndF__Ff
/* 80A8BE2C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80A8BE30  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8BE34  FC 00 00 1E */	fctiwz f0, f0
/* 80A8BE38  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A8BE3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A8BE40  B0 1D 06 4E */	sth r0, 0x64e(r29)
/* 80A8BE44  38 00 00 02 */	li r0, 2
/* 80A8BE48  B0 1D 06 46 */	sth r0, 0x646(r29)
/* 80A8BE4C  48 00 02 10 */	b lbl_80A8C05C
lbl_80A8BE50:
/* 80A8BE50  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8BE54  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A8BE58  40 81 00 10 */	ble lbl_80A8BE68
/* 80A8BE5C  38 00 00 05 */	li r0, 5
/* 80A8BE60  B0 1D 06 46 */	sth r0, 0x646(r29)
/* 80A8BE64  48 00 01 F8 */	b lbl_80A8C05C
lbl_80A8BE68:
/* 80A8BE68  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8BE6C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A8BE70  EC 02 00 28 */	fsubs f0, f2, f0
/* 80A8BE74  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A8BE78  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A8BE7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8BE80  40 81 00 08 */	ble lbl_80A8BE88
/* 80A8BE84  FC 20 00 90 */	fmr f1, f0
lbl_80A8BE88:
/* 80A8BE88  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80A8BE8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8BE90  40 80 00 08 */	bge lbl_80A8BE98
/* 80A8BE94  FC 20 00 90 */	fmr f1, f0
lbl_80A8BE98:
/* 80A8BE98  38 7D 06 38 */	addi r3, r29, 0x638
/* 80A8BE9C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8BEA0  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8BEA4  4B 7E 3B 99 */	bl cLib_addCalc2__FPffff
/* 80A8BEA8  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A92AD4@ha */
/* 80A8BEAC  38 63 2A D4 */	addi r3, r3, l_HIO@l /* 0x80A92AD4@l */
/* 80A8BEB0  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80A8BEB4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A8BEB8  C0 1D 06 38 */	lfs f0, 0x638(r29)
/* 80A8BEBC  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8BEC0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8BEC4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80A8BEC8  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8BECC  4B 7E 3B 71 */	bl cLib_addCalc2__FPffff
/* 80A8BED0  48 00 01 8C */	b lbl_80A8C05C
lbl_80A8BED4:
/* 80A8BED4  38 00 C5 68 */	li r0, -15000
/* 80A8BED8  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 80A8BEDC  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80A8BEE0  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80A8BEE4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A8BEE8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8BEEC  FC 40 08 90 */	fmr f2, f1
/* 80A8BEF0  4B 7E 3B 91 */	bl cLib_addCalc0__FPfff
/* 80A8BEF4  C0 3D 05 D8 */	lfs f1, 0x5d8(r29)
/* 80A8BEF8  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80A8BEFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8BF00  40 81 00 0C */	ble lbl_80A8BF0C
/* 80A8BF04  38 00 00 00 */	li r0, 0
/* 80A8BF08  B0 1D 06 46 */	sth r0, 0x646(r29)
lbl_80A8BF0C:
/* 80A8BF0C  A8 1D 06 4E */	lha r0, 0x64e(r29)
/* 80A8BF10  2C 00 00 01 */	cmpwi r0, 1
/* 80A8BF14  40 82 01 48 */	bne lbl_80A8C05C
/* 80A8BF18  38 00 00 06 */	li r0, 6
/* 80A8BF1C  B0 1D 06 42 */	sth r0, 0x642(r29)
/* 80A8BF20  38 00 00 00 */	li r0, 0
/* 80A8BF24  B0 1D 06 46 */	sth r0, 0x646(r29)
/* 80A8BF28  48 00 01 34 */	b lbl_80A8C05C
lbl_80A8BF2C:
/* 80A8BF2C  38 00 C5 68 */	li r0, -15000
/* 80A8BF30  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 80A8BF34  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80A8BF38  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80A8BF3C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A8BF40  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8BF44  FC 40 08 90 */	fmr f2, f1
/* 80A8BF48  4B 7E 3B 39 */	bl cLib_addCalc0__FPfff
/* 80A8BF4C  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80A8BF50  38 80 00 01 */	li r4, 1
/* 80A8BF54  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80A8BF58  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8BF5C  40 82 00 18 */	bne lbl_80A8BF74
/* 80A8BF60  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80A8BF64  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80A8BF68  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80A8BF6C  41 82 00 08 */	beq lbl_80A8BF74
/* 80A8BF70  38 80 00 00 */	li r4, 0
lbl_80A8BF74:
/* 80A8BF74  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80A8BF78  41 82 00 10 */	beq lbl_80A8BF88
/* 80A8BF7C  38 00 00 00 */	li r0, 0
/* 80A8BF80  B0 1D 06 42 */	sth r0, 0x642(r29)
/* 80A8BF84  B0 1D 06 46 */	sth r0, 0x646(r29)
lbl_80A8BF88:
/* 80A8BF88  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80A8BF8C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A8BF90  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80A8BF94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8BF98  4C 41 13 82 */	cror 2, 1, 2
/* 80A8BF9C  40 82 00 C0 */	bne lbl_80A8C05C
/* 80A8BFA0  38 7D 0B F4 */	addi r3, r29, 0xbf4
/* 80A8BFA4  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80A8BFA8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8BFAC  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80A8BFB0  4B 7E 3A 8D */	bl cLib_addCalc2__FPffff
/* 80A8BFB4  48 00 00 A8 */	b lbl_80A8C05C
lbl_80A8BFB8:
/* 80A8BFB8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8BFBC  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80A8BFC0  7F A3 EB 78 */	mr r3, r29
/* 80A8BFC4  38 80 00 11 */	li r4, 0x11
/* 80A8BFC8  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8BFCC  38 A0 00 02 */	li r5, 2
/* 80A8BFD0  C0 5D 06 38 */	lfs f2, 0x638(r29)
/* 80A8BFD4  4B FF CD 41 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8BFD8  A8 7D 06 46 */	lha r3, 0x646(r29)
/* 80A8BFDC  38 03 00 01 */	addi r0, r3, 1
/* 80A8BFE0  B0 1D 06 46 */	sth r0, 0x646(r29)
lbl_80A8BFE4:
/* 80A8BFE4  3B C0 0A 00 */	li r30, 0xa00
/* 80A8BFE8  38 7D 06 38 */	addi r3, r29, 0x638
/* 80A8BFEC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A8BFF0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8BFF4  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8BFF8  4B 7E 3A 45 */	bl cLib_addCalc2__FPffff
/* 80A8BFFC  3C 60 80 A9 */	lis r3, l_HIO@ha /* 0x80A92AD4@ha */
/* 80A8C000  38 63 2A D4 */	addi r3, r3, l_HIO@l /* 0x80A92AD4@l */
/* 80A8C004  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 80A8C008  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80A8C00C  C0 1D 06 38 */	lfs f0, 0x638(r29)
/* 80A8C010  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8C014  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8C018  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8C01C  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8C020  4B 7E 3A 1D */	bl cLib_addCalc2__FPffff
/* 80A8C024  C0 3D 05 D8 */	lfs f1, 0x5d8(r29)
/* 80A8C028  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80A8C02C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8C030  40 80 00 2C */	bge lbl_80A8C05C
/* 80A8C034  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A8C038  D0 1D 06 38 */	stfs f0, 0x638(r29)
/* 80A8C03C  7F A3 EB 78 */	mr r3, r29
/* 80A8C040  38 80 00 19 */	li r4, 0x19
/* 80A8C044  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8C048  38 A0 00 02 */	li r5, 2
/* 80A8C04C  C0 5D 06 38 */	lfs f2, 0x638(r29)
/* 80A8C050  4B FF CC C5 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8C054  38 00 00 01 */	li r0, 1
/* 80A8C058  B0 1D 06 46 */	sth r0, 0x646(r29)
lbl_80A8C05C:
/* 80A8C05C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80A8C060  A8 9D 05 D0 */	lha r4, 0x5d0(r29)
/* 80A8C064  38 A0 00 04 */	li r5, 4
/* 80A8C068  7F C6 F3 78 */	mr r6, r30
/* 80A8C06C  4B 7E 45 9D */	bl cLib_addCalcAngleS2__FPssss
/* 80A8C070  C0 1D 06 38 */	lfs f0, 0x638(r29)
/* 80A8C074  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80A8C078  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80A8C07C:
/* 80A8C07C  39 61 00 50 */	addi r11, r1, 0x50
/* 80A8C080  4B 8D 61 A9 */	bl _restgpr_29
/* 80A8C084  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A8C088  7C 08 03 A6 */	mtlr r0
/* 80A8C08C  38 21 00 50 */	addi r1, r1, 0x50
/* 80A8C090  4E 80 00 20 */	blr 

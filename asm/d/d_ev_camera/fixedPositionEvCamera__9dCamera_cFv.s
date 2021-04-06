lbl_8008B9B0:
/* 8008B9B0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8008B9B4  7C 08 02 A6 */	mflr r0
/* 8008B9B8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8008B9BC  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8008B9C0  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8008B9C4  7C 7E 1B 78 */	mr r30, r3
/* 8008B9C8  88 0D 8A 08 */	lbz r0, struct_80450F88+0x0(r13)
/* 8008B9CC  7C 00 07 75 */	extsb. r0, r0
/* 8008B9D0  40 82 00 44 */	bne lbl_8008BA14
/* 8008B9D4  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8008B9D8  38 83 0C F4 */	addi r4, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 8008B9DC  C0 04 00 00 */	lfs f0, 0(r4)
/* 8008B9E0  3C 60 80 42 */	lis r3, DefaultGap_5851@ha /* 0x804253E4@ha */
/* 8008B9E4  D4 03 53 E4 */	stfsu f0, DefaultGap_5851@l(r3)  /* 0x804253E4@l */
/* 8008B9E8  C0 04 00 04 */	lfs f0, 4(r4)
/* 8008B9EC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8008B9F0  C0 04 00 08 */	lfs f0, 8(r4)
/* 8008B9F4  D0 03 00 08 */	stfs f0, 8(r3)
/* 8008B9F8  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 8008B9FC  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 8008BA00  3C A0 80 42 */	lis r5, lit_5852@ha /* 0x804253D8@ha */
/* 8008BA04  38 A5 53 D8 */	addi r5, r5, lit_5852@l /* 0x804253D8@l */
/* 8008BA08  48 2D 62 1D */	bl __register_global_object
/* 8008BA0C  38 00 00 01 */	li r0, 1
/* 8008BA10  98 0D 8A 08 */	stb r0, struct_80450F88+0x0(r13)
lbl_8008BA14:
/* 8008BA14  3B E0 00 01 */	li r31, 1
/* 8008BA18  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8008BA1C  28 00 00 00 */	cmplwi r0, 0
/* 8008BA20  40 82 02 30 */	bne lbl_8008BC50
/* 8008BA24  3C 60 80 42 */	lis r3, DefaultGap_5851@ha /* 0x804253E4@ha */
/* 8008BA28  C4 03 53 E4 */	lfsu f0, DefaultGap_5851@l(r3)  /* 0x804253E4@l */
/* 8008BA2C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8008BA30  C0 03 00 04 */	lfs f0, 4(r3)
/* 8008BA34  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8008BA38  C0 03 00 08 */	lfs f0, 8(r3)
/* 8008BA3C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8008BA40  7F C3 F3 78 */	mr r3, r30
/* 8008BA44  38 9E 03 F8 */	addi r4, r30, 0x3f8
/* 8008BA48  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BA4C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BA50  38 A5 00 46 */	addi r5, r5, 0x46
/* 8008BA54  38 C1 00 70 */	addi r6, r1, 0x70
/* 8008BA58  4B FF D7 D5 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008BA5C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8008BA60  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8008BA64  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8008BA68  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8008BA6C  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8008BA70  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8008BA74  7F C3 F3 78 */	mr r3, r30
/* 8008BA78  38 81 00 7C */	addi r4, r1, 0x7c
/* 8008BA7C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BA80  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BA84  38 A5 00 0B */	addi r5, r5, 0xb
/* 8008BA88  38 C1 00 64 */	addi r6, r1, 0x64
/* 8008BA8C  4B FF D7 A1 */	bl getEvXyzData__9dCamera_cFP4cXyzPc4cXyz
/* 8008BA90  7F C3 F3 78 */	mr r3, r30
/* 8008BA94  38 9E 04 10 */	addi r4, r30, 0x410
/* 8008BA98  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BA9C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BAA0  38 A5 00 1E */	addi r5, r5, 0x1e
/* 8008BAA4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8008BAA8  4B FF D6 AD */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008BAAC  7F C3 F3 78 */	mr r3, r30
/* 8008BAB0  38 9E 04 18 */	addi r4, r30, 0x418
/* 8008BAB4  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BAB8  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BABC  38 A5 00 54 */	addi r5, r5, 0x54
/* 8008BAC0  C0 22 8E DC */	lfs f1, lit_5346(r2)
/* 8008BAC4  4B FF D6 91 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008BAC8  7F C3 F3 78 */	mr r3, r30
/* 8008BACC  38 9E 04 20 */	addi r4, r30, 0x420
/* 8008BAD0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BAD4  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BAD8  38 A5 00 9C */	addi r5, r5, 0x9c
/* 8008BADC  C0 22 8E F0 */	lfs f1, lit_5959(r2)
/* 8008BAE0  4B FF D6 75 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008BAE4  7F C3 F3 78 */	mr r3, r30
/* 8008BAE8  38 9E 04 1C */	addi r4, r30, 0x41c
/* 8008BAEC  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BAF0  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BAF4  38 A5 00 A3 */	addi r5, r5, 0xa3
/* 8008BAF8  C0 3E 04 20 */	lfs f1, 0x420(r30)
/* 8008BAFC  4B FF D6 59 */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008BB00  7F C3 F3 78 */	mr r3, r30
/* 8008BB04  38 9E 04 14 */	addi r4, r30, 0x414
/* 8008BB08  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BB0C  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BB10  38 A5 00 23 */	addi r5, r5, 0x23
/* 8008BB14  C0 22 8E B8 */	lfs f1, lit_5141(r2)
/* 8008BB18  4B FF D6 3D */	bl getEvFloatData__9dCamera_cFPfPcf
/* 8008BB1C  98 7E 03 E9 */	stb r3, 0x3e9(r30)
/* 8008BB20  7F C3 F3 78 */	mr r3, r30
/* 8008BB24  38 9E 04 30 */	addi r4, r30, 0x430
/* 8008BB28  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BB2C  38 C5 AA F4 */	addi r6, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BB30  38 A6 00 28 */	addi r5, r6, 0x28
/* 8008BB34  38 C6 00 AF */	addi r6, r6, 0xaf
/* 8008BB38  4B FF D8 05 */	bl getEvStringData__9dCamera_cFPcPcPc
/* 8008BB3C  7F C3 F3 78 */	mr r3, r30
/* 8008BB40  38 9E 04 34 */	addi r4, r30, 0x434
/* 8008BB44  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BB48  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BB4C  38 C0 FF FF */	li r6, -1
/* 8008BB50  4B FF D5 3D */	bl getEvIntData__9dCamera_cFPiPci
/* 8008BB54  98 7E 03 E8 */	stb r3, 0x3e8(r30)
/* 8008BB58  7F C3 F3 78 */	mr r3, r30
/* 8008BB5C  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BB60  38 A4 AA F4 */	addi r5, r4, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BB64  38 85 00 6B */	addi r4, r5, 0x6b
/* 8008BB68  38 A5 00 72 */	addi r5, r5, 0x72
/* 8008BB6C  4B FF DA 89 */	bl getEvActor__9dCamera_cFPcPc
/* 8008BB70  90 7E 04 28 */	stw r3, 0x428(r30)
/* 8008BB74  28 03 00 00 */	cmplwi r3, 0
/* 8008BB78  40 82 00 0C */	bne lbl_8008BB84
/* 8008BB7C  38 60 00 01 */	li r3, 1
/* 8008BB80  48 00 02 94 */	b lbl_8008BE14
lbl_8008BB84:
/* 8008BB84  80 7E 04 28 */	lwz r3, 0x428(r30)
/* 8008BB88  28 03 00 00 */	cmplwi r3, 0
/* 8008BB8C  41 82 00 0C */	beq lbl_8008BB98
/* 8008BB90  80 03 00 04 */	lwz r0, 4(r3)
/* 8008BB94  48 00 00 08 */	b lbl_8008BB9C
lbl_8008BB98:
/* 8008BB98  38 00 FF FF */	li r0, -1
lbl_8008BB9C:
/* 8008BB9C  90 1E 04 2C */	stw r0, 0x42c(r30)
/* 8008BBA0  7F C3 F3 78 */	mr r3, r30
/* 8008BBA4  3C 80 80 38 */	lis r4, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 8008BBA8  38 84 AA F4 */	addi r4, r4, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8008BBAC  38 84 00 36 */	addi r4, r4, 0x36
/* 8008BBB0  4B FF D9 15 */	bl getEvActor__9dCamera_cFPc
/* 8008BBB4  90 7E 04 24 */	stw r3, 0x424(r30)
/* 8008BBB8  80 BE 04 24 */	lwz r5, 0x424(r30)
/* 8008BBBC  28 05 00 00 */	cmplwi r5, 0
/* 8008BBC0  41 82 00 58 */	beq lbl_8008BC18
/* 8008BBC4  88 1E 04 30 */	lbz r0, 0x430(r30)
/* 8008BBC8  38 60 00 00 */	li r3, 0
/* 8008BBCC  7C 00 07 74 */	extsb r0, r0
/* 8008BBD0  2C 00 00 2D */	cmpwi r0, 0x2d
/* 8008BBD4  41 82 00 10 */	beq lbl_8008BBE4
/* 8008BBD8  2C 00 00 78 */	cmpwi r0, 0x78
/* 8008BBDC  41 82 00 08 */	beq lbl_8008BBE4
/* 8008BBE0  38 60 00 01 */	li r3, 1
lbl_8008BBE4:
/* 8008BBE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8008BBE8  41 82 00 30 */	beq lbl_8008BC18
/* 8008BBEC  38 61 00 58 */	addi r3, r1, 0x58
/* 8008BBF0  7F C4 F3 78 */	mr r4, r30
/* 8008BBF4  38 C1 00 7C */	addi r6, r1, 0x7c
/* 8008BBF8  48 0D 91 75 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008BBFC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8008BC00  D0 1E 03 EC */	stfs f0, 0x3ec(r30)
/* 8008BC04  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8008BC08  D0 1E 03 F0 */	stfs f0, 0x3f0(r30)
/* 8008BC0C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8008BC10  D0 1E 03 F4 */	stfs f0, 0x3f4(r30)
/* 8008BC14  48 00 00 1C */	b lbl_8008BC30
lbl_8008BC18:
/* 8008BC18  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8008BC1C  D0 1E 03 EC */	stfs f0, 0x3ec(r30)
/* 8008BC20  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8008BC24  D0 1E 03 F0 */	stfs f0, 0x3f0(r30)
/* 8008BC28  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8008BC2C  D0 1E 03 F4 */	stfs f0, 0x3f4(r30)
lbl_8008BC30:
/* 8008BC30  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 8008BC34  D0 1E 04 04 */	stfs f0, 0x404(r30)
/* 8008BC38  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8008BC3C  D0 1E 04 08 */	stfs f0, 0x408(r30)
/* 8008BC40  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 8008BC44  D0 1E 04 0C */	stfs f0, 0x40c(r30)
/* 8008BC48  38 00 00 01 */	li r0, 1
/* 8008BC4C  98 1E 01 58 */	stb r0, 0x158(r30)
lbl_8008BC50:
/* 8008BC50  80 1E 04 2C */	lwz r0, 0x42c(r30)
/* 8008BC54  90 01 00 0C */	stw r0, 0xc(r1)
/* 8008BC58  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8008BC5C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8008BC60  38 81 00 0C */	addi r4, r1, 0xc
/* 8008BC64  4B F8 DB 95 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8008BC68  28 03 00 00 */	cmplwi r3, 0
/* 8008BC6C  40 82 00 0C */	bne lbl_8008BC78
/* 8008BC70  38 60 00 01 */	li r3, 1
/* 8008BC74  48 00 01 A0 */	b lbl_8008BE14
lbl_8008BC78:
/* 8008BC78  38 61 00 4C */	addi r3, r1, 0x4c
/* 8008BC7C  7F C4 F3 78 */	mr r4, r30
/* 8008BC80  80 BE 04 28 */	lwz r5, 0x428(r30)
/* 8008BC84  38 DE 03 F8 */	addi r6, r30, 0x3f8
/* 8008BC88  48 0D 90 E5 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8008BC8C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8008BC90  D0 1E 04 04 */	stfs f0, 0x404(r30)
/* 8008BC94  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8008BC98  D0 1E 04 08 */	stfs f0, 0x408(r30)
/* 8008BC9C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8008BCA0  D0 1E 04 0C */	stfs f0, 0x40c(r30)
/* 8008BCA4  38 61 00 40 */	addi r3, r1, 0x40
/* 8008BCA8  38 9E 04 04 */	addi r4, r30, 0x404
/* 8008BCAC  38 BE 00 64 */	addi r5, r30, 0x64
/* 8008BCB0  48 1D AE 85 */	bl __mi__4cXyzCFRC3Vec
/* 8008BCB4  38 61 00 34 */	addi r3, r1, 0x34
/* 8008BCB8  38 81 00 40 */	addi r4, r1, 0x40
/* 8008BCBC  C0 3E 04 18 */	lfs f1, 0x418(r30)
/* 8008BCC0  48 1D AE C5 */	bl __ml__4cXyzCFf
/* 8008BCC4  38 7E 00 64 */	addi r3, r30, 0x64
/* 8008BCC8  38 81 00 34 */	addi r4, r1, 0x34
/* 8008BCCC  7C 65 1B 78 */	mr r5, r3
/* 8008BCD0  48 2B B3 C1 */	bl PSVECAdd
/* 8008BCD4  C0 1E 03 EC */	lfs f0, 0x3ec(r30)
/* 8008BCD8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8008BCDC  C0 1E 03 F0 */	lfs f0, 0x3f0(r30)
/* 8008BCE0  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 8008BCE4  C0 1E 03 F4 */	lfs f0, 0x3f4(r30)
/* 8008BCE8  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 8008BCEC  38 61 00 28 */	addi r3, r1, 0x28
/* 8008BCF0  38 9E 00 70 */	addi r4, r30, 0x70
/* 8008BCF4  38 BE 00 64 */	addi r5, r30, 0x64
/* 8008BCF8  48 1D AE 3D */	bl __mi__4cXyzCFRC3Vec
/* 8008BCFC  38 7E 00 5C */	addi r3, r30, 0x5c
/* 8008BD00  38 81 00 28 */	addi r4, r1, 0x28
/* 8008BD04  48 1E 5D 6D */	bl Val__7cSGlobeFRC4cXyz
/* 8008BD08  C0 1E 04 20 */	lfs f0, 0x420(r30)
/* 8008BD0C  FC 20 00 90 */	fmr f1, f0
/* 8008BD10  88 1E 03 E8 */	lbz r0, 0x3e8(r30)
/* 8008BD14  28 00 00 00 */	cmplwi r0, 0
/* 8008BD18  41 82 00 5C */	beq lbl_8008BD74
/* 8008BD1C  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 8008BD20  80 1E 04 34 */	lwz r0, 0x434(r30)
/* 8008BD24  7C 03 00 40 */	cmplw r3, r0
/* 8008BD28  40 80 00 4C */	bge lbl_8008BD74
/* 8008BD2C  C0 9E 04 1C */	lfs f4, 0x41c(r30)
/* 8008BD30  EC 60 20 28 */	fsubs f3, f0, f4
/* 8008BD34  C8 22 8E E8 */	lfd f1, lit_5846(r2)
/* 8008BD38  90 61 00 8C */	stw r3, 0x8c(r1)
/* 8008BD3C  3C 60 43 30 */	lis r3, 0x4330
/* 8008BD40  90 61 00 88 */	stw r3, 0x88(r1)
/* 8008BD44  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 8008BD48  EC 40 08 28 */	fsubs f2, f0, f1
/* 8008BD4C  C8 22 8E F8 */	lfd f1, lit_5962(r2)
/* 8008BD50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8008BD54  90 01 00 94 */	stw r0, 0x94(r1)
/* 8008BD58  90 61 00 90 */	stw r3, 0x90(r1)
/* 8008BD5C  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8008BD60  EC 00 08 28 */	fsubs f0, f0, f1
/* 8008BD64  EC 02 00 24 */	fdivs f0, f2, f0
/* 8008BD68  EC 03 00 32 */	fmuls f0, f3, f0
/* 8008BD6C  EC 24 00 2A */	fadds f1, f4, f0
/* 8008BD70  3B E0 00 00 */	li r31, 0
lbl_8008BD74:
/* 8008BD74  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8008BD78  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8008BD7C  40 81 00 3C */	ble lbl_8008BDB8
/* 8008BD80  D0 3E 00 5C */	stfs f1, 0x5c(r30)
/* 8008BD84  38 61 00 1C */	addi r3, r1, 0x1c
/* 8008BD88  38 9E 00 5C */	addi r4, r30, 0x5c
/* 8008BD8C  48 1E 5D 29 */	bl Xyz__7cSGlobeCFv
/* 8008BD90  38 61 00 10 */	addi r3, r1, 0x10
/* 8008BD94  38 9E 00 64 */	addi r4, r30, 0x64
/* 8008BD98  38 A1 00 1C */	addi r5, r1, 0x1c
/* 8008BD9C  48 1D AD 49 */	bl __pl__4cXyzCFRC3Vec
/* 8008BDA0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8008BDA4  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8008BDA8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8008BDAC  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 8008BDB0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8008BDB4  D0 1E 00 78 */	stfs f0, 0x78(r30)
lbl_8008BDB8:
/* 8008BDB8  C0 1E 04 10 */	lfs f0, 0x410(r30)
/* 8008BDBC  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 8008BDC0  88 1E 03 E9 */	lbz r0, 0x3e9(r30)
/* 8008BDC4  28 00 00 00 */	cmplwi r0, 0
/* 8008BDC8  41 82 00 38 */	beq lbl_8008BE00
/* 8008BDCC  C0 22 8E D8 */	lfs f1, lit_5145(r2)
/* 8008BDD0  C0 1E 04 14 */	lfs f0, 0x414(r30)
/* 8008BDD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8008BDD8  FC 00 00 1E */	fctiwz f0, f0
/* 8008BDDC  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8008BDE0  80 81 00 94 */	lwz r4, 0x94(r1)
/* 8008BDE4  38 61 00 08 */	addi r3, r1, 8
/* 8008BDE8  48 1E 51 B1 */	bl __ct__7cSAngleFs
/* 8008BDEC  A8 01 00 08 */	lha r0, 8(r1)
/* 8008BDF0  B0 1E 00 7C */	sth r0, 0x7c(r30)
/* 8008BDF4  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 8008BDF8  60 00 04 00 */	ori r0, r0, 0x400
/* 8008BDFC  90 1E 06 0C */	stw r0, 0x60c(r30)
lbl_8008BE00:
/* 8008BE00  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8008BE04  41 82 00 0C */	beq lbl_8008BE10
/* 8008BE08  38 00 00 01 */	li r0, 1
/* 8008BE0C  98 1E 01 58 */	stb r0, 0x158(r30)
lbl_8008BE10:
/* 8008BE10  7F E3 FB 78 */	mr r3, r31
lbl_8008BE14:
/* 8008BE14  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8008BE18  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8008BE1C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8008BE20  7C 08 03 A6 */	mtlr r0
/* 8008BE24  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8008BE28  4E 80 00 20 */	blr 

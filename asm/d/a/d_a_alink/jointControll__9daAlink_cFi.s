lbl_8009DD90:
/* 8009DD90  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8009DD94  7C 08 02 A6 */	mflr r0
/* 8009DD98  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8009DD9C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8009DDA0  48 2C 44 35 */	bl _savegpr_27
/* 8009DDA4  7C 7B 1B 78 */	mr r27, r3
/* 8009DDA8  7C 9F 23 78 */	mr r31, r4
/* 8009DDAC  38 61 00 10 */	addi r3, r1, 0x10
/* 8009DDB0  38 80 00 00 */	li r4, 0
/* 8009DDB4  38 A0 00 00 */	li r5, 0
/* 8009DDB8  38 C0 00 00 */	li r6, 0
/* 8009DDBC  48 1C 96 39 */	bl __ct__5csXyzFsss
/* 8009DDC0  3B 80 00 00 */	li r28, 0
/* 8009DDC4  80 DB 20 60 */	lwz r6, 0x2060(r27)
/* 8009DDC8  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 8009DDCC  57 FD 28 34 */	slwi r29, r31, 5
/* 8009DDD0  7C 60 EA 14 */	add r3, r0, r29
/* 8009DDD4  38 A1 00 54 */	addi r5, r1, 0x54
/* 8009DDD8  38 83 FF FC */	addi r4, r3, -4
/* 8009DDDC  38 00 00 04 */	li r0, 4
/* 8009DDE0  7C 09 03 A6 */	mtctr r0
lbl_8009DDE4:
/* 8009DDE4  80 64 00 04 */	lwz r3, 4(r4)
/* 8009DDE8  84 04 00 08 */	lwzu r0, 8(r4)
/* 8009DDEC  90 65 00 04 */	stw r3, 4(r5)
/* 8009DDF0  94 05 00 08 */	stwu r0, 8(r5)
/* 8009DDF4  42 00 FF F0 */	bdnz lbl_8009DDE4
/* 8009DDF8  80 06 00 20 */	lwz r0, 0x20(r6)
/* 8009DDFC  57 FE 20 36 */	slwi r30, r31, 4
/* 8009DE00  7C 80 F2 14 */	add r4, r0, r30
/* 8009DE04  80 64 00 00 */	lwz r3, 0(r4)
/* 8009DE08  80 04 00 04 */	lwz r0, 4(r4)
/* 8009DE0C  90 61 00 18 */	stw r3, 0x18(r1)
/* 8009DE10  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8009DE14  80 64 00 08 */	lwz r3, 8(r4)
/* 8009DE18  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8009DE1C  90 61 00 20 */	stw r3, 0x20(r1)
/* 8009DE20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009DE24  38 61 00 08 */	addi r3, r1, 8
/* 8009DE28  38 80 00 00 */	li r4, 0
/* 8009DE2C  38 A0 00 01 */	li r5, 1
/* 8009DE30  38 C0 00 02 */	li r6, 2
/* 8009DE34  48 1C 95 C1 */	bl __ct__5csXyzFsss
/* 8009DE38  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 8009DE3C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8009DE40  41 82 02 1C */	beq lbl_8009E05C
/* 8009DE44  2C 1F 00 00 */	cmpwi r31, 0
/* 8009DE48  40 82 00 E0 */	bne lbl_8009DF28
/* 8009DE4C  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8009DE50  28 00 01 3D */	cmplwi r0, 0x13d
/* 8009DE54  40 82 00 1C */	bne lbl_8009DE70
/* 8009DE58  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009DE5C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009DE60  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009DE64  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8009DE68  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8009DE6C  48 00 00 50 */	b lbl_8009DEBC
lbl_8009DE70:
/* 8009DE70  88 9B 2F 99 */	lbz r4, 0x2f99(r27)
/* 8009DE74  54 80 07 7F */	clrlwi. r0, r4, 0x1d
/* 8009DE78  41 82 00 44 */	beq lbl_8009DEBC
/* 8009DE7C  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009DE80  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009DE84  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8009DE88  41 82 00 0C */	beq lbl_8009DE94
/* 8009DE8C  C0 1B 35 90 */	lfs f0, 0x3590(r27)
/* 8009DE90  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_8009DE94:
/* 8009DE94  88 1B 2F 99 */	lbz r0, 0x2f99(r27)
/* 8009DE98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8009DE9C  41 82 00 0C */	beq lbl_8009DEA8
/* 8009DEA0  C0 1B 35 88 */	lfs f0, 0x3588(r27)
/* 8009DEA4  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_8009DEA8:
/* 8009DEA8  88 1B 2F 99 */	lbz r0, 0x2f99(r27)
/* 8009DEAC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8009DEB0  41 82 00 0C */	beq lbl_8009DEBC
/* 8009DEB4  C0 1B 33 B0 */	lfs f0, 0x33b0(r27)
/* 8009DEB8  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8009DEBC:
/* 8009DEBC  A8 9B 30 82 */	lha r4, 0x3082(r27)
/* 8009DEC0  A8 1B 30 80 */	lha r0, 0x3080(r27)
/* 8009DEC4  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009DEC8  38 60 00 00 */	li r3, 0
/* 8009DECC  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009DED0  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009DED4  38 00 00 02 */	li r0, 2
/* 8009DED8  B0 01 00 08 */	sth r0, 8(r1)
/* 8009DEDC  38 00 00 01 */	li r0, 1
/* 8009DEE0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009DEE4  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8009DEE8  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009DEEC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009DEF0  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0 /* qr0 */
/* 8009DEF4  F0 01 00 78 */	psq_st f0, 120(r1), 0, 0 /* qr0 */
/* 8009DEF8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009DEFC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8009DF00  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8009DF04  90 01 00 84 */	stw r0, 0x84(r1)
/* 8009DF08  A8 03 00 10 */	lha r0, 0x10(r3)
/* 8009DF0C  B0 01 00 88 */	sth r0, 0x88(r1)
/* 8009DF10  E0 03 00 14 */	psq_l f0, 20(r3), 0, 0 /* qr0 */
/* 8009DF14  F0 01 00 8C */	psq_st f0, 140(r1), 0, 0 /* qr0 */
/* 8009DF18  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8009DF1C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8009DF20  63 9C 00 02 */	ori r28, r28, 2
/* 8009DF24  48 00 05 78 */	b lbl_8009E49C
lbl_8009DF28:
/* 8009DF28  2C 1F 00 03 */	cmpwi r31, 3
/* 8009DF2C  40 82 00 3C */	bne lbl_8009DF68
/* 8009DF30  A8 9B 30 B0 */	lha r4, 0x30b0(r27)
/* 8009DF34  A8 7B 30 D6 */	lha r3, 0x30d6(r27)
/* 8009DF38  A8 1B 30 B2 */	lha r0, 0x30b2(r27)
/* 8009DF3C  7C 03 02 14 */	add r0, r3, r0
/* 8009DF40  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009DF44  38 60 00 00 */	li r3, 0
/* 8009DF48  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009DF4C  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009DF50  38 00 00 02 */	li r0, 2
/* 8009DF54  B0 01 00 08 */	sth r0, 8(r1)
/* 8009DF58  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8009DF5C  38 00 00 01 */	li r0, 1
/* 8009DF60  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8009DF64  48 00 05 38 */	b lbl_8009E49C
lbl_8009DF68:
/* 8009DF68  2C 1F 00 1A */	cmpwi r31, 0x1a
/* 8009DF6C  40 82 00 34 */	bne lbl_8009DFA0
/* 8009DF70  A8 1B 2F EC */	lha r0, 0x2fec(r27)
/* 8009DF74  7C 00 00 D0 */	neg r0, r0
/* 8009DF78  38 60 00 00 */	li r3, 0
/* 8009DF7C  B0 61 00 10 */	sth r3, 0x10(r1)
/* 8009DF80  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8009DF84  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8009DF88  38 00 00 02 */	li r0, 2
/* 8009DF8C  B0 01 00 08 */	sth r0, 8(r1)
/* 8009DF90  38 00 00 01 */	li r0, 1
/* 8009DF94  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009DF98  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8009DF9C  48 00 05 00 */	b lbl_8009E49C
lbl_8009DFA0:
/* 8009DFA0  2C 1F 00 25 */	cmpwi r31, 0x25
/* 8009DFA4  41 80 00 40 */	blt lbl_8009DFE4
/* 8009DFA8  2C 1F 00 27 */	cmpwi r31, 0x27
/* 8009DFAC  41 81 00 38 */	bgt lbl_8009DFE4
/* 8009DFB0  57 E0 08 3C */	slwi r0, r31, 1
/* 8009DFB4  7C 7B 02 14 */	add r3, r27, r0
/* 8009DFB8  A8 03 30 4A */	lha r0, 0x304a(r3)
/* 8009DFBC  38 60 00 00 */	li r3, 0
/* 8009DFC0  B0 61 00 10 */	sth r3, 0x10(r1)
/* 8009DFC4  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8009DFC8  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8009DFCC  38 00 00 02 */	li r0, 2
/* 8009DFD0  B0 01 00 08 */	sth r0, 8(r1)
/* 8009DFD4  38 00 00 01 */	li r0, 1
/* 8009DFD8  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009DFDC  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8009DFE0  48 00 04 BC */	b lbl_8009E49C
lbl_8009DFE4:
/* 8009DFE4  2C 1F 00 02 */	cmpwi r31, 2
/* 8009DFE8  40 82 00 34 */	bne lbl_8009E01C
/* 8009DFEC  A8 1B 2F EC */	lha r0, 0x2fec(r27)
/* 8009DFF0  7C 00 00 D0 */	neg r0, r0
/* 8009DFF4  38 60 00 00 */	li r3, 0
/* 8009DFF8  B0 61 00 10 */	sth r3, 0x10(r1)
/* 8009DFFC  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8009E000  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8009E004  38 00 00 02 */	li r0, 2
/* 8009E008  B0 01 00 08 */	sth r0, 8(r1)
/* 8009E00C  38 00 00 01 */	li r0, 1
/* 8009E010  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009E014  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8009E018  48 00 04 84 */	b lbl_8009E49C
lbl_8009E01C:
/* 8009E01C  2C 1F 00 04 */	cmpwi r31, 4
/* 8009E020  40 82 04 7C */	bne lbl_8009E49C
/* 8009E024  A8 9B 31 28 */	lha r4, 0x3128(r27)
/* 8009E028  A8 1B 31 26 */	lha r0, 0x3126(r27)
/* 8009E02C  7C 60 00 D0 */	neg r3, r0
/* 8009E030  A8 1B 31 24 */	lha r0, 0x3124(r27)
/* 8009E034  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E038  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009E03C  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009E040  38 00 00 02 */	li r0, 2
/* 8009E044  B0 01 00 08 */	sth r0, 8(r1)
/* 8009E048  38 00 00 01 */	li r0, 1
/* 8009E04C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009E050  38 00 00 00 */	li r0, 0
/* 8009E054  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8009E058  48 00 04 44 */	b lbl_8009E49C
lbl_8009E05C:
/* 8009E05C  2C 1F 00 04 */	cmpwi r31, 4
/* 8009E060  40 82 00 3C */	bne lbl_8009E09C
/* 8009E064  A8 9B 31 28 */	lha r4, 0x3128(r27)
/* 8009E068  A8 1B 31 26 */	lha r0, 0x3126(r27)
/* 8009E06C  7C 60 00 D0 */	neg r3, r0
/* 8009E070  A8 1B 31 24 */	lha r0, 0x3124(r27)
/* 8009E074  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E078  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009E07C  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009E080  38 00 00 02 */	li r0, 2
/* 8009E084  B0 01 00 08 */	sth r0, 8(r1)
/* 8009E088  38 00 00 01 */	li r0, 1
/* 8009E08C  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8009E090  38 00 00 00 */	li r0, 0
/* 8009E094  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8009E098  48 00 04 04 */	b lbl_8009E49C
lbl_8009E09C:
/* 8009E09C  2C 1F 00 10 */	cmpwi r31, 0x10
/* 8009E0A0  40 82 00 38 */	bne lbl_8009E0D8
/* 8009E0A4  A8 1B 30 8A */	lha r0, 0x308a(r27)
/* 8009E0A8  7C 80 00 D0 */	neg r4, r0
/* 8009E0AC  A8 1B 30 88 */	lha r0, 0x3088(r27)
/* 8009E0B0  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E0B4  38 60 00 00 */	li r3, 0
/* 8009E0B8  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009E0BC  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009E0C0  38 00 00 02 */	li r0, 2
/* 8009E0C4  B0 01 00 08 */	sth r0, 8(r1)
/* 8009E0C8  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8009E0CC  38 00 00 01 */	li r0, 1
/* 8009E0D0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8009E0D4  48 00 03 C8 */	b lbl_8009E49C
lbl_8009E0D8:
/* 8009E0D8  2C 1F 00 01 */	cmpwi r31, 1
/* 8009E0DC  40 82 00 B0 */	bne lbl_8009E18C
/* 8009E0E0  38 00 00 00 */	li r0, 0
/* 8009E0E4  88 7B 2F AA */	lbz r3, 0x2faa(r27)
/* 8009E0E8  28 03 00 01 */	cmplwi r3, 1
/* 8009E0EC  41 82 00 0C */	beq lbl_8009E0F8
/* 8009E0F0  28 03 00 02 */	cmplwi r3, 2
/* 8009E0F4  40 82 00 08 */	bne lbl_8009E0FC
lbl_8009E0F8:
/* 8009E0F8  38 00 00 01 */	li r0, 1
lbl_8009E0FC:
/* 8009E0FC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8009E100  41 82 00 3C */	beq lbl_8009E13C
/* 8009E104  7F 63 DB 78 */	mr r3, r27
/* 8009E108  48 04 ED FD */	bl checkHorseLieAnime__9daAlink_cCFv
/* 8009E10C  2C 03 00 00 */	cmpwi r3, 0
/* 8009E110  40 82 00 2C */	bne lbl_8009E13C
/* 8009E114  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8009E118  28 00 00 4F */	cmplwi r0, 0x4f
/* 8009E11C  41 82 00 20 */	beq lbl_8009E13C
/* 8009E120  28 00 00 53 */	cmplwi r0, 0x53
/* 8009E124  41 82 00 18 */	beq lbl_8009E13C
/* 8009E128  A8 7B 04 E4 */	lha r3, 0x4e4(r27)
/* 8009E12C  A8 1B 05 9C */	lha r0, 0x59c(r27)
/* 8009E130  7C 03 00 50 */	subf r0, r3, r0
/* 8009E134  7C 05 07 34 */	extsh r5, r0
/* 8009E138  48 00 00 08 */	b lbl_8009E140
lbl_8009E13C:
/* 8009E13C  A8 BB 05 9C */	lha r5, 0x59c(r27)
lbl_8009E140:
/* 8009E140  7C A0 07 35 */	extsh. r0, r5
/* 8009E144  40 82 00 1C */	bne lbl_8009E160
/* 8009E148  A8 1B 30 C8 */	lha r0, 0x30c8(r27)
/* 8009E14C  2C 00 00 00 */	cmpwi r0, 0
/* 8009E150  40 82 00 10 */	bne lbl_8009E160
/* 8009E154  A8 1B 05 A0 */	lha r0, 0x5a0(r27)
/* 8009E158  2C 00 00 00 */	cmpwi r0, 0
/* 8009E15C  41 82 03 40 */	beq lbl_8009E49C
lbl_8009E160:
/* 8009E160  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 8009E164  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009E168  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009E16C  38 83 00 30 */	addi r4, r3, 0x30
/* 8009E170  7F 63 DB 78 */	mr r3, r27
/* 8009E174  A8 DB 30 C8 */	lha r6, 0x30c8(r27)
/* 8009E178  A8 FB 05 A0 */	lha r7, 0x5a0(r27)
/* 8009E17C  39 00 00 01 */	li r8, 1
/* 8009E180  39 20 00 00 */	li r9, 0
/* 8009E184  4B FF FA E9 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8009E188  48 00 03 14 */	b lbl_8009E49C
lbl_8009E18C:
/* 8009E18C  2C 1F 00 02 */	cmpwi r31, 2
/* 8009E190  40 82 00 3C */	bne lbl_8009E1CC
/* 8009E194  A8 DB 30 C8 */	lha r6, 0x30c8(r27)
/* 8009E198  7C C0 07 35 */	extsh. r0, r6
/* 8009E19C  41 82 03 00 */	beq lbl_8009E49C
/* 8009E1A0  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 8009E1A4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009E1A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009E1AC  38 83 00 60 */	addi r4, r3, 0x60
/* 8009E1B0  7F 63 DB 78 */	mr r3, r27
/* 8009E1B4  38 A0 00 00 */	li r5, 0
/* 8009E1B8  38 E0 00 00 */	li r7, 0
/* 8009E1BC  39 00 00 01 */	li r8, 1
/* 8009E1C0  39 20 00 00 */	li r9, 0
/* 8009E1C4  4B FF FA A9 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8009E1C8  48 00 02 D4 */	b lbl_8009E49C
lbl_8009E1CC:
/* 8009E1CC  2C 1F 00 00 */	cmpwi r31, 0
/* 8009E1D0  40 82 01 24 */	bne lbl_8009E2F4
/* 8009E1D4  A0 1B 2F E8 */	lhz r0, 0x2fe8(r27)
/* 8009E1D8  28 00 01 3D */	cmplwi r0, 0x13d
/* 8009E1DC  41 82 00 0C */	beq lbl_8009E1E8
/* 8009E1E0  28 00 00 E6 */	cmplwi r0, 0xe6
/* 8009E1E4  40 82 00 1C */	bne lbl_8009E200
lbl_8009E1E8:
/* 8009E1E8  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E1EC  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009E1F0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8009E1F4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8009E1F8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8009E1FC  48 00 00 50 */	b lbl_8009E24C
lbl_8009E200:
/* 8009E200  88 9B 2F 99 */	lbz r4, 0x2f99(r27)
/* 8009E204  54 80 07 7F */	clrlwi. r0, r4, 0x1d
/* 8009E208  41 82 00 44 */	beq lbl_8009E24C
/* 8009E20C  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E210  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009E214  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8009E218  41 82 00 0C */	beq lbl_8009E224
/* 8009E21C  C0 1B 35 90 */	lfs f0, 0x3590(r27)
/* 8009E220  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_8009E224:
/* 8009E224  88 1B 2F 99 */	lbz r0, 0x2f99(r27)
/* 8009E228  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8009E22C  41 82 00 0C */	beq lbl_8009E238
/* 8009E230  C0 1B 35 88 */	lfs f0, 0x3588(r27)
/* 8009E234  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_8009E238:
/* 8009E238  88 1B 2F 99 */	lbz r0, 0x2f99(r27)
/* 8009E23C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8009E240  41 82 00 0C */	beq lbl_8009E24C
/* 8009E244  C0 1B 33 B0 */	lfs f0, 0x33b0(r27)
/* 8009E248  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_8009E24C:
/* 8009E24C  A8 9B 30 82 */	lha r4, 0x3082(r27)
/* 8009E250  A8 1B 30 80 */	lha r0, 0x3080(r27)
/* 8009E254  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E258  38 60 00 00 */	li r3, 0
/* 8009E25C  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8009E260  B0 81 00 14 */	sth r4, 0x14(r1)
/* 8009E264  38 00 00 02 */	li r0, 2
/* 8009E268  B0 01 00 08 */	sth r0, 8(r1)
/* 8009E26C  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8009E270  38 00 00 01 */	li r0, 1
/* 8009E274  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8009E278  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E27C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8009E280  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0 /* qr0 */
/* 8009E284  F0 01 00 78 */	psq_st f0, 120(r1), 0, 0 /* qr0 */
/* 8009E288  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009E28C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8009E290  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8009E294  90 01 00 84 */	stw r0, 0x84(r1)
/* 8009E298  A8 03 00 10 */	lha r0, 0x10(r3)
/* 8009E29C  B0 01 00 88 */	sth r0, 0x88(r1)
/* 8009E2A0  E0 03 00 14 */	psq_l f0, 20(r3), 0, 0 /* qr0 */
/* 8009E2A4  F0 01 00 8C */	psq_st f0, 140(r1), 0, 0 /* qr0 */
/* 8009E2A8  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8009E2AC  D0 41 00 94 */	stfs f2, 0x94(r1)
/* 8009E2B0  63 9C 00 02 */	ori r28, r28, 2
/* 8009E2B4  88 1B 2F 99 */	lbz r0, 0x2f99(r27)
/* 8009E2B8  28 00 00 60 */	cmplwi r0, 0x60
/* 8009E2BC  40 82 01 E0 */	bne lbl_8009E49C
/* 8009E2C0  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 8009E2C4  80 7B 38 4C */	lwz r3, 0x384c(r27)
/* 8009E2C8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8009E2CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8009E2D0  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8009E2D4  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 8009E2D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009E2DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8009E2E0  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8009E2E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009E2E8  EC 02 00 28 */	fsubs f0, f2, f0
/* 8009E2EC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8009E2F0  48 00 01 AC */	b lbl_8009E49C
lbl_8009E2F4:
/* 8009E2F4  2C 1F 00 1B */	cmpwi r31, 0x1b
/* 8009E2F8  40 82 00 38 */	bne lbl_8009E330
/* 8009E2FC  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 8009E300  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009E304  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009E308  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 8009E30C  7C 83 02 14 */	add r4, r3, r0
/* 8009E310  7F 63 DB 78 */	mr r3, r27
/* 8009E314  A8 BB 29 0A */	lha r5, 0x290a(r27)
/* 8009E318  38 C0 00 00 */	li r6, 0
/* 8009E31C  38 E0 00 00 */	li r7, 0
/* 8009E320  39 00 00 01 */	li r8, 1
/* 8009E324  39 20 00 00 */	li r9, 0
/* 8009E328  4B FF F9 45 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8009E32C  48 00 01 70 */	b lbl_8009E49C
lbl_8009E330:
/* 8009E330  2C 1F 00 1D */	cmpwi r31, 0x1d
/* 8009E334  40 82 00 38 */	bne lbl_8009E36C
/* 8009E338  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 8009E33C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009E340  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009E344  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 8009E348  7C 83 02 14 */	add r4, r3, r0
/* 8009E34C  7F 63 DB 78 */	mr r3, r27
/* 8009E350  A8 BB 29 AE */	lha r5, 0x29ae(r27)
/* 8009E354  38 C0 00 00 */	li r6, 0
/* 8009E358  38 E0 00 00 */	li r7, 0
/* 8009E35C  39 00 00 01 */	li r8, 1
/* 8009E360  39 20 00 00 */	li r9, 0
/* 8009E364  4B FF F9 09 */	bl setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz
/* 8009E368  48 00 01 34 */	b lbl_8009E49C
lbl_8009E36C:
/* 8009E36C  2C 1F 00 05 */	cmpwi r31, 5
/* 8009E370  40 82 00 90 */	bne lbl_8009E400
/* 8009E374  38 00 00 00 */	li r0, 0
/* 8009E378  88 7B 2F AA */	lbz r3, 0x2faa(r27)
/* 8009E37C  28 03 00 01 */	cmplwi r3, 1
/* 8009E380  41 82 00 0C */	beq lbl_8009E38C
/* 8009E384  28 03 00 02 */	cmplwi r3, 2
/* 8009E388  40 82 00 08 */	bne lbl_8009E390
lbl_8009E38C:
/* 8009E38C  38 00 00 01 */	li r0, 1
lbl_8009E390:
/* 8009E390  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8009E394  41 82 01 08 */	beq lbl_8009E49C
/* 8009E398  7F 63 DB 78 */	mr r3, r27
/* 8009E39C  48 04 06 4D */	bl checkBowAnime__9daAlink_cCFv
/* 8009E3A0  2C 03 00 00 */	cmpwi r3, 0
/* 8009E3A4  41 82 00 F8 */	beq lbl_8009E49C
/* 8009E3A8  3B 80 00 01 */	li r28, 1
/* 8009E3AC  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E3B0  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8009E3B4  7C 60 F2 14 */	add r3, r0, r30
/* 8009E3B8  C0 03 00 00 */	lfs f0, 0(r3)
/* 8009E3BC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8009E3C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009E3C4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8009E3C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009E3CC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8009E3D0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009E3D4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8009E3D8  38 60 00 00 */	li r3, 0
/* 8009E3DC  38 80 00 00 */	li r4, 0
/* 8009E3E0  38 A0 13 88 */	li r5, 0x1388
/* 8009E3E4  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E3E8  48 29 B4 91 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8009E3EC  38 61 00 48 */	addi r3, r1, 0x48
/* 8009E3F0  38 81 00 38 */	addi r4, r1, 0x38
/* 8009E3F4  38 A1 00 28 */	addi r5, r1, 0x28
/* 8009E3F8  4B F6 E7 65 */	bl mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion
/* 8009E3FC  48 00 00 A0 */	b lbl_8009E49C
lbl_8009E400:
/* 8009E400  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8009E404  41 82 00 0C */	beq lbl_8009E410
/* 8009E408  2C 1F 00 0C */	cmpwi r31, 0xc
/* 8009E40C  40 82 00 90 */	bne lbl_8009E49C
lbl_8009E410:
/* 8009E410  38 60 00 00 */	li r3, 0
/* 8009E414  A0 1B 1F BC */	lhz r0, 0x1fbc(r27)
/* 8009E418  28 00 00 5D */	cmplwi r0, 0x5d
/* 8009E41C  41 82 00 10 */	beq lbl_8009E42C
/* 8009E420  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8009E424  28 00 02 60 */	cmplwi r0, 0x260
/* 8009E428  40 82 00 08 */	bne lbl_8009E430
lbl_8009E42C:
/* 8009E42C  38 60 00 01 */	li r3, 1
lbl_8009E430:
/* 8009E430  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8009E434  40 82 00 2C */	bne lbl_8009E460
/* 8009E438  7F 63 DB 78 */	mr r3, r27
/* 8009E43C  38 80 00 E0 */	li r4, 0xe0
/* 8009E440  48 00 E1 19 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8009E444  2C 03 00 00 */	cmpwi r3, 0
/* 8009E448  40 82 00 18 */	bne lbl_8009E460
/* 8009E44C  7F 63 DB 78 */	mr r3, r27
/* 8009E450  38 80 00 E1 */	li r4, 0xe1
/* 8009E454  48 00 E1 05 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8009E458  2C 03 00 00 */	cmpwi r3, 0
/* 8009E45C  41 82 00 40 */	beq lbl_8009E49C
lbl_8009E460:
/* 8009E460  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8009E464  40 82 00 20 */	bne lbl_8009E484
/* 8009E468  A8 1B 31 60 */	lha r0, 0x3160(r27)
/* 8009E46C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E470  A8 1B 31 62 */	lha r0, 0x3162(r27)
/* 8009E474  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8009E478  A8 1B 31 64 */	lha r0, 0x3164(r27)
/* 8009E47C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 8009E480  48 00 00 1C */	b lbl_8009E49C
lbl_8009E484:
/* 8009E484  A8 1B 31 5A */	lha r0, 0x315a(r27)
/* 8009E488  B0 01 00 10 */	sth r0, 0x10(r1)
/* 8009E48C  A8 1B 31 5C */	lha r0, 0x315c(r27)
/* 8009E490  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8009E494  A8 1B 31 5E */	lha r0, 0x315e(r27)
/* 8009E498  B0 01 00 14 */	sth r0, 0x14(r1)
lbl_8009E49C:
/* 8009E49C  A8 01 00 10 */	lha r0, 0x10(r1)
/* 8009E4A0  2C 00 00 00 */	cmpwi r0, 0
/* 8009E4A4  40 82 00 1C */	bne lbl_8009E4C0
/* 8009E4A8  A8 01 00 12 */	lha r0, 0x12(r1)
/* 8009E4AC  2C 00 00 00 */	cmpwi r0, 0
/* 8009E4B0  40 82 00 10 */	bne lbl_8009E4C0
/* 8009E4B4  A8 01 00 14 */	lha r0, 0x14(r1)
/* 8009E4B8  2C 00 00 00 */	cmpwi r0, 0
/* 8009E4BC  41 82 01 F4 */	beq lbl_8009E6B0
lbl_8009E4C0:
/* 8009E4C0  63 9C 00 01 */	ori r28, r28, 1
/* 8009E4C4  A8 A1 00 12 */	lha r5, 0x12(r1)
/* 8009E4C8  7C A0 07 35 */	extsh. r0, r5
/* 8009E4CC  41 82 00 98 */	beq lbl_8009E564
/* 8009E4D0  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E4D4  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8009E4D8  7C 60 F2 14 */	add r3, r0, r30
/* 8009E4DC  C0 03 00 00 */	lfs f0, 0(r3)
/* 8009E4E0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8009E4E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009E4E8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8009E4EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009E4F0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8009E4F4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009E4F8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8009E4FC  A8 61 00 0A */	lha r3, 0xa(r1)
/* 8009E500  7C 60 07 35 */	extsh. r0, r3
/* 8009E504  40 82 00 1C */	bne lbl_8009E520
/* 8009E508  7C A3 2B 78 */	mr r3, r5
/* 8009E50C  38 80 00 00 */	li r4, 0
/* 8009E510  38 A0 00 00 */	li r5, 0
/* 8009E514  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E518  48 29 B3 61 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8009E51C  48 00 00 34 */	b lbl_8009E550
lbl_8009E520:
/* 8009E520  2C 03 00 01 */	cmpwi r3, 1
/* 8009E524  40 82 00 1C */	bne lbl_8009E540
/* 8009E528  38 60 00 00 */	li r3, 0
/* 8009E52C  7C A4 2B 78 */	mr r4, r5
/* 8009E530  38 A0 00 00 */	li r5, 0
/* 8009E534  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E538  48 29 B3 41 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8009E53C  48 00 00 14 */	b lbl_8009E550
lbl_8009E540:
/* 8009E540  38 60 00 00 */	li r3, 0
/* 8009E544  38 80 00 00 */	li r4, 0
/* 8009E548  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E54C  48 29 B3 2D */	bl JMAEulerToQuat__FsssP10Quaternion
lbl_8009E550:
/* 8009E550  38 61 00 48 */	addi r3, r1, 0x48
/* 8009E554  38 81 00 38 */	addi r4, r1, 0x38
/* 8009E558  38 A1 00 28 */	addi r5, r1, 0x28
/* 8009E55C  4B F6 E6 01 */	bl mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion
/* 8009E560  48 00 00 30 */	b lbl_8009E590
lbl_8009E564:
/* 8009E564  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E568  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8009E56C  7C 60 F2 14 */	add r3, r0, r30
/* 8009E570  C0 03 00 00 */	lfs f0, 0(r3)
/* 8009E574  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8009E578  C0 03 00 04 */	lfs f0, 4(r3)
/* 8009E57C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8009E580  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009E584  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8009E588  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8009E58C  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_8009E590:
/* 8009E590  A8 A1 00 10 */	lha r5, 0x10(r1)
/* 8009E594  7C A0 07 35 */	extsh. r0, r5
/* 8009E598  41 82 00 88 */	beq lbl_8009E620
/* 8009E59C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8009E5A0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8009E5A4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8009E5A8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8009E5AC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8009E5B0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8009E5B4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8009E5B8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8009E5BC  A8 61 00 08 */	lha r3, 8(r1)
/* 8009E5C0  7C 60 07 35 */	extsh. r0, r3
/* 8009E5C4  40 82 00 1C */	bne lbl_8009E5E0
/* 8009E5C8  7C A3 2B 78 */	mr r3, r5
/* 8009E5CC  38 80 00 00 */	li r4, 0
/* 8009E5D0  38 A0 00 00 */	li r5, 0
/* 8009E5D4  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E5D8  48 29 B2 A1 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8009E5DC  48 00 00 34 */	b lbl_8009E610
lbl_8009E5E0:
/* 8009E5E0  2C 03 00 01 */	cmpwi r3, 1
/* 8009E5E4  40 82 00 1C */	bne lbl_8009E600
/* 8009E5E8  38 60 00 00 */	li r3, 0
/* 8009E5EC  7C A4 2B 78 */	mr r4, r5
/* 8009E5F0  38 A0 00 00 */	li r5, 0
/* 8009E5F4  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E5F8  48 29 B2 81 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8009E5FC  48 00 00 14 */	b lbl_8009E610
lbl_8009E600:
/* 8009E600  38 60 00 00 */	li r3, 0
/* 8009E604  38 80 00 00 */	li r4, 0
/* 8009E608  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E60C  48 29 B2 6D */	bl JMAEulerToQuat__FsssP10Quaternion
lbl_8009E610:
/* 8009E610  38 61 00 48 */	addi r3, r1, 0x48
/* 8009E614  38 81 00 38 */	addi r4, r1, 0x38
/* 8009E618  38 A1 00 28 */	addi r5, r1, 0x28
/* 8009E61C  4B F6 E5 41 */	bl mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion
lbl_8009E620:
/* 8009E620  A8 A1 00 14 */	lha r5, 0x14(r1)
/* 8009E624  7C A0 07 35 */	extsh. r0, r5
/* 8009E628  41 82 00 88 */	beq lbl_8009E6B0
/* 8009E62C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8009E630  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8009E634  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8009E638  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8009E63C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8009E640  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8009E644  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8009E648  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8009E64C  A8 61 00 0C */	lha r3, 0xc(r1)
/* 8009E650  7C 60 07 35 */	extsh. r0, r3
/* 8009E654  40 82 00 1C */	bne lbl_8009E670
/* 8009E658  7C A3 2B 78 */	mr r3, r5
/* 8009E65C  38 80 00 00 */	li r4, 0
/* 8009E660  38 A0 00 00 */	li r5, 0
/* 8009E664  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E668  48 29 B2 11 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8009E66C  48 00 00 34 */	b lbl_8009E6A0
lbl_8009E670:
/* 8009E670  2C 03 00 01 */	cmpwi r3, 1
/* 8009E674  40 82 00 1C */	bne lbl_8009E690
/* 8009E678  38 60 00 00 */	li r3, 0
/* 8009E67C  7C A4 2B 78 */	mr r4, r5
/* 8009E680  38 A0 00 00 */	li r5, 0
/* 8009E684  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E688  48 29 B1 F1 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8009E68C  48 00 00 14 */	b lbl_8009E6A0
lbl_8009E690:
/* 8009E690  38 60 00 00 */	li r3, 0
/* 8009E694  38 80 00 00 */	li r4, 0
/* 8009E698  38 C1 00 38 */	addi r6, r1, 0x38
/* 8009E69C  48 29 B1 DD */	bl JMAEulerToQuat__FsssP10Quaternion
lbl_8009E6A0:
/* 8009E6A0  38 61 00 48 */	addi r3, r1, 0x48
/* 8009E6A4  38 81 00 38 */	addi r4, r1, 0x38
/* 8009E6A8  38 A1 00 28 */	addi r5, r1, 0x28
/* 8009E6AC  4B F6 E4 B1 */	bl mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion
lbl_8009E6B0:
/* 8009E6B0  2C 1C 00 00 */	cmpwi r28, 0
/* 8009E6B4  41 82 00 E8 */	beq lbl_8009E79C
/* 8009E6B8  80 7B 06 50 */	lwz r3, 0x650(r27)
/* 8009E6BC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8009E6C0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8009E6C4  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 8009E6C8  7F E3 02 14 */	add r31, r3, r0
/* 8009E6CC  57 80 07 BD */	rlwinm. r0, r28, 0, 0x1e, 0x1e
/* 8009E6D0  41 82 00 0C */	beq lbl_8009E6DC
/* 8009E6D4  3B A1 00 78 */	addi r29, r1, 0x78
/* 8009E6D8  48 00 00 14 */	b lbl_8009E6EC
lbl_8009E6DC:
/* 8009E6DC  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E6E0  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 8009E6E4  7C 00 EA 14 */	add r0, r0, r29
/* 8009E6E8  7C 1D 03 78 */	mr r29, r0
lbl_8009E6EC:
/* 8009E6EC  57 80 07 FF */	clrlwi. r0, r28, 0x1f
/* 8009E6F0  41 82 00 0C */	beq lbl_8009E6FC
/* 8009E6F4  3B 61 00 28 */	addi r27, r1, 0x28
/* 8009E6F8  48 00 00 14 */	b lbl_8009E70C
lbl_8009E6FC:
/* 8009E6FC  80 7B 20 60 */	lwz r3, 0x2060(r27)
/* 8009E700  80 03 00 20 */	lwz r0, 0x20(r3)
/* 8009E704  7C 00 F2 14 */	add r0, r0, r30
/* 8009E708  7C 1B 03 78 */	mr r27, r0
lbl_8009E70C:
/* 8009E70C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009E710  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009E714  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8009E718  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 8009E71C  C0 61 00 74 */	lfs f3, 0x74(r1)
/* 8009E720  48 2A 81 C9 */	bl PSMTXTrans
/* 8009E724  38 61 00 18 */	addi r3, r1, 0x18
/* 8009E728  4B F6 E8 55 */	bl quatM__14mDoMtx_stack_cFPC10Quaternion
/* 8009E72C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009E730  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009E734  7C 64 1B 78 */	mr r4, r3
/* 8009E738  48 2A 7E 79 */	bl PSMTXInverse
/* 8009E73C  7F E3 FB 78 */	mr r3, r31
/* 8009E740  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8009E744  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8009E748  3C A0 80 43 */	lis r5, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8009E74C  38 A5 4B E4 */	addi r5, r5, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8009E750  48 2A 7D 95 */	bl PSMTXConcat
/* 8009E754  7F E3 FB 78 */	mr r3, r31
/* 8009E758  7F 64 DB 78 */	mr r4, r27
/* 8009E75C  48 2A 82 8D */	bl PSMTXQuat
/* 8009E760  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8009E764  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8009E768  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8009E76C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8009E770  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8009E774  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8009E778  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8009E77C  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8009E780  7F E4 FB 78 */	mr r4, r31
/* 8009E784  7C 65 1B 78 */	mr r5, r3
/* 8009E788  48 2A 7D 5D */	bl PSMTXConcat
/* 8009E78C  3C 60 80 43 */	lis r3, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8009E790  38 63 4B E4 */	addi r3, r3, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8009E794  7F E4 FB 78 */	mr r4, r31
/* 8009E798  48 2A 7D 19 */	bl PSMTXCopy
lbl_8009E79C:
/* 8009E79C  38 60 00 01 */	li r3, 1
/* 8009E7A0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8009E7A4  48 2C 3A 7D */	bl _restgpr_27
/* 8009E7A8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8009E7AC  7C 08 03 A6 */	mtlr r0
/* 8009E7B0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8009E7B4  4E 80 00 20 */	blr 

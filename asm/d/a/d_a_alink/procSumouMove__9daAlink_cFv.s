lbl_800EAD84:
/* 800EAD84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800EAD88  7C 08 02 A6 */	mflr r0
/* 800EAD8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 800EAD90  39 61 00 30 */	addi r11, r1, 0x30
/* 800EAD94  48 27 74 49 */	bl _savegpr_29
/* 800EAD98  7C 7D 1B 78 */	mr r29, r3
/* 800EAD9C  38 00 00 04 */	li r0, 4
/* 800EADA0  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 800EADA4  4B FF FA A1 */	bl checkSumouVsActor__9daAlink_cFv
/* 800EADA8  2C 03 00 00 */	cmpwi r3, 0
/* 800EADAC  40 82 00 0C */	bne lbl_800EADB8
/* 800EADB0  38 60 00 01 */	li r3, 1
/* 800EADB4  48 00 04 3C */	b lbl_800EB1F0
lbl_800EADB8:
/* 800EADB8  83 FD 28 58 */	lwz r31, 0x2858(r29)
/* 800EADBC  3B DD 1F D0 */	addi r30, r29, 0x1fd0
/* 800EADC0  7F C3 F3 78 */	mr r3, r30
/* 800EADC4  C0 3D 34 78 */	lfs f1, 0x3478(r29)
/* 800EADC8  48 23 D6 65 */	bl checkPass__12J3DFrameCtrlFf
/* 800EADCC  2C 03 00 00 */	cmpwi r3, 0
/* 800EADD0  41 82 00 1C */	beq lbl_800EADEC
/* 800EADD4  7F A3 EB 78 */	mr r3, r29
/* 800EADD8  80 9D 32 CC */	lwz r4, 0x32cc(r29)
/* 800EADDC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 800EADE0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EADE4  7D 89 03 A6 */	mtctr r12
/* 800EADE8  4E 80 04 21 */	bctrl 
lbl_800EADEC:
/* 800EADEC  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 800EADF0  28 00 00 09 */	cmplwi r0, 9
/* 800EADF4  41 82 00 0C */	beq lbl_800EAE00
/* 800EADF8  28 00 00 0A */	cmplwi r0, 0xa
/* 800EADFC  40 82 00 D8 */	bne lbl_800EAED4
lbl_800EAE00:
/* 800EAE00  A8 7D 30 0A */	lha r3, 0x300a(r29)
/* 800EAE04  2C 03 00 00 */	cmpwi r3, 0
/* 800EAE08  41 82 00 0C */	beq lbl_800EAE14
/* 800EAE0C  38 03 FF FF */	addi r0, r3, -1
/* 800EAE10  B0 1D 30 0A */	sth r0, 0x300a(r29)
lbl_800EAE14:
/* 800EAE14  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800EAE18  D0 01 00 08 */	stfs f0, 8(r1)
/* 800EAE1C  A8 7D 30 08 */	lha r3, 0x3008(r29)
/* 800EAE20  2C 03 00 00 */	cmpwi r3, 0
/* 800EAE24  41 82 00 54 */	beq lbl_800EAE78
/* 800EAE28  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 800EAE2C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EAE30  41 82 00 0C */	beq lbl_800EAE3C
/* 800EAE34  38 03 FF FF */	addi r0, r3, -1
/* 800EAE38  B0 1D 30 08 */	sth r0, 0x3008(r29)
lbl_800EAE3C:
/* 800EAE3C  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 800EAE40  28 00 00 0A */	cmplwi r0, 0xa
/* 800EAE44  40 82 00 18 */	bne lbl_800EAE5C
/* 800EAE48  A8 1D 30 0A */	lha r0, 0x300a(r29)
/* 800EAE4C  2C 00 00 00 */	cmpwi r0, 0
/* 800EAE50  40 82 00 0C */	bne lbl_800EAE5C
/* 800EAE54  C0 22 93 2C */	lfs f1, lit_7624(r2)
/* 800EAE58  48 00 00 08 */	b lbl_800EAE60
lbl_800EAE5C:
/* 800EAE5C  C0 22 93 F8 */	lfs f1, lit_13700(r2)
lbl_800EAE60:
/* 800EAE60  38 61 00 08 */	addi r3, r1, 8
/* 800EAE64  C0 42 94 A8 */	lfs f2, lit_16570(r2)
/* 800EAE68  48 18 58 D9 */	bl cLib_chaseF__FPfff
/* 800EAE6C  C0 01 00 08 */	lfs f0, 8(r1)
/* 800EAE70  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 800EAE74  48 00 03 10 */	b lbl_800EB184
lbl_800EAE78:
/* 800EAE78  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 800EAE7C  28 00 00 09 */	cmplwi r0, 9
/* 800EAE80  40 82 00 18 */	bne lbl_800EAE98
/* 800EAE84  38 61 00 08 */	addi r3, r1, 8
/* 800EAE88  C0 22 93 2C */	lfs f1, lit_7624(r2)
/* 800EAE8C  C0 42 94 A8 */	lfs f2, lit_16570(r2)
/* 800EAE90  48 18 58 B1 */	bl cLib_chaseF__FPfff
/* 800EAE94  48 00 02 F0 */	b lbl_800EB184
lbl_800EAE98:
/* 800EAE98  7F A3 EB 78 */	mr r3, r29
/* 800EAE9C  38 80 01 54 */	li r4, 0x154
/* 800EAEA0  4B FC 20 E1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EAEA4  38 00 00 23 */	li r0, 0x23
/* 800EAEA8  98 1D 05 6A */	stb r0, 0x56a(r29)
/* 800EAEAC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EAEB0  D0 1D 33 9C */	stfs f0, 0x339c(r29)
/* 800EAEB4  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800EAEB8  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 800EAEBC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001004C@ha */
/* 800EAEC0  38 03 00 4C */	addi r0, r3, 0x004C /* 0x0001004C@l */
/* 800EAEC4  90 1D 32 CC */	stw r0, 0x32cc(r29)
/* 800EAEC8  38 00 01 54 */	li r0, 0x154
/* 800EAECC  90 1D 31 98 */	stw r0, 0x3198(r29)
/* 800EAED0  48 00 02 B4 */	b lbl_800EB184
lbl_800EAED4:
/* 800EAED4  A8 1D 30 0E */	lha r0, 0x300e(r29)
/* 800EAED8  2C 00 00 00 */	cmpwi r0, 0
/* 800EAEDC  40 82 02 8C */	bne lbl_800EB168
/* 800EAEE0  A8 7D 30 0C */	lha r3, 0x300c(r29)
/* 800EAEE4  2C 03 00 00 */	cmpwi r3, 0
/* 800EAEE8  40 81 00 18 */	ble lbl_800EAF00
/* 800EAEEC  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 800EAEF0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EAEF4  41 82 00 0C */	beq lbl_800EAF00
/* 800EAEF8  38 03 FF FF */	addi r0, r3, -1
/* 800EAEFC  B0 1D 30 0C */	sth r0, 0x300c(r29)
lbl_800EAF00:
/* 800EAF00  7F A3 EB 78 */	mr r3, r29
/* 800EAF04  38 80 00 64 */	li r4, 0x64
/* 800EAF08  4B FC 83 79 */	bl setDoStatusContinuation__9daAlink_cFUc
/* 800EAF0C  C0 3D 33 9C */	lfs f1, 0x339c(r29)
/* 800EAF10  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EAF14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EAF18  40 81 00 4C */	ble lbl_800EAF64
/* 800EAF1C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800EAF20  D0 01 00 08 */	stfs f0, 8(r1)
/* 800EAF24  88 1D 2F 8D */	lbz r0, 0x2f8d(r29)
/* 800EAF28  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800EAF2C  41 82 00 18 */	beq lbl_800EAF44
/* 800EAF30  38 61 00 08 */	addi r3, r1, 8
/* 800EAF34  C0 22 93 2C */	lfs f1, lit_7624(r2)
/* 800EAF38  C0 42 93 A0 */	lfs f2, lit_9054(r2)
/* 800EAF3C  48 18 58 05 */	bl cLib_chaseF__FPfff
/* 800EAF40  48 00 00 1C */	b lbl_800EAF5C
lbl_800EAF44:
/* 800EAF44  38 61 00 08 */	addi r3, r1, 8
/* 800EAF48  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800EAF4C  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800EAF50  C0 62 92 A4 */	lfs f3, lit_6021(r2)
/* 800EAF54  C0 82 94 44 */	lfs f4, lit_14760(r2)
/* 800EAF58  48 18 4A 25 */	bl cLib_addCalc__FPfffff
lbl_800EAF5C:
/* 800EAF5C  C0 01 00 08 */	lfs f0, 8(r1)
/* 800EAF60  D0 1E 00 0C */	stfs f0, 0xc(r30)
lbl_800EAF64:
/* 800EAF64  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 800EAF68  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 800EAF6C  A0 03 00 AC */	lhz r0, 0xac(r3)
/* 800EAF70  60 00 00 01 */	ori r0, r0, 1
/* 800EAF74  B0 03 00 AC */	sth r0, 0xac(r3)
/* 800EAF78  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 800EAF7C  28 00 00 24 */	cmplwi r0, 0x24
/* 800EAF80  41 82 00 20 */	beq lbl_800EAFA0
/* 800EAF84  C0 5D 33 9C */	lfs f2, 0x339c(r29)
/* 800EAF88  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EAF8C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800EAF90  40 80 00 B0 */	bge lbl_800EB040
/* 800EAF94  A8 1D 30 0C */	lha r0, 0x300c(r29)
/* 800EAF98  2C 00 00 00 */	cmpwi r0, 0
/* 800EAF9C  40 82 00 A4 */	bne lbl_800EB040
lbl_800EAFA0:
/* 800EAFA0  38 00 00 01 */	li r0, 1
/* 800EAFA4  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 800EAFA8  38 00 00 0C */	li r0, 0xc
/* 800EAFAC  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 800EAFB0  C0 3D 33 9C */	lfs f1, 0x339c(r29)
/* 800EAFB4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EAFB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EAFBC  40 81 00 48 */	ble lbl_800EB004
/* 800EAFC0  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 800EAFC4  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 800EAFC8  3B E0 01 55 */	li r31, 0x155
/* 800EAFCC  41 82 00 08 */	beq lbl_800EAFD4
/* 800EAFD0  3B E0 01 56 */	li r31, 0x156
lbl_800EAFD4:
/* 800EAFD4  7F A3 EB 78 */	mr r3, r29
/* 800EAFD8  7F E4 FB 78 */	mr r4, r31
/* 800EAFDC  4B FC 1F A5 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EAFE0  38 00 00 24 */	li r0, 0x24
/* 800EAFE4  98 1D 05 6A */	stb r0, 0x56a(r29)
/* 800EAFE8  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800EAFEC  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 800EAFF0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010062@ha */
/* 800EAFF4  38 03 00 62 */	addi r0, r3, 0x0062 /* 0x00010062@l */
/* 800EAFF8  90 1D 32 CC */	stw r0, 0x32cc(r29)
/* 800EAFFC  93 FD 31 98 */	stw r31, 0x3198(r29)
/* 800EB000  48 00 00 34 */	b lbl_800EB034
lbl_800EB004:
/* 800EB004  7F A3 EB 78 */	mr r3, r29
/* 800EB008  38 80 01 54 */	li r4, 0x154
/* 800EB00C  4B FC 1F 75 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EB010  38 00 00 23 */	li r0, 0x23
/* 800EB014  98 1D 05 6A */	stb r0, 0x56a(r29)
/* 800EB018  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800EB01C  D0 1D 34 78 */	stfs f0, 0x3478(r29)
/* 800EB020  3C 60 00 01 */	lis r3, 0x0001 /* 0x0001004C@ha */
/* 800EB024  38 03 00 4C */	addi r0, r3, 0x004C /* 0x0001004C@l */
/* 800EB028  90 1D 32 CC */	stw r0, 0x32cc(r29)
/* 800EB02C  38 00 01 54 */	li r0, 0x154
/* 800EB030  90 1D 31 98 */	stw r0, 0x3198(r29)
lbl_800EB034:
/* 800EB034  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EB038  D0 1D 33 9C */	stfs f0, 0x339c(r29)
/* 800EB03C  48 00 01 48 */	b lbl_800EB184
lbl_800EB040:
/* 800EB040  3B E0 00 00 */	li r31, 0
/* 800EB044  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EB048  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800EB04C  40 81 00 80 */	ble lbl_800EB0CC
/* 800EB050  C0 3D 33 AC */	lfs f1, 0x33ac(r29)
/* 800EB054  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800EB058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EB05C  40 81 00 70 */	ble lbl_800EB0CC
/* 800EB060  A8 7D 2F E0 */	lha r3, 0x2fe0(r29)
/* 800EB064  4B FC 84 31 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800EB068  2C 03 00 02 */	cmpwi r3, 2
/* 800EB06C  41 82 00 0C */	beq lbl_800EB078
/* 800EB070  2C 03 00 03 */	cmpwi r3, 3
/* 800EB074  40 82 00 70 */	bne lbl_800EB0E4
lbl_800EB078:
/* 800EB078  C0 5D 33 AC */	lfs f2, 0x33ac(r29)
/* 800EB07C  3C 80 80 39 */	lis r4, m__22daAlinkHIO_pushpull_c0@ha /* 0x8038E210@ha */
/* 800EB080  38 84 E2 10 */	addi r4, r4, m__22daAlinkHIO_pushpull_c0@l /* 0x8038E210@l */
/* 800EB084  A8 04 00 0E */	lha r0, 0xe(r4)
/* 800EB088  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800EB08C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800EB090  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EB094  3C 00 43 30 */	lis r0, 0x4330
/* 800EB098  90 01 00 10 */	stw r0, 0x10(r1)
/* 800EB09C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800EB0A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800EB0A4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800EB0A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800EB0AC  FC 00 00 1E */	fctiwz f0, f0
/* 800EB0B0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800EB0B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EB0B8  2C 03 00 03 */	cmpwi r3, 3
/* 800EB0BC  40 82 00 28 */	bne lbl_800EB0E4
/* 800EB0C0  7C 1F 00 D0 */	neg r0, r31
/* 800EB0C4  7C 1F 07 34 */	extsh r31, r0
/* 800EB0C8  48 00 00 1C */	b lbl_800EB0E4
lbl_800EB0CC:
/* 800EB0CC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EB0D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800EB0D4  40 80 00 10 */	bge lbl_800EB0E4
/* 800EB0D8  AB FD 30 10 */	lha r31, 0x3010(r29)
/* 800EB0DC  38 00 00 00 */	li r0, 0
/* 800EB0E0  B0 1D 30 10 */	sth r0, 0x3010(r29)
lbl_800EB0E4:
/* 800EB0E4  7F E0 07 35 */	extsh. r0, r31
/* 800EB0E8  41 82 00 9C */	beq lbl_800EB184
/* 800EB0EC  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800EB0F0  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 800EB0F4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800EB0F8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800EB0FC  7C 03 24 2E */	lfsx f0, r3, r4
/* 800EB100  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 800EB104  C0 42 93 D4 */	lfs f2, lit_11442(r2)
/* 800EB108  EC 02 00 32 */	fmuls f0, f2, f0
/* 800EB10C  EC 61 00 2A */	fadds f3, f1, f0
/* 800EB110  38 A3 00 04 */	addi r5, r3, 4
/* 800EB114  7C 05 24 2E */	lfsx f0, r5, r4
/* 800EB118  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 800EB11C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800EB120  EC 21 00 2A */	fadds f1, f1, f0
/* 800EB124  7C 00 FA 14 */	add r0, r0, r31
/* 800EB128  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 800EB12C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800EB130  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 800EB134  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800EB138  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800EB13C  7C 03 04 2E */	lfsx f0, r3, r0
/* 800EB140  EC 02 00 32 */	fmuls f0, f2, f0
/* 800EB144  EC 03 00 28 */	fsubs f0, f3, f0
/* 800EB148  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 800EB14C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800EB150  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800EB154  7C 05 04 2E */	lfsx f0, r5, r0
/* 800EB158  EC 02 00 32 */	fmuls f0, f2, f0
/* 800EB15C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800EB160  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 800EB164  48 00 00 20 */	b lbl_800EB184
lbl_800EB168:
/* 800EB168  7F C3 F3 78 */	mr r3, r30
/* 800EB16C  48 07 33 61 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EB170  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EB174  41 82 00 10 */	beq lbl_800EB184
/* 800EB178  7F A3 EB 78 */	mr r3, r29
/* 800EB17C  48 00 00 8D */	bl procSumouSideMoveInit__9daAlink_cFv
/* 800EB180  48 00 00 70 */	b lbl_800EB1F0
lbl_800EB184:
/* 800EB184  80 1D 31 98 */	lwz r0, 0x3198(r29)
/* 800EB188  2C 00 01 4C */	cmpwi r0, 0x14c
/* 800EB18C  41 82 00 1C */	beq lbl_800EB1A8
/* 800EB190  2C 00 01 4D */	cmpwi r0, 0x14d
/* 800EB194  41 82 00 14 */	beq lbl_800EB1A8
/* 800EB198  2C 00 01 4B */	cmpwi r0, 0x14b
/* 800EB19C  41 82 00 0C */	beq lbl_800EB1A8
/* 800EB1A0  2C 00 01 4A */	cmpwi r0, 0x14a
/* 800EB1A4  40 82 00 10 */	bne lbl_800EB1B4
lbl_800EB1A8:
/* 800EB1A8  38 00 00 60 */	li r0, 0x60
/* 800EB1AC  98 1D 2F 9D */	stb r0, 0x2f9d(r29)
/* 800EB1B0  48 00 00 3C */	b lbl_800EB1EC
lbl_800EB1B4:
/* 800EB1B4  2C 00 01 55 */	cmpwi r0, 0x155
/* 800EB1B8  41 82 00 0C */	beq lbl_800EB1C4
/* 800EB1BC  2C 00 01 56 */	cmpwi r0, 0x156
/* 800EB1C0  40 82 00 2C */	bne lbl_800EB1EC
lbl_800EB1C4:
/* 800EB1C4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800EB1C8  C0 02 94 04 */	lfs f0, lit_13794(r2)
/* 800EB1CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EB1D0  4C 41 13 82 */	cror 2, 1, 2
/* 800EB1D4  40 82 00 18 */	bne lbl_800EB1EC
/* 800EB1D8  C0 02 93 90 */	lfs f0, lit_8784(r2)
/* 800EB1DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EB1E0  40 80 00 0C */	bge lbl_800EB1EC
/* 800EB1E4  38 00 00 60 */	li r0, 0x60
/* 800EB1E8  98 1D 2F 9D */	stb r0, 0x2f9d(r29)
lbl_800EB1EC:
/* 800EB1EC  38 60 00 01 */	li r3, 1
lbl_800EB1F0:
/* 800EB1F0  39 61 00 30 */	addi r11, r1, 0x30
/* 800EB1F4  48 27 70 35 */	bl _restgpr_29
/* 800EB1F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800EB1FC  7C 08 03 A6 */	mtlr r0
/* 800EB200  38 21 00 30 */	addi r1, r1, 0x30
/* 800EB204  4E 80 00 20 */	blr 

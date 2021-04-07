lbl_8050DC10:
/* 8050DC10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050DC14  7C 08 02 A6 */	mflr r0
/* 8050DC18  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050DC1C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050DC20  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8050DC24  7C 7E 1B 78 */	mr r30, r3
/* 8050DC28  3C 80 80 52 */	lis r4, lit_4208@ha /* 0x80518584@ha */
/* 8050DC2C  3B E4 85 84 */	addi r31, r4, lit_4208@l /* 0x80518584@l */
/* 8050DC30  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8050DC34  54 00 00 3E */	slwi r0, r0, 0
/* 8050DC38  90 03 04 9C */	stw r0, 0x49c(r3)
/* 8050DC3C  38 A0 00 00 */	li r5, 0
/* 8050DC40  90 A3 05 5C */	stw r5, 0x55c(r3)
/* 8050DC44  38 00 00 0A */	li r0, 0xa
/* 8050DC48  B0 03 09 98 */	sth r0, 0x998(r3)
/* 8050DC4C  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8050DC50  28 00 00 06 */	cmplwi r0, 6
/* 8050DC54  41 81 01 94 */	bgt lbl_8050DDE8
/* 8050DC58  3C 80 80 52 */	lis r4, lit_7943@ha /* 0x80518CA0@ha */
/* 8050DC5C  38 84 8C A0 */	addi r4, r4, lit_7943@l /* 0x80518CA0@l */
/* 8050DC60  54 00 10 3A */	slwi r0, r0, 2
/* 8050DC64  7C 04 00 2E */	lwzx r0, r4, r0
/* 8050DC68  7C 09 03 A6 */	mtctr r0
/* 8050DC6C  4E 80 04 20 */	bctr 
lbl_8050DC70:
/* 8050DC70  38 80 00 42 */	li r4, 0x42
/* 8050DC74  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8050DC78  38 A0 00 02 */	li r5, 2
/* 8050DC7C  FC 40 08 90 */	fmr f2, f1
/* 8050DC80  4B FF 6F 55 */	bl anm_init__FP10e_rd_classifUcf
/* 8050DC84  A8 7E 05 B4 */	lha r3, 0x5b4(r30)
/* 8050DC88  38 03 00 01 */	addi r0, r3, 1
/* 8050DC8C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050DC90  38 00 00 00 */	li r0, 0
/* 8050DC94  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 8050DC98  48 00 01 50 */	b lbl_8050DDE8
lbl_8050DC9C:
/* 8050DC9C  38 80 00 21 */	li r4, 0x21
/* 8050DCA0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8050DCA4  38 A0 00 00 */	li r5, 0
/* 8050DCA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050DCAC  4B FF 6F 29 */	bl anm_init__FP10e_rd_classifUcf
/* 8050DCB0  A8 7E 05 B4 */	lha r3, 0x5b4(r30)
/* 8050DCB4  38 03 00 01 */	addi r0, r3, 1
/* 8050DCB8  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050DCBC  48 00 01 2C */	b lbl_8050DDE8
lbl_8050DCC0:
/* 8050DCC0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050DCC4  38 80 00 01 */	li r4, 1
/* 8050DCC8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050DCCC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050DCD0  40 82 00 18 */	bne lbl_8050DCE8
/* 8050DCD4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050DCD8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050DCDC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050DCE0  41 82 00 08 */	beq lbl_8050DCE8
/* 8050DCE4  7C A4 2B 78 */	mr r4, r5
lbl_8050DCE8:
/* 8050DCE8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050DCEC  41 82 00 FC */	beq lbl_8050DDE8
/* 8050DCF0  7F C3 F3 78 */	mr r3, r30
/* 8050DCF4  38 80 00 42 */	li r4, 0x42
/* 8050DCF8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8050DCFC  38 A0 00 02 */	li r5, 2
/* 8050DD00  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050DD04  4B FF 6E D1 */	bl anm_init__FP10e_rd_classifUcf
/* 8050DD08  A8 7E 05 B4 */	lha r3, 0x5b4(r30)
/* 8050DD0C  38 03 00 01 */	addi r0, r3, 1
/* 8050DD10  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050DD14  48 00 00 D4 */	b lbl_8050DDE8
lbl_8050DD18:
/* 8050DD18  38 00 00 01 */	li r0, 1
/* 8050DD1C  98 1E 06 A0 */	stb r0, 0x6a0(r30)
/* 8050DD20  38 80 00 3A */	li r4, 0x3a
/* 8050DD24  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8050DD28  38 A0 00 00 */	li r5, 0
/* 8050DD2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050DD30  4B FF 6E A5 */	bl anm_init__FP10e_rd_classifUcf
/* 8050DD34  7F C3 F3 78 */	mr r3, r30
/* 8050DD38  38 80 00 06 */	li r4, 6
/* 8050DD3C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 8050DD40  38 A0 00 00 */	li r5, 0
/* 8050DD44  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8050DD48  4B FF 6F E1 */	bl horn_anm_init__FP10e_rd_classifUcf
/* 8050DD4C  A8 7E 05 B4 */	lha r3, 0x5b4(r30)
/* 8050DD50  38 03 00 01 */	addi r0, r3, 1
/* 8050DD54  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050DD58  48 00 00 90 */	b lbl_8050DDE8
lbl_8050DD5C:
/* 8050DD5C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050DD60  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8050DD64  FC 00 00 1E */	fctiwz f0, f0
/* 8050DD68  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8050DD6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050DD70  2C 00 00 15 */	cmpwi r0, 0x15
/* 8050DD74  40 82 00 2C */	bne lbl_8050DDA0
/* 8050DD78  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700F9@ha */
/* 8050DD7C  38 03 00 F9 */	addi r0, r3, 0x00F9 /* 0x000700F9@l */
/* 8050DD80  90 01 00 08 */	stw r0, 8(r1)
/* 8050DD84  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 8050DD88  38 81 00 08 */	addi r4, r1, 8
/* 8050DD8C  38 A0 FF FF */	li r5, -1
/* 8050DD90  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 8050DD94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8050DD98  7D 89 03 A6 */	mtctr r12
/* 8050DD9C  4E 80 04 21 */	bctrl 
lbl_8050DDA0:
/* 8050DDA0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8050DDA4  38 80 00 01 */	li r4, 1
/* 8050DDA8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8050DDAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8050DDB0  40 82 00 18 */	bne lbl_8050DDC8
/* 8050DDB4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8050DDB8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8050DDBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8050DDC0  41 82 00 08 */	beq lbl_8050DDC8
/* 8050DDC4  38 80 00 00 */	li r4, 0
lbl_8050DDC8:
/* 8050DDC8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8050DDCC  41 82 00 1C */	beq lbl_8050DDE8
/* 8050DDD0  38 00 00 0D */	li r0, 0xd
/* 8050DDD4  B0 1E 09 72 */	sth r0, 0x972(r30)
/* 8050DDD8  38 00 00 00 */	li r0, 0
/* 8050DDDC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 8050DDE0  38 00 00 04 */	li r0, 4
/* 8050DDE4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8050DDE8:
/* 8050DDE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050DDEC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8050DDF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050DDF4  7C 08 03 A6 */	mtlr r0
/* 8050DDF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8050DDFC  4E 80 00 20 */	blr 

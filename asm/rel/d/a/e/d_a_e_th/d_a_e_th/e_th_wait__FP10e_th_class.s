lbl_807B0D7C:
/* 807B0D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B0D80  7C 08 02 A6 */	mflr r0
/* 807B0D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B0D88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807B0D8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807B0D90  7C 7F 1B 78 */	mr r31, r3
/* 807B0D94  3C 80 80 7B */	lis r4, lit_3906@ha
/* 807B0D98  3B C4 44 9C */	addi r30, r4, lit_3906@l
/* 807B0D9C  38 00 00 05 */	li r0, 5
/* 807B0DA0  B0 03 06 A4 */	sth r0, 0x6a4(r3)
/* 807B0DA4  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807B0DA8  2C 00 00 01 */	cmpwi r0, 1
/* 807B0DAC  41 82 00 74 */	beq lbl_807B0E20
/* 807B0DB0  40 80 00 10 */	bge lbl_807B0DC0
/* 807B0DB4  2C 00 00 00 */	cmpwi r0, 0
/* 807B0DB8  40 80 00 14 */	bge lbl_807B0DCC
/* 807B0DBC  48 00 01 0C */	b lbl_807B0EC8
lbl_807B0DC0:
/* 807B0DC0  2C 00 00 03 */	cmpwi r0, 3
/* 807B0DC4  40 80 01 04 */	bge lbl_807B0EC8
/* 807B0DC8  48 00 00 90 */	b lbl_807B0E58
lbl_807B0DCC:
/* 807B0DCC  A8 1F 06 9C */	lha r0, 0x69c(r31)
/* 807B0DD0  2C 00 00 00 */	cmpwi r0, 0
/* 807B0DD4  40 82 00 F4 */	bne lbl_807B0EC8
/* 807B0DD8  38 80 00 1B */	li r4, 0x1b
/* 807B0DDC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807B0DE0  38 A0 00 02 */	li r5, 2
/* 807B0DE4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807B0DE8  4B FF F6 BD */	bl anm_init__FP10e_th_classifUcf
/* 807B0DEC  38 00 00 01 */	li r0, 1
/* 807B0DF0  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807B0DF4  38 00 00 0A */	li r0, 0xa
/* 807B0DF8  B0 1F 06 9E */	sth r0, 0x69e(r31)
/* 807B0DFC  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 807B0E00  4B AB 6B 54 */	b cM_rndF__Ff
/* 807B0E04  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 807B0E08  EC 00 08 2A */	fadds f0, f0, f1
/* 807B0E0C  FC 00 00 1E */	fctiwz f0, f0
/* 807B0E10  D8 01 00 08 */	stfd f0, 8(r1)
/* 807B0E14  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807B0E18  B0 1F 06 9C */	sth r0, 0x69c(r31)
/* 807B0E1C  48 00 00 AC */	b lbl_807B0EC8
lbl_807B0E20:
/* 807B0E20  A8 1F 06 9C */	lha r0, 0x69c(r31)
/* 807B0E24  2C 00 00 00 */	cmpwi r0, 0
/* 807B0E28  40 82 00 A0 */	bne lbl_807B0EC8
/* 807B0E2C  A8 1F 0D 2C */	lha r0, 0xd2c(r31)
/* 807B0E30  2C 00 00 00 */	cmpwi r0, 0
/* 807B0E34  40 82 00 94 */	bne lbl_807B0EC8
/* 807B0E38  38 00 00 02 */	li r0, 2
/* 807B0E3C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807B0E40  38 80 00 12 */	li r4, 0x12
/* 807B0E44  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 807B0E48  38 A0 00 00 */	li r5, 0
/* 807B0E4C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807B0E50  4B FF F6 55 */	bl anm_init__FP10e_th_classifUcf
/* 807B0E54  48 00 00 74 */	b lbl_807B0EC8
lbl_807B0E58:
/* 807B0E58  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807B0E5C  38 80 00 01 */	li r4, 1
/* 807B0E60  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807B0E64  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B0E68  40 82 00 18 */	bne lbl_807B0E80
/* 807B0E6C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807B0E70  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807B0E74  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807B0E78  41 82 00 08 */	beq lbl_807B0E80
/* 807B0E7C  38 80 00 00 */	li r4, 0
lbl_807B0E80:
/* 807B0E80  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807B0E84  41 82 00 44 */	beq lbl_807B0EC8
/* 807B0E88  7F E3 FB 78 */	mr r3, r31
/* 807B0E8C  38 80 00 1B */	li r4, 0x1b
/* 807B0E90  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807B0E94  38 A0 00 02 */	li r5, 2
/* 807B0E98  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807B0E9C  4B FF F6 09 */	bl anm_init__FP10e_th_classifUcf
/* 807B0EA0  38 00 00 01 */	li r0, 1
/* 807B0EA4  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807B0EA8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 807B0EAC  4B AB 6A A8 */	b cM_rndF__Ff
/* 807B0EB0  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 807B0EB4  EC 00 08 2A */	fadds f0, f0, f1
/* 807B0EB8  FC 00 00 1E */	fctiwz f0, f0
/* 807B0EBC  D8 01 00 08 */	stfd f0, 8(r1)
/* 807B0EC0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807B0EC4  B0 1F 06 9C */	sth r0, 0x69c(r31)
lbl_807B0EC8:
/* 807B0EC8  A8 1F 06 9E */	lha r0, 0x69e(r31)
/* 807B0ECC  2C 00 00 00 */	cmpwi r0, 0
/* 807B0ED0  40 82 00 14 */	bne lbl_807B0EE4
/* 807B0ED4  38 00 00 01 */	li r0, 1
/* 807B0ED8  B0 1F 06 86 */	sth r0, 0x686(r31)
/* 807B0EDC  38 00 00 00 */	li r0, 0
/* 807B0EE0  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
lbl_807B0EE4:
/* 807B0EE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807B0EE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807B0EEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B0EF0  7C 08 03 A6 */	mtlr r0
/* 807B0EF4  38 21 00 20 */	addi r1, r1, 0x20
/* 807B0EF8  4E 80 00 20 */	blr 

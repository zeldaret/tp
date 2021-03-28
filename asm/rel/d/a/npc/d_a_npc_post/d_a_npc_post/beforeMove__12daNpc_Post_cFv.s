lbl_80AAA058:
/* 80AAA058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAA05C  7C 08 02 A6 */	mflr r0
/* 80AAA060  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAA064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAA068  93 C1 00 08 */	stw r30, 8(r1)
/* 80AAA06C  7C 7E 1B 78 */	mr r30, r3
/* 80AAA070  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80AAA074  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80AAA078  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80AAA07C  3B E0 00 00 */	li r31, 0
/* 80AAA080  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AAA084  28 00 00 00 */	cmplwi r0, 0
/* 80AAA088  40 82 00 1C */	bne lbl_80AAA0A4
/* 80AAA08C  4B 58 59 C8 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AAA090  2C 03 00 00 */	cmpwi r3, 0
/* 80AAA094  40 82 00 14 */	bne lbl_80AAA0A8
/* 80AAA098  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AAA09C  28 00 00 00 */	cmplwi r0, 0
/* 80AAA0A0  41 82 00 08 */	beq lbl_80AAA0A8
lbl_80AAA0A4:
/* 80AAA0A4  3B E0 00 01 */	li r31, 1
lbl_80AAA0A8:
/* 80AAA0A8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AAA0AC  41 82 00 10 */	beq lbl_80AAA0BC
/* 80AAA0B0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80AAA0B4  64 00 08 00 */	oris r0, r0, 0x800
/* 80AAA0B8  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80AAA0BC:
/* 80AAA0BC  3B E0 00 00 */	li r31, 0
/* 80AAA0C0  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80AAA0C4  28 00 00 00 */	cmplwi r0, 0
/* 80AAA0C8  40 82 00 1C */	bne lbl_80AAA0E4
/* 80AAA0CC  4B 58 59 88 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AAA0D0  2C 03 00 00 */	cmpwi r3, 0
/* 80AAA0D4  40 82 00 14 */	bne lbl_80AAA0E8
/* 80AAA0D8  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AAA0DC  28 00 00 00 */	cmplwi r0, 0
/* 80AAA0E0  41 82 00 08 */	beq lbl_80AAA0E8
lbl_80AAA0E4:
/* 80AAA0E4  3B E0 00 01 */	li r31, 1
lbl_80AAA0E8:
/* 80AAA0E8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AAA0EC  40 82 00 10 */	bne lbl_80AAA0FC
/* 80AAA0F0  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80AAA0F4  28 00 00 00 */	cmplwi r0, 0
/* 80AAA0F8  41 82 00 0C */	beq lbl_80AAA104
lbl_80AAA0FC:
/* 80AAA0FC  38 00 00 00 */	li r0, 0
/* 80AAA100  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AAA104:
/* 80AAA104  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AAA108  D0 1E 10 08 */	stfs f0, 0x1008(r30)
/* 80AAA10C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAA110  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AAA114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAA118  7C 08 03 A6 */	mtlr r0
/* 80AAA11C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAA120  4E 80 00 20 */	blr 

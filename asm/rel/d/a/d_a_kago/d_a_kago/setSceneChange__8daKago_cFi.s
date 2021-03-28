lbl_8084AE78:
/* 8084AE78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084AE7C  7C 08 02 A6 */	mflr r0
/* 8084AE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084AE84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084AE88  93 C1 00 08 */	stw r30, 8(r1)
/* 8084AE8C  7C 7E 1B 78 */	mr r30, r3
/* 8084AE90  3B E0 00 00 */	li r31, 0
/* 8084AE94  2C 04 00 02 */	cmpwi r4, 2
/* 8084AE98  41 82 00 4C */	beq lbl_8084AEE4
/* 8084AE9C  40 80 00 14 */	bge lbl_8084AEB0
/* 8084AEA0  2C 04 00 00 */	cmpwi r4, 0
/* 8084AEA4  41 82 00 18 */	beq lbl_8084AEBC
/* 8084AEA8  40 80 00 30 */	bge lbl_8084AED8
/* 8084AEAC  48 00 00 58 */	b lbl_8084AF04
lbl_8084AEB0:
/* 8084AEB0  2C 04 00 04 */	cmpwi r4, 4
/* 8084AEB4  40 80 00 50 */	bge lbl_8084AF04
/* 8084AEB8  48 00 00 48 */	b lbl_8084AF00
lbl_8084AEBC:
/* 8084AEBC  88 1E 06 E7 */	lbz r0, 0x6e7(r30)
/* 8084AEC0  28 00 00 00 */	cmplwi r0, 0
/* 8084AEC4  40 82 00 0C */	bne lbl_8084AED0
/* 8084AEC8  3B E0 00 01 */	li r31, 1
/* 8084AECC  48 00 00 38 */	b lbl_8084AF04
lbl_8084AED0:
/* 8084AED0  3B E0 00 06 */	li r31, 6
/* 8084AED4  48 00 00 30 */	b lbl_8084AF04
lbl_8084AED8:
/* 8084AED8  3B E0 00 00 */	li r31, 0
/* 8084AEDC  48 00 01 49 */	bl endBalloonScore__8daKago_cFv
/* 8084AEE0  48 00 00 24 */	b lbl_8084AF04
lbl_8084AEE4:
/* 8084AEE4  88 1E 06 E7 */	lbz r0, 0x6e7(r30)
/* 8084AEE8  30 00 FF FF */	addic r0, r0, -1
/* 8084AEEC  7C 80 01 10 */	subfe r4, r0, r0
/* 8084AEF0  38 00 00 03 */	li r0, 3
/* 8084AEF4  7C 1F 20 38 */	and r31, r0, r4
/* 8084AEF8  48 00 01 2D */	bl endBalloonScore__8daKago_cFv
/* 8084AEFC  48 00 00 08 */	b lbl_8084AF04
lbl_8084AF00:
/* 8084AF00  3B E0 00 03 */	li r31, 3
lbl_8084AF04:
/* 8084AF04  7F E3 FB 78 */	mr r3, r31
/* 8084AF08  3C 80 80 85 */	lis r4, lit_3942@ha
/* 8084AF0C  C0 24 4B 38 */	lfs f1, lit_3942@l(r4)
/* 8084AF10  38 80 00 0A */	li r4, 0xa
/* 8084AF14  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8084AF18  7C 05 07 74 */	extsb r5, r0
/* 8084AF1C  38 C0 00 00 */	li r6, 0
/* 8084AF20  38 E0 FF FF */	li r7, -1
/* 8084AF24  4B 7D C2 4C */	b dStage_changeScene__FifUlScsi
/* 8084AF28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084AF2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8084AF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084AF34  7C 08 03 A6 */	mtlr r0
/* 8084AF38  38 21 00 10 */	addi r1, r1, 0x10
/* 8084AF3C  4E 80 00 20 */	blr 

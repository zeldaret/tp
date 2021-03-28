lbl_807BAED0:
/* 807BAED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BAED4  7C 08 02 A6 */	mflr r0
/* 807BAED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BAEDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BAEE0  7C 7F 1B 78 */	mr r31, r3
/* 807BAEE4  3C 80 80 7C */	lis r4, lit_3762@ha
/* 807BAEE8  38 C4 BD A8 */	addi r6, r4, lit_3762@l
/* 807BAEEC  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 807BAEF0  2C 00 00 01 */	cmpwi r0, 1
/* 807BAEF4  41 82 00 34 */	beq lbl_807BAF28
/* 807BAEF8  40 80 00 54 */	bge lbl_807BAF4C
/* 807BAEFC  2C 00 00 00 */	cmpwi r0, 0
/* 807BAF00  40 80 00 08 */	bge lbl_807BAF08
/* 807BAF04  48 00 00 48 */	b lbl_807BAF4C
lbl_807BAF08:
/* 807BAF08  38 80 00 06 */	li r4, 6
/* 807BAF0C  C0 26 00 30 */	lfs f1, 0x30(r6)
/* 807BAF10  38 A0 00 00 */	li r5, 0
/* 807BAF14  C0 46 00 24 */	lfs f2, 0x24(r6)
/* 807BAF18  4B FF F6 9D */	bl anm_init__FP11e_tk2_classifUcf
/* 807BAF1C  38 00 00 01 */	li r0, 1
/* 807BAF20  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 807BAF24  48 00 00 28 */	b lbl_807BAF4C
lbl_807BAF28:
/* 807BAF28  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807BAF2C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 807BAF30  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 807BAF34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807BAF38  40 81 00 14 */	ble lbl_807BAF4C
/* 807BAF3C  38 00 00 01 */	li r0, 1
/* 807BAF40  B0 1F 06 6A */	sth r0, 0x66a(r31)
/* 807BAF44  38 00 00 03 */	li r0, 3
/* 807BAF48  B0 1F 06 6C */	sth r0, 0x66c(r31)
lbl_807BAF4C:
/* 807BAF4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BAF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BAF54  7C 08 03 A6 */	mtlr r0
/* 807BAF58  38 21 00 10 */	addi r1, r1, 0x10
/* 807BAF5C  4E 80 00 20 */	blr 

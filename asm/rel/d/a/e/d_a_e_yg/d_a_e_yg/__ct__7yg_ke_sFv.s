lbl_807FBEEC:
/* 807FBEEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807FBEF0  7C 08 02 A6 */	mflr r0
/* 807FBEF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807FBEF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807FBEFC  7C 7F 1B 78 */	mr r31, r3
/* 807FBF00  3C 80 80 80 */	lis r4, __ct__4cXyzFv@ha
/* 807FBF04  38 84 99 CC */	addi r4, r4, __ct__4cXyzFv@l
/* 807FBF08  3C A0 80 80 */	lis r5, __dt__4cXyzFv@ha
/* 807FBF0C  38 A5 CC 64 */	addi r5, r5, __dt__4cXyzFv@l
/* 807FBF10  38 C0 00 0C */	li r6, 0xc
/* 807FBF14  38 E0 00 0A */	li r7, 0xa
/* 807FBF18  4B B6 5E 48 */	b __construct_array
/* 807FBF1C  38 7F 00 78 */	addi r3, r31, 0x78
/* 807FBF20  3C 80 80 80 */	lis r4, __ct__4cXyzFv@ha
/* 807FBF24  38 84 99 CC */	addi r4, r4, __ct__4cXyzFv@l
/* 807FBF28  3C A0 80 80 */	lis r5, __dt__4cXyzFv@ha
/* 807FBF2C  38 A5 CC 64 */	addi r5, r5, __dt__4cXyzFv@l
/* 807FBF30  38 C0 00 0C */	li r6, 0xc
/* 807FBF34  38 E0 00 0A */	li r7, 0xa
/* 807FBF38  4B B6 5E 28 */	b __construct_array
/* 807FBF3C  7F E3 FB 78 */	mr r3, r31
/* 807FBF40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807FBF44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807FBF48  7C 08 03 A6 */	mtlr r0
/* 807FBF4C  38 21 00 10 */	addi r1, r1, 0x10
/* 807FBF50  4E 80 00 20 */	blr 

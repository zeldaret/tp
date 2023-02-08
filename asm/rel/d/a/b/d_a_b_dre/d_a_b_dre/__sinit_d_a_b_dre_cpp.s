lbl_805CACB4:
/* 805CACB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CACB8  7C 08 02 A6 */	mflr r0
/* 805CACBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CACC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CACC4  3C 60 80 5D */	lis r3, lit_1109@ha /* 0x805CB040@ha */
/* 805CACC8  3B E3 B0 40 */	addi r31, r3, lit_1109@l /* 0x805CB040@l */
/* 805CACCC  38 7F 00 58 */	addi r3, r31, 0x58
/* 805CACD0  3C 80 80 5C */	lis r4, __dt__4cXyzFv@ha /* 0x805C7FCC@ha */
/* 805CACD4  38 84 7F CC */	addi r4, r4, __dt__4cXyzFv@l /* 0x805C7FCC@l */
/* 805CACD8  38 BF 00 4C */	addi r5, r31, 0x4c
/* 805CACDC  4B FF CD DD */	bl __register_global_object
/* 805CACE0  38 7F 00 70 */	addi r3, r31, 0x70
/* 805CACE4  3C 80 80 5C */	lis r4, __dt__4cXyzFv@ha /* 0x805C7FCC@ha */
/* 805CACE8  38 84 7F CC */	addi r4, r4, __dt__4cXyzFv@l /* 0x805C7FCC@l */
/* 805CACEC  38 BF 00 64 */	addi r5, r31, 0x64
/* 805CACF0  4B FF CD C9 */	bl __register_global_object
/* 805CACF4  38 7F 00 88 */	addi r3, r31, 0x88
/* 805CACF8  3C 80 80 5C */	lis r4, __dt__4cXyzFv@ha /* 0x805C7FCC@ha */
/* 805CACFC  38 84 7F CC */	addi r4, r4, __dt__4cXyzFv@l /* 0x805C7FCC@l */
/* 805CAD00  38 BF 00 7C */	addi r5, r31, 0x7c
/* 805CAD04  4B FF CD B5 */	bl __register_global_object
/* 805CAD08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CAD0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CAD10  7C 08 03 A6 */	mtlr r0
/* 805CAD14  38 21 00 10 */	addi r1, r1, 0x10
/* 805CAD18  4E 80 00 20 */	blr 

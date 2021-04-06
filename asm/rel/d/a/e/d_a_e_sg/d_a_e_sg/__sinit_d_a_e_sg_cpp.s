lbl_8078DCCC:
/* 8078DCCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078DCD0  7C 08 02 A6 */	mflr r0
/* 8078DCD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078DCD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078DCDC  3C 60 80 79 */	lis r3, lit_1109@ha /* 0x8078E0A0@ha */
/* 8078DCE0  3B E3 E0 A0 */	addi r31, r3, lit_1109@l /* 0x8078E0A0@l */
/* 8078DCE4  38 7F 00 4C */	addi r3, r31, 0x4c
/* 8078DCE8  4B FF C5 45 */	bl __ct__12daE_SG_HIO_cFv
/* 8078DCEC  3C 80 80 79 */	lis r4, __dt__12daE_SG_HIO_cFv@ha /* 0x8078DC84@ha */
/* 8078DCF0  38 84 DC 84 */	addi r4, r4, __dt__12daE_SG_HIO_cFv@l /* 0x8078DC84@l */
/* 8078DCF4  38 BF 00 40 */	addi r5, r31, 0x40
/* 8078DCF8  4B FF C4 C1 */	bl __register_global_object
/* 8078DCFC  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 8078DD00  3C 80 80 79 */	lis r4, __ct__4cXyzFv@ha /* 0x8078DD7C@ha */
/* 8078DD04  38 84 DD 7C */	addi r4, r4, __ct__4cXyzFv@l /* 0x8078DD7C@l */
/* 8078DD08  3C A0 80 79 */	lis r5, __dt__4cXyzFv@ha /* 0x8078A4DC@ha */
/* 8078DD0C  38 A5 A4 DC */	addi r5, r5, __dt__4cXyzFv@l /* 0x8078A4DC@l */
/* 8078DD10  38 C0 00 0C */	li r6, 0xc
/* 8078DD14  38 E0 00 0A */	li r7, 0xa
/* 8078DD18  4B BD 40 49 */	bl __construct_array
/* 8078DD1C  38 60 00 00 */	li r3, 0
/* 8078DD20  3C 80 80 79 */	lis r4, func_8078DD44@ha /* 0x8078DD44@ha */
/* 8078DD24  38 84 DD 44 */	addi r4, r4, func_8078DD44@l /* 0x8078DD44@l */
/* 8078DD28  38 BF 00 9C */	addi r5, r31, 0x9c
/* 8078DD2C  4B FF C4 8D */	bl __register_global_object
/* 8078DD30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078DD34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078DD38  7C 08 03 A6 */	mtlr r0
/* 8078DD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8078DD40  4E 80 00 20 */	blr 

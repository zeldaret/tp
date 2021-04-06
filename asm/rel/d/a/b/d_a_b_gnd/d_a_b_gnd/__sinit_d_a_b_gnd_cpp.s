lbl_80602278:
/* 80602278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060227C  7C 08 02 A6 */	mflr r0
/* 80602280  90 01 00 14 */	stw r0, 0x14(r1)
/* 80602284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80602288  3C 60 80 60 */	lis r3, lit_1109@ha /* 0x80602F68@ha */
/* 8060228C  3B E3 2F 68 */	addi r31, r3, lit_1109@l /* 0x80602F68@l */
/* 80602290  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80602294  4B FF 27 B9 */	bl __ct__13daB_GND_HIO_cFv
/* 80602298  3C 80 80 60 */	lis r4, __dt__13daB_GND_HIO_cFv@ha /* 0x80602230@ha */
/* 8060229C  38 84 22 30 */	addi r4, r4, __dt__13daB_GND_HIO_cFv@l /* 0x80602230@l */
/* 806022A0  38 BF 00 40 */	addi r5, r31, 0x40
/* 806022A4  4B FF 27 35 */	bl __register_global_object
/* 806022A8  38 7F 00 90 */	addi r3, r31, 0x90
/* 806022AC  3C 80 80 60 */	lis r4, __ct__4cXyzFv@ha /* 0x80601DE8@ha */
/* 806022B0  38 84 1D E8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80601DE8@l */
/* 806022B4  3C A0 80 5F */	lis r5, __dt__4cXyzFv@ha /* 0x805F53A4@ha */
/* 806022B8  38 A5 53 A4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805F53A4@l */
/* 806022BC  38 C0 00 0C */	li r6, 0xc
/* 806022C0  38 E0 00 08 */	li r7, 8
/* 806022C4  4B D5 FA 9D */	bl __construct_array
/* 806022C8  38 60 00 00 */	li r3, 0
/* 806022CC  3C 80 80 60 */	lis r4, func_806022F0@ha /* 0x806022F0@ha */
/* 806022D0  38 84 22 F0 */	addi r4, r4, func_806022F0@l /* 0x806022F0@l */
/* 806022D4  38 BF 00 84 */	addi r5, r31, 0x84
/* 806022D8  4B FF 27 01 */	bl __register_global_object
/* 806022DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806022E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806022E4  7C 08 03 A6 */	mtlr r0
/* 806022E8  38 21 00 10 */	addi r1, r1, 0x10
/* 806022EC  4E 80 00 20 */	blr 

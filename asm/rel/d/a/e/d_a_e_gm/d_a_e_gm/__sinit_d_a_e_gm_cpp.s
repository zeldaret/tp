lbl_806D7470:
/* 806D7470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D7474  7C 08 02 A6 */	mflr r0
/* 806D7478  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D747C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D7480  3C 60 80 6D */	lis r3, lit_1109@ha /* 0x806D7E78@ha */
/* 806D7484  3B E3 7E 78 */	addi r31, r3, lit_1109@l /* 0x806D7E78@l */
/* 806D7488  38 7F 00 4C */	addi r3, r31, 0x4c
/* 806D748C  4B FF 9D E1 */	bl __ct__12daE_GM_HIO_cFv
/* 806D7490  3C 80 80 6D */	lis r4, __dt__12daE_GM_HIO_cFv@ha /* 0x806D7428@ha */
/* 806D7494  38 84 74 28 */	addi r4, r4, __dt__12daE_GM_HIO_cFv@l /* 0x806D7428@l */
/* 806D7498  38 BF 00 40 */	addi r5, r31, 0x40
/* 806D749C  4B FF 9D 5D */	bl __register_global_object
/* 806D74A0  3C 60 80 6D */	lis r3, lit_3907@ha /* 0x806D79A4@ha */
/* 806D74A4  C0 03 79 A4 */	lfs f0, lit_3907@l(r3)  /* 0x806D79A4@l */
/* 806D74A8  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 806D74AC  38 7F 00 80 */	addi r3, r31, 0x80
/* 806D74B0  D0 03 00 04 */	stfs f0, 4(r3)
/* 806D74B4  D0 03 00 08 */	stfs f0, 8(r3)
/* 806D74B8  3C 80 80 6D */	lis r4, __dt__4cXyzFv@ha /* 0x806D7950@ha */
/* 806D74BC  38 84 79 50 */	addi r4, r4, __dt__4cXyzFv@l /* 0x806D7950@l */
/* 806D74C0  38 BF 00 74 */	addi r5, r31, 0x74
/* 806D74C4  4B FF 9D 35 */	bl __register_global_object
/* 806D74C8  38 7F 00 98 */	addi r3, r31, 0x98
/* 806D74CC  3C 80 80 6D */	lis r4, __dt__5csXyzFv@ha /* 0x806D7914@ha */
/* 806D74D0  38 84 79 14 */	addi r4, r4, __dt__5csXyzFv@l /* 0x806D7914@l */
/* 806D74D4  38 BF 00 8C */	addi r5, r31, 0x8c
/* 806D74D8  4B FF 9D 21 */	bl __register_global_object
/* 806D74DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D74E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D74E4  7C 08 03 A6 */	mtlr r0
/* 806D74E8  38 21 00 10 */	addi r1, r1, 0x10
/* 806D74EC  4E 80 00 20 */	blr 

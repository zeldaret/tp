lbl_806DED18:
/* 806DED18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806DED1C  7C 08 02 A6 */	mflr r0
/* 806DED20  90 01 00 14 */	stw r0, 0x14(r1)
/* 806DED24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806DED28  3C 60 80 6E */	lis r3, lit_1109@ha /* 0x806DF288@ha */
/* 806DED2C  3B E3 F2 88 */	addi r31, r3, lit_1109@l /* 0x806DF288@l */
/* 806DED30  38 7F 00 4C */	addi r3, r31, 0x4c
/* 806DED34  4B FF 93 59 */	bl __ct__13daE_GOB_HIO_cFv
/* 806DED38  3C 80 80 6E */	lis r4, __dt__13daE_GOB_HIO_cFv@ha /* 0x806DECD0@ha */
/* 806DED3C  38 84 EC D0 */	addi r4, r4, __dt__13daE_GOB_HIO_cFv@l /* 0x806DECD0@l */
/* 806DED40  38 BF 00 40 */	addi r5, r31, 0x40
/* 806DED44  4B FF 92 D5 */	bl __register_global_object
/* 806DED48  3C 60 80 6E */	lis r3, lit_3763@ha /* 0x806DEE38@ha */
/* 806DED4C  C0 03 EE 38 */	lfs f0, lit_3763@l(r3)  /* 0x806DEE38@l */
/* 806DED50  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 806DED54  38 7F 00 80 */	addi r3, r31, 0x80
/* 806DED58  D0 03 00 04 */	stfs f0, 4(r3)
/* 806DED5C  D0 03 00 08 */	stfs f0, 8(r3)
/* 806DED60  3C 80 80 6E */	lis r4, __dt__4cXyzFv@ha /* 0x806D853C@ha */
/* 806DED64  38 84 85 3C */	addi r4, r4, __dt__4cXyzFv@l /* 0x806D853C@l */
/* 806DED68  38 BF 00 74 */	addi r5, r31, 0x74
/* 806DED6C  4B FF 92 AD */	bl __register_global_object
/* 806DED70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806DED74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806DED78  7C 08 03 A6 */	mtlr r0
/* 806DED7C  38 21 00 10 */	addi r1, r1, 0x10
/* 806DED80  4E 80 00 20 */	blr 

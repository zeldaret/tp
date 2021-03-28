lbl_807798C8:
/* 807798C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807798CC  7C 08 02 A6 */	mflr r0
/* 807798D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807798D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807798D8  3C 60 80 78 */	lis r3, lit_1109@ha
/* 807798DC  3B E3 A8 30 */	addi r31, r3, lit_1109@l
/* 807798E0  38 7F 00 54 */	addi r3, r31, 0x54
/* 807798E4  4B FF 24 E9 */	bl __ct__13daE_RDY_HIO_cFv
/* 807798E8  3C 80 80 78 */	lis r4, __dt__13daE_RDY_HIO_cFv@ha
/* 807798EC  38 84 98 80 */	addi r4, r4, __dt__13daE_RDY_HIO_cFv@l
/* 807798F0  38 BF 00 48 */	addi r5, r31, 0x48
/* 807798F4  4B FF 24 65 */	bl __register_global_object
/* 807798F8  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 807798FC  3C 80 80 78 */	lis r4, __dt__4cXyzFv@ha
/* 80779900  38 84 9D 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 80779904  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 80779908  4B FF 24 51 */	bl __register_global_object
/* 8077990C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80779910  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80779914  7C 08 03 A6 */	mtlr r0
/* 80779918  38 21 00 10 */	addi r1, r1, 0x10
/* 8077991C  4E 80 00 20 */	blr 

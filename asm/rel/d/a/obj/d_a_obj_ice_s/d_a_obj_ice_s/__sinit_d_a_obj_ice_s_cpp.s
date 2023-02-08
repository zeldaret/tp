lbl_80C21AA8:
/* 80C21AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C21AAC  7C 08 02 A6 */	mflr r0
/* 80C21AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C21AB4  3C 60 80 C2 */	lis r3, l_HIO@ha /* 0x80C21C48@ha */
/* 80C21AB8  38 63 1C 48 */	addi r3, r3, l_HIO@l /* 0x80C21C48@l */
/* 80C21ABC  4B FF EE F1 */	bl __ct__17daOBJ_ICE_S_HIO_cFv
/* 80C21AC0  3C 80 80 C2 */	lis r4, __dt__17daOBJ_ICE_S_HIO_cFv@ha /* 0x80C21A60@ha */
/* 80C21AC4  38 84 1A 60 */	addi r4, r4, __dt__17daOBJ_ICE_S_HIO_cFv@l /* 0x80C21A60@l */
/* 80C21AC8  3C A0 80 C2 */	lis r5, lit_3639@ha /* 0x80C21C3C@ha */
/* 80C21ACC  38 A5 1C 3C */	addi r5, r5, lit_3639@l /* 0x80C21C3C@l */
/* 80C21AD0  4B FF EE 69 */	bl __register_global_object
/* 80C21AD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C21AD8  7C 08 03 A6 */	mtlr r0
/* 80C21ADC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C21AE0  4E 80 00 20 */	blr 

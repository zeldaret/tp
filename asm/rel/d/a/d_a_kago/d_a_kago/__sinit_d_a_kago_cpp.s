lbl_80854A94:
/* 80854A94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80854A98  7C 08 02 A6 */	mflr r0
/* 80854A9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80854AA0  3C 60 80 85 */	lis r3, l_HIO@ha
/* 80854AA4  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 80854AA8  4B FF 4B 05 */	bl __ct__12daKago_HIO_cFv
/* 80854AAC  3C 80 80 85 */	lis r4, __dt__12daKago_HIO_cFv@ha
/* 80854AB0  38 84 4A 4C */	addi r4, r4, __dt__12daKago_HIO_cFv@l
/* 80854AB4  3C A0 80 85 */	lis r5, lit_3924@ha
/* 80854AB8  38 A5 4F 6C */	addi r5, r5, lit_3924@l
/* 80854ABC  4B FF 4A 7D */	bl __register_global_object
/* 80854AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80854AC4  7C 08 03 A6 */	mtlr r0
/* 80854AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80854ACC  4E 80 00 20 */	blr 

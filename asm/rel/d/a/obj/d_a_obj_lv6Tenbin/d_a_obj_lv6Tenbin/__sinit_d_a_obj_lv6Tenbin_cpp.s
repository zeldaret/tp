lbl_80C77960:
/* 80C77960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C77964  7C 08 02 A6 */	mflr r0
/* 80C77968  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7796C  3C 60 80 C7 */	lis r3, l_HIO@ha
/* 80C77970  38 63 7A DC */	addi r3, r3, l_HIO@l
/* 80C77974  4B FF EF 79 */	bl __ct__14daTenbin_HIO_cFv
/* 80C77978  3C 80 80 C7 */	lis r4, __dt__14daTenbin_HIO_cFv@ha
/* 80C7797C  38 84 79 04 */	addi r4, r4, __dt__14daTenbin_HIO_cFv@l
/* 80C77980  3C A0 80 C7 */	lis r5, lit_3662@ha
/* 80C77984  38 A5 7A D0 */	addi r5, r5, lit_3662@l
/* 80C77988  4B FF EE F1 */	bl __register_global_object
/* 80C7798C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C77990  7C 08 03 A6 */	mtlr r0
/* 80C77994  38 21 00 10 */	addi r1, r1, 0x10
/* 80C77998  4E 80 00 20 */	blr 

lbl_8061A850:
/* 8061A850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A854  7C 08 02 A6 */	mflr r0
/* 8061A858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A85C  3C 60 80 62 */	lis r3, l_HIO@ha
/* 8061A860  38 63 B5 14 */	addi r3, r3, l_HIO@l
/* 8061A864  4B FF 5D 09 */	bl __ct__12daB_OB_HIO_cFv
/* 8061A868  3C 80 80 62 */	lis r4, __dt__12daB_OB_HIO_cFv@ha
/* 8061A86C  38 84 A8 08 */	addi r4, r4, __dt__12daB_OB_HIO_cFv@l
/* 8061A870  3C A0 80 62 */	lis r5, lit_3767@ha
/* 8061A874  38 A5 B5 08 */	addi r5, r5, lit_3767@l
/* 8061A878  4B FF 5C 81 */	bl __register_global_object
/* 8061A87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A880  7C 08 03 A6 */	mtlr r0
/* 8061A884  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A888  4E 80 00 20 */	blr 

lbl_8051B968:
/* 8051B968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B96C  7C 08 02 A6 */	mflr r0
/* 8051B970  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B974  3C 60 80 52 */	lis r3, l_HIO@ha /* 0x8051BC20@ha */
/* 8051B978  38 63 BC 20 */	addi r3, r3, l_HIO@l /* 0x8051BC20@l */
/* 8051B97C  4B FF DF 71 */	bl __ct__10daFr_HIO_cFv
/* 8051B980  3C 80 80 52 */	lis r4, __dt__10daFr_HIO_cFv@ha /* 0x8051B920@ha */
/* 8051B984  38 84 B9 20 */	addi r4, r4, __dt__10daFr_HIO_cFv@l /* 0x8051B920@l */
/* 8051B988  3C A0 80 52 */	lis r5, lit_3644@ha /* 0x8051BC14@ha */
/* 8051B98C  38 A5 BC 14 */	addi r5, r5, lit_3644@l /* 0x8051BC14@l */
/* 8051B990  4B FF DE E9 */	bl __register_global_object
/* 8051B994  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B998  7C 08 03 A6 */	mtlr r0
/* 8051B99C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B9A0  4E 80 00 20 */	blr 

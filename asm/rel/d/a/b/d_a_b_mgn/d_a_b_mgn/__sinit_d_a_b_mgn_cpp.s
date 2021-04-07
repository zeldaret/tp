lbl_8060F918:
/* 8060F918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060F91C  7C 08 02 A6 */	mflr r0
/* 8060F920  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060F924  3C 60 80 61 */	lis r3, l_HIO@ha /* 0x80610450@ha */
/* 8060F928  38 63 04 50 */	addi r3, r3, l_HIO@l /* 0x80610450@l */
/* 8060F92C  4B FF 5E 01 */	bl __ct__13daB_MGN_HIO_cFv
/* 8060F930  3C 80 80 61 */	lis r4, __dt__13daB_MGN_HIO_cFv@ha /* 0x8060F8D0@ha */
/* 8060F934  38 84 F8 D0 */	addi r4, r4, __dt__13daB_MGN_HIO_cFv@l /* 0x8060F8D0@l */
/* 8060F938  3C A0 80 61 */	lis r5, lit_3944@ha /* 0x80610444@ha */
/* 8060F93C  38 A5 04 44 */	addi r5, r5, lit_3944@l /* 0x80610444@l */
/* 8060F940  4B FF 5D 79 */	bl __register_global_object
/* 8060F944  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060F948  7C 08 03 A6 */	mtlr r0
/* 8060F94C  38 21 00 10 */	addi r1, r1, 0x10
/* 8060F950  4E 80 00 20 */	blr 

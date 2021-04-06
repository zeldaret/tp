lbl_8061D984:
/* 8061D984  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061D988  7C 08 02 A6 */	mflr r0
/* 8061D98C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061D990  3C 60 80 62 */	lis r3, l_HIO@ha /* 0x8061DBC4@ha */
/* 8061D994  38 63 DB C4 */	addi r3, r3, l_HIO@l /* 0x8061DBC4@l */
/* 8061D998  4B FF DD 95 */	bl __ct__12daB_OH_HIO_cFv
/* 8061D99C  3C 80 80 62 */	lis r4, __dt__12daB_OH_HIO_cFv@ha /* 0x8061D93C@ha */
/* 8061D9A0  38 84 D9 3C */	addi r4, r4, __dt__12daB_OH_HIO_cFv@l /* 0x8061D93C@l */
/* 8061D9A4  3C A0 80 62 */	lis r5, lit_3645@ha /* 0x8061DBB8@ha */
/* 8061D9A8  38 A5 DB B8 */	addi r5, r5, lit_3645@l /* 0x8061DBB8@l */
/* 8061D9AC  4B FF DD 0D */	bl __register_global_object
/* 8061D9B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061D9B4  7C 08 03 A6 */	mtlr r0
/* 8061D9B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8061D9BC  4E 80 00 20 */	blr 

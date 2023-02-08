lbl_80690964:
/* 80690964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80690968  7C 08 02 A6 */	mflr r0
/* 8069096C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80690970  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x806910A0@ha */
/* 80690974  38 63 10 A0 */	addi r3, r3, l_HIO@l /* 0x806910A0@l */
/* 80690978  4B FF D7 B5 */	bl __ct__12daE_BS_HIO_cFv
/* 8069097C  3C 80 80 69 */	lis r4, __dt__12daE_BS_HIO_cFv@ha /* 0x8069091C@ha */
/* 80690980  38 84 09 1C */	addi r4, r4, __dt__12daE_BS_HIO_cFv@l /* 0x8069091C@l */
/* 80690984  3C A0 80 69 */	lis r5, lit_3804@ha /* 0x80691094@ha */
/* 80690988  38 A5 10 94 */	addi r5, r5, lit_3804@l /* 0x80691094@l */
/* 8069098C  4B FF D7 2D */	bl __register_global_object
/* 80690990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80690994  7C 08 03 A6 */	mtlr r0
/* 80690998  38 21 00 10 */	addi r1, r1, 0x10
/* 8069099C  4E 80 00 20 */	blr 

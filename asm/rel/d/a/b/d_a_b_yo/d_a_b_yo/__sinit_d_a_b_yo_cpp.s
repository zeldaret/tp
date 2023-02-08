lbl_8063962C:
/* 8063962C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639630  7C 08 02 A6 */	mflr r0
/* 80639634  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063963C  3C 60 80 64 */	lis r3, lit_1109@ha /* 0x80639F38@ha */
/* 80639640  3B E3 9F 38 */	addi r31, r3, lit_1109@l /* 0x80639F38@l */
/* 80639644  38 7F 00 4C */	addi r3, r31, 0x4c
/* 80639648  4B FF 5E 25 */	bl __ct__12daB_YO_HIO_cFv
/* 8063964C  3C 80 80 64 */	lis r4, __dt__12daB_YO_HIO_cFv@ha /* 0x806395E4@ha */
/* 80639650  38 84 95 E4 */	addi r4, r4, __dt__12daB_YO_HIO_cFv@l /* 0x806395E4@l */
/* 80639654  38 BF 00 40 */	addi r5, r31, 0x40
/* 80639658  4B FF 5D A1 */	bl __register_global_object
/* 8063965C  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80639660  3C 80 80 63 */	lis r4, __dt__4cXyzFv@ha /* 0x8062FB90@ha */
/* 80639664  38 84 FB 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8062FB90@l */
/* 80639668  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 8063966C  4B FF 5D 8D */	bl __register_global_object
/* 80639670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80639674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639678  7C 08 03 A6 */	mtlr r0
/* 8063967C  38 21 00 10 */	addi r1, r1, 0x10
/* 80639680  4E 80 00 20 */	blr 

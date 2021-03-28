lbl_806E5440:
/* 806E5440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E5444  7C 08 02 A6 */	mflr r0
/* 806E5448  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E544C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E5450  3C 60 80 6E */	lis r3, lit_1109@ha
/* 806E5454  3B E3 5B D8 */	addi r31, r3, lit_1109@l
/* 806E5458  38 7F 00 4C */	addi r3, r31, 0x4c
/* 806E545C  4B FF AF 91 */	bl __ct__12daE_HM_HIO_cFv
/* 806E5460  3C 80 80 6E */	lis r4, __dt__12daE_HM_HIO_cFv@ha
/* 806E5464  38 84 53 F8 */	addi r4, r4, __dt__12daE_HM_HIO_cFv@l
/* 806E5468  38 BF 00 40 */	addi r5, r31, 0x40
/* 806E546C  4B FF AF 0D */	bl __register_global_object
/* 806E5470  38 7F 00 80 */	addi r3, r31, 0x80
/* 806E5474  3C 80 80 6E */	lis r4, __dt__4cXyzFv@ha
/* 806E5478  38 84 58 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 806E547C  38 BF 00 74 */	addi r5, r31, 0x74
/* 806E5480  4B FF AE F9 */	bl __register_global_object
/* 806E5484  38 7F 00 98 */	addi r3, r31, 0x98
/* 806E5488  3C 80 80 6E */	lis r4, __dt__4cXyzFv@ha
/* 806E548C  38 84 58 D0 */	addi r4, r4, __dt__4cXyzFv@l
/* 806E5490  38 BF 00 8C */	addi r5, r31, 0x8c
/* 806E5494  4B FF AE E5 */	bl __register_global_object
/* 806E5498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E549C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E54A0  7C 08 03 A6 */	mtlr r0
/* 806E54A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806E54A8  4E 80 00 20 */	blr 

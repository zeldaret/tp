lbl_80951160:
/* 80951160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80951164  7C 08 02 A6 */	mflr r0
/* 80951168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095116C  3C 60 80 95 */	lis r3, l_HIO@ha /* 0x8095159C@ha */
/* 80951170  38 63 15 9C */	addi r3, r3, l_HIO@l /* 0x8095159C@l */
/* 80951174  4B FF AA B9 */	bl __ct__10daNi_HIO_cFv
/* 80951178  3C 80 80 95 */	lis r4, __dt__10daNi_HIO_cFv@ha /* 0x80951118@ha */
/* 8095117C  38 84 11 18 */	addi r4, r4, __dt__10daNi_HIO_cFv@l /* 0x80951118@l */
/* 80951180  3C A0 80 95 */	lis r5, lit_3953@ha /* 0x80951590@ha */
/* 80951184  38 A5 15 90 */	addi r5, r5, lit_3953@l /* 0x80951590@l */
/* 80951188  4B FF AA 31 */	bl __register_global_object
/* 8095118C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80951190  7C 08 03 A6 */	mtlr r0
/* 80951194  38 21 00 10 */	addi r1, r1, 0x10
/* 80951198  4E 80 00 20 */	blr 

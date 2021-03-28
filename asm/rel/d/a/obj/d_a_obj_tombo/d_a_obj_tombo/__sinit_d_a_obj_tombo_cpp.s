lbl_80D1B660:
/* 80D1B660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1B664  7C 08 02 A6 */	mflr r0
/* 80D1B668  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1B66C  3C 60 80 D2 */	lis r3, l_HIO@ha
/* 80D1B670  38 63 B9 00 */	addi r3, r3, l_HIO@l
/* 80D1B674  4B FF DB 59 */	bl __ct__14daObj_TomHIO_cFv
/* 80D1B678  3C 80 80 D2 */	lis r4, __dt__14daObj_TomHIO_cFv@ha
/* 80D1B67C  38 84 B6 18 */	addi r4, r4, __dt__14daObj_TomHIO_cFv@l
/* 80D1B680  3C A0 80 D2 */	lis r5, lit_3770@ha
/* 80D1B684  38 A5 B8 F4 */	addi r5, r5, lit_3770@l
/* 80D1B688  4B FF DA D1 */	bl __register_global_object
/* 80D1B68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1B690  7C 08 03 A6 */	mtlr r0
/* 80D1B694  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1B698  4E 80 00 20 */	blr 

lbl_80CE3970:
/* 80CE3970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE3974  7C 08 02 A6 */	mflr r0
/* 80CE3978  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE397C  3C 60 80 CE */	lis r3, l_HIO@ha
/* 80CE3980  38 63 3C A0 */	addi r3, r3, l_HIO@l
/* 80CE3984  4B FF CA 49 */	bl __ct__14daObj_So_HIO_cFv
/* 80CE3988  3C 80 80 CE */	lis r4, __dt__14daObj_So_HIO_cFv@ha
/* 80CE398C  38 84 39 28 */	addi r4, r4, __dt__14daObj_So_HIO_cFv@l
/* 80CE3990  3C A0 80 CE */	lis r5, lit_3774@ha
/* 80CE3994  38 A5 3C 94 */	addi r5, r5, lit_3774@l
/* 80CE3998  4B FF C9 C1 */	bl __register_global_object
/* 80CE399C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE39A0  7C 08 03 A6 */	mtlr r0
/* 80CE39A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE39A8  4E 80 00 20 */	blr 

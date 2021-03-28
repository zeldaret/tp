lbl_80C5E788:
/* 80C5E788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5E78C  7C 08 02 A6 */	mflr r0
/* 80C5E790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5E794  3C 60 80 C6 */	lis r3, l_HIO@ha
/* 80C5E798  38 63 EA 64 */	addi r3, r3, l_HIO@l
/* 80C5E79C  4B FF F6 11 */	bl __ct__20daLv4EdShutter_HIO_cFv
/* 80C5E7A0  3C 80 80 C6 */	lis r4, __dt__20daLv4EdShutter_HIO_cFv@ha
/* 80C5E7A4  38 84 E7 2C */	addi r4, r4, __dt__20daLv4EdShutter_HIO_cFv@l
/* 80C5E7A8  3C A0 80 C6 */	lis r5, lit_3628@ha
/* 80C5E7AC  38 A5 EA 58 */	addi r5, r5, lit_3628@l
/* 80C5E7B0  4B FF F5 89 */	bl __register_global_object
/* 80C5E7B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5E7B8  7C 08 03 A6 */	mtlr r0
/* 80C5E7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5E7C0  4E 80 00 20 */	blr 

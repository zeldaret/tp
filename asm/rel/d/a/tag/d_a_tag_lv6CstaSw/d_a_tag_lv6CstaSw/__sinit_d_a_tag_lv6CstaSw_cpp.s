lbl_80D5B79C:
/* 80D5B79C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B7A0  7C 08 02 A6 */	mflr r0
/* 80D5B7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B7A8  3C 60 80 D6 */	lis r3, l_HIO@ha
/* 80D5B7AC  38 63 B8 8C */	addi r3, r3, l_HIO@l
/* 80D5B7B0  4B FF FB 3D */	bl __ct__17daLv6CstaSw_HIO_cFv
/* 80D5B7B4  3C 80 80 D6 */	lis r4, __dt__17daLv6CstaSw_HIO_cFv@ha
/* 80D5B7B8  38 84 B7 40 */	addi r4, r4, __dt__17daLv6CstaSw_HIO_cFv@l
/* 80D5B7BC  3C A0 80 D6 */	lis r5, lit_3619@ha
/* 80D5B7C0  38 A5 B8 80 */	addi r5, r5, lit_3619@l
/* 80D5B7C4  4B FF FA B5 */	bl __register_global_object
/* 80D5B7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B7CC  7C 08 03 A6 */	mtlr r0
/* 80D5B7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B7D4  4E 80 00 20 */	blr 

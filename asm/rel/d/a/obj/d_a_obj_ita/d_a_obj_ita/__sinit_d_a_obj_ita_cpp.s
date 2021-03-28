lbl_80C291D8:
/* 80C291D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C291DC  7C 08 02 A6 */	mflr r0
/* 80C291E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C291E4  3C 60 80 C3 */	lis r3, l_HIO@ha
/* 80C291E8  38 63 93 DC */	addi r3, r3, l_HIO@l
/* 80C291EC  4B FF F1 81 */	bl __ct__15daObj_ITA_HIO_cFv
/* 80C291F0  3C 80 80 C3 */	lis r4, __dt__15daObj_ITA_HIO_cFv@ha
/* 80C291F4  38 84 91 84 */	addi r4, r4, __dt__15daObj_ITA_HIO_cFv@l
/* 80C291F8  3C A0 80 C3 */	lis r5, lit_3644@ha
/* 80C291FC  38 A5 93 D0 */	addi r5, r5, lit_3644@l
/* 80C29200  4B FF F0 F9 */	bl __register_global_object
/* 80C29204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C29208  7C 08 03 A6 */	mtlr r0
/* 80C2920C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C29210  4E 80 00 20 */	blr 

lbl_805855C0:
/* 805855C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805855C4  7C 08 02 A6 */	mflr r0
/* 805855C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805855CC  3C 60 80 58 */	lis r3, l_HIO@ha
/* 805855D0  38 63 5C C4 */	addi r3, r3, l_HIO@l
/* 805855D4  4B FF C1 99 */	bl __ct__19daObj_Kanban2_HIO_cFv
/* 805855D8  3C 80 80 58 */	lis r4, __dt__19daObj_Kanban2_HIO_cFv@ha
/* 805855DC  38 84 55 78 */	addi r4, r4, __dt__19daObj_Kanban2_HIO_cFv@l
/* 805855E0  3C A0 80 58 */	lis r5, lit_3965@ha
/* 805855E4  38 A5 5C B8 */	addi r5, r5, lit_3965@l
/* 805855E8  4B FF C1 11 */	bl __register_global_object
/* 805855EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805855F0  7C 08 03 A6 */	mtlr r0
/* 805855F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805855F8  4E 80 00 20 */	blr 

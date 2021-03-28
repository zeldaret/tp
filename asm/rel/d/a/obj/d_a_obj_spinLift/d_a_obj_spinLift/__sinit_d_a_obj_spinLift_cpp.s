lbl_80CE4C6C:
/* 80CE4C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4C70  7C 08 02 A6 */	mflr r0
/* 80CE4C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4C78  3C 60 80 CE */	lis r3, l_HIO@ha
/* 80CE4C7C  38 63 4E D4 */	addi r3, r3, l_HIO@l
/* 80CE4C80  4B FF F1 2D */	bl __ct__16daSpinLift_HIO_cFv
/* 80CE4C84  3C 80 80 CE */	lis r4, __dt__16daSpinLift_HIO_cFv@ha
/* 80CE4C88  38 84 4C 10 */	addi r4, r4, __dt__16daSpinLift_HIO_cFv@l
/* 80CE4C8C  3C A0 80 CE */	lis r5, lit_3631@ha
/* 80CE4C90  38 A5 4E C8 */	addi r5, r5, lit_3631@l
/* 80CE4C94  4B FF F0 A5 */	bl __register_global_object
/* 80CE4C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE4C9C  7C 08 03 A6 */	mtlr r0
/* 80CE4CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE4CA4  4E 80 00 20 */	blr 

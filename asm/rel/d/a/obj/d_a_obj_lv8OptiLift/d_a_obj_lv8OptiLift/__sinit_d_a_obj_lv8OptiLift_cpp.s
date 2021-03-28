lbl_80C8B95C:
/* 80C8B95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B960  7C 08 02 A6 */	mflr r0
/* 80C8B964  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B968  3C 60 80 C9 */	lis r3, l_HIO@ha
/* 80C8B96C  38 63 BB EC */	addi r3, r3, l_HIO@l
/* 80C8B970  4B FF E9 9D */	bl __ct__16daOptiLift_HIO_cFv
/* 80C8B974  3C 80 80 C9 */	lis r4, __dt__16daOptiLift_HIO_cFv@ha
/* 80C8B978  38 84 B9 00 */	addi r4, r4, __dt__16daOptiLift_HIO_cFv@l
/* 80C8B97C  3C A0 80 C9 */	lis r5, lit_3655@ha
/* 80C8B980  38 A5 BB E0 */	addi r5, r5, lit_3655@l
/* 80C8B984  4B FF E9 15 */	bl __register_global_object
/* 80C8B988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B98C  7C 08 03 A6 */	mtlr r0
/* 80C8B990  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B994  4E 80 00 20 */	blr 

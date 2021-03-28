lbl_80C89E84:
/* 80C89E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C89E88  7C 08 02 A6 */	mflr r0
/* 80C89E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C89E90  4B FF EA 99 */	bl create__10daL8Lift_cFv
/* 80C89E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C89E98  7C 08 03 A6 */	mtlr r0
/* 80C89E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C89EA0  4E 80 00 20 */	blr 

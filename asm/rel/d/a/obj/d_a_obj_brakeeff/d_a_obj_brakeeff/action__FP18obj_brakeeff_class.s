lbl_8046DF80:
/* 8046DF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046DF84  7C 08 02 A6 */	mflr r0
/* 8046DF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046DF8C  A8 03 05 7E */	lha r0, 0x57e(r3)
/* 8046DF90  2C 00 00 00 */	cmpwi r0, 0
/* 8046DF94  41 82 00 08 */	beq lbl_8046DF9C
/* 8046DF98  48 00 00 08 */	b lbl_8046DFA0
lbl_8046DF9C:
/* 8046DF9C  4B FF FD 9D */	bl obj_brakeeff_1__FP18obj_brakeeff_class
lbl_8046DFA0:
/* 8046DFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046DFA4  7C 08 03 A6 */	mtlr r0
/* 8046DFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8046DFAC  4E 80 00 20 */	blr 

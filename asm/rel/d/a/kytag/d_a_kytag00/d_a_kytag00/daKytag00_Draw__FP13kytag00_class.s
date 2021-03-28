lbl_8046C660:
/* 8046C660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046C664  7C 08 02 A6 */	mflr r0
/* 8046C668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046C66C  4B FF F8 4D */	bl wether_tag_efect_move__FP13kytag00_class
/* 8046C670  38 60 00 01 */	li r3, 1
/* 8046C674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046C678  7C 08 03 A6 */	mtlr r0
/* 8046C67C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046C680  4E 80 00 20 */	blr 

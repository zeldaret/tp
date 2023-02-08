lbl_80BFA5C4:
/* 80BFA5C4  38 83 00 04 */	addi r4, r3, 4
/* 80BFA5C8  38 00 00 78 */	li r0, 0x78
/* 80BFA5CC  7C 09 03 A6 */	mtctr r0
lbl_80BFA5D0:
/* 80BFA5D0  88 04 00 04 */	lbz r0, 4(r4)
/* 80BFA5D4  7C 00 07 75 */	extsb. r0, r0
/* 80BFA5D8  41 82 00 24 */	beq lbl_80BFA5FC
/* 80BFA5DC  80 64 00 00 */	lwz r3, 0(r4)
/* 80BFA5E0  28 03 00 00 */	cmplwi r3, 0
/* 80BFA5E4  41 82 00 18 */	beq lbl_80BFA5FC
/* 80BFA5E8  88 03 09 50 */	lbz r0, 0x950(r3)
/* 80BFA5EC  28 00 00 01 */	cmplwi r0, 1
/* 80BFA5F0  41 82 00 0C */	beq lbl_80BFA5FC
/* 80BFA5F4  38 60 00 00 */	li r3, 0
/* 80BFA5F8  4E 80 00 20 */	blr 
lbl_80BFA5FC:
/* 80BFA5FC  38 84 00 08 */	addi r4, r4, 8
/* 80BFA600  42 00 FF D0 */	bdnz lbl_80BFA5D0
/* 80BFA604  38 60 00 01 */	li r3, 1
/* 80BFA608  4E 80 00 20 */	blr 

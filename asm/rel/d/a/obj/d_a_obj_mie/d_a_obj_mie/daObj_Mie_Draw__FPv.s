lbl_80C95940:
/* 80C95940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95944  7C 08 02 A6 */	mflr r0
/* 80C95948  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9594C  4B FF F7 F5 */	bl Draw__11daObj_Mie_cFv
/* 80C95950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C95954  7C 08 03 A6 */	mtlr r0
/* 80C95958  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9595C  4E 80 00 20 */	blr 

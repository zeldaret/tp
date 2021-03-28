lbl_80C9ED5C:
/* 80C9ED5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9ED60  7C 08 02 A6 */	mflr r0
/* 80C9ED64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9ED68  A8 83 05 7C */	lha r4, 0x57c(r3)
/* 80C9ED6C  38 04 00 01 */	addi r0, r4, 1
/* 80C9ED70  B0 03 05 7C */	sth r0, 0x57c(r3)
/* 80C9ED74  38 80 00 00 */	li r4, 0
/* 80C9ED78  38 00 00 02 */	li r0, 2
/* 80C9ED7C  7C 09 03 A6 */	mtctr r0
lbl_80C9ED80:
/* 80C9ED80  38 C4 05 82 */	addi r6, r4, 0x582
/* 80C9ED84  7C A3 32 AE */	lhax r5, r3, r6
/* 80C9ED88  2C 05 00 00 */	cmpwi r5, 0
/* 80C9ED8C  41 82 00 0C */	beq lbl_80C9ED98
/* 80C9ED90  38 05 FF FF */	addi r0, r5, -1
/* 80C9ED94  7C 03 33 2E */	sthx r0, r3, r6
lbl_80C9ED98:
/* 80C9ED98  38 84 00 02 */	addi r4, r4, 2
/* 80C9ED9C  42 00 FF E4 */	bdnz lbl_80C9ED80
/* 80C9EDA0  4B FF FE D1 */	bl action__FP16obj_myogan_class
/* 80C9EDA4  38 60 00 01 */	li r3, 1
/* 80C9EDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9EDAC  7C 08 03 A6 */	mtlr r0
/* 80C9EDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9EDB4  4E 80 00 20 */	blr 

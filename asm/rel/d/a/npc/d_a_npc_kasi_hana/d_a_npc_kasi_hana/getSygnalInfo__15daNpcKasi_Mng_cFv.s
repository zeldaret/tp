lbl_80A1B5F0:
/* 80A1B5F0  38 80 00 01 */	li r4, 1
/* 80A1B5F4  38 A0 00 00 */	li r5, 0
/* 80A1B5F8  38 00 00 14 */	li r0, 0x14
/* 80A1B5FC  7C 09 03 A6 */	mtctr r0
lbl_80A1B600:
/* 80A1B600  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80A1B604  7C 00 20 39 */	and. r0, r0, r4
/* 80A1B608  41 82 00 0C */	beq lbl_80A1B614
/* 80A1B60C  7C A3 2B 78 */	mr r3, r5
/* 80A1B610  4E 80 00 20 */	blr 
lbl_80A1B614:
/* 80A1B614  54 84 08 3C */	slwi r4, r4, 1
/* 80A1B618  38 A5 00 01 */	addi r5, r5, 1
/* 80A1B61C  42 00 FF E4 */	bdnz lbl_80A1B600
/* 80A1B620  38 60 FF FF */	li r3, -1
/* 80A1B624  4E 80 00 20 */	blr 

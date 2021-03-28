lbl_80CDFFF8:
/* 80CDFFF8  38 80 00 00 */	li r4, 0
/* 80CDFFFC  38 C0 00 01 */	li r6, 1
/* 80CE0000  7C 85 23 78 */	mr r5, r4
/* 80CE0004  38 00 00 04 */	li r0, 4
/* 80CE0008  7C 09 03 A6 */	mtctr r0
lbl_80CE000C:
/* 80CE000C  39 04 05 8C */	addi r8, r4, 0x58c
/* 80CE0010  7C E3 40 2E */	lwzx r7, r3, r8
/* 80CE0014  28 07 00 00 */	cmplwi r7, 0
/* 80CE0018  41 82 00 18 */	beq lbl_80CE0030
/* 80CE001C  80 07 00 F4 */	lwz r0, 0xf4(r7)
/* 80CE0020  60 00 00 01 */	ori r0, r0, 1
/* 80CE0024  90 07 00 F4 */	stw r0, 0xf4(r7)
/* 80CE0028  90 C7 00 24 */	stw r6, 0x24(r7)
/* 80CE002C  7C A3 41 2E */	stwx r5, r3, r8
lbl_80CE0030:
/* 80CE0030  38 84 00 04 */	addi r4, r4, 4
/* 80CE0034  42 00 FF D8 */	bdnz lbl_80CE000C
/* 80CE0038  4E 80 00 20 */	blr 

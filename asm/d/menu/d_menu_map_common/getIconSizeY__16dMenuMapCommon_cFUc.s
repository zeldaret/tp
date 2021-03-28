lbl_801C4778:
/* 801C4778  38 60 00 00 */	li r3, 0
/* 801C477C  54 86 06 3E */	clrlwi r6, r4, 0x18
/* 801C4780  3C 80 80 3C */	lis r4, map_icon_size@ha
/* 801C4784  38 A4 CF 18 */	addi r5, r4, map_icon_size@l
/* 801C4788  38 00 00 17 */	li r0, 0x17
/* 801C478C  7C 09 03 A6 */	mtctr r0
lbl_801C4790:
/* 801C4790  7C 85 1A 14 */	add r4, r5, r3
/* 801C4794  88 04 00 08 */	lbz r0, 8(r4)
/* 801C4798  7C 06 00 40 */	cmplw r6, r0
/* 801C479C  40 82 00 18 */	bne lbl_801C47B4
/* 801C47A0  3C 80 80 3C */	lis r4, map_icon_size@ha
/* 801C47A4  38 04 CF 18 */	addi r0, r4, map_icon_size@l
/* 801C47A8  7C 60 1A 14 */	add r3, r0, r3
/* 801C47AC  C0 23 00 04 */	lfs f1, 4(r3)
/* 801C47B0  4E 80 00 20 */	blr 
lbl_801C47B4:
/* 801C47B4  38 63 00 0C */	addi r3, r3, 0xc
/* 801C47B8  42 00 FF D8 */	bdnz lbl_801C4790
/* 801C47BC  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C47C0  4E 80 00 20 */	blr 

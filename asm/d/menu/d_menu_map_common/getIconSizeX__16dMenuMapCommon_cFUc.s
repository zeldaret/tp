lbl_801C4738:
/* 801C4738  38 60 00 00 */	li r3, 0
/* 801C473C  54 85 06 3E */	clrlwi r5, r4, 0x18
/* 801C4740  3C 80 80 3C */	lis r4, map_icon_size@ha /* 0x803BCF18@ha */
/* 801C4744  38 84 CF 18 */	addi r4, r4, map_icon_size@l /* 0x803BCF18@l */
/* 801C4748  38 00 00 17 */	li r0, 0x17
/* 801C474C  7C 09 03 A6 */	mtctr r0
lbl_801C4750:
/* 801C4750  7C C4 1A 14 */	add r6, r4, r3
/* 801C4754  88 06 00 08 */	lbz r0, 8(r6)
/* 801C4758  7C 05 00 40 */	cmplw r5, r0
/* 801C475C  40 82 00 0C */	bne lbl_801C4768
/* 801C4760  C0 26 00 00 */	lfs f1, 0(r6)
/* 801C4764  4E 80 00 20 */	blr 
lbl_801C4768:
/* 801C4768  38 63 00 0C */	addi r3, r3, 0xc
/* 801C476C  42 00 FF E4 */	bdnz lbl_801C4750
/* 801C4770  C0 22 A6 D8 */	lfs f1, lit_3703(r2)
/* 801C4774  4E 80 00 20 */	blr 

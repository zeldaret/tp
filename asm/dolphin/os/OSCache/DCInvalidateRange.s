lbl_8033B580:
/* 8033B580  28 04 00 00 */	cmplwi r4, 0
/* 8033B584  4C 81 00 20 */	blelr 
/* 8033B588  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8033B58C  7C 84 2A 14 */	add r4, r4, r5
/* 8033B590  38 84 00 1F */	addi r4, r4, 0x1f
/* 8033B594  54 84 D9 7E */	srwi r4, r4, 5
/* 8033B598  7C 89 03 A6 */	mtctr r4
lbl_8033B59C:
/* 8033B59C  7C 00 1B AC */	dcbi 0, r3
/* 8033B5A0  38 63 00 20 */	addi r3, r3, 0x20
/* 8033B5A4  42 00 FF F8 */	bdnz lbl_8033B59C
/* 8033B5A8  4E 80 00 20 */	blr 

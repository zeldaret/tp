lbl_8033B5AC:
/* 8033B5AC  28 04 00 00 */	cmplwi r4, 0
/* 8033B5B0  4C 81 00 20 */	blelr 
/* 8033B5B4  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8033B5B8  7C 84 2A 14 */	add r4, r4, r5
/* 8033B5BC  38 84 00 1F */	addi r4, r4, 0x1f
/* 8033B5C0  54 84 D9 7E */	srwi r4, r4, 5
/* 8033B5C4  7C 89 03 A6 */	mtctr r4
lbl_8033B5C8:
/* 8033B5C8  7C 00 18 AC */	dcbf 0, r3
/* 8033B5CC  38 63 00 20 */	addi r3, r3, 0x20
/* 8033B5D0  42 00 FF F8 */	bdnz lbl_8033B5C8
/* 8033B5D4  44 00 00 02 */	sc 
/* 8033B5D8  4E 80 00 20 */	blr 

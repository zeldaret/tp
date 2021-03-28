lbl_8033B664:
/* 8033B664  28 04 00 00 */	cmplwi r4, 0
/* 8033B668  4C 81 00 20 */	blelr 
/* 8033B66C  54 65 06 FE */	clrlwi r5, r3, 0x1b
/* 8033B670  7C 84 2A 14 */	add r4, r4, r5
/* 8033B674  38 84 00 1F */	addi r4, r4, 0x1f
/* 8033B678  54 84 D9 7E */	srwi r4, r4, 5
/* 8033B67C  7C 89 03 A6 */	mtctr r4
lbl_8033B680:
/* 8033B680  7C 00 1F EC */	dcbz 0, r3
/* 8033B684  38 63 00 20 */	addi r3, r3, 0x20
/* 8033B688  42 00 FF F8 */	bdnz lbl_8033B680
/* 8033B68C  4E 80 00 20 */	blr 

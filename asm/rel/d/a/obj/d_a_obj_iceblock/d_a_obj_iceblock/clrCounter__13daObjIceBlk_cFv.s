lbl_80C22B04:
/* 80C22B04  38 A0 00 00 */	li r5, 0
/* 80C22B08  38 80 00 00 */	li r4, 0
/* 80C22B0C  38 00 00 04 */	li r0, 4
/* 80C22B10  7C 09 03 A6 */	mtctr r0
lbl_80C22B14:
/* 80C22B14  38 05 09 48 */	addi r0, r5, 0x948
/* 80C22B18  7C 83 01 AE */	stbx r4, r3, r0
/* 80C22B1C  38 A5 00 01 */	addi r5, r5, 1
/* 80C22B20  42 00 FF F4 */	bdnz lbl_80C22B14
/* 80C22B24  4E 80 00 20 */	blr 

lbl_8014CCB0:
/* 8014CCB0  38 C3 FF FC */	addi r6, r3, -4
/* 8014CCB4  38 85 FF FC */	addi r4, r5, -4
/* 8014CCB8  38 00 00 03 */	li r0, 3
/* 8014CCBC  7C 09 03 A6 */	mtctr r0
lbl_8014CCC0:
/* 8014CCC0  80 64 00 04 */	lwz r3, 4(r4)
/* 8014CCC4  84 04 00 08 */	lwzu r0, 8(r4)
/* 8014CCC8  90 66 00 04 */	stw r3, 4(r6)
/* 8014CCCC  94 06 00 08 */	stwu r0, 8(r6)
/* 8014CCD0  42 00 FF F0 */	bdnz lbl_8014CCC0
/* 8014CCD4  80 04 00 04 */	lwz r0, 4(r4)
/* 8014CCD8  90 06 00 04 */	stw r0, 4(r6)
/* 8014CCDC  4E 80 00 20 */	blr 

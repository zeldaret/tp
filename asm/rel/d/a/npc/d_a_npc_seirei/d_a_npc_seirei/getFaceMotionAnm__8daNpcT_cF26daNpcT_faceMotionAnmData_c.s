lbl_80AD7AE4:
/* 80AD7AE4  38 C3 FF FC */	addi r6, r3, -4
/* 80AD7AE8  38 85 FF FC */	addi r4, r5, -4
/* 80AD7AEC  38 00 00 03 */	li r0, 3
/* 80AD7AF0  7C 09 03 A6 */	mtctr r0
lbl_80AD7AF4:
/* 80AD7AF4  80 64 00 04 */	lwz r3, 4(r4)
/* 80AD7AF8  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AD7AFC  90 66 00 04 */	stw r3, 4(r6)
/* 80AD7B00  94 06 00 08 */	stwu r0, 8(r6)
/* 80AD7B04  42 00 FF F0 */	bdnz lbl_80AD7AF4
/* 80AD7B08  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD7B0C  90 06 00 04 */	stw r0, 4(r6)
/* 80AD7B10  4E 80 00 20 */	blr 

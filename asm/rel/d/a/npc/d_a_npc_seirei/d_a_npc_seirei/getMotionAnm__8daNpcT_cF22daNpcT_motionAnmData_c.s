lbl_80AD7B14:
/* 80AD7B14  38 C3 FF FC */	addi r6, r3, -4
/* 80AD7B18  38 85 FF FC */	addi r4, r5, -4
/* 80AD7B1C  38 00 00 03 */	li r0, 3
/* 80AD7B20  7C 09 03 A6 */	mtctr r0
lbl_80AD7B24:
/* 80AD7B24  80 64 00 04 */	lwz r3, 4(r4)
/* 80AD7B28  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AD7B2C  90 66 00 04 */	stw r3, 4(r6)
/* 80AD7B30  94 06 00 08 */	stwu r0, 8(r6)
/* 80AD7B34  42 00 FF F0 */	bdnz lbl_80AD7B24
/* 80AD7B38  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD7B3C  90 06 00 04 */	stw r0, 4(r6)
/* 80AD7B40  4E 80 00 20 */	blr 

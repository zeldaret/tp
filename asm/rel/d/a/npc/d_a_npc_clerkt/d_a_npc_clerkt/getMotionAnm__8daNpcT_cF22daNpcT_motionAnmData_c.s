lbl_8099CEF4:
/* 8099CEF4  38 C3 FF FC */	addi r6, r3, -4
/* 8099CEF8  38 85 FF FC */	addi r4, r5, -4
/* 8099CEFC  38 00 00 03 */	li r0, 3
/* 8099CF00  7C 09 03 A6 */	mtctr r0
lbl_8099CF04:
/* 8099CF04  80 64 00 04 */	lwz r3, 4(r4)
/* 8099CF08  84 04 00 08 */	lwzu r0, 8(r4)
/* 8099CF0C  90 66 00 04 */	stw r3, 4(r6)
/* 8099CF10  94 06 00 08 */	stwu r0, 8(r6)
/* 8099CF14  42 00 FF F0 */	bdnz lbl_8099CF04
/* 8099CF18  80 04 00 04 */	lwz r0, 4(r4)
/* 8099CF1C  90 06 00 04 */	stw r0, 4(r6)
/* 8099CF20  4E 80 00 20 */	blr 

lbl_80AEEE68:
/* 80AEEE68  38 C3 FF FC */	addi r6, r3, -4
/* 80AEEE6C  38 85 FF FC */	addi r4, r5, -4
/* 80AEEE70  38 00 00 03 */	li r0, 3
/* 80AEEE74  7C 09 03 A6 */	mtctr r0
lbl_80AEEE78:
/* 80AEEE78  80 64 00 04 */	lwz r3, 4(r4)
/* 80AEEE7C  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AEEE80  90 66 00 04 */	stw r3, 4(r6)
/* 80AEEE84  94 06 00 08 */	stwu r0, 8(r6)
/* 80AEEE88  42 00 FF F0 */	bdnz lbl_80AEEE78
/* 80AEEE8C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AEEE90  90 06 00 04 */	stw r0, 4(r6)
/* 80AEEE94  4E 80 00 20 */	blr 

lbl_80ACF9C8:
/* 80ACF9C8  38 C3 FF FC */	addi r6, r3, -4
/* 80ACF9CC  38 85 FF FC */	addi r4, r5, -4
/* 80ACF9D0  38 00 00 03 */	li r0, 3
/* 80ACF9D4  7C 09 03 A6 */	mtctr r0
lbl_80ACF9D8:
/* 80ACF9D8  80 64 00 04 */	lwz r3, 4(r4)
/* 80ACF9DC  84 04 00 08 */	lwzu r0, 8(r4)
/* 80ACF9E0  90 66 00 04 */	stw r3, 4(r6)
/* 80ACF9E4  94 06 00 08 */	stwu r0, 8(r6)
/* 80ACF9E8  42 00 FF F0 */	bdnz lbl_80ACF9D8
/* 80ACF9EC  80 04 00 04 */	lwz r0, 4(r4)
/* 80ACF9F0  90 06 00 04 */	stw r0, 4(r6)
/* 80ACF9F4  4E 80 00 20 */	blr 

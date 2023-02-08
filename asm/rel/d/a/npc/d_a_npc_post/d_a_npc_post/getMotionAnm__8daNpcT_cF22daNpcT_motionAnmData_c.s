lbl_80AACED0:
/* 80AACED0  38 C3 FF FC */	addi r6, r3, -4
/* 80AACED4  38 85 FF FC */	addi r4, r5, -4
/* 80AACED8  38 00 00 03 */	li r0, 3
/* 80AACEDC  7C 09 03 A6 */	mtctr r0
lbl_80AACEE0:
/* 80AACEE0  80 64 00 04 */	lwz r3, 4(r4)
/* 80AACEE4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80AACEE8  90 66 00 04 */	stw r3, 4(r6)
/* 80AACEEC  94 06 00 08 */	stwu r0, 8(r6)
/* 80AACEF0  42 00 FF F0 */	bdnz lbl_80AACEE0
/* 80AACEF4  80 04 00 04 */	lwz r0, 4(r4)
/* 80AACEF8  90 06 00 04 */	stw r0, 4(r6)
/* 80AACEFC  4E 80 00 20 */	blr 

lbl_80BFA4B8:
/* 80BFA4B8  38 83 00 04 */	addi r4, r3, 4
/* 80BFA4BC  38 60 00 00 */	li r3, 0
/* 80BFA4C0  38 00 00 78 */	li r0, 0x78
/* 80BFA4C4  7C 09 03 A6 */	mtctr r0
lbl_80BFA4C8:
/* 80BFA4C8  90 64 00 00 */	stw r3, 0(r4)
/* 80BFA4CC  98 64 00 04 */	stb r3, 4(r4)
/* 80BFA4D0  38 84 00 08 */	addi r4, r4, 8
/* 80BFA4D4  42 00 FF F4 */	bdnz lbl_80BFA4C8
/* 80BFA4D8  4E 80 00 20 */	blr 

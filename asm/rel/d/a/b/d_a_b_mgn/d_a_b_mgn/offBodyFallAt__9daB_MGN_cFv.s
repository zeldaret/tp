lbl_80607CE4:
/* 80607CE4  38 80 00 00 */	li r4, 0
/* 80607CE8  38 A0 00 03 */	li r5, 3
/* 80607CEC  38 00 00 0F */	li r0, 0xf
/* 80607CF0  7C 09 03 A6 */	mtctr r0
lbl_80607CF4:
/* 80607CF4  38 04 0D 70 */	addi r0, r4, 0xd70
/* 80607CF8  7C A3 01 2E */	stwx r5, r3, r0
/* 80607CFC  38 84 01 38 */	addi r4, r4, 0x138
/* 80607D00  42 00 FF F4 */	bdnz lbl_80607CF4
/* 80607D04  4E 80 00 20 */	blr 

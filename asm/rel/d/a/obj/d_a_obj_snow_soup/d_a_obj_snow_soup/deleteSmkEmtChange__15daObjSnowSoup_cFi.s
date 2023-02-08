lbl_80CE0134:
/* 80CE0134  38 A0 00 00 */	li r5, 0
/* 80CE0138  54 80 18 38 */	slwi r0, r4, 3
/* 80CE013C  7C C3 02 14 */	add r6, r3, r0
/* 80CE0140  38 80 00 01 */	li r4, 1
/* 80CE0144  7C A3 2B 78 */	mr r3, r5
/* 80CE0148  38 00 00 02 */	li r0, 2
/* 80CE014C  7C 09 03 A6 */	mtctr r0
lbl_80CE0150:
/* 80CE0150  39 05 05 9C */	addi r8, r5, 0x59c
/* 80CE0154  7C E6 40 2E */	lwzx r7, r6, r8
/* 80CE0158  28 07 00 00 */	cmplwi r7, 0
/* 80CE015C  41 82 00 18 */	beq lbl_80CE0174
/* 80CE0160  80 07 00 F4 */	lwz r0, 0xf4(r7)
/* 80CE0164  60 00 00 01 */	ori r0, r0, 1
/* 80CE0168  90 07 00 F4 */	stw r0, 0xf4(r7)
/* 80CE016C  90 87 00 24 */	stw r4, 0x24(r7)
/* 80CE0170  7C 66 41 2E */	stwx r3, r6, r8
lbl_80CE0174:
/* 80CE0174  38 A5 00 04 */	addi r5, r5, 4
/* 80CE0178  42 00 FF D8 */	bdnz lbl_80CE0150
/* 80CE017C  4E 80 00 20 */	blr 

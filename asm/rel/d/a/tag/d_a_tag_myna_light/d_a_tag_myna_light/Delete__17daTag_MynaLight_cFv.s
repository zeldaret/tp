lbl_80D5CB9C:
/* 80D5CB9C  38 80 00 00 */	li r4, 0
/* 80D5CBA0  38 C0 00 01 */	li r6, 1
/* 80D5CBA4  7C 85 23 78 */	mr r5, r4
/* 80D5CBA8  38 00 00 02 */	li r0, 2
/* 80D5CBAC  7C 09 03 A6 */	mtctr r0
lbl_80D5CBB0:
/* 80D5CBB0  39 04 05 70 */	addi r8, r4, 0x570
/* 80D5CBB4  7C E3 40 2E */	lwzx r7, r3, r8
/* 80D5CBB8  28 07 00 00 */	cmplwi r7, 0
/* 80D5CBBC  41 82 00 28 */	beq lbl_80D5CBE4
/* 80D5CBC0  80 07 00 F4 */	lwz r0, 0xf4(r7)
/* 80D5CBC4  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80D5CBC8  90 07 00 F4 */	stw r0, 0xf4(r7)
/* 80D5CBCC  7C E3 40 2E */	lwzx r7, r3, r8
/* 80D5CBD0  80 07 00 F4 */	lwz r0, 0xf4(r7)
/* 80D5CBD4  60 00 00 01 */	ori r0, r0, 1
/* 80D5CBD8  90 07 00 F4 */	stw r0, 0xf4(r7)
/* 80D5CBDC  90 C7 00 24 */	stw r6, 0x24(r7)
/* 80D5CBE0  7C A3 41 2E */	stwx r5, r3, r8
lbl_80D5CBE4:
/* 80D5CBE4  38 84 00 04 */	addi r4, r4, 4
/* 80D5CBE8  42 00 FF C8 */	bdnz lbl_80D5CBB0
/* 80D5CBEC  38 60 00 01 */	li r3, 1
/* 80D5CBF0  4E 80 00 20 */	blr 
